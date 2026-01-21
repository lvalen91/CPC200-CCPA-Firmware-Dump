# CPC200-CCPA Configuration Reference

**Purpose:** Complete riddleBoxCfg configuration keys reference
**Consolidated from:** pi-carplay firmware analysis, carlink_native research
**Last Updated:** 2026-01-20 (added CallQuality bug documentation)

---

## Configuration System Overview

| Component | Path | Description |
|-----------|------|-------------|
| **Config file** | `/etc/riddle.conf` | **JSON format** (not key=value) |
| **CLI tool** | `riddleBoxCfg -s <Key> [Value]` | Read/write to riddle.conf |
| **Backup** | `/etc/riddle_default.conf` | Factory defaults (minimal JSON) |
| **Runtime** | Global variables | Values loaded at ARMadb-driver startup |
| **Apply changes** | `riddleBoxCfg --upConfig` or reboot | Process restart or reboot needed |

**riddle.conf Format (Verified Jan 2026):**
```json
{
	"USBVID":	"1314",
	"USBPID":	"1521",
	"AndroidWorkMode":	1,
	"MediaLatency":	300,
	"AndroidAutoWidth":	2400,
	"AndroidAutoHeight":	960,
	"BtAudio":	1,
	"DevList":	[{"id":"XX:XX:XX:XX:XX:XX","type":"CarPlay","name":"iPhone"}],
	"LastConnectedDevice":	"XX:XX:XX:XX:XX:XX"
}
```

**Note:** While the file format is JSON, the `riddleBoxCfg` CLI uses key-based access (e.g., `riddleBoxCfg -s AdvancedFeatures 1`).

---

## Video / H.264 Settings

### SpsPpsMode
**Type:** Select (0-3) | **Default:** 0

Controls H.264 SPS/PPS handling for video stream.

| Value | Behavior |
|-------|----------|
| 0 | Auto - firmware decides based on `LastPhoneSpsPps` history |
| 1 | Re-inject - prepends cached SPS/PPS before each IDR frame |
| 2 | Cache - stores SPS/PPS in memory, replays on decode errors |
| 3 | Repeat - duplicates SPS/PPS in every video packet |

### NeedKeyFrame
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Passive - waits for phone's natural IDR interval |
| 1 | Active - sends `RequestKeyFrame` to phone on decoder errors |

Protocol: Uses internal command ID 0x1c (`RefreshFrame`).

### RepeatKeyframe
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Normal - each keyframe sent once |
| 1 | Repeat - re-sends last IDR when buffer underrun detected |

### SendEmptyFrame
**Type:** Toggle (0/1) | **Default:** 1

| Value | Behavior |
|-------|----------|
| 0 | Skip - no packets sent during video gaps |
| 1 | Send - empty timing packets maintain stream clock |

### VideoBitRate
**Type:** Number (0-20) | **Default:** 0

Hint for phone's encoder target bitrate (passed in Open message).

| Value | Effect |
|-------|--------|
| 0 | Auto - phone decides based on WiFi conditions |
| 1-5 | Low bitrate (~2-5 Mbps) |
| 6-15 | Medium bitrate (~6-12 Mbps) |
| 16-20 | High bitrate (~13-20 Mbps) |

### CustomFrameRate
**Type:** Number (0, 20-60) | **Default:** 0

Sets `frameRate` field in Open message.

| Value | Effect |
|-------|--------|
| 0 | Auto - typically 30 FPS |
| 20-60 | Custom frame rate |

---

## Performance / Fluency Settings

### ImprovedFluency
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Standard buffering - lower latency, possible stutters |
| 1 | Enhanced buffering - slightly higher latency, smoother playback |

### FastConnect
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Full handshake - all verification steps |
| 1 | Quick reconnect - skips BT discovery if MAC matches `LastConnectedDevice` |

Reduces connection time by ~2-5 seconds on reconnect.

### SendHeartBeat (CRITICAL)
**Type:** Toggle (0/1) | **Default:** 1 | **Access:** SSH only

Controls whether the adapter firmware expects and responds to heartbeat messages (0xAA) from the host application. This is a **critical setting for connection stability**.

| Value | Behavior |
|-------|----------|
| 0 | Heartbeat disabled - host must poll for status (NOT RECOMMENDED) |
| 1 | Heartbeat enabled - firmware expects 0xAA messages every ~2 seconds |

**WARNING:** Disabling heartbeat (`SendHeartBeat=0`) can cause:
- Cold start failures after ~11.7 seconds with `projectionDisconnected`
- Unstable firmware initialization
- Session termination without warning

See [SendHeartBeat Deep Dive](#sendheartbeat-deep-dive) below for complete analysis.

### BackgroundMode
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Show connection UI (logo, progress) |
| 1 | Hide UI - fixes blur/overlay issues on some head units |

### BoxConfig_DelayStart
**Type:** Number (0-30) | **Default:** 0

Firmware calls `usleep(value * 1000000)` before USB init.

| Value | Behavior |
|-------|----------|
| 0 | Immediate start |
| 1-30 | Wait N seconds before USB init |

### MediaLatency
**Type:** Number (300-2000) | **Default:** 300

Audio/video buffer size in milliseconds.

| Value | Behavior |
|-------|----------|
| 300-500 | Low latency - audio/video more in sync, may skip |
| 500-1000 | Balanced |
| 1000-2000 | High latency - very stable, noticeable A/V desync |

---

## USB / Connection Settings

### AutoResetUSB
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Normal disconnect - USB interface stays initialized |
| 1 | Full reset - USB controller power-cycled via sysfs |

D-Bus: `HUDComand_A_ResetUSB` signal, logged as `"$$$ ResetUSB from HU"`.

**NOT a factory reset** - only resets USB peripheral controller.

### USBConnectedMode
**Type:** Select (0-2) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Standard USB 2.0 enumeration timing |
| 1 | Extended descriptor delays for slow head units |
| 2 | Compatibility mode - slower handshake, retries on failure |

### USBTransMode
**Type:** Select (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Normal - standard bulk transfer sizes |
| 1 | Compact - smaller packets for limited buffers |

### iAP2TransMode
**Type:** Select (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Normal iAP2 framing |
| 1 | Compatible mode - longer ACK timeouts, smaller messages |

### WiredConnect
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Wireless only |
| 1 | Allow wired mode fallback |

### NeedAutoConnect
**Type:** Toggle (0/1) | **Default:** 1

| Value | Behavior |
|-------|----------|
| 0 | Manual - wait for phone to initiate |
| 1 | Auto - reconnect to `LastConnectedDevice` on boot |

---

## Audio Settings

### MediaQuality
**Type:** Select (0/1) | **Default:** 1

| Value | Rate | Description |
|-------|------|-------------|
| 0 | 44.1kHz | CD quality - compatible with all cars |
| 1 | 48kHz | DVD quality - better fidelity |

### MicType
**Type:** Select (0-2) | **Default:** 0

| Value | Source | Implementation |
|-------|--------|----------------|
| 0 | Car mic | Routes `/dev/snd/pcmC0D0c` capture to phone |
| 1 | Box mic | Uses adapter's 3.5mm mic input |
| 2 | Phone mic | Phone's built-in mic |

**Hardware Note:** The CPC200-CCPA (A15W) does **not** have a built-in microphone. Option 1 (Box mic) is not applicable for this model. Use 0 (Car mic) or 2 (Phone mic) only.

### MicMode
**Type:** Select (0-4) | **Default:** 0

| Value | Algorithm |
|-------|-----------|
| 0 | Auto - firmware selects based on detected noise |
| 1-4 | Different WebRTC NS configurations |

### EchoLatency
**Type:** Number (20-2000) | **Default:** 320

Echo cancellation delay parameter in milliseconds.

| Value | Effect |
|-------|--------|
| 20-100 | Low delay - minimal audio path latency |
| 100-500 | Typical car systems |
| 500-2000 | High delay - significant audio buffering |

### MediaPacketLen / TtsPacketLen / VrPacketLen
**Type:** Number (200-40000) | **Default:** 200

USB bulk transfer sizes for different audio streams:
- **MediaPacketLen:** Music/media audio
- **TtsPacketLen:** Navigation voice (TTS)
- **VrPacketLen:** Voice recognition/Siri microphone

---

## Display Settings

### ScreenDPI
**Type:** Number (0-480) | **Default:** 0

| Value | Effect |
|-------|--------|
| 0 | Auto - phone uses default |
| 160 | Low density (MDPI) |
| 240 | Medium density (HDPI) |
| 320 | High density (XHDPI) |
| 480 | Extra high density (XXHDPI) |

### MouseMode
**Type:** Toggle (0/1) | **Default:** 0

| Value | Behavior |
|-------|----------|
| 0 | Direct touch - absolute coordinates passed to phone |
| 1 | Cursor mode - relative movements, tap to click |

**Binary Evidence:** `MouseMode` string found in ARMadb-driver config key table.

---

## GPS/GNSS Settings (Binary Verified Jan 2026)

### HudGPSSwitch
**Type:** Toggle (0/1) | **Default:** 0

Controls whether GPS data from the head unit is forwarded to the phone.

| Value | Behavior |
|-------|----------|
| 0 | GPS from HU disabled - phone uses own GPS |
| 1 | GPS from HU enabled - adapter forwards NMEA to phone |

**Binary Evidence:** `BOX_CFG_HudGPSSwitch Closed, not use GPS from HUD`

### GNSSCapability
**Type:** Toggle (0/1) | **Default:** 0

Advertises GNSS capability to connected phone during iAP2 identification.

| Value | Behavior |
|-------|----------|
| 0 | GNSS not advertised |
| 1 | GNSS capability advertised to phone |

**Binary Evidence:** `GNSSCapability=%d` format string in ARMiPhoneIAP2

### GPS Data Format

The adapter accepts standard **NMEA 0183** sentences via `/tmp/gnss_info` file:

| Sentence | iAP2 Component | Description |
|----------|----------------|-------------|
| `$GPGGA` | `globalPositionSystemFixData` | Position fix data |
| `$GPRMC` | `recommendedMinimumSpecificGPSTransitData` | Minimum GPS data |
| `$GPGSV` | `gpsSatellitesInView` | Satellite information |
| `$PASCD` | (proprietary) | Vehicle data |

**Additional Vehicle Data:**
- `VehicleSpeedData` - Speed from vehicle CAN
- `VehicleHeadingData` - Compass heading
- `VehicleGyroData` - Gyroscope readings
- `VehicleAccelerometerData` - Accelerometer readings

**Commands (Type 0x08):**
- Command 18 (0x12): `StartGNSSReport` - Begin GPS forwarding
- Command 19 (0x13): `StopGNSSReport` - Stop GPS forwarding

---

## Charge Mode (Binary Verified Jan 2026)

USB charging speed is controlled via GPIO pins, not a riddle.conf key.

### Charge Mode File
**Path:** `/tmp/charge_mode` or `/etc/charge_mode`

| Value | GPIO6 | GPIO7 | Mode | Log Message |
|-------|-------|-------|------|-------------|
| 0 | 1 | 1 | SLOW | `CHARGE_MODE_SLOW!!!!!!!!!!!!!!!!!` |
| 1 | 1 | 0 | FAST | `CHARGE_MODE_FAST!!!!!!!!!!!!!!!!!` |

**GPIO Initialization (from init_gpio.sh):**
```bash
echo 6 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio6/direction
echo 7 > /sys/class/gpio/export
echo out > /sys/class/gpio/gpio7/direction
echo 1 >/sys/class/gpio/gpio6/value   # Enable charging
echo 1 >/sys/class/gpio/gpio7/value   # Slow mode (default)
```

### OnlyCharge Work Mode

"OnlyCharge" is an iPhone work mode (not a config key) indicating the phone is connected for charging only without projection:

| Work Mode | Description |
|-----------|-------------|
| AirPlay | Audio/video mirroring |
| CarPlay | CarPlay projection |
| iOSMirror | Screen mirroring |
| OnlyCharge | Charging only, no projection |

---

## Navigation Video Parameters (iOS 13+)

### AdvancedFeatures
**Type:** Toggle (0/1) | **Default:** 0

**⚠️ Unknown Effect:** The exact purpose of this setting has not been determined through testing. Previous documentation suggested it enables navigation video, but testing shows navigation video works independently of this setting (see One-Time Activation Behavior below).

| Value | Effect |
|-------|--------|
| 0 (default) | Unknown |
| 1 | Unknown |

**How to Set:**
```bash
/usr/sbin/riddleBoxCfg -s AdvancedFeatures 1
/usr/sbin/riddleBoxCfg --upConfig
```

**Observed Behavior:** When set to 1, the adapter will:
1. Advertise `"supportFeatures":"naviScreen"` in boxInfo JSON
2. Process `naviScreenInfo` from incoming BoxSettings

**Note:** Navigation video (Type 0x2C) has been observed to work regardless of this setting's current value once it has been enabled at least once.

**One-Time Activation Behavior (Jan 2026 Discovery):**

| Scenario | Navigation Video | Notes |
|----------|------------------|-------|
| Fresh adapter, AdvancedFeatures=0 (never set to 1) | **NOT working** | Feature locked |
| Set AdvancedFeatures=1, connect phone | **Working** | Feature activated |
| Set back to AdvancedFeatures=0 | **STILL working** | Feature remains unlocked |

Once AdvancedFeatures has been set to `1` at least once, navigation video continues to work even if the value is changed back to `0`. This suggests per-device memory or a persistent unlock flag.

### naviScreenWidth
**Type:** Number (0-4096) | **Default:** 480

Navigation screen width in pixels.

### naviScreenHeight
**Type:** Number (0-4096) | **Default:** 272

Navigation screen height in pixels.

### naviScreenFPS
**Type:** Number (0-60) | **Default:** 30

Navigation video frame rate.

### naviScreenInfo BoxSettings Configuration

Host applications configure navigation video via BoxSettings JSON:
```json
{
  "naviScreenInfo": {
    "width": 480,
    "height": 272,
    "fps": 30
  }
}
```

**Requirements:**
1. `AdvancedFeatures=1` must be set in riddle.conf
2. Host must implement Command 508 handshake
3. Host must handle NaviVideoData (Type 0x2C) messages

---

## BoxSettings JSON Mapping (Binary Verified Jan 2026)

**⚠️ SECURITY WARNING:** The `wifiName`, `btName`, and `oemIconLabel` fields are vulnerable to **command injection**. See `03_Security_Analysis/vulnerabilities.md`.

### Host to Adapter Fields - Complete List

**Core Configuration:**

| JSON Field | riddle.conf | Type | Description |
|------------|-------------|------|-------------|
| `mediaDelay` | `MediaLatency` | int | Audio buffer (ms) |
| `syncTime` | - | int | Unix timestamp |
| `autoConn` | `NeedAutoConnect` | bool | Auto-reconnect flag |
| `autoPlay` | `AutoPlay` | bool | Auto-start playback |
| `autoDisplay` | - | bool | Auto display mode |
| `bgMode` | `BackgroundMode` | int | Background mode |
| `startDelay` | `BoxConfig_DelayStart` | int | Startup delay (sec) |
| `syncMode` | - | int | Sync mode |
| `lang` | - | string | Language code |

**Display / Video:**

| JSON Field | riddle.conf | Type | Description |
|------------|-------------|------|-------------|
| `androidAutoSizeW` | `AndroidAutoWidth` | int | Android Auto width |
| `androidAutoSizeH` | `AndroidAutoHeight` | int | Android Auto height |
| `screenPhysicalW` | - | int | Physical screen width (mm) |
| `screenPhysicalH` | - | int | Physical screen height (mm) |
| `drivePosition` | `CarDrivePosition` | int | 0=LHD, 1=RHD |

**Audio:**

| JSON Field | riddle.conf | Type | Description |
|------------|-------------|------|-------------|
| `mediaSound` | `MediaQuality` | int | 0=44.1kHz, 1=48kHz |
| `mediaVol` | - | float | Media volume (0.0-1.0) |
| `navVol` | - | float | Navigation volume |
| `callVol` | - | float | Call volume |
| `ringVol` | - | float | Ring volume |
| `speechVol` | - | float | Speech/Siri volume |
| `otherVol` | - | float | Other audio volume |
| `echoDelay` | `EchoLatency` | int | Echo cancellation (ms) |
| `callQuality` | `CallQuality` | int | Voice call quality |

**Network / Connectivity:**

| JSON Field | riddle.conf | Type | Description |
|------------|-------------|------|-------------|
| `wifiName` | `CustomWifiName` | string | WiFi SSID ⚠️ **CMD INJECTION** |
| `wifiFormat` | - | int | WiFi format |
| `WiFiChannel` | `WiFiChannel` | int | WiFi channel (1-11, 36-165) |
| `btName` | `CustomBluetoothName` | string | Bluetooth name ⚠️ **CMD INJECTION** |
| `btFormat` | - | int | Bluetooth format |
| `boxName` | `CustomBoxName` | string | Device display name |
| `iAP2TransMode` | `iAP2TransMode` | int | iAP2 transport mode |

**Branding / OEM:**

| JSON Field | riddle.conf | Type | Description |
|------------|-------------|------|-------------|
| `oemName` | - | string | OEM name |
| `productType` | - | string | Product type (e.g., "A15W") |
| `lightType` | - | int | LED indicator type |

**Navigation Video (requires AdvancedFeatures=1):**

| JSON Field | Type | Description |
|------------|------|-------------|
| `naviScreenInfo` | object | Nested object for nav video |
| `naviScreenInfo.width` | int | Nav screen width (default: 480) |
| `naviScreenInfo.height` | int | Nav screen height (default: 272) |
| `naviScreenInfo.fps` | int | Nav screen FPS (default: 30) |

**Android Auto Mode:**

| JSON Field | Type | Description |
|------------|------|-------------|
| `androidWorkMode` | int | Enable Android Auto daemon (0/1) |

### Adapter to Host Fields

| JSON Field | Type | Description |
|------------|------|-------------|
| `uuid` | string | Device UUID |
| `MFD` | string | Manufacturing date |
| `boxType` | string | Model code (e.g., "YA") |
| `productType` | string | Product ID (e.g., "A15W") |
| `OemName` | string | OEM name |
| `hwVersion` | string | Hardware version |
| `HiCar` | int | HiCar support flag (0/1) |
| `WiFiChannel` | int | Current WiFi channel |
| `CusCode` | string | Customer code |
| `DevList` | array | Paired device list |
| `ChannelList` | string | Available WiFi channels |

### Phone Info Fields (Adapter → Host)

| JSON Field | Type | Description |
|------------|------|-------------|
| `MDLinkType` | string | "CarPlay", "AndroidAuto", "HiCar" |
| `MDModel` | string | Phone model |
| `MDOSVersion` | string | OS version (empty for Android Auto) |
| `MDLinkVersion` | string | Protocol version |
| `btMacAddr` | string | Bluetooth MAC address |
| `btName` | string | Phone Bluetooth name |
| `cpuTemp` | int | Adapter CPU temperature |

---

## AndroidWorkMode Deep Dive

### Critical Discovery (Dec 2025)

`AndroidWorkMode` controls whether the adapter starts the Android Auto daemon. **This is a dynamic toggle, not a persistent setting.**

### Behavior

| Event | AndroidWorkMode Value | Effect |
|-------|----------------------|--------|
| Host sends `android_work_mode=1` | `0 → 1` | `Start Link Deamon: AndroidAuto` |
| Phone disconnects | `1 → 0` (firmware auto-reset) | Android Auto daemon stops |
| Host reconnects | Must re-send `android_work_mode=1` | Daemon restarts |

### How to Set via Host App

**File Path:** `/etc/android_work_mode`
**Protocol:** `SendFile` (type 0x99) with 4-byte payload

```typescript
// Example
new SendBoolean(true, '/etc/android_work_mode')
```

**Firmware Log Evidence:**
```
UPLOAD FILE: /etc/android_work_mode, 4 byte
OnAndroidWorkModeChanged: 0 → 1
Start Link Deamon: AndroidAuto
```

### Impact on Android Auto Pairing

| AndroidWorkMode | Android Auto Daemon | Fresh Pairing |
|-----------------|---------------------|---------------|
| 0 (default) | NOT started | Fails |
| 1 | Started | Works |

**Key Finding:** Open-source projects that don't send `android_work_mode=1` during initialization cannot perform Android Auto pairing, even if Bluetooth pairing succeeds.

### riddle.conf vs Runtime State

- `AndroidWorkMode` in riddle.conf: May show `1` if previously set
- **Runtime state:** Always resets to `0` on phone disconnect
- Host app must send on **every connection**, not just first time

---

## SendHeartBeat Deep Dive

### Binary Analysis (January 2026)

The `SendHeartBeat` configuration key controls the USB heartbeat mechanism critical for firmware stability.

### Binary Locations

| Binary | Offset | String/Symbol | Purpose |
|--------|--------|---------------|---------|
| **riddleBoxCfg_unpacked** | `0x00018f54` | `SendHeartBeat` | Config key in key table |
| **ARMadb-driver_unpacked** | `0x0006e515` | `SendHeartBeat` | Config reader |
| **ARMadb-driver_unpacked** | `0x0005b583` | `HUDComand_A_HeartBeat` | D-Bus signal name |
| **ARMadb-driver_unpacked** | `0x0001053c` | `0x000000AA` | Message dispatch table entry |

### Protocol Details

**USB Message Format (Type 0xAA / 170):**
```
+------------------+------------------+------------------+------------------+
|   Magic (4B)     |   Length (4B)    |   Type (4B)      | Type Check (4B)  |
|   0x55AA55AA     |   0x00000000     |   0x000000AA     |   0xFFFFFF55     |
+------------------+------------------+------------------+------------------+
```

- **Magic**: `0x55AA55AA` (little-endian)
- **Length**: 0 bytes (no payload)
- **Type**: `0xAA` (170 decimal) - HeartBeat
- **Type Check**: `0xAA XOR 0xFFFFFFFF = 0xFFFFFF55`
- **Total message size**: 16 bytes (header only, no payload)

### D-Bus Signal Flow

```
Host sends HeartBeat (0xAA) via USB
         │
         ▼
ARMadb-driver receives at FUN_00018e2c (message dispatcher)
         │
         ▼
Emits D-Bus signal: HUDComand_A_HeartBeat
         │
         ▼
Internal processes receive keepalive notification
```

**D-Bus dispatch assembly (ARMadb-driver at 0x6327a):**
```asm
0x0006327a  ldr r4, [str.HUDComand_A_HeartBeat]  ; Load signal name
0x0006327c  b 0x63362                            ; Jump to signal handler
```

### Firmware Behavior by Value

| SendHeartBeat | Firmware Expects | Missing Heartbeat Effect | Recommended |
|---------------|------------------|--------------------------|-------------|
| **1 (default)** | 0xAA every ~2s | Triggers internal timeout → disconnect | ✅ Yes |
| **0** | Nothing | No timeout, but boot instability | ❌ No |

### Critical Timing Requirement

The heartbeat serves dual purposes:
1. **USB Keepalive**: Prevents USB interface timeout
2. **Boot Stabilization**: Signals firmware that host is ready

**CRITICAL**: Heartbeat must start **BEFORE** initialization messages:

```
CORRECT (stable):                    INCORRECT (11.7s failure):
──────────────────                   ────────────────────────
USB Connect                          USB Connect
    │                                    │
    ▼                                    ▼
Start Heartbeat ◄── First!           Send Init Messages
    │                                    │
    ▼                                    ▼
Send Init Messages                   Start Heartbeat ◄── Too late!
    │                                    │
    ▼                                    ▼
Stable session                       projectionDisconnected @ 11.7s
```

### Key Functions (ARMadb-driver)

| Address | Function | Purpose |
|---------|----------|---------|
| `0x00018088` | Message pre-processor | Validates header, magic bytes |
| `0x00018244` | Decrypt/validate handler | Processes incoming messages |
| `0x00018e2c` | Main message dispatcher | Routes by type (0xAA → heartbeat handler) |
| `0x0006327a` | D-Bus signal dispatch | Emits HUDComand_A_HeartBeat |

### Diagnostic Commands

**Check current setting:**
```bash
riddleBoxCfg SendHeartBeat
# Returns: 0 or 1
```

**Enable heartbeat (recommended):**
```bash
riddleBoxCfg SendHeartBeat 1
```

**Note:** Changes require reboot to take effect. The running ARMadb-driver process caches the value at startup.

---

## Configuration Precedence

| Priority | Source | Persistence | Notes |
|----------|--------|-------------|-------|
| 1 (Highest) | Host App BoxSettings | Until next init | Sent via USB protocol at connection |
| 2 | riddle.conf | Persistent | Written by riddleBoxCfg or Web API |
| 3 | Web API (/server.cgi) | Persistent | Manual configuration changes |
| 4 (Lowest) | riddle_default.conf | Factory | Restored on factory reset |

**Note:** When the host app sends BoxSettings during initialization, it can override values in riddle.conf. This is why the same adapter may behave differently with different host applications.

---

## D-Bus Interface

The firmware uses D-Bus (`org.riddle`) for inter-process communication.

### Key Signals
| Signal | Purpose |
|--------|---------|
| AudioSignal_* | Audio routing control |
| HUDComand_* | Head unit commands |
| **HUDComand_A_HeartBeat** | USB keepalive received (from host 0xAA message) |
| HUDComand_A_ResetUSB | USB controller reset |
| HUDComand_A_UploadFile | File upload complete |
| HUDComand_B_BoxSoftwareVersion | Version query response |
| kRiddleHUDComand_A_Reboot | System reboot |
| Bluetooth_ConnectStart | BT connection initiated |
| StartAutoConnect | Auto-connect triggered |

---

## Scripts Called by Firmware

| Script | Trigger | Purpose |
|--------|---------|---------|
| `/script/start_bluetooth_wifi.sh` | Boot, reconnect | Initialize BT/WiFi |
| `/script/close_bluetooth_wifi.sh` | Disconnect | Stop BT/WiFi services |
| `/script/phone_link_deamon.sh` | Connection events | Manage phone link |
| `/script/start_accessory.sh` | USB connect | Start USB accessory mode |
| `/script/update_box_ota.sh` | OTA update | Apply firmware update |
| `/script/open_log.sh` | Debug mode | Enable logging |

---

## LED Configuration Parameters (8)

| Parameter | Type | Default | Description |
|-----------|------|---------|-------------|
| rgbStartUp | hex (24-bit) | 0x800000 | Startup LED color (red) |
| rgbWifiConnected | hex (24-bit) | 0x008000 | WiFi connected color (green) |
| rgbBtConnecting | hex (24-bit) | 0x800000 | Bluetooth connecting color (red) |
| rgbLinkSuccess | hex (24-bit) | 0x008000 | Link success color (green) |
| rgbUpgrading | hex (24-bit) | 0x800000/0x008000 | Firmware upgrade (alternating) |
| rgbUpdateSuccess | hex (24-bit) | 0x800080 | Update success color (purple) |
| rgbFault | hex (24-bit) | 0x000080 | Fault/error color (blue) |
| ledTimingMode | enum (0-2) | 1 | 0=Static, 1=Blink, 2=Gradient |

---

## Configuration Flow

```
1. Boot: ARMadb-driver starts
         |
         v
2. Read /etc/riddle.conf -> global variables (cached)
         |
         v
3. Initialize hardware (USB, WiFi, BT) using cached values
         |
         v
4. Runtime: Most settings already applied
   |
   +-> Changing config via riddleBoxCfg writes to file
       but does NOT update running process
         |
         v
5. Reboot/restart required to apply new values
```

---

---

## riddleBoxCfg CLI Reference

### Access Notes

**Important**: `riddleBoxCfg` is located at `/usr/sbin/riddleBoxCfg` which may not be in PATH for all shells.

| Access Method | PATH includes /usr/sbin | Usage |
|---------------|------------------------|-------|
| Telnet (port 23) | Yes | `riddleBoxCfg --info` |
| SSH (dropbear) | Often No | `/usr/sbin/riddleBoxCfg --info` |

**Fix for SSH**: Add to profile: `echo 'export PATH=$PATH:/usr/sbin' >> /etc/profile`

### Command Reference

```
riddleBoxCfg --help                                    : print usage
riddleBoxCfg --info                                    : get all config parameters with defaults/ranges
riddleBoxCfg --uuid                                    : print box uuid
riddleBoxCfg --readOld                                 : update riddle.conf include oldCfgFileData
riddleBoxCfg --removeOld                               : remove old cfgFileData
riddleBoxCfg --restoreOld                              : restore old cfgFileData (recovery)
riddleBoxCfg --upConfig                                : update riddle.conf on the box
riddleBoxCfg --specialConfig                           : sync riddle_special.conf to riddle_default.conf
riddleBoxCfg -s key value  [--default]                 : set a key's value
riddleBoxCfg -s list listKeyID listKey listvalue       : set a list key's value
riddleBoxCfg -g key  [--default]                       : get a value from key
riddleBoxCfg -g list listKeyID listKey                 : get a list value from key
riddleBoxCfg -d list listkey listvalue                 : delete a list key's value
```

---

## Authoritative Parameter List (from --info)

Output from `/usr/sbin/riddleBoxCfg --info` on CPC200-CCPA firmware. This is the **definitive source** for all configuration parameters.

### Integer Parameters

| Key | Default | Min | Max | Source |
|-----|---------|-----|-----|--------|
| iAP2TransMode | 0 | 0 | 1 | Web UI |
| MediaQuality | 1 | 0 | 1 | Web UI |
| MediaLatency | 1000 | 300 | 2000 | Web UI |
| UdiskMode | 1 | 0 | 1 | Web UI |
| LogMode | 1 | 0 | 1 | Internal |
| BoxConfig_UI_Lang | 0 | 0 | 65535 | Web UI |
| BoxConfig_DelayStart | 0 | 0 | 120 | Web UI |
| BoxConfig_preferSPSPPSType | 0 | 0 | 1 | Protocol Init |
| NotCarPlayH264DecreaseMode | 0 | 0 | 2 | Internal |
| NeedKeyFrame | 0 | 0 | 1 | Protocol Init |
| EchoLatency | 320 | 20 | 2000 | Web UI |
| DisplaySize | 0 | 0 | 3 | Web UI |
| UseBTPhone | 0 | 0 | 1 | Internal |
| MicGainSwitch | 0 | 0 | 1 | Web UI |
| CustomFrameRate | 0 | 0 | 60 | Protocol Init |
| NeedAutoConnect | 1 | 0 | 1 | Web UI |
| BackgroundMode | 0 | 0 | 1 | Web UI |
| HudGPSSwitch | 1 | 0 | 1 | Web UI |
| CarDate | 0 | 0 | 65535 | Internal |
| WiFiChannel | 36 | 1 | 165 | Web UI |
| AutoPlauMusic | 0 | 0 | 1 | Web UI |
| MouseMode | 1 | 0 | 1 | Web UI |
| CustomCarLogo | 0 | 0 | 1 | Web UI |
| VideoBitRate | 0 | 0 | 20 | Protocol Init |
| VideoResolutionHeight | 0 | 0 | 4096 | Protocol Init |
| VideoResolutionWidth | 0 | 0 | 4096 | Protocol Init |
| UDiskPassThrough | 1 | 0 | 1 | Web UI |
| AndroidWorkMode | 1 | 1 | 5 | Protocol Init |
| CarDrivePosition | 0 | 0 | 1 | Web UI |
| AndroidAutoWidth | 0 | 0 | 4096 | Protocol Init |
| AndroidAutoHeight | 0 | 0 | 4096 | Protocol Init |
| ScreenDPI | 0 | 0 | 480 | Protocol Init |
| KnobMode | 0 | 0 | 1 | Web UI |
| NaviAudio | 0 | 0 | 2 | Web UI |
| ScreenPhysicalW | 0 | 0 | 1000 | Protocol Init |
| ScreenPhysicalH | 0 | 0 | 1000 | Protocol Init |
| CallQuality | 1 | 0 | 2 | Web UI | **BUGGY** - see below |
| VoiceQuality | 1 | 0 | 2 | Internal | **BUGGY** - see below |
| AutoUpdate | 1 | 0 | 1 | Web UI |
| LastBoxUIType | 1 | 0 | 2 | Internal |
| BoxSupportArea | 0 | 0 | 1 | Internal |
| HNPInterval | 10 | 0 | 1000 | Internal |
| lightType | 3 | 1 | 3 | Web UI |
| MicType | 0 | 0 | 2 | Web UI |
| RepeatKeyframe | 0 | 0 | 1 | Protocol Init |
| BtAudio | 0 | 0 | 1 | Web UI |
| MicMode | 0 | 0 | 4 | Internal |
| SpsPpsMode | 0 | 0 | 3 | Protocol Init |
| MediaPacketLen | 200 | 200 | 20000 | Internal |
| TtsPacketLen | 200 | 200 | 40000 | Internal |
| VrPacketLen | 200 | 200 | 40000 | Internal |
| TtsVolumGain | 0 | 0 | 1 | Internal |
| VrVolumGain | 0 | 0 | 1 | Internal |
| CarLinkType | 30 | 1 | 30 | Internal |
| SendHeartBeat | 1 | 0 | 1 | Internal |
| SendEmptyFrame | 1 | 0 | 1 | Internal |
| autoDisplay | 1 | 0 | 2 | Web UI |
| USBConnectedMode | 0 | 0 | 2 | Web UI |
| USBTransMode | 0 | 0 | 1 | Web UI |
| ReturnMode | 0 | 0 | 1 | Web UI |
| LogoType | 0 | 0 | 3 | Web UI |
| BackRecording | 0 | 0 | 1 | Internal |
| FastConnect | 0 | 0 | 1 | Protocol Init |
| WiredConnect | 1 | 0 | 1 | Internal |
| ImprovedFluency | 0 | 0 | 1 | Web UI |
| NaviVolume | 0 | 0 | 100 | Web UI |
| OriginalResolution | 0 | 0 | 1 | Protocol Init |
| AutoConnectInterval | 0 | 0 | 60 | Internal |
| AutoResetUSB | 1 | 0 | 1 | Internal |
| HiCarConnectMode | 0 | 0 | 1 | Internal |
| GNSSCapability | 0 | 0 | 65535 | Internal |
| DashboardInfo | 1 | 0 | 7 | Internal |
| AudioMultiBusMode | 1 | 0 | 1 | Internal |

### String Parameters

| Key | Default | Min Len | Max Len | Source |
|-----|---------|---------|---------|--------|
| CarBrand | "" | 0 | 31 | Internal |
| CarModel | "" | 0 | 31 | Internal |
| BluetoothName | "" | 0 | 15 | Web UI |
| WifiName | "" | 0 | 15 | Web UI |
| CustomBluetoothName | "" | 0 | 15 | Web UI |
| CustomWifiName | "" | 0 | 15 | Web UI |
| LastPhoneSpsPps | "" | 0 | 511 | Internal |
| CustomId | "" | 0 | 31 | Internal |
| LastConnectedDevice | "" | 0 | 17 | Internal |
| IgnoreUpdateVersion | "" | 0 | 15 | Internal |
| CustomBoxName | "" | 0 | 15 | Web UI |
| WifiPassword | "12345678" | 0 | 15 | Web UI |
| BrandName | "" | 0 | 15 | Internal |
| BrandBluetoothName | "" | 0 | 15 | Internal |
| BrandWifiName | "" | 0 | 15 | Internal |
| BrandServiceURL | "" | 0 | 31 | Internal |
| BoxIp | "" | 0 | 15 | Web UI |
| USBProduct | "" | 0 | 63 | Web UI |
| USBManufacturer | "" | 0 | 63 | Web UI |
| USBPID | "" | 0 | 4 | Web UI |
| USBVID | "" | 0 | 4 | Web UI |
| USBSerial | "" | 0 | 63 | Internal |
| oemName | "" | 0 | 63 | Internal |

---

## Known Configuration Bugs

### CallQuality → VoiceQuality Translation Bug (Firmware 2025.10.XX)

**Status:** CONFIRMED (Jan 2026)
**Severity:** Medium - Setting has no effect

The `CallQuality` Web UI setting (0=Normal, 1=Clear, 2=HD) fails to translate to the internal `VoiceQuality` parameter.

**Error observed in TTY logs:**
```
[D] CMD_BOX_INFO: {...,"callQuality":1,...}
[E] apk callQuality value transf box value error , please check!
```

**Technical Details:**
- Host app sends `callQuality` in BoxSettings JSON
- Firmware's `ConfigFileUtils` attempts to map it to `VoiceQuality`
- Translation fails with error, VoiceQuality remains unchanged
- Error occurs regardless of CallQuality value (0, 1, or 2)

**Impact:**
- CallQuality setting via Web UI has no effect
- Voice/telephony audio sample rate is NOT controllable via this setting
- CarPlay independently negotiates sample rate (always 16kHz on modern iPhones)

**Testing Performed:**
- Cycled CallQuality 0→1→2 via Web UI
- Captured USB audio packets during phone calls
- All captures showed decode_type=5 (16kHz), never decode_type=3 (8kHz)
- TTY logs confirmed error on every CallQuality change

**Workaround:** None. Sample rate is determined by CarPlay's `audioFormat` during stream setup.

---

## Parameter Source Classification

Parameters come from different sources and have different behaviors:

### Web UI Parameters
Set via web interface at `http://192.168.43.1` (or `http://192.168.50.2`). User-facing settings that persist in riddle.conf.

**Examples**: WiFiChannel, MediaLatency, MediaQuality, MicType, MouseMode, BackgroundMode, CustomWifiName

### Protocol Init Parameters
Set by host applications (carlink_native, pi-carplay, AutoKit) during USB protocol initialization. These are sent as BoxSettings and may override riddle.conf values.

**Examples**: SpsPpsMode, RepeatKeyframe, VideoBitRate, VideoResolutionWidth/Height, FastConnect, NeedKeyFrame, AndroidWorkMode, CustomFrameRate, ScreenDPI

**Note**: These parameters are dynamically set each time a host app connects. The adapter may behave differently with different host applications.

### Internal Parameters
System-level settings not exposed in standard UI. Used for protocol internals, debugging, or OEM configuration.

**Examples**: SendHeartBeat, SendEmptyFrame, MediaPacketLen, TtsPacketLen, HNPInterval, LogMode, CarLinkType, LastPhoneSpsPps, AutoResetUSB

---

## Web API Configuration

### Endpoint
```
POST /server.cgi
FormData: cmd=set&item=parameter&val=value&ts=timestamp&sign=md5_hash
Salt: HweL*@M@JEYUnvPw9G36MVB9X6u@2qxK
```

### Method Comparison

| Method | Endpoint/Binary | Format | Latency | Restart Required |
|--------|----------------|--------|---------|------------------|
| USB | CPC200-CCPA protocol | Binary packets | <100ms | Video/USB changes only |
| Web API | /server.cgi | POST FormData+MD5 | Real-time | Resolution/USB identity |
| CLI | /usr/sbin/riddleBoxCfg | -s param value | Immediate | System settings |

---

## Validation Rules

| Type | Rule | Error Message |
|------|------|---------------|
| Range 0-60 | micGain | "Please Enter A Number From 0-60" |
| Range 300-2000 | mediaDelay | "Please Enter A Number From 300-2000" |
| Range 0-4096 | resolution | "Please Enter A Number From 0-4096" |
| Range 0-20 | bitRate | "Please Enter A Number From 0-20" |
| Range 0-480 | ScreenDPI | "Please Enter A Number From 0-480" |
| Text | alphanumeric | "No Special Symbols Are Allowed" |
| Text | no emoji | "Emoticons Cannot Be Used" |

---

## Model Detection & Parameter Filtering

### Product Identification

| File | Purpose |
|------|---------|
| `/etc/box_product_type` | Model identifier (A15W, A15H, etc.) |
| `/etc/box_version` | Custom version affecting module loading |
| `/script/getFuncModule.sh` | Module loading logic based on product type |
| `/script/init_audio_codec.sh` | Audio codec detection (WM8960/AC6966) |

### Module Loading by Model

```
A15W: CarPlay,AndroidAuto,AndroidMirror,iOSMirror,HiCar
A15H: CarPlay,HiCar (limited subset)
```

### Model-Specific Parameter Visibility

**IMPORTANT**: Parameters are NOT "hidden" by firmware - they are **contextually filtered** based on hardware capabilities.

- **Backend Reality**: All 91 parameters are accessible via API/CLI regardless of model
- **Frontend Filtering**: Web interface conditionally displays parameters based on hardware capabilities

**A15W Contextual Limitations**:

| Parameter | Status | Reason |
|-----------|--------|--------|
| micGain, MicMode, micType | Limited | Hardware-dependent microphone |
| KnobMode | Disabled | No physical knob hardware |
| btCall | Limited | Bluetooth calling hardware constraints |
| audioCodec | Hardware-detected | WM8960(0) or AC6966(1) via I2C |

---

## Configuration Recovery

If configuration changes cause issues (e.g., CarPlay stops working):

```bash
# Restore previous configuration
/usr/sbin/riddleBoxCfg --restoreOld

# Or restore factory defaults
cp /etc/riddle_default.conf /etc/riddle.conf
/usr/sbin/riddleBoxCfg --upConfig
```

The `--restoreOld` command restores the previous configuration state, useful when experimental changes break functionality.

---

## References

- Source: `pi-carplay-4.1.3/firmware_binaries/CONFIG_KEYS_REFERENCE.md`
- Source: `carlink_native/documents/reference/Firmware/firmware_configurables.md`
- Firmware strings analyzed using: `strings -t x`, `objdump -d`
