# CPC200-CCPA Command (0x08) Reference

**Status:** Documented from binary analysis
**Source:** ARMadb-driver_unpacked binary analysis
**Last Updated:** 2026-01-18

---

## Overview

The Command message type (0x08) is **bidirectional** - commands flow in both directions between host and adapter. The adapter acts as a bridge, forwarding many commands between the host application and the connected phone (CarPlay/Android Auto).

### Message Format

```
USB Header (16 bytes):
+------------------+------------------+------------------+------------------+
|   0x55AA55AA     |   0x00000004     |   0x00000008     |   0xFFFFFFF7     |
|   (magic)        |   (length=4)     |   (type=8)       |   (type check)   |
+------------------+------------------+------------------+------------------+

Payload (4 bytes):
+------------------+
|   Command ID     |
|   (4B LE)        |
+------------------+
```

---

## Message Flow Architecture

```
┌─────────────────────────────────────────────────────────────────────────┐
│                           MESSAGE FLOW                                   │
├─────────────────────────────────────────────────────────────────────────┤
│                                                                          │
│   ┌──────────┐         ┌──────────┐         ┌──────────┐                │
│   │   HOST   │ ◄─────► │  ADAPTER │ ◄─────► │  PHONE   │                │
│   │   APP    │   USB   │ CPC200   │  iAP2/  │ CarPlay/ │                │
│   │          │         │          │   AA    │ Android  │                │
│   └──────────┘         └──────────┘         └──────────┘                │
│                                                                          │
│   Direction Codes:                                                       │
│   H→A    = Host to Adapter (handled by adapter)                         │
│   H→A→P  = Host to Adapter, forwarded to Phone                          │
│   P→A→H  = Phone to Adapter, forwarded to Host                          │
│   A→H    = Adapter originates, sends to Host                            │
│                                                                          │
└─────────────────────────────────────────────────────────────────────────┘
```

### Firmware Evidence

From binary analysis at `0x2047e`:
```c
BoxLog("Forward CarPlay control cmd!");  // Logged when forwarding to phone
call fcn.000197a8(r6, r5);               // Command name lookup and dispatch
```

---

## Command Direction Reference

### Commands: Host → Adapter → Phone (Forwarded to Phone)

These commands are sent by the host and **forwarded to the connected phone** via CarPlay/Android Auto protocol:

| ID | Action | Purpose | Phone Receives |
|----|--------|---------|----------------|
| 5 | SiriButtonDown | Activate Siri/Assistant | Voice assistant trigger |
| 6 | SiriButtonUp | Release Siri button | Voice assistant release |
| 100-106 | CtrlButton* | D-Pad navigation | UI navigation events |
| 111-114 | CtrlKnob* | Rotary knob input | Knob rotation events |
| 200-205 | Music* | Media control | Playback commands |
| 300-314 | Phone* | Call control, DTMF | Phone call events |

**Firmware handler:** `0x2047e` - logs "Forward CarPlay control cmd!" then dispatches

### Commands: Host → Adapter (Handled by Adapter Only)

These commands are processed by the adapter firmware and **NOT forwarded** to the phone:

| ID | Action | Adapter Behavior |
|----|--------|------------------|
| 7 | UseCarMic | Configure audio routing to use car microphone |
| 8 | UseBoxMic | Configure audio routing to use adapter microphone |
| 12 | RequestKeyFrame | Trigger IDR frame insertion in video stream |
| 15 | UseBoxI2SMic | Configure I2S microphone input |
| 16 | StartNightMode | Enable dark theme in CarPlay UI |
| 17 | StopNightMode | Disable dark theme |
| 21 | UsePhoneMic | Configure audio routing to phone microphone |
| 22 | UseBluetoothAudio | Route audio via Bluetooth |
| 23 | UseBoxTransAudio | Route audio via adapter transmitter |
| 24 | Use24GWiFi | Switch to 2.4 GHz WiFi band |
| 25 | Use5GWiFi | Switch to 5 GHz WiFi band |
| 26 | RefreshFrame | Force video frame refresh |
| 28 | StartStandbyMode | Enter low-power standby |
| 29 | StopStandbyMode | Exit standby mode |
| 30 | StartBleAdv | Start BLE advertising for wireless pairing |
| 31 | StopBleAdv | Stop BLE advertising |
| 1000 | SupportWifi | Enable WiFi mode |
| 1002 | StartAutoConnect | Initiate auto-connect sequence |
| 1012 | WiFiPair | Enter WiFi pairing mode |

### Commands: Phone → Adapter → Host (Forwarded from Phone)

These commands **originate from the phone** (CarPlay/Android Auto) and are forwarded to the host:

| ID | Action | Trigger | Host Should |
|----|--------|---------|-------------|
| 3 | RequestHostUI | User taps phone/car icon in CarPlay | Show native host UI |
| 14 | Hide | User minimizes CarPlay | Hide projection view |

**Firmware handler:** `fcn.0001d2fe` at `0x1da50` - receives via D-Bus from iAP handler

### Commands: Adapter → Host (Adapter Originated)

These commands are **generated by the adapter** to notify the host of state changes:

| ID | Action | Trigger | Host Should |
|----|--------|---------|-------------|
| 1010 | ProjectionDisconnected | Phone disconnects from CarPlay/AA | Handle session end |
| 1003-1011 | Connection status | WiFi/BT state changes | Update connection UI |

---

## IMPORTANT: Voice/Call Events Use AudioData, NOT Command

**Siri, phone calls, and navigation audio events are signaled via AudioData (0x07), not Command (0x08).**

### AudioData (0x07) Audio Commands

These are embedded in AudioData messages with a 13-byte payload when no audio data is present:

| AudioCmd | Name | Direction | Host Action |
|----------|------|-----------|-------------|
| 1 | AUDIO_OUTPUT_START | P→A→H | Prepare audio playback |
| 2 | AUDIO_OUTPUT_STOP | P→A→H | Stop audio playback |
| 3 | AUDIO_INPUT_CONFIG | P→A→H | Configure mic input format |
| 4 | AUDIO_PHONECALL_START | P→A→H | **Start microphone capture** |
| 5 | AUDIO_PHONECALL_STOP | P→A→H | **Stop microphone capture** |
| 6 | AUDIO_NAVI_START | P→A→H | Duck media audio for navigation |
| 7 | AUDIO_NAVI_STOP | P→A→H | Restore media audio |
| 8 | AUDIO_SIRI_START | P→A→H | **Start microphone capture** |
| 9 | AUDIO_SIRI_STOP | P→A→H | **Stop microphone capture** |
| 10 | AUDIO_MEDIA_START | P→A→H | Media playback starting |
| 11 | AUDIO_MEDIA_STOP | P→A→H | Media playback stopped |
| 14 | AUDIO_INCOMING_CALL | P→A→H | Incoming call notification |

**Firmware handler:** `0x1a97e` - maps iAP audio signals to AudioSignal_* names

### Correct Siri Flow (Verified)

```
Phone (CarPlay)              Adapter                    Host App
      │                         │                          │
      │ [User activates Siri]   │                          │
      │                         │                          │
      │──AudioSignal_SIRI_START─┼──AudioData(cmd=8)───────►│
      │                         │                          │ [Start mic capture]
      │                         │                          │
      │                         │◄──────AudioData──────────│ [Mic audio samples]
      │◄──────iAP audio─────────│                          │
      │                         │                          │
      │ [Siri processes voice]  │                          │
      │                         │                          │
      │──AudioSignal_SIRI_STOP──┼──AudioData(cmd=9)───────►│
      │                         │                          │ [Stop mic capture]
```

### Incorrect Assumption (Clarified)

The Command IDs `SiriButtonDown(5)` and `SiriButtonUp(6)` are for the **host to INITIATE Siri** (e.g., steering wheel button press), NOT for receiving Siri activation notifications from the phone.

---

## Command ID Reference Tables

### Basic Commands (1-31)

| ID | Hex | Action | Direction | Description |
|----|-----|--------|-----------|-------------|
| 1 | 0x01 | StartRecordMic | H→A→P | Begin microphone recording |
| 2 | 0x02 | StopRecordMic | H→A→P | Stop microphone recording |
| 3 | 0x03 | RequestHostUI | P→A→H | Phone requests host UI |
| 4 | 0x04 | DisableBluetooth | H→A | Disable Bluetooth |
| 5 | 0x05 | SiriButtonDown | H→A→P | Siri button pressed |
| 6 | 0x06 | SiriButtonUp | H→A→P | Siri button released |
| 7 | 0x07 | UseCarMic | H→A | Use car's microphone |
| 8 | 0x08 | UseBoxMic | H→A | Use adapter's microphone |
| 12 | 0x0C | RequestKeyFrame | H→A | Request video IDR frame |
| 14 | 0x0E | Hide | P→A→H | Hide/minimize projection |
| 15 | 0x0F | UseBoxI2SMic | H→A | Use adapter's I2S microphone |
| 16 | 0x10 | StartNightMode | H→A | Enable night/dark mode |
| 17 | 0x11 | StopNightMode | H→A | Disable night mode |
| 18 | 0x12 | StartGNSSReport | H→A | Start GPS data forwarding to phone |
| 19 | 0x13 | StopGNSSReport | H→A | Stop GPS data forwarding |
| 21 | 0x15 | UsePhoneMic | H→A | Use phone's microphone |
| 22 | 0x16 | UseBluetoothAudio | H→A | Route audio via Bluetooth |
| 23 | 0x17 | UseBoxTransAudio | H→A | Use adapter audio transmitter |
| 24 | 0x18 | Use24GWiFi | H→A | Use 2.4 GHz WiFi band |
| 25 | 0x19 | Use5GWiFi | H→A | Use 5 GHz WiFi band |
| 26 | 0x1A | RefreshFrame | H→A | Force video frame refresh |
| 28 | 0x1C | StartStandbyMode | H→A | Enter standby mode |
| 29 | 0x1D | StopStandbyMode | H→A | Exit standby mode |
| 30 | 0x1E | StartBleAdv | H→A | Start BLE advertising |
| 31 | 0x1F | StopBleAdv | H→A | Stop BLE advertising |

### Control Button Commands (100-106) - All H→A→P

| ID | Hex | Action | Description |
|----|-----|--------|-------------|
| 100 | 0x64 | CtrlButtonLeft | D-Pad left - forwarded to phone |
| 101 | 0x65 | CtrlButtonRight | D-Pad right - forwarded to phone |
| 102 | 0x66 | CtrlButtonUp | D-Pad up - forwarded to phone |
| 103 | 0x67 | CtrlButtonDown | D-Pad down - forwarded to phone |
| 104 | 0x68 | CtrlButtonEnter | Enter/Select - forwarded to phone |
| 105 | 0x69 | CtrlButtonRelease | Button release - forwarded to phone |
| 106 | 0x6A | CtrlButtonBack | Back button - forwarded to phone |

### Rotary Knob Commands (111-114) - All H→A→P

| ID | Hex | Action | Description |
|----|-----|--------|-------------|
| 111 | 0x6F | CtrlKnobLeft | Knob CCW - forwarded to phone |
| 112 | 0x70 | CtrlKnobRight | Knob CW - forwarded to phone |
| 113 | 0x71 | CtrlKnobUp | Knob tilt up - forwarded to phone |
| 114 | 0x72 | CtrlKnobDown | Knob tilt down - forwarded to phone |

### Media Control Commands (200-205) - All H→A→P

| ID | Hex | Action | Description |
|----|-----|--------|-------------|
| 200 | 0xC8 | MusicACHome | Home - forwarded to phone |
| 201 | 0xC9 | MusicPlay | Play - forwarded to phone |
| 202 | 0xCA | MusicPause | Pause - forwarded to phone |
| 203 | 0xCB | MusicPlayOrPause | Toggle - forwarded to phone |
| 204 | 0xCC | MusicNext | Next track - forwarded to phone |
| 205 | 0xCD | MusicPrev | Previous track - forwarded to phone |

### Phone Call Commands (300-314) - All H→A→P

| ID | Hex | Action | Description |
|----|-----|--------|-------------|
| 300 | 0x12C | PhoneAnswer | Answer call - forwarded to phone |
| 301 | 0x12D | PhoneHungUp | End call - forwarded to phone |
| 302-313 | 0x12E-0x139 | PhoneKey0-9,*,# | DTMF - forwarded to phone |
| 314 | 0x13A | CarPlay_PhoneHookSwitch | Hook toggle - forwarded to phone |

### Connection Status Commands (1000-1013) - Mixed Directions

| ID | Hex | Action | Direction | Description |
|----|-----|--------|-----------|-------------|
| 1000 | 0x3E8 | SupportWifi | H→A | Enable WiFi mode |
| 1001 | 0x3E9 | SupportAutoConnect | H→A | Enable auto-connect |
| 1002 | 0x3EA | StartAutoConnect | H→A | Start auto-connect |
| 1003 | 0x3EB | ScaningDevices | A→H | Scanning notification |
| 1004 | 0x3EC | DeviceFound | A→H | Device found notification |
| 1005 | 0x3ED | DeviceNotFound | A→H | No device found |
| 1006 | 0x3EE | DeviceConnectFailed | A→H | Connection failed |
| 1007 | 0x3EF | DeviceBluetoothConnected | A→H | BT connected |
| 1008 | 0x3F0 | DeviceBluetoothNotConnected | A→H | BT disconnected |
| 1009 | 0x3F1 | DeviceWifiConnected | A→H | WiFi connected |
| 1010 | 0x3F2 | ProjectionDisconnected | A→H | **Session ended** |
| 1011 | 0x3F3 | DeviceBluetoothPairStart | A→H | Pairing started |
| 1012 | 0x3F4 | WiFiPair | H→A | Enter pairing mode |
| 1013 | 0x3F5 | GetBluetoothOnlineList | H→A | Request BT device list |

---

## Binary Analysis Details

### Key Functions

| Address | Function | Purpose |
|---------|----------|---------|
| `0x197a8` | Command name lookup | Maps command ID to string name |
| `0x2047e` | CarPlay forward | Forwards commands to CarPlay |
| `0x1d2fe` | D-Bus handler | Receives commands from phone via D-Bus |
| `0x1a97e` | Audio signal handler | Maps iAP audio events to AudioSignal_* |

### Forwarding Log Messages (Firmware)

| Address | String | Meaning |
|---------|--------|---------|
| `0x6d18b` | "Forward CarPlay control cmd!" | Command forwarded to CarPlay |
| `0x6d15b` | "Forward AndroidAuto control cmd!" | Command forwarded to AA |
| `0x6bd4d` | "_SendPhoneCommandToCar: %s(%d)" | Logging forwarded command |

---

## GPS/GNSS Commands (Binary Verified Jan 2026)

Commands 18 and 19 control GPS data forwarding from the head unit to the connected phone.

### StartGNSSReport (18 / 0x12)

**Direction:** Host → Adapter

**Purpose:** Enables the adapter to read GPS data from `/tmp/gnss_info` and forward it to the phone via iAP2LocationEngine (CarPlay) or equivalent (Android Auto).

**Prerequisites:**
- `HudGPSSwitch` must be enabled in riddle.conf (set to 1)
- Or `/tmp/gnss_switch` file contains value 1

**Firmware Behavior:**
1. Adapter starts monitoring `/tmp/gnss_info` for NMEA data
2. Parses NMEA sentences ($GPGGA, $GPRMC, $GPGSV)
3. Forwards location to phone via iAP2 LocationInformation message
4. Phone's CarPlay Maps uses HU location instead of phone GPS

**Usage:**
```
Host sends: Command 0x08 with payload = 18
Adapter: Starts GPS forwarding loop
```

### StopGNSSReport (19 / 0x13)

**Direction:** Host → Adapter

**Purpose:** Stops GPS data forwarding to the phone.

**Firmware Behavior:**
1. Adapter stops monitoring `/tmp/gnss_info`
2. Phone reverts to using its internal GPS

**Usage:**
```
Host sends: Command 0x08 with payload = 19
Adapter: Stops GPS forwarding
```

### GPS Data Format

The host writes NMEA 0183 sentences to `/tmp/gnss_info`:

```
$GPGGA,123519,4807.038,N,01131.000,E,1,08,0.9,545.4,M,47.0,M,,*47
$GPRMC,123519,A,4807.038,N,01131.000,E,022.4,084.4,230394,003.1,W*6A
```

| Sentence | Required | Purpose |
|----------|----------|---------|
| `$GPGGA` | Yes | Position, altitude, fix quality |
| `$GPRMC` | Yes | Position, speed, course, date |
| `$GPGSV` | Optional | Satellite visibility info |

### Related Configuration

| Config Key | File | Purpose |
|------------|------|---------|
| `HudGPSSwitch` | riddle.conf | Enable/disable GPS forwarding (0/1) |
| `GNSSCapability` | riddle.conf | GPS capabilities bitmask |
| `/tmp/gnss_switch` | Runtime | Runtime enable (overrides config) |
| `/tmp/gnss_info` | Runtime | NMEA data input file |

See `04_Implementation/host_app_guide.md` for complete GPS implementation guide.

---

## Related Documentation

- `usb_protocol.md` - Main USB protocol reference
- `../04_Implementation/session_examples.md` - **Real captured session examples (CarPlay & Android Auto)**
- `../03_Audio_Processing/audio_formats.md` - Audio format analysis and processing pipeline
- `../01_Firmware_Architecture/initialization.md` - Session setup
