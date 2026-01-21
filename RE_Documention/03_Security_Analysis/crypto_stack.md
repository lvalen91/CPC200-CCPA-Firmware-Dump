# CPC200-CCPA Cryptographic Stack

**Purpose:** Security analysis of cryptographic implementations
**Consolidated from:** GM_research binary analysis, pi-carplay firmware extraction
**Last Updated:** 2026-01-16

---

## Overview

The CPC200-CCPA uses a multi-layer cryptographic stack for different purposes:

| Layer | Algorithm | Purpose |
|-------|-----------|---------|
| Pairing | SRP-6a | Initial device authentication |
| Key Exchange | X25519 | Session key derivation |
| Transport | ChaCha20-Poly1305 | Encrypted stream transport |
| Symmetric | AES-256-GCM | General encryption |
| USB Encryption | AES-128-CTR | USB bulk transfer encryption |
| Firmware | AES-128-CBC | Firmware image encryption |

---

## Two Distinct Encryption Systems (IMPORTANT)

The CPC200-CCPA uses **two completely separate encryption systems** that should not be confused:

### 1. Firmware Image Encryption (.img files)
| Property | Value |
|----------|-------|
| **Purpose** | Protect firmware update packages |
| **When Used** | Firmware distribution and updates |
| **Algorithm** | AES-128-CBC |
| **Key (A15W)** | `AutoPlay9uPT4n17` |
| **Key Source** | Extracted from `ARMimg_maker` binary |
| **IV** | Same as key (16 bytes) |

### 2. USB Communication Encryption (CMD_ENABLE_CRYPT)
| Property | Value |
|----------|-------|
| **Purpose** | Encrypt runtime USB bulk transfers |
| **When Used** | After host sends CMD_ENABLE_CRYPT command |
| **Algorithm** | AES-128-CTR |
| **Key** | `W2EC1X1NbZ58TXtn` |
| **Key Source** | Hardcoded in `ARMadb-driver` @ 0x6dc7b |
| **IV** | Generated at runtime from 4-byte seed |

### 3. SessionToken Encryption (Type 163 / 0xA3)
| Property | Value |
|----------|-------|
| **Purpose** | Encrypt session telemetry blob |
| **When Used** | Sent once during session establishment |
| **Algorithm** | AES-128-CBC |
| **Key** | `W2EC1X1NbZ58TXtn` (same as USB Communication) |
| **IV** | First 16 bytes of Base64-decoded payload |
| **Content** | JSON telemetry (phone info, adapter info, connection stats) |

**Key Reuse Note:** The same hardcoded key is used for both USB bulk encryption (CTR mode) and SessionToken encryption (CBC mode).

**These are independent systems** - firmware encryption protects static files, USB/SessionToken encryption protects runtime communication.

---

## HomeKit Pairing v2 (SRP-6a)

### Parameters

| Parameter | Value |
|-----------|-------|
| **Algorithm** | Secure Remote Password v6a |
| **Prime** | 3072-bit |
| **Hash** | SHA-512 |
| **Salt** | 16 bytes random |

### Process

```
1. Client (phone) sends:
   - Username (I)
   - Public value A = g^a mod N

2. Server (adapter) sends:
   - Salt (s)
   - Public value B = kv + g^b mod N

3. Both compute:
   - Shared secret S = (A * v^u)^b mod N
   - Session key K = HKDF(S)

4. Client proves knowledge:
   - M1 = H(H(N) XOR H(g), H(I), s, A, B, K)

5. Server verifies M1, responds:
   - M2 = H(A, M1, K)
```

### Key Derivation

```cpp
// From libdmsdpcrypto.so
DMSDPGetPBKDF2Key();  // PBKDF2 key derivation

// Key derivation info strings
"Pair-Setup-Encrypt-Salt"
"Pair-Setup-Encrypt-Info"
```

---

## Key Exchange (X25519)

### Parameters

| Parameter | Value |
|-----------|-------|
| **Curve** | Curve25519 |
| **Key Size** | 32 bytes |
| **Library** | libdmsdpplatform.so |

### Usage

Used after SRP-6a pairing to establish per-session keys:

```
1. Both parties generate ephemeral X25519 keypairs
2. Compute shared secret via ECDH
3. Derive session keys using HKDF
```

---

## Transport Encryption (ChaCha20-Poly1305)

### Parameters

| Parameter | Value |
|-----------|-------|
| **Cipher** | ChaCha20 |
| **MAC** | Poly1305 |
| **Nonce** | 12 bytes (incremented) |
| **Key** | 32 bytes (from key exchange) |

### Frame Format

```
+-------------------+--------------------+----------------+
| Encrypted Data    | Auth Tag (16 bytes)| Nonce Counter  |
+-------------------+--------------------+----------------+
```

---

## Symmetric Encryption (AES-256-GCM)

### Parameters

| Parameter | Value |
|-----------|-------|
| **Algorithm** | AES-256 |
| **Mode** | GCM (Galois/Counter Mode) |
| **IV** | 12 bytes |
| **Tag** | 16 bytes |

### Functions (from libdmsdpplatform.so)

```cpp
AES_256GCMEncry()
AES_256GCMDecrypt()
```

---

## USB Encryption (AES-128-CTR/CBC)

The USB communication key `W2EC1X1NbZ58TXtn` is used for two purposes:

| Usage | Mode | IV Source |
|-------|------|-----------|
| Bulk Transfer Encryption | AES-128-CTR | Runtime generated from seed |
| SessionToken (Type 163) | AES-128-CBC | First 16 bytes of payload |

### Parameters (Bulk Transfer)

| Parameter | Value |
|-----------|-------|
| **Algorithm** | AES-128 |
| **Mode** | CTR (Counter) |
| **Key** | `W2EC1X1NbZ58TXtn` (hardcoded) |
| **IV** | Generated at runtime (16 bytes) |

### CMD_ENABLE_CRYPT Protocol

**Direction:** Host App → Adapter (OUT)

| Field | Size | Description |
|-------|------|-------------|
| Header | 16 bytes | Standard USB header |
| Payload | 4 bytes | Encryption seed (uint32, must be > 0) |

### Handler Location (from ARMadb-driver disassembly)

```arm
0x1f798:  ldr r3, [r6, 4]      ; Load payload length
0x1f79a:  cmp r3, 4            ; Must be exactly 4 bytes
0x1f79c:  bne 0x1f7d6          ; Skip if not 4 bytes
0x1f79e:  ldr r3, [r6, 0x10]   ; Load payload pointer
0x1f7a0:  ldr r3, [r3]         ; Get seed value (uint32)
0x1f7a2:  cmp r3, 0            ; Check if non-zero
0x1f7a4:  ble 0x1f7d6          ; Skip if <= 0
0x1f7bc:  bl 0x18598           ; Call encryption enable
```

### Encryption Flow

1. Host sends CMD_ENABLE_CRYPT with 4-byte seed
2. Adapter validates seed > 0
3. If valid:
   - Loads hardcoded key `W2EC1X1NbZ58TXtn` from 0x6dc7b
   - Generates 16-byte IV
   - Calls `AES_set_encrypt_key` with 128-bit mode
   - Enables encryption on USB data channel
4. Logs "CMD_ENABLE_CRYPT: %d" with seed value

### Key Issue

**CRITICAL:** All adapters share the same hardcoded AES key.

```cpp
// From ARMadb-driver @ 0x6dc7b
const char* USB_CRYPT_KEY = "W2EC1X1NbZ58TXtn";
```

### Available Functions (libdmsdpplatform.so)

```cpp
AES_128CTREncry()
AES_128CTRDecrypt()
AES_128OFBEncry()   // OFB mode also available
AES_128OFBDecrypt()
```

---

## Firmware Encryption (AES-128-CBC)

### Parameters

| Parameter | Value |
|-----------|-------|
| **Algorithm** | AES-128 |
| **Mode** | CBC (Cipher Block Chaining) |
| **Key** | Model-specific (see below) |
| **IV** | Same as key (16 bytes) |
| **Padding** | None - last partial block left unencrypted |

### .img File Format

```
+------------------------------------------------------------------+
|                    AES-128-CBC Encrypted Data                     |
|                   (block-aligned, 16-byte blocks)                 |
+------------------------------------------------------------------+
|  Unencrypted Remainder (0-15 bytes if file size % 16 != 0)       |
+------------------------------------------------------------------+

Decrypted contents: .tar.gz archive containing firmware files
```

### Model Keys

| Model | Key | Key (hex) |
|-------|-----|-----------|
| **A15W** | `AutoPlay9uPT4n17` | `4175746f506c617939755054346e3137` |
| U2W | `CarPlay5KBP6ClJv` | - |
| U2AW | `CarPlayBbnF6ecFP` | - |
| U2AC | `CarPlayiHXF1o74i` | - |
| HWFS | `8e15c895KBP6ClJv` | - |

### Key Extraction Method

```bash
# 1. Unpack ARMimg_maker using ludwig-v's modified UPX
./upx -d ARMimg_maker -o ARMimg_maker_unpacked

# 2. Search for 16-character keys
strings ARMimg_maker_unpacked | grep -E "^[A-Za-z0-9]{16}$"
```

### Decryption Example (OpenSSL)

```bash
AES_KEY="AutoPlay9uPT4n17"
KEY_HEX=$(printf "%s" "$AES_KEY" | od -A n -t x1 | tr -d ' \n')
IV_HEX="$KEY_HEX"

# Calculate block alignment
FILESIZE=$(stat -f %z input.img)
TRUNCATED=$((FILESIZE - (FILESIZE % 16)))

# Decrypt block-aligned portion
head -c $TRUNCATED input.img > temp_enc.bin
openssl enc -d -aes-128-cbc -nopad -K "$KEY_HEX" -iv "$IV_HEX" \
    -in temp_enc.bin -out output.tar.gz

# Append unencrypted remainder if needed
REMAINDER=$((FILESIZE % 16))
if [ $REMAINDER -gt 0 ]; then
    tail -c $REMAINDER input.img >> output.tar.gz
fi
```

---

## Hardware AES Engine

| Path | Purpose |
|------|---------|
| `/dev/hwaes` | Hardware AES acceleration |

The firmware can optionally use hardware AES for improved performance.

---

## OpenSSL Functions Used

From `libcrypto.so.1.1`:

```cpp
AES_set_encrypt_key()
AES_set_decrypt_key()
AES_cbc_encrypt()
HMAC_Init_ex()
HMAC_Update()
HMAC_Final()
SHA256_Init()
SHA256_Update()
SHA256_Final()
SHA512_*()
```

---

## Huawei Key Store (HiCar)

From `libHwKeystoreSDK.so`:

| Function | Purpose |
|----------|---------|
| `HwKeystoreInit()` | Initialize key store |
| `HwKeystoreGenerateKey()` | Generate key pair |
| `HwKeystoreSign()` | Sign data |
| `HwKeystoreVerify()` | Verify signature |

---

## References

- Source: `GM_research/cpc200_research/docs/analysis/ANALYSIS_UPDATE_2025_01_15.md`
- Source: `pi-carplay-4.1.3/firmware_binaries/PROTOCOL_ANALYSIS.md`
- Binary analysis: `libdmsdpplatform.so`, `libdmsdpcrypto.so`
