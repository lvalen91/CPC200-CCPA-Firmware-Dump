# CPC200-CCPA Wireless CarPlay Protocol

**Status:** VERIFIED via capture analysis
**Consolidated from:** GM_research, carlink_native
**Last Updated:** 2026-01-16

---

## Protocol Overview

Wireless CarPlay uses a multi-stage connection process:

```
1. Bluetooth Pairing (BR/EDR)
   ↓
2. WiFi Credentials Exchange (BTLE/BT SPP)
   ↓
3. TCP/IP Connection (WiFi Direct)
   ↓
4. RTSP Session (Port 5000)
   ↓
5. HomeKit Pairing v2 (SRP-6a)
   ↓
6. Encrypted Media Streams
```

---

## Network Configuration

### WiFi Hotspot

| Parameter | Value |
|-----------|-------|
| **Subnet** | 192.168.43.0/24 |
| **Adapter IP** | 192.168.43.1 |
| **Phone IP** | 192.168.43.x (DHCP) |
| **Band** | 5GHz 802.11ac (configurable) |
| **Channel** | 36-165 (configurable) |

### Key Ports

| Port | Protocol | Purpose |
|------|----------|---------|
| 5000 | TCP | RTSP control |
| 7000 | TCP | Video stream |
| 7001 | TCP | Audio stream |

---

## Bluetooth SDP Record

```
Service: Wireless iAP
UUID: 00000000-deca-fade-deca-deafdecacafe
RFCOMM Channel: 1
```

---

## HomeKit Pairing v2

### Cryptographic Parameters

| Algorithm | Parameters |
|-----------|------------|
| **Pairing** | SRP-6a, 3072-bit prime, SHA-512 |
| **Transport** | ChaCha20-Poly1305 |
| **Key Exchange** | X25519 (Curve25519) |
| **Symmetric** | AES-256-GCM |

### SRP-6a Flow

```
1. Host sends M1 (client public key + username)
2. Adapter sends M2 (server public key + salt)
3. Host sends M3 (proof)
4. Adapter sends M4 (verification)
5. Shared session key derived
```

### Key Derivation

```
session_key = HKDF-SHA512(
    shared_secret,
    salt: "Pair-Setup-Encrypt-Salt",
    info: "Pair-Setup-Encrypt-Info",
    length: 32
)
```

---

## Pairing Protocol: pair-setup (First-Time)

First-time pairing uses **SRP-6a** (Secure Remote Password) with a PIN code displayed on the adapter screen.

### Step 1: Method Selection (CSeq: 0)

**Request (iPhone → Adapter):**
```http
POST /pair-setup RTSP/1.0
X-Apple-AbsoluteTime: 788587167
X-Apple-HKP: 0
X-Apple-Client-Name: PiPhone
Content-Length: 6
Content-Type: application/x-apple-binary-plist
CSeq: 0
User-Agent: AirPlay/935.3.1

[6 bytes - bplist method selector]
```

**Response (Adapter → iPhone):**
```http
RTSP/1.0 200 OK
Content-Length: 409
Content-Type: application/octet-stream
Server: AirTunes/320.17
CSeq: 0

[409 bytes - SRP salt (16 bytes) + server public key B (384 bytes)]
```

### Step 2: Client Proof (CSeq: 1)

**Request (iPhone → Adapter):**
```http
POST /pair-setup RTSP/1.0
X-Apple-HKP: 0
Content-Length: 457
Content-Type: application/x-apple-binary-plist
CSeq: 1

[457 bytes - bplist with client public key A + proof M1]
```

**Response (Adapter → iPhone):**
```http
RTSP/1.0 200 OK
Content-Length: 69
Content-Type: application/octet-stream
CSeq: 1

[69 bytes - Server proof M2]
```

### Step 3: Key Exchange (CSeq: 2)

**Request (iPhone → Adapter):**
```http
POST /pair-setup RTSP/1.0
X-Apple-HKP: 0
Content-Length: 159
Content-Type: application/x-apple-binary-plist
CSeq: 2

[159 bytes - Encrypted Ed25519 public key + signature]
```

**Response (Adapter → iPhone):**
```http
RTSP/1.0 200 OK
Content-Length: 159
Content-Type: application/octet-stream
CSeq: 2

[159 bytes - Encrypted accessory Ed25519 key + signature]
```

---

## Reconnection Protocol: pair-verify

After initial pairing, subsequent connections use stored Ed25519 keys for quick verification.

### Step 1: Verify Start (CSeq: 0)

**Request (iPhone → Adapter):**
```http
POST /pair-verify RTSP/1.0
X-Apple-AbsoluteTime: 788538962
X-Apple-HKP: 2
X-Apple-Client-Name: PiPhone
X-Apple-PD: 1
Content-Length: 37
Content-Type: application/octet-stream
CSeq: 0
User-Agent: AirPlay/935.3.1

[37 bytes binary - curve25519 public key]
```

**Binary Format:**
```
Offset  Data
0x00    [1 byte]   Message type (0x01)
0x01    [4 bytes]  Payload length
0x05    [32 bytes] Curve25519 public key
```

**Response (Adapter → iPhone):**
```http
RTSP/1.0 200 OK
Content-Length: 159
Content-Type: application/octet-stream
Server: AirTunes/320.17
CSeq: 0

[159 bytes binary - server response]
```

### Step 2: Verify Finish (CSeq: 1)

**Request (iPhone → Adapter):**
```http
POST /pair-verify RTSP/1.0
X-Apple-HKP: 2
X-Apple-PD: 1
Content-Length: 125
Content-Type: application/octet-stream
CSeq: 1

[125 bytes binary - verification data]
```

**Response (Adapter → iPhone):**
```http
RTSP/1.0 200 OK
Content-Length: 3

[3 bytes - 0x06 0x01 0x04 = verification success]
```

---

## Header Reference

### X-Apple-HKP (HomeKit Pairing)

| Value | Meaning |
|-------|---------|
| 0 | Initial setup (pair-setup) |
| 2 | HomeKit Pairing v2 (pair-verify) |

### X-Apple-PD (Pairing Data)

| Value | Meaning |
|-------|---------|
| 0 | Not paired |
| 1 | Already paired, using stored credentials |

### X-Apple-AbsoluteTime

Apple epoch timestamp (seconds since 2001-01-01 00:00:00 UTC).

---

## Encrypted Session

After pair-verify completes (3-byte success response), all subsequent data is encrypted:

### Encrypted Packet Format

```
┌────────────────────────────────────────────────────┐
│              Encrypted Wrapper                      │
│         (ChaCha20-Poly1305 AEAD)                   │
├────────────────────────────────────────────────────┤
│              Protocol Header (16 bytes)            │
│  Magic: 0x55aa55aa                                 │
│  Length: payload size                              │
│  Type: message type                                │
│  Check: ~type                                      │
├────────────────────────────────────────────────────┤
│              Protocol Payload                      │
│  VIDEO_DATA: 20-byte header + H.264                │
│  AUDIO_DATA: 12-byte header + PCM/AAC              │
│  TOUCH: 16 bytes (action, x, y, flags)             │
└────────────────────────────────────────────────────┘
```

**Note:** After encryption, packets are typically 1042 bytes (MTU-optimized).

---

## Wireless vs USB Comparison

| Aspect | Wireless CarPlay | USB CarPlay |
|--------|------------------|-------------|
| **Transport** | IPv4 WiFi | IPv6 USB-NCM |
| **Port** | TCP 5000 | TCP 5000 |
| **Auth Method** | HomeKit Pairing v2 | MFi Certificate |
| **Auth Endpoint** | `/pair-setup`, `/pair-verify` | `/auth-setup` |
| **Pairing Storage** | Ed25519 keys in keychain | Certificate trust |
| **Session Setup** | Implicit after pairing | Explicit `SETUP` + `RECORD` |
| **Encryption** | ChaCha20-Poly1305 | Standard AirPlay |
| **First Connect** | PIN code on screen | Trust dialog on iPhone |

---

## RTSP Endpoints Summary

| Endpoint | Method | Purpose |
|----------|--------|---------|
| `/pair-setup` | POST | Initial pairing (SRP-6a) |
| `/pair-verify` | POST | Verify existing pairing |
| `/auth-setup` | POST | MFi certificate auth (USB only) |
| `/fp-setup` | POST | FairPlay setup |
| `/info` | GET | Device information |
| `/stream` | POST | Start media stream |
| `/feedback` | POST | Playback feedback |
| `/command` | POST | Control commands |
| `/audio` | POST | Audio stream setup |
| `/video` | POST | Video stream setup |

---

## Implementation Notes

### To Force Fresh pair-setup

The iPhone "Forget This Car" only clears iPhone-side credentials. The adapter still has the pairing stored.

To trigger initial `pair-setup`:
```bash
# On adapter - backup and remove pairing data
mv /Library/Keychains/default.keychain /Library/Keychains/default.keychain.bak

# Then forget on iPhone AND reconnect
# This forces full pair-setup sequence
```

---

## RTSP Session

### Discovery

```
_carplay._tcp.local.
_airplay._tcp.local.
```

### RTSP Commands

| Method | Purpose |
|--------|---------|
| OPTIONS | Capabilities query |
| ANNOUNCE | Session setup |
| SETUP | Stream configuration |
| RECORD | Start streaming |
| TEARDOWN | End session |
| SET_PARAMETER | Runtime config |
| GET_PARAMETER | Query state |

### Typical Session

```
C→S: OPTIONS rtsp://192.168.43.1:5000 RTSP/1.0
S→C: RTSP/1.0 200 OK
     Public: ANNOUNCE, SETUP, RECORD, ...

C→S: ANNOUNCE rtsp://192.168.43.1:5000 RTSP/1.0
     Content-Type: application/sdp
     [SDP payload]

S→C: RTSP/1.0 200 OK

C→S: SETUP rtsp://192.168.43.1:5000/audio RTSP/1.0
     Transport: ...

...
```

---

## AirPlay Version

The adapter reports:
```
AirPlay/320.17
```

---

## mDNS Service Configuration

### CarPlay Advertisement

```
_carplay._tcp.local.
  Name: AutoBox-XXXX
  Port: 5000
  TXT Records:
    model=A15W
    features=0x5A7FFFFH
```

### Required TXT Records

| Key | Value | Description |
|-----|-------|-------------|
| model | A15W | Product model |
| features | hex flags | Capability bits |
| srcvers | 320.17 | AirPlay version |
| vv | 2 | Protocol version |

---

## Connection State Machine

```
IDLE
 ↓ (BT pairing initiated)
BT_PAIRING
 ↓ (PIN verified)
BT_PAIRED
 ↓ (WiFi credentials received)
WIFI_CONNECTING
 ↓ (WiFi associated)
WIFI_CONNECTED
 ↓ (RTSP session started)
RTSP_CONNECTING
 ↓ (HomeKit pairing complete)
STREAMING
 ↓ (disconnect event)
IDLE
```

---

## USB Encryption (CMD_ENABLE_CRYPT)

For USB transport encryption:

| Property | Value |
|----------|-------|
| **Algorithm** | AES-128-CTR |
| **Key** | `W2EC1X1NbZ58TXtn` (hardcoded) |
| **Payload** | 4-byte seed (must be > 0) |

**Security Note:** All adapters share the same hardcoded AES key.

---

## Android Auto Specifics

### Connection

| Parameter | Value |
|-----------|-------|
| **Port** | 54321 (WiFi, SSL/TLS) |
| **Transport** | BT RFCOMM → WiFi credentials → TCP SSL |
| **Auth Handshake** | 2037 + 51 bytes |
| **Protocol Version** | 1.7 |

### Differences from CarPlay

| Aspect | CarPlay | Android Auto |
|--------|---------|--------------|
| Volume field | 0.0 - 1.0 | Always 0.0 |
| audio_type | 1, 2, or 3 | Always 1 |
| Nav ducking | Explicit audio_type=2 | Not observed |
| Mode setting | Default enabled | `androidWorkMode: true` required |

### androidWorkMode Issue

Fresh pairing fails unless `androidWorkMode: true` is enabled in BoxSettings.

**Behavior:** Firmware dynamically resets to 0 on disconnect. Host must re-send.

---

## Authentication Files

| Path | Purpose |
|------|---------|
| `/var/lib/lockdown/common.cert` | Auth certificates (plist) |
| `/var/lib/lockdown/root_key.pem` | RSA private key (2048-bit) |
| `/Library/Keychains/default.keychain` | Pairing data |
| `/tmp/rfcomm_IAP2` | Bluetooth RFCOMM socket |
| `/tmp/.mfi_auth_lock` | Auth mutex |

---

## References

- Source: `GM_research/cpc200_research/CLAUDE.md`
- Source: `carlink_native/documents/reference/Firmware/firmware_wireless_carplay.md`
- RTSP captures from pairing sessions
