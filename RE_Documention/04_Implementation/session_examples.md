# Captured Session Examples

**Status:** VERIFIED via USB capture analysis
**Source:** Pi-Carplay session captures (Jan 2026)
**Last Updated:** 2026-01-19

---

## Overview

This document contains real captured session examples showing the exact packet sequences exchanged between a host application and the CPC200-CCPA adapter during CarPlay and Android Auto sessions.

---

## CarPlay Session Example

### Session Info

| Property | Value |
|----------|-------|
| Capture ID | `26JAN19_02-47-46` |
| Duration | 237.8 seconds |
| Device | iPhone 18,4 (iOS 23D5103d) |
| Resolution | 1280×720 (main) + 1200×500 (navigation) |
| Transport | Wired USB → WiFi handoff |

### Initialization Phase (0-1 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 1 | 153ms | OUT | 153 | SendFile | `/tmp/screen_dpi` |
| 2 | 278ms | OUT | 1 | Open | 1280×720 @ 30fps, H264 |
| 3 | 403ms | OUT | 153 | SendFile | `/tmp/night_mode` |
| 4 | 405ms | IN | 8 | Command | cmd=1000 (SupportWifi) |
| 5 | 406ms | IN | 13 | BluetoothDeviceName | "test_CCPA" |
| 6 | 406ms | IN | 14 | WifiDeviceName | "test_CCPA" |
| 7 | 406ms | IN | 38 | UiBringToForeground | - |
| 8 | 406ms | IN | 18 | BluetoothPairedList | JSON list |
| 9 | 407ms | IN | 8 | Command | cmd=1001 (btListReady) |
| 10 | 407ms | IN | 8 | Command | cmd=7 (UseCarMic) |

### Configuration Exchange (0.5-2 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 11 | 517ms | OUT | 153 | SendFile | `/tmp/hand_drive_mode` |
| 12 | 519ms | IN | 204 | SoftwareVersion | "2025.10.15.1127CAY" |
| 13 | 520ms | IN | 25 | BoxSettings | Adapter config JSON |
| 14 | 521ms | IN | 1 | Open | Adapter capabilities |
| 15 | 547ms | OUT | 8 | Command | cmd=12 (startVideoEncoderV2) |
| 16-18 | 643-892ms | OUT | 153 | SendFile | Additional config files |
| 19 | 1015ms | OUT | 8 | Command | cmd=25 (wifi5g) |
| 20 | 1141ms | OUT | 25 | BoxSettings | Host config JSON |

### WiFi Connection Sequence (1-8 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 21 | 1268ms | OUT | 25 | BoxSettings | naviScreenInfo config |
| 22 | 1395ms | OUT | 8 | Command | cmd=1000 (wifiListGetCmd) |
| 23 | 1522ms | OUT | 8 | Command | cmd=7 (mic car) |
| 24 | 1648ms | OUT | 8 | Command | cmd=23 (audioTransfer on) |
| 25 | 2380ms | OUT | 8 | Command | cmd=1002 (wifiConnect) |
| 26 | 2411ms | IN | 8 | Command | cmd=1003 (wifiConnectSuccess) |
| 27 | 2500ms | IN | 35 | PeerBluetoothAddress | Phone BT connecting |
| 28 | 3782ms | OUT | 170 | HeartBeat | Keep-alive |
| 29 | 4270ms | IN | 37 | UiHidePeerInfo | - |
| 30 | 4332ms | IN | 8 | Command | cmd=1005 (wifiReady) |

### Phone Connection (7-8 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 43 | 7524ms | IN | 44 | NaviVideoData | First nav frame (235 bytes) |
| 44 | 7788ms | OUT | 170 | HeartBeat | Keep-alive |
| 45 | 8064ms | IN | 25 | BoxSettings | Phone info JSON (below) |
| 46 | 8065ms | IN | 163 | SessionToken | Encrypted blob (508 bytes) |
| 47 | 8066ms | IN | 3 | Phase | phase=8 (streaming ready) |

**BoxSettings Phone Info (seq 45):**
```json
{
  "MDLinkType": "CarPlay",
  "MDModel": "iPhone18,4",
  "MDOSVersion": "23D5103d",
  "MDLinkVersion": "935.4.1",
  "btMacAddr": "64:31:35:8C:29:69",
  "btName": "PiPhone",
  "cpuTemp": 49
}
```

### Active Streaming Phase

| Event | Time | Type | Details |
|-------|------|------|---------|
| Video frames | 8069ms+ | 6 | H.264 NAL units (main video) |
| Nav video | 7524ms+ | 44 | Navigation video (1200×500) |
| HeartBeat | Every ~2s | 170 | Keep-alive (34 total) |
| Touch events | User input | 5 | Touch coordinates |
| Audio data | As needed | 7 | PCM audio streams |

### Navigation Handshake (508 Exchange)

| Seq | Time | Dir | Type | Details |
|-----|------|-----|------|---------|
| - | ~7500ms | IN | 8 | cmd=508 (adapter requests nav focus) |
| - | ~7500ms | OUT | 8 | cmd=508 (host confirms nav focus) |
| 43 | 7524ms | IN | 44 | First navigation video frame |

**Note:** The 508 handshake is **bidirectional and required** for navigation video to start.

### Session Statistics

| Metric | Value |
|--------|-------|
| Total packets | 3,333 |
| HeartBeat (OUT) | 34 |
| Touch events (OUT) | 847 |
| Video frames (IN) | ~2,400 |
| Commands (IN) | 15 |
| Commands (OUT) | 12 |
| Audio out packets | 4,760 |
| Audio in (mic) packets | 517 |
| Audio out data | 17.09 MB |
| Audio in data | 4.02 MB |

---

## Android Auto Session Example

### Session Info

| Property | Value |
|----------|-------|
| Capture ID | `26JAN19_03-06-43` |
| Duration | 71.2 seconds |
| Device | Google Pixel 10 |
| Resolution | 1280×720 @ 30fps |
| Transport | Wired USB (AOA protocol) |

### Initialization Phase (0-1 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 1 | 144ms | OUT | 153 | SendFile | `/tmp/screen_dpi` |
| 2 | 271ms | OUT | 1 | Open | 1280×720 @ 30fps, H264 |
| 3 | 396ms | OUT | 153 | SendFile | `/tmp/night_mode` |
| 4 | 398ms | IN | 8 | Command | cmd=1000 (wifiListGetCmd) |
| 5 | 399ms | IN | 13 | BluetoothDeviceName | "test_CCPA" |
| 6 | 399ms | IN | 14 | WifiDeviceName | "test_CCPA" |
| 7 | 399ms | IN | 38 | UiBringToForeground | - |
| 8 | 399ms | IN | 18 | BluetoothPairedList | JSON list |
| 9 | 400ms | IN | 8 | Command | cmd=1001 (btListReady) |
| 10 | 400ms | IN | 8 | Command | cmd=7 (UseCarMic) |

### Configuration Exchange (0.5-2.5 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 11 | 517ms | OUT | 153 | SendFile | `/tmp/hand_drive_mode` |
| 12 | 518ms | IN | 204 | SoftwareVersion | "2025.10.15.1127CAY" |
| 13 | 519ms | IN | 25 | BoxSettings | Adapter config (481 bytes) |
| 14 | 520ms | IN | 1 | Open | Adapter capabilities |
| 15 | 546ms | OUT | 8 | Command | cmd=12 (startVideoEncoderV2) |
| 16-18 | 642-891ms | OUT | 153 | SendFile | Additional config |
| 19 | 1014ms | OUT | 8 | Command | cmd=25 (wifi5g) |
| 20 | 1140ms | OUT | 25 | BoxSettings | Host config JSON |
| 21 | 1267ms | OUT | 25 | BoxSettings | naviScreenInfo |
| 22 | 1394ms | OUT | 8 | Command | cmd=1000 (wifiListGetCmd) |
| 23 | 1521ms | OUT | 8 | Command | cmd=7 (mic car) |
| 24 | 1647ms | OUT | 8 | Command | cmd=23 (audioTransfer on) |
| 25 | 2378ms | OUT | 8 | Command | cmd=1002 (wifiConnect) |
| 26 | 2410ms | IN | 8 | Command | cmd=1003 (wifiConnectSuccess) |

### Waiting for Phone (2-37 seconds)

During this phase, the host sends HeartBeat every ~2 seconds while waiting for phone connection:

| Seq | Time | Dir | Type | Details |
|-----|------|-----|------|---------|
| 27 | 2498ms | IN | 35 | PeerBluetoothAddress |
| 28 | 3779ms | OUT | 170 | HeartBeat |
| 29 | 4269ms | IN | 37 | UiHidePeerInfo |
| 30 | 4331ms | IN | 8 | cmd=1005 (wifiReady/DeviceNotFound) |
| 31-47 | 5782-35839ms | OUT | 170 | HeartBeat (every ~2s) |
| 37 | 16775ms | OUT | 8 | cmd=1012 (wifiBtCommand) |

### Phone Connection (37-40 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 48 | 37300ms | IN | 25 | BoxSettings | MDLinkType=AndroidAuto |
| 49 | 37302ms | IN | 2 | Plugged | phoneType=5 (AndroidAuto) |
| 50 | 37840ms | OUT | 170 | HeartBeat | - |
| 51 | 38648ms | IN | 3 | Phase | phase=7 |
| 52 | 38904ms | IN | 8 | Command | cmd=505 (videoReleaseNotify) |
| 53 | 38988ms | IN | 8 | Command | cmd=500 (videoFocusRequest) |
| 54 | 39318ms | IN | 25 | BoxSettings | Phone info (below) |
| 55 | 39319ms | IN | 163 | SessionToken | Encrypted blob (508 bytes) |
| 56 | 39320ms | IN | 3 | Phase | phase=8 (streaming ready) |

**BoxSettings Phone Info (seq 54):**
```json
{
  "MDLinkType": "AndroidAuto",
  "MDModel": "Google Pixel 10",
  "MDOSVersion": "",
  "MDLinkVersion": "",
  "btName": "",
  "cpuTemp": 47
}
```

### Active Streaming (39-70 seconds)

| Seq | Time | Dir | Type | Details |
|-----|------|-----|------|---------|
| 70 | 39844ms | OUT | 170 | HeartBeat |
| 81 | 40409ms | IN | 42 | MediaData (59 bytes) |
| 126+ | 41842ms+ | IN | 42 | MediaData packets |
| 306+ | 47525ms+ | OUT | 5 | Touch events (user interaction) |

### Video Focus Commands (Android Auto Specific)

| Seq | Time | Dir | Command | Meaning |
|-----|------|-----|---------|---------|
| 52 | 38904ms | IN | 505 | ReleaseAudioFocus - adapter releasing |
| 53 | 38988ms | IN | 500 | RequestVideoFocus - adapter requesting |
| 763 | 69675ms | IN | 19 | micFocusRequest |

**Adapter TTY correlation:**
```
[D] _SendPhoneCommandToCar: ReleaseAudioFocus(505)
[D] _SendPhoneCommandToCar: RequestVideoFocus(500)
```

### Disconnection (70-71 seconds)

| Seq | Time | Dir | Type | Name | Details |
|-----|------|-----|------|------|---------|
| 765 | 70885ms | IN | 4 | Unplugged | Phone disconnected |
| 766 | 70886ms | OUT | 15 | DisconnectPhone | Host acknowledges |
| 767 | 70887ms | OUT | 21 | CloseDongle | Shutdown adapter |

### Session Statistics

| Metric | Value |
|--------|-------|
| Total packets | 105 |
| HeartBeat (OUT) | 34 |
| Touch events (OUT) | 23 |
| MediaData (IN) | 6 |
| Commands (IN) | 8 |
| Commands (OUT) | 7 |
| Audio out packets | 2 |
| Audio in (mic) packets | 0 |
| Audio out data | 58 bytes |
| Audio in data | 0 bytes |

**Note:** Android Auto audio is handled internally by the OpenAuto SDK on the adapter. Only control packets traverse USB.

---

## Command Reference Quick Lookup

### Commands Sent by Host (OUT)

| ID | Name | When Used |
|----|------|-----------|
| 7 | UseCarMic | During init, enable car mic |
| 12 | startVideoEncoderV2 | After Open, start video |
| 23 | audioTransfer on | During init, enable audio routing |
| 25 | wifi5g | During init, select 5GHz band |
| 1000 | wifiListGetCmd | Request WiFi device list |
| 1002 | wifiConnect | Initiate WiFi connection |
| 1012 | wifiBtCommand | WiFi/BT control |

### Commands Received from Adapter (IN)

| ID | Name | Meaning |
|----|------|---------|
| 7 | UseCarMic | Confirm mic routing |
| 500 | videoFocusRequest | Adapter requesting video focus |
| 505 | videoReleaseNotify | Adapter releasing audio focus |
| 1000 | SupportWifi | WiFi mode supported |
| 1001 | btListReady | Bluetooth list ready |
| 1003 | ScaningDevices / wifiConnectSuccess | Scanning or connected |
| 1005 | DeviceNotFound / wifiReady | No device or WiFi ready |

---

## Type 163 (SessionToken) Analysis

Both CarPlay and Android Auto sessions include a single Type 163 packet:

| Session | Seq | Timestamp | Size |
|---------|-----|-----------|------|
| CarPlay | 46 | 8065ms | 508 bytes |
| Android Auto | 55 | 39319ms | 444 bytes |

**Structure:**
- 16-byte USB header
- Base64-encoded payload (492 bytes CarPlay / 428 bytes Android Auto)
- Decodes to encrypted binary (368 bytes CarPlay / 320 bytes Android Auto)

**Timing:** Always sent immediately after BoxSettings (phone info) and before Phase 8.

**Decryption (Verified Jan 2026):**

| Property | Value |
|----------|-------|
| Algorithm | AES-128-CBC |
| Key | `W2EC1X1NbZ58TXtn` (same as USB Communication Key) |
| IV | First 16 bytes of Base64-decoded payload |
| Ciphertext | Bytes 16+ of Base64-decoded payload |

**Decryption Command:**
```bash
# Extract Base64 payload (skip 16-byte USB header), decode, decrypt
KEY_HEX=$(printf "W2EC1X1NbZ58TXtn" | xxd -p)
IV_HEX=$(dd if=decoded_payload.bin bs=1 count=16 | xxd -p)
dd if=decoded_payload.bin bs=1 skip=16 | \
  openssl enc -d -aes-128-cbc -K "$KEY_HEX" -iv "$IV_HEX" -nopad
```

**Purpose:** Session telemetry JSON containing phone info, adapter identification, and connection statistics. See `02_Protocol_Reference/usb_protocol.md` for full field descriptions.

---

## Key Differences: CarPlay vs Android Auto

| Aspect | CarPlay | Android Auto |
|--------|---------|--------------|
| Phone plugged type | 1 (iPhone) | 5 (AndroidAuto) |
| Auth protocol | MFi + iAP2 | AOA + SSL handshake |
| Video focus cmd | Not observed | 500/505 |
| MediaData (0x2A) | Not observed | Present (6 packets) |
| Navigation video | Type 44 (1200×500) | Not observed |
| Phase values | 8 (streaming) | 7→8 transition |
| Connection time | ~8 seconds | ~37 seconds (waited) |

---

## Adapter TTY Log Correlation

### CarPlay Connection Log

```
[D] Android Auto Device Plug In!!!               # Despite name, handles CarPlay too
[D] 有线 CarPlay 进入                              # "Wired CarPlay entered"
[D] PhoneLinkInfo: {"MDLinkType":"CarPlay",...}
[D] _SendPhoneCommandToCar: SupportWifi(1000)
[D] _SendPhoneCommandToCar: SupportAutoConnect(1001)
[D] _SendPhoneCommandToCar: UseCarMic(7)
[D] recv CarPlay size info:1280x720
[D] 连接耗时 4 秒                                   # "Connection took 4 seconds"
```

### Android Auto Connection Log

```
[D] Android Auto Device Plug In!!!
[D] 有线 AndroidAuto 进入                          # "Wired Android Auto entered"
[D] StartPhoneLink linkType: 5, transportType: 1
[D] PhoneLinkInfo: {"MDLinkType":"AndroidAuto",...}
[OpenAuto] version response, version: 1.7, status: 0
[OpenAuto] Begin handshake.
[OpenAuto] Handshake, size: 2348
[OpenAuto] Handshake, size: 51
[D] _SendPhoneCommandToCar: ReleaseAudioFocus(505)
[D] _SendPhoneCommandToCar: RequestVideoFocus(500)
[D] AndroidAuto iWidth: 1280, iHeight: 720
```

---

## References

- Captures: `/Users/zeno/.pi-carplay/usb-logs/`
- Protocol: `02_Protocol_Reference/usb_protocol.md`
- Commands: `02_Protocol_Reference/command_ids.md`
- Audio: `02_Protocol_Reference/audio_protocol.md`
- Video: `02_Protocol_Reference/video_protocol.md`
- Host guide: `04_Implementation/host_app_guide.md`
