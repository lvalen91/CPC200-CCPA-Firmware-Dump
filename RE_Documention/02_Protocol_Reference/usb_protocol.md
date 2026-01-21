# CPC200-CCPA USB Protocol Reference

**Status:** VERIFIED against 25+ capture sessions + firmware binary analysis
**Consolidated from:** All research projects (GM_research, carlink_native, pi-carplay)
**Last Updated:** 2026-01-19

---

## Protocol Header Structure

All USB messages use a common 16-byte header:

```
+------------------+------------------+------------------+------------------+
|   Magic (4B)     |   Length (4B)    |   Type (4B)      | Type Check (4B)  |
+------------------+------------------+------------------+------------------+
|                              Payload (N bytes)                           |
+--------------------------------------------------------------------------+
```

| Field | Offset | Size | Description |
|-------|--------|------|-------------|
| **magic** | 0 | 4 | `0x55AA55AA` (little-endian) |
| **length** | 4 | 4 | Payload size in bytes (LE) |
| **type** | 8 | 4 | Message type ID (LE) |
| **type_check** | 12 | 4 | `type XOR 0xFFFFFFFF` (validation) |
| **payload** | 16 | N | Message-specific data |

**Validation Rules:**
- Magic must equal `0x55AA55AA`
- Type check must equal `type ^ 0xFFFFFFFF`
- Length must be ≤ 1048576 bytes
- Total message size = 16 + payload_length

---

## Complete Message Type Reference

### Session Management

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 1 | 0x01 | Open | OUT | 28 | Initialize session with display params |
| 2 | 0x02 | Plugged | IN | 8 | Phone connected notification |
| 3 | 0x03 | Phase | IN | 4 | Connection phase update |
| 4 | 0x04 | Unplugged | IN | 0 | Phone disconnected |
| 15 | 0x0F | DisconnectPhone | OUT | 0 | Force disconnect phone |
| 21 | 0x15 | CloseDongle | OUT | 0 | Shutdown adapter |
| 170 | 0xAA | HeartBeat | OUT | 0 | Keep-alive (every 2s) |

### Data Streams

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 5 | 0x05 | Touch | OUT | 16 | Single touch input |
| 6 | 0x06 | VideoData | IN | Variable | H.264 video frame (36-byte header) |
| 7 | 0x07 | AudioData | BOTH | Variable | Audio data or commands (see below) |
| 23 | 0x17 | MultiTouch | OUT | Variable | Multi-touch (1-10 points) |
| 44 | 0x2C | NaviVideoData | IN | Variable | Navigation video (36-byte header, iOS 13+) |

**Video Header Sizes:**
- VideoData (0x06): 36 bytes total (16 USB + 20 video-specific)
- NaviVideoData (0x2C): 36 bytes total (16 USB + 20 video-specific) - **same structure as main video**

See `video_protocol.md` for detailed header structures.

**AudioData (0x07) Commands:** When payload is 13 bytes, contains audio command (not PCM data):
```
Payload (13 bytes):
[decodeType:4][volume:4][audioType:4][command:1]
```

| AudioCmd | Name | Direction | Host Action |
|----------|------|-----------|-------------|
| 4 | PHONECALL_START | Phone→Host | Start microphone capture |
| 5 | PHONECALL_STOP | Phone→Host | Stop microphone capture |
| 8 | SIRI_START | Phone→Host | Start microphone capture |
| 9 | SIRI_STOP | Phone→Host | Stop microphone capture |
| 6/7 | NAVI_START/STOP | Phone→Host | Duck/restore media audio |

**IMPORTANT:** Siri and phone call events are received via AudioData (0x07), NOT Command (0x08).
See `command_ids.md` for complete flow documentation and `../03_Audio_Processing/audio_formats.md` for audio format details.

**Audio Formats (decodeType):**
| decodeType | Sample Rate | Channels | Use Case |
|------------|-------------|----------|----------|
| 3 | 8000 Hz | Mono | Phone call (narrow-band) |
| 4 | 48000 Hz | Stereo | Media HD / CarPlay |
| 5 | 16000 Hz | Mono | Siri / Mic input |

### Control Commands

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 8 | 0x08 | Command | BOTH | 4 | Control commands (see below) |
| 9 | 0x09 | LogoType | OUT | 4 | Set UI branding |
| 12 | 0x0C | Frame | OUT | 0 | Request keyframe (IDR) |
| 22 | 0x16 | AudioTransfer | OUT | 4 | Audio routing control |

**Command (0x08) IDs:** Payload is a 4-byte command ID. Full reference: `command_ids.md`
- Basic (1-31): Mic, Siri, Night Mode, GNSS, WiFi band, Standby, BLE
- Controls (100-114): D-Pad buttons, Rotary knob
- Media (200-205): Play, Pause, Next, Prev
- Phone (300-314): Answer, HangUp, DTMF tones
- Status (1000-1013): WiFi/BT connection status

### Device Information

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 10 | 0x0A | BluetoothAddress | IN | 17 | Box BT address |
| 12 | 0x0C | BluetoothPIN | IN | Variable | Pairing PIN |
| 13 | 0x0D | BluetoothDeviceName | IN | 8 | BT device name |
| 14 | 0x0E | WifiDeviceName | IN | 8 | WiFi device name |
| 18 | 0x12 | BluetoothPairedList | IN | 50 | Paired device list |
| 20 | 0x14 | ManufacturerInfo | IN | Variable | OEM info |
| 204 | 0xCC | SoftwareVersion | IN | 32 | Firmware version |
| 187 | 0xBB | StatusValue | IN | 4 | Status/config value |

### Configuration

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 25 | 0x19 | BoxSettings | BOTH | Variable | JSON configuration |
| 153 | 0x99 | SendFile | OUT | Variable | Write file to adapter |

### Peer Device Info

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 24 | 0x18 | HiCarLink | IN | 113 | HiCar connection URL |
| 35 | 0x23 | PeerBluetoothAddress | IN | 17 | Peer BT address |
| 36 | 0x24 | PeerBluetoothAddressAlt | IN | 17 | Alt BT address |
| 37 | 0x25 | UiHidePeerInfo | IN | 0 | Hide peer info |
| 38 | 0x26 | UiBringToForeground | IN | 0 | Bring UI forward |

### Media Metadata

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 42 | 0x2A | MediaData | IN | Variable | Rich media metadata (JSON) |

**MediaData Subtypes (first 4 bytes of payload):**

| Subtype | Hex | Content | Typical Size |
|---------|-----|---------|--------------|
| 1 | 0x00000001 | JSON metadata (song info, playback time) | 30-202 bytes |
| 3 | 0x00000003 | Binary data (album artwork - JPEG) | 170-180 KB |

**Packet Structure:**
```
Offset  Size  Field        Description
------  ----  -----        -----------
0x00    4     Subtype      Content type indicator (1=JSON, 3=JPEG)
0x04    N     Content      JSON string or JPEG image data
```

**MediaData JSON Fields (Subtype 1):**
```json
{
  "MediaAPPName": "YouTube Music",
  "MediaSongName": "Song Title",
  "MediaArtistName": "Artist",
  "MediaAlbumName": "Album",
  "MediaSongDuration": 171000,
  "MediaSongPlayTime": 5000,
  "MediaPlayStatus": 1
}
```

**Album Artwork (Subtype 3):**
- JPEG image data starting at offset 0x04
- Starts with JPEG magic: `FF D8 FF E0`
- Typical resolution: 300x300 to 600x600 pixels
- Transferred via iAP2 file transfer session (`mediaItemArtworkFileTransferIdentifier`)

**Firmware Evidence (ARMiPhoneIAP2):**
- JSON fields: `MediaSongName`, `MediaAlbumName`, `MediaArtistName`, `MediaAPPName`, `MediaSongDuration`, `MediaSongPlayTime`
- Artwork: `mediaItemArtworkFileTransferIdentifier`, `CiAP2MediaPlayerEngine_Send_NowPlayingMeidaArtwork`

### Session Establishment (Encrypted Blob)

*Verified via CarPlay capture (Jan 2026, iPhone18,4)*

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 163 | 0xA3 | SessionToken | IN | 508 | Encrypted session data (see below) |

**Type 163 (SessionToken) Analysis:**

Sent once during session establishment, immediately after BoxSettings (Type 25).
Appears in both CarPlay and Android Auto sessions.

**Packet Structure:**
```
Offset  Size  Field           Description
------  ----  -----           -----------
0x00    16    Protocol Header (magic, length, type, check)
0x10    492   Base64 payload  ASCII Base64-encoded data

Base64 decoded: 368 bytes of high-entropy binary (7.45 bits/byte entropy)
```

**Timing Context:**
- Sent ~8 seconds into session during establishment phase
- Immediately follows BoxSettings (phone info JSON)
- Precedes Phase update and first video frames

**Payload Characteristics:**
- High entropy (encrypted or cryptographic data)
- First 4 bytes: `f4 08 08 74` (possible header/version)
- Not ASN.1 DER format (doesn't start with 0x30)
- Likely contains session credentials or encrypted device telemetry

**Firmware Analysis (Jan 2026):**

| Property | CarPlay | Android Auto |
|----------|---------|--------------|
| Base64 payload | 492 bytes | 428 bytes |
| Decoded size | 368 bytes | 320 bytes |
| Block alignment | 23 × 16-byte blocks | 20 × 16-byte blocks |
| Encryption | AES (block-aligned) | AES (block-aligned) |

**Structure (decoded):**
```
Offset  Size  Field           Description
------  ----  -----           -----------
0x00    16    IV/Nonce        Likely AES initialization vector
0x10    N     Ciphertext      AES-CBC or AES-CTR encrypted data
```

**DECRYPTION SUCCESSFUL (Jan 2026):**

| Property | Value |
|----------|-------|
| Algorithm | AES-128-CBC |
| Key | `W2EC1X1NbZ58TXtn` (USB Communication Key) |
| IV | First 16 bytes of Base64-decoded payload |
| Content | JSON telemetry data |

**Decrypted CarPlay Example:**
```json
{
  "phone": {
    "model": "iPhone18,4",
    "osVer": "23D5103d",
    "linkT": "CarPlay",
    "conSpd": 4,
    "conRate": 0.24,
    "conNum": 17,
    "success": 4
  },
  "box": {
    "uuid": "651ede982f0a99d7f9138131ec5819fe",
    "model": "A15W",
    "hw": "YMA0-WR2C-0003",
    "ver": "2025.10.15.1127",
    "mfd": "20240119"
  }
}
```

**Field Descriptions:**

| Field | Description |
|-------|-------------|
| `phone.model` | Device model (iPhone18,4, Google Pixel 10) |
| `phone.osVer` | OS build version |
| `phone.linkT` | Link type (CarPlay, AndroidAuto) |
| `phone.conSpd` | Connection speed indicator |
| `phone.conRate` | Historical connection success rate |
| `phone.conNum` | Total connection attempts to this adapter |
| `phone.success` | Successful connection count |
| `box.uuid` | Adapter unique identifier |
| `box.model` | Adapter model (A15W) |
| `box.hw` | Hardware revision |
| `box.ver` | Firmware version |
| `box.mfd` | Manufacturing date (YYYYMMDD)

**Purpose:** Session telemetry sent from adapter to host containing device statistics and adapter identification. Used for logging/analytics.

### Navigation Focus (iOS 13+)

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 506 | 0x1FA | NaviFocus | OUT | 0 | Request nav focus |
| 507 | 0x1FB | NaviRelease | OUT | 0 | Release nav focus |
| 508 | 0x1FC | RequestNaviScreenFocus | BOTH | 0 | **Bidirectional handshake** |
| 509 | 0x1FD | ReleaseNaviScreenFocus | OUT | 0 | Release nav screen |
| 110 | 0x6E | NaviFocusRequest | IN | 0 | Nav requesting focus |
| 111 | 0x6F | NaviFocusRelease | IN | 0 | Nav released focus |

### WiFi Connection State

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 1004 | 0x3EC | DeviceFound | IN | 0 | Device found during scan |
| 1007 | 0x3EF | DeviceConnected | IN | 0 | WiFi connected |
| 1008 | 0x3F0 | StreamReady | IN | 0 | Streaming ready |
| 1010 | 0x3F2 | ConnectionComplete | IN | 0 | Connection established |

### IDR Notification

| Type | Hex | Name | Dir | Payload | Description |
|------|-----|------|-----|---------|-------------|
| 1009 | 0x3F1 | IdrSent | IN | 0 | IDR frame sent notification |

---

## Message Payload Details

### Plugged (0x02) - Phone Connected

```
Offset  Size  Field        Description
------  ----  -----        -----------
0x00    4     phoneType    Device type (see below)
0x04    4     connected    Connection state (1=connected)
```

**phoneType Values (Verified):**
| Value | Device | Transport | Status |
|-------|--------|-----------|--------|
| 1 | AndroidMirror | USB | Unverified |
| 2 | Carlife | USB | Unverified |
| 3 | CarPlay | USB | ✓ VERIFIED |
| 4 | iPhoneMirror | USB | Unverified |
| 5 | AndroidAuto | USB | ✓ VERIFIED |
| 6 | HiCar | USB | Unverified |
| 7 | ICCOA | USB | Unverified |
| 8 | CarPlay | Wireless | ✓ VERIFIED |

See `device_identification.md` for full analysis and firmware evidence.

### Open (0x01) - Session Initialization

```
Offset  Size  Field        Description
------  ----  -----        -----------
0x00    4     width        Display width (e.g., 2400)
0x04    4     height       Display height (e.g., 960)
0x08    4     fps          Frame rate (e.g., 60)
0x0C    4     format       Video format ID (see below)
0x10    4     packetMax    Max packet size (e.g., 49152)
0x14    4     boxVersion   Protocol version (e.g., 2)
0x18    4     phoneMode    Operation mode (e.g., 2)
```

**Format Field Values:**

| Value | Name | Behavior |
|-------|------|----------|
| 1 | Basic Mode | Minimal IDR insertion |
| 5 | Full H.264 Mode | Responsive to Frame sync, aggressive IDR |

**Capture Verification (Jan 2026):**
- format=5: 107 IDR frames received, 118 SPS repetitions
- format=1: 27 IDR frames received, 33 SPS repetitions

### Command (0x08) - Control Commands

**Payload:** 4-byte command ID

| ID | Hex | Name | Description |
|----|-----|------|-------------|
| 1 | 0x01 | startRecordAudio | Begin audio recording |
| 2 | 0x02 | stopRecordAudio | Stop audio recording |
| 3 | 0x03 | requestHostUI | Request UI focus |
| 5 | 0x05 | siri | Trigger Siri |
| 7 | 0x07 | mic | Phone microphone control |
| 15 | 0x0F | boxMic | Adapter microphone control |
| 16 | 0x10 | nightModeOn | Enable night mode |
| 17 | 0x11 | nightModeOff | Disable night mode |
| 22 | 0x16 | audioTransferOn | Enable audio transfer |
| 23 | 0x17 | audioTransferOff | Disable audio transfer |
| 24 | 0x18 | wifi24g | Switch to 2.4GHz WiFi |
| 25 | 0x19 | wifi5g | Switch to 5GHz WiFi |
| 100-114 | | Navigation | D-pad controls |
| 200 | 0xC8 | home | Home button |
| 201 | 0xC9 | play | Play button |
| 202 | 0xCA | pause | Pause button |
| 204 | 0xCC | next | Next track |
| 205 | 0xCD | prev | Previous track |
| 500 | 0x1F4 | requestVideoFocus | Request video focus |
| 501 | 0x1F5 | releaseVideoFocus | Release video focus |
| 502 | 0x1F6 | unknown502 | Android Auto related |
| 503 | 0x1F7 | unknown503 | Android Auto related |
| 504 | 0x1F8 | unknown504 | Android Auto related |
| 505 | 0x1F9 | unknown505 | Android Auto related |
| 1000 | 0x3E8 | wifiEnable | WiFi enabled notification |
| 1001 | 0x3E9 | autoConnectEnable | Auto-connect enabled |
| 1002 | 0x3EA | wifiConnect | WiFi connect command |
| 1003 | 0x3EB | scanningDevice | Device scanning |
| 1005 | 0x3ED | unknown1005 | Android Auto related |
| 1007 | 0x3EF | btConnected | Bluetooth connected |
| 1010 | 0x3F2 | projectionDisconnected | Session ended |

### BoxSettings (0x19) - JSON Configuration

**⚠️ SECURITY WARNING:** The `wifiName`, `btName`, and `oemIconLabel` fields are vulnerable to **command injection**. These values are passed to `popen()` shell commands without sanitization. See `03_Security_Analysis/vulnerabilities.md` for details.

#### Host → Adapter Fields (Binary Verified Jan 2026)

**Core Configuration:**

| Field | Type | Description | Maps to riddle.conf |
|-------|------|-------------|---------------------|
| `mediaDelay` | int | Audio buffer (ms) | `MediaLatency` |
| `syncTime` | int | Unix timestamp | - |
| `autoConn` | bool | Auto-reconnect | `NeedAutoConnect` |
| `autoPlay` | bool | Auto-start playback | `AutoPlay` |
| `autoDisplay` | bool | Auto display mode | - |
| `bgMode` | int | Background mode | `BackgroundMode` |
| `startDelay` | int | Startup delay (sec) | `BoxConfig_DelayStart` |
| `syncMode` | int | Sync mode | - |
| `lang` | string | Language code | - |

**Display / Video:**

| Field | Type | Description | Maps to riddle.conf |
|-------|------|-------------|---------------------|
| `androidAutoSizeW` | int | Android Auto width | `AndroidAutoWidth` |
| `androidAutoSizeH` | int | Android Auto height | `AndroidAutoHeight` |
| `screenPhysicalW` | int | Physical screen width (mm) | - |
| `screenPhysicalH` | int | Physical screen height (mm) | - |
| `drivePosition` | int | 0=LHD, 1=RHD | `CarDrivePosition` |

**Audio:**

| Field | Type | Description | Maps to riddle.conf |
|-------|------|-------------|---------------------|
| `mediaSound` | int | 0=44.1kHz, 1=48kHz | `MediaQuality` |
| `mediaVol` | float | Media volume (0.0-1.0) | - |
| `navVol` | float | Navigation volume | - |
| `callVol` | float | Call volume | - |
| `ringVol` | float | Ring volume | - |
| `speechVol` | float | Speech/Siri volume | - |
| `otherVol` | float | Other audio volume | - |
| `echoDelay` | int | Echo cancellation (ms) | `EchoLatency` |
| `callQuality` | int | Voice call quality | `CallQuality` |

**Network / Connectivity:**

| Field | Type | Description | Maps to riddle.conf |
|-------|------|-------------|---------------------|
| `wifiName` | string | WiFi SSID | ⚠️ **CMD INJECTION** |
| `wifiFormat` | int | WiFi format | - |
| `WiFiChannel` | int | WiFi channel (1-11, 36-165) | `WiFiChannel` |
| `btName` | string | Bluetooth name | ⚠️ **CMD INJECTION** |
| `btFormat` | int | Bluetooth format | - |
| `boxName` | string | Device display name | `CustomBoxName` |
| `iAP2TransMode` | int | iAP2 transport mode | `iAP2TransMode` |

**Branding / OEM:**

| Field | Type | Description | Maps to riddle.conf |
|-------|------|-------------|---------------------|
| `oemName` | string | OEM name | - |
| `productType` | string | Product type (e.g., "A15W") | - |
| `lightType` | int | LED indicator type | - |

**Navigation Video (iOS 13+ with AdvancedFeatures=1):**

| Field | Type | Description |
|-------|------|-------------|
| `naviScreenInfo` | object | Nested object for nav video config |
| `naviScreenInfo.width` | int | Nav screen width (default: 480) |
| `naviScreenInfo.height` | int | Nav screen height (default: 272) |
| `naviScreenInfo.fps` | int | Nav screen FPS (default: 30) |

**Android Auto Mode:**

| Field | Type | Description |
|-------|------|-------------|
| `androidWorkMode` | int | Enable Android Auto daemon (0/1) - resets on disconnect |

**Complete Example:**
```json
{
  "mediaDelay": 300,
  "syncTime": 1737331200,
  "autoConn": true,
  "autoPlay": false,
  "bgMode": 0,
  "startDelay": 0,
  "androidAutoSizeW": 1920,
  "androidAutoSizeH": 720,
  "screenPhysicalW": 250,
  "screenPhysicalH": 100,
  "drivePosition": 0,
  "mediaSound": 1,
  "mediaVol": 1.0,
  "navVol": 1.0,
  "callVol": 1.0,
  "echoDelay": 320,
  "callQuality": 1,
  "wifiName": "CarAdapter",
  "WiFiChannel": 36,
  "btName": "CarAdapter",
  "boxName": "CarAdapter",
  "naviScreenInfo": {
    "width": 480,
    "height": 272,
    "fps": 30
  }
}
```

**Command Injection via wifiName/btName (Binary Verified):**
```json
{
  "wifiName": "a\"; /usr/sbin/riddleBoxCfg -s AdvancedFeatures 1; echo \"",
  "btName": "carlink"
}
```
This executes `riddleBoxCfg` immediately as root. Any shell command can be injected.

**Adapter → Host:**
```json
{
  "uuid": "651ede982f0a99d7f9138131ec5819fe",
  "MFD": "20240119",
  "boxType": "YA",
  "productType": "A15W",
  "OemName": "carlink_test",
  "hwVersion": "YMA0-WR2C-0003",
  "HiCar": 1,
  "WiFiChannel": 36,
  "DevList": [{"id": "64:31:35:8C:29:69", "type": "CarPlay"}]
}
```

**Phone Info Update (CarPlay):**
```json
{
  "MDLinkType": "CarPlay",
  "MDModel": "iPhone18,4",
  "MDOSVersion": "23D5089e",
  "MDLinkVersion": "935.3.1",
  "btMacAddr": "64:31:35:8C:29:69",
  "cpuTemp": 53
}
```

**Phone Info Update (Android Auto):**
```json
{
  "MDLinkType": "AndroidAuto",
  "MDModel": "Google Pixel 10",
  "MDOSVersion": "",
  "MDLinkVersion": "1.7",
  "btMacAddr": "B0:D5:FB:A3:7E:AA",
  "btName": "Pixel 10",
  "cpuTemp": 54
}
```

**Note:** Android Auto does not populate MDOSVersion. MDLinkVersion contains the Android Auto protocol version.

### SendFile (0x99) - File Upload (Binary Verified Jan 2026)

```
Offset  Size  Field        Description
------  ----  -----        -----------
0x00    4     pathLen      Path string length
0x04    N+1   filePath     Null-terminated path
+N+1    4     contentLen   Content length
+N+5    M     content      File content bytes
```

**Binary Evidence:**
```
SEND FILE: %s, %d byte        - Logs path and size (at upload)
UPLOAD FILE: %s, %d byte      - Alternative logging
UPLOAD FILE Length Error!!!   - Size validation exists
/tmp/uploadFileTmp            - Temporary staging location
```

**Known Target Files and Effects:**

| Path | Content | Side Effect |
|------|---------|-------------|
| `/tmp/screen_dpi` | Integer (e.g., 240) | Sets display DPI |
| `/tmp/screen_fps` | Integer | Sets target framerate |
| `/tmp/screen_size` | Dimensions | Sets display size |
| `/tmp/night_mode` | 0 or 1 | Triggers `StartNightMode`/`StopNightMode` |
| `/tmp/hand_drive_mode` | 0 or 1 | Left/right hand drive |
| `/tmp/charge_mode` | 0 or 1 | USB charging speed (see below) |
| `/tmp/gnss_info` | NMEA text | GPS data for CarPlay navigation (see below) |
| `/tmp/carplay_mode` | Value | CarPlay mode setting |
| `/tmp/manual_disconnect` | Flag | Manual disconnect trigger |
| `/etc/android_work_mode` | 0 or 1 | **Critical**: Enables Android Auto daemon |
| `/tmp/carlogo.png` | PNG data | Custom car logo (copied to `/etc/boa/images/`) |
| `/tmp/hwfs.tar.gz` | Archive | **Auto-extracted to /tmp** via `tar -xvf` |
| `/tmp/*Update.img` | Firmware | Triggers OTA update process |

**Path Restrictions (Binary Verified):**

| Finding | Evidence |
|---------|----------|
| **No path whitelist** | No `strncmp("/tmp/")` or similar validation found |
| **No path traversal filter** | No `../` or sanitization logic found |
| **/etc is WRITABLE** | Scripts cp/rm files to `/etc/` (not squashfs read-only) |
| **Writes to any path** | Filesystem permissions only restriction |

**Limitations:**

| Constraint | Value | Evidence |
|------------|-------|----------|
| Size validation | Unknown limit | `UPLOAD FILE Length Error!!!` |
| tmpfs space | ~50-80MB | `/tmp` is RAM-backed tmpfs |
| Flash space | ~16MB total | Compressed rootfs |

**Archive Auto-Extraction:**
```c
mv %s %s;tar -xvf %s -C /tmp;rm -f %s;sync
```
Files uploaded to `/tmp/hwfs.tar.gz` are automatically extracted to `/tmp`.

**Firmware Update:** Files matching `*Update.img` pattern auto-trigger OTA update.
See `04_Implementation/firmware_update.md` for complete update procedure.

#### Charge Mode (Binary Verified Jan 2026)

Controls USB charging speed via GPIO pins 6 and 7.

| `/tmp/charge_mode` Value | GPIO6 | GPIO7 | Effect |
|--------------------------|-------|-------|--------|
| 0 (or missing) | 1 | 1 | **SLOW** charge (default) |
| 1 | 1 | 0 | **FAST** charge |

**Firmware log messages:**
- `CHARGE_MODE_FAST!!!!!!!!!!!!!!!!!` - Fast charge enabled
- `CHARGE_MODE_SLOW!!!!!!!!!!!!!!!!!` - Slow charge enabled

**Note:** "OnlyCharge" is a separate iPhone work mode (alongside AirPlay, CarPlay, iOSMirror) indicating phone is connected for charging only, no projection.

#### GPS/GNSS Data (Binary Verified Jan 2026)

GPS data for CarPlay navigation is sent via `/tmp/gnss_info` file.

**Format:** Standard NMEA 0183 sentences

| Sentence | Name | Purpose |
|----------|------|---------|
| `$GPGGA` | Global Positioning System Fix | Position, altitude, satellites |
| `$GPRMC` | Recommended Minimum | Position, speed, course, date |
| `$GPGSV` | Satellites in View | Satellite information |

**Example content for `/tmp/gnss_info`:**
```
$GPGGA,123519,4807.038,N,01131.000,E,1,08,0.9,545.4,M,47.0,M,,*47
$GPRMC,123519,A,4807.038,N,01131.000,E,022.4,084.4,230394,003.1,W*6A
```

**Additional vehicle data supported:**
- `VehicleSpeedData` - Vehicle speed
- `VehicleHeadingData` - Compass heading
- `VehicleGyroData` - Gyroscope data
- `VehicleAccelerometerData` - Accelerometer data

**Flow:** Host writes NMEA → `iAP2LocationEngine` parses → forwarded to iPhone via CarPlay

**Config Requirements:**
- `HudGPSSwitch=1` in riddle.conf (enable GPS from HU)
- `GNSSCapability=1` (advertise GNSS to phone)

**Size limit:** Firmware logs `GNSSSentencesSize:%zu, GNSSSentences too long` if data exceeds buffer.

See `command_ids.md` for StartGNSSReport (18) and StopGNSSReport (19) commands.

### Touch (0x05) - Touch Input

```
Offset  Size  Field        Description
------  ----  -----        -----------
0x00    4     action       0=Down, 1=Move, 2=Up, 3=Menu, 4=Home, 5=Back
0x04    4     x_coord      Normalized X (float 0.0-1.0)
0x08    4     y_coord      Normalized Y (float 0.0-1.0)
0x0C    4     flags        Additional flags (reserved)
```

### HeartBeat (0xAA) - USB Keepalive (CRITICAL)

**Message Format (header only, no payload):**
```
+------------------+------------------+------------------+------------------+
|   0x55AA55AA     |   0x00000000     |   0x000000AA     |   0xFFFFFF55     |
|   (magic)        |   (length=0)     |   (type=170)     |   (type check)   |
+------------------+------------------+------------------+------------------+
```

**Purpose:** USB keepalive + firmware boot stabilization signal

**Configuration:**
- Config key: `SendHeartBeat` in `/etc/riddle.conf`
- Default: `1` (enabled)
- D-Bus signal: `HUDComand_A_HeartBeat`

**Binary Analysis (ARMadb-driver):**
| Address | Function | Purpose |
|---------|----------|---------|
| `0x00018e2c` | Message dispatcher | Routes 0xAA to heartbeat handler |
| `0x0006327a` | D-Bus signal emit | Emits `HUDComand_A_HeartBeat` |

**Critical Timing:**
- Must start **BEFORE** initialization messages on cold start
- Send every ~2 seconds continuously
- Missing heartbeats with `SendHeartBeat=1` triggers 11.7s disconnect

See `initialization.md` and `configuration.md` for detailed timing requirements.

---

## Phase Values (0x03)

| Value | Meaning | Capture Evidence |
|-------|---------|------------------|
| 0 | Idle/Standby | Documented |
| 7 | Connecting | `@ 4.498s: Phase payload 07 00 00 00` |
| 8 | Streaming Ready | `@ 7.504s: Phase payload 08 00 00 00` |

---

## Verified Initialization Sequence

From `video_2400x960@60` capture (Jan 2026):

```
Time      Dir  Type                   Payload Summary
────────────────────────────────────────────────────────────────
0.132s    OUT  SendFile (0x99)       /tmp/screen_dpi = 240
0.253s    OUT  Open (0x01)           2400x960 @ 60fps, format=5
0.374s    OUT  SendFile (0x99)       /tmp/night_mode = 1
0.376s    IN   Command (0x08)        0x3E8 (wifiEnable)
0.408s    IN   BluetoothDeviceName   "carlink_test"
0.408s    IN   WifiDeviceName        "carlink_test"
0.409s    IN   UiBringToForeground   (no payload)
0.409s    IN   BluetoothPairedList   "64:31:35:8C:29:69Luis"
0.409s    IN   Command (0x08)        0x3E9 (autoConnectEnable)
0.409s    IN   Command (0x08)        0x07 (micSource)
0.410s    IN   SoftwareVersion       "2025.02.25.1521CAY"
0.410s    IN   BoxSettings           JSON with device info
0.410s    IN   Open (0x01)           Echo of session params
...
2.362s    IN   PeerBluetoothAddress  "64:31:35:8C:29:69"
3.645s    OUT  HeartBeat             (first heartbeat)
3.662s    IN   PeerBluetoothAddressAlt
4.180s    IN   Plugged (0x02)        phoneType=3, connected=1
4.498s    IN   Phase (0x03)          phase=7 (connecting)
7.503s    IN   BoxSettings           MDModel="iPhone18,4"
7.504s    IN   Phase (0x03)          phase=8 (streaming ready)
```

---

## Navigation Video Handshake (iOS 13+)

**CRITICAL DISCOVERY (Jan 2026):** Command 508 is a bidirectional handshake.

**Handshake Sequence:**
1. Adapter sends 508 to host (RequestNaviScreenFocus)
2. Host MUST respond by sending 508 back to adapter
3. This triggers `HU_NEEDNAVI_STREAM` D-Bus signal
4. Navigation video (Type 0x2C) streaming begins

If host does not respond with 508, navigation video will not start.

**Verified implementation** (`pi-carplay-main/src/main/carplay/services/CarplayService.ts:270-277`):
```typescript
if ((msg.value as number) === 508 && this.config.naviScreen?.enabled) {
  this.driver.send(new SendCommand('requestNaviScreenFocus'))
}
```

---

## Undocumented Message Types

| Type | Hex | Notes |
|------|-----|-------|
| 11 | 0x0B | Encryption bypass list |
| 16-17 | 0x10-0x11 | Unknown |
| 19 | 0x13 | Unknown |
| 27 | 0x1B | Encryption control |
| 119 | 0x77 | Debug/Test |
| 136 | 0x88 | Debug mode enable |
| 253 | 0xFD | Error/reset related |
| 255 | 0xFF | Error or special control |

---

## Newly Identified Types (Firmware Binary Analysis - Jan 2026)

From disassembly of `ARMadb-driver_unpacked`:

| Type | Hex | Name | Dir | Payload | Code Evidence |
|------|-----|------|-----|---------|---------------|
| 30 | 0x1E | RemoteCxCy | A→H | Display resolution data | fcn.0001af48 @ `0x1afb0` |
| 161 | 0xA1 | ExtendedMfgInfo | A→H | Extended OEM/manufacturer data | fcn.00018628, fcn.000186ba |
| 240 | 0xF0 | RemoteDisplay | A→H | Remote display parameters | fcn.0001af48 @ `0x1af96` |

### Message Sender Functions

| Function | Address | Message Types Sent |
|----------|---------|-------------------|
| fcn.00018628 | `0x18628` | 0x06, 0x09, 0x0B, 0x0D, 0xA1 (state-dependent) |
| fcn.000186ba | `0x186ba` | 0x14 (ManufacturerInfo), 0xA1 |
| fcn.00018850 | `0x18850` | 0x06, 0x0B (HiCar DevList JSON) |
| fcn.0001af48 | `0x1af48` | 0x01, 0x1E, 0xF0 |
| fcn.00017340 | `0x17340` | Generic message sender (21 call sites) |

### Payload Structure Details (Binary Analysis - Jan 2026)

**RemoteCxCy (0x1E)** - 8 bytes payload:
```
+--------+--------+
| Width  | Height |
| (4B)   | (4B)   |
+--------+--------+
```
- Log string: `Accessory_fd::BroadCastRemoteCxCy : %d  %d` @ `0x5c20d`
- Broadcast display resolution from adapter to host

**RemoteDisplay (0xF0)** - 28 bytes payload:
```
+--------------------------------------------------------------------------+
|                    Display Parameters (28 bytes @ 0x11d00c)              |
+--------------------------------------------------------------------------+
```
- Size evidence: `movs r3, 0x1c` @ `0x1af9a`
- Runtime data structure, fields require protocol capture to verify

**ExtendedMfgInfo (0xA1)** - 12 bytes payload:
```
+--------------------------------------------------------------------------+
|                    Extended OEM Data (12 bytes)                          |
+--------------------------------------------------------------------------+
```
- Size evidence: `movs r2, 0xc` @ `0x186ca`
- Sent alongside ManufacturerInfo (0x14) when state==0x14 (20)

**HiCar DevList (0x0B)** - 32 bytes payload:
```
+--------------------------------------------------------------------------+
|                    Device List Data (32 bytes)                           |
+--------------------------------------------------------------------------+
```
- Size evidence: `movs r2, 0x20` @ `0x18890`
- Contains "DevList" and "type" JSON fields

### JSON Payload Format Strings (Firmware Addresses)

**Box Info JSON** (String @ `0x5c2ce`):
```json
{"uuid":"%s","MFD":"%s","boxType":"%s","OemName":"%s","productType":"%s",
 "HiCar":%d,"hwVersion":"%s","WiFiChannel":%d,"CusCode":"%s",
 "DevList":%s,"ChannelList":"%s"}
```

**Phone Link Info JSON** (String @ `0x5be16`):
```json
{"MDLinkType":"%s","MDModel":"%s","MDOSVersion":"%s","MDLinkVersion":"%s",
 "btMacAddr":"%s","btName":"%s","cpuTemp":%d}
```

### Status Event D-Bus Strings

| String | Address | Trigger |
|--------|---------|---------|
| `OnCarPlayPhase %d` | `0x5c415` | CarPlay phase change (Type 0x03) |
| `OnAndroidPhase _val=%d` | `0x5bf52` | Android Auto phase change |
| `DeviceBluetoothConnected` | `0x5bc88` | BT connection established |
| `DeviceBluetoothNotConnected` | `0x5bca1` | BT disconnected |
| `DeviceWifiConnected` | `0x5bcbd` | WiFi connection established |
| `DeviceWifiNotConnected` | `0x5bcd1` | WiFi disconnected |
| `CMD_BOX_INFO` | `0x5b44c` | Box info request/response |
| `CMD_CAR_MANUFACTURER_INFO` | `0x5b3e4` | OEM info (Type 0x14) |

---

## References

- Source: `carlink_native/documents/reference/Firmware/firmware_protocol_table.md`
- Source: `GM_research/cpc200_research/CLAUDE.md`
- Source: `pi-carplay-4.1.3/firmware_binaries/PROTOCOL_ANALYSIS.md`
- **Session examples: `../04_Implementation/session_examples.md` - Real captured packet sequences**
- Verification: 25+ controlled CarPlay capture sessions
- Android Auto verification: Jan 2026 capture (Pixel 10, YouTube Music)
