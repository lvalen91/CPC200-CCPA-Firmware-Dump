# CPC200-CCPA Key Binaries Reference

**Purpose:** Reference for firmware binary analysis
**Consolidated from:** GM_research, pi-carplay firmware extraction
**Last Updated:** 2026-01-19 (added shell execution analysis)

---

## Executable Binaries

| Binary | Packed Size | Unpacked Size | Purpose |
|--------|-------------|---------------|---------|
| AppleCarPlay | 325KB | 573KB | Main CarPlay receiver |
| ARMiPhoneIAP2 | 182KB | 494KB | iPhone IAP2 protocol handler |
| ARMadb-driver | 217KB | 479KB | Main USB protocol handler |
| ARMAndroidAuto | - | 489KB | Android Auto protocol handler |
| ARMHiCar | - | 132KB | Huawei HiCar support |
| ARMandroid_Mirror | - | 106KB | Android mirroring |
| bluetoothDaemon | 173KB | 409KB | Bluetooth management |
| mdnsd | - | 378KB | mDNS/Bonjour service |
| boxNetworkService | 40KB | - | Network management (not UPX packed) |
| riddleBoxCfg | 30KB | 50KB | Configuration CLI |
| server.cgi | - | 74KB | Web UI backend |
| upload.cgi | - | 53KB | File upload handler |
| ARMimg_maker | 21KB | 38KB | Firmware image tool |
| hfpd | - | Static | Bluetooth HFP daemon |
| hwSecret | - | 23KB | Secret/key management |
| riddle_top | - | 10KB | Process monitor |
| colorLightDaemon | - | - | RGB LED controller |
| adbd | - | - | Android Debug Bridge daemon |
| boa | - | - | Web server (HTTP) |
| am | - | - | Activity manager |

### Binary Availability Status

| Binary | Packed | Unpacked | Ghidra Analyzed |
|--------|--------|----------|-----------------|
| ARMadb-driver | ✅ | ✅ | ✅ Fully analyzed |
| ARMiPhoneIAP2 | ✅ | ✅ | Partial |
| AppleCarPlay | ✅ | ✅ | Partial |
| bluetoothDaemon | ✅ | ✅ | Not yet |
| riddleBoxCfg | ✅ | ✅ | Partial |
| ARMimg_maker | ✅ | ✅ | ✅ Key extracted |
| ARMAndroidAuto | ❌ UPX error | - | Blocked |

**Note:** `ARMAndroidAuto` fails to unpack with "compressed data violation" error even with modified UPX.

---

## Key Libraries

### DMSDP Framework

| Library | Size | Purpose |
|---------|------|---------|
| libdmsdp.so | 184KB | Core DMSDP protocol |
| libdmsdpcrypto.so | 80KB | Crypto (X25519, AES-GCM) |
| libdmsdpaudiohandler.so | 48KB | Audio dispatch |
| libdmsdpdvaudio.so | 48KB | Digital audio streaming |
| libdmsdpdvdevice.so | - | Device protocol constants |
| libdmsdpplatform.so | 242KB | FILLP, crypto, socket mgmt |

### Third-Party Libraries

| Library | Purpose |
|---------|---------|
| libfdk-aac.so.1.0.0 | AAC decoder (336KB) |
| libtinyalsa.so | Hardware abstraction (17KB) |
| libcrypto.so.1.1 | OpenSSL crypto |
| libssl.so.1.1 | OpenSSL SSL/TLS |

### Huawei HiCar

| Library | Size | Purpose |
|---------|------|---------|
| libHwKeystoreSDK.so | 168KB | Key Store API |
| libHisightSink.so | 147KB | Video sink |
| libhicar.so | - | HiCar protocol |

### Other

| Library | Purpose |
|---------|---------|
| libauthagent.so | Authentication/trust (44KB) |
| libnearby.so | Google Nearby protocol (91KB) |

---

## UPX Unpacking

All main binaries are UPX-packed with a custom variant. To unpack:

```bash
# Requires ludwig-v's modified UPX
/path/to/modified/upx -d binary -o binary_unpacked

# Or on the adapter itself
./upx -d /usr/sbin/ARMadb-driver -o /tmp/ARMadb-driver_unpacked
```

---

## Key Functions (ARMadb-driver)

| Function | Address | Purpose |
|----------|---------|---------|
| FUN_00018244 | 0x18244 | Message encryption/validation |
| FUN_00018e2c | 0x18e2c | Main message dispatcher / _SendDataToCar |
| FUN_00066190 | 0x66190 | riddle.conf config writer |
| FUN_00062e1c | 0x62e1c | Message buffer init |
| FUN_00062f34 | 0x62f34 | Message buffer populate |
| FUN_00017340 | 0x17340 | Message sender |
| FUN_00018088 | 0x18088 | Message pre-processor |
| FUN_00065178 | 0x65178 | JSON field extractor |

### Video-Related Strings (ARMadb-driver)

| String | Address | Purpose |
|--------|---------|---------|
| `recv CarPlay videoTimestamp:%llu` | 0x6d139 | Video timestamp logging |
| `recv AA videoTimestamp:%llu` | 0x6d043 | Android Auto video timestamp |
| `recv HiCar videoTimestamp:%llu` | 0x6cdbe | HiCar video timestamp |
| `_SendDataToCar iSize: %d, may need send ZLP` | 0x6b823 | USB transmission |
| `CarPlay recv data size error!` | 0x6d0fc | Video reception error |
| `box video frame rate: %d, %.2f KB/s` | 0x6c18b | Video statistics |
| USB magic `0x55AA55AA` | 0x62e18 | Protocol header constant |
| `recv CarPlay size info:%dx%d` | - | Resolution logging (no validation) |
| `set frame format: %s %dx%d %dfps` | - | Format setting (no bounds check) |
| `Not Enough Bandwidth` | - | Bandwidth limit warning |
| `Bandwidth Limit Exceeded` | - | Bandwidth limit error |

### Video Limit-Related Strings (AppleCarPlay)

| String | Address | Purpose |
|--------|---------|---------|
| `### Failed to allocate memory for video frame with timestamp!` | - | Memory allocation failure |
| `### H264 data buffer overrun!` | - | Buffer overflow error |
| `kScreenProperty_MaxFPS :%d` | - | Max FPS property (dynamic, not hardcoded) |
| `format[%d]: %s size: %dx%d minFps: %d maxFps: %d` | - | FPS range tracking |
| `### tcpSock recv bufSize: %d, maxBitrate: %d Mbps` | - | Bitrate limit (configurable) |
| `/tmp/screen_fps` | - | Runtime FPS config file |
| `/tmp/screen_size` | - | Runtime resolution config file |
| `--width %d --height %d --fps %d` | - | AppleCarPlay launch parameters |

---

## Key Functions (AppleCarPlay)

| Function/String | Address | Purpose |
|-----------------|---------|---------|
| `AirPlayReceiverSessionScreen_ProcessFrames` | 0x7ecbf | Receives H.264 stream |
| `_AirPlayReceiverSessionScreen_ProcessFrame` | 0x7ecea | Process single frame |
| `ScreenStreamProcessData` | 0x8ff62 | Raw stream handling |
| `### Send screen h264 frame data failed!` | 0x9016d | H.264 send error |
| `### Send h264 I frame data %d byte!` | 0x90196 | I-frame transmission |
| `### H264 data buffer overrun!` | 0x90119 | Buffer overflow |
| `### h264 frame data parse error!` | 0x900f9 | NAL parsing error |
| `_create_unix_socket %s SUC` | - | Unix socket IPC |

### Video Processing Note

**Video from CarPlay/Android Auto is NOT transcoded.** The AppleCarPlay binary receives H.264 via AirPlay, parses NAL units for keyframe detection, and forwards raw H.264 data to ARMadb-driver via Unix socket. ARMadb-driver prepends USB headers and transmits to the host. The host application must decode H.264.

---

## Shell Execution Strings (ARMadb-driver) - Security Relevant

The firmware uses `popen()` with `/bin/sh` to execute shell commands. Many accept user-controlled parameters, enabling **arbitrary command execution**.

### Commands with User Input (Command Injection - CRITICAL)

| Command Pattern | Input Source | Risk |
|-----------------|--------------|------|
| `sed -i "s/^ssid=.*/ssid=%s/" /etc/hostapd.conf` | BoxSettings wifiName | **CRITICAL** |
| `sed -i "s/name .*;/name \"%s\";/" /etc/bluetooth/hcid.conf` | BoxSettings btName | **CRITICAL** |
| `sed -i "s/^.*oemIconLabel = .*/oemIconLabel = %s/" %s` | oemIconLabel config | **CRITICAL** |
| `echo -n %s > /etc/box_product_type` | BoxSettings | MEDIUM |

**Exploitation:** Shell metacharacters (`"`, `;`, `$()`) in wifiName/btName break out of the sed command and execute arbitrary commands as root. Example:
```
wifiName = "a\"; /usr/sbin/riddleBoxCfg -s AdvancedFeatures 1; echo \""
```
This executes `riddleBoxCfg` immediately. See `03_Security_Analysis/vulnerabilities.md` for full details.

### Hardcoded Shell Commands (50+ found)

| Command | Trigger |
|---------|---------|
| `killall AppleCarPlay; AppleCarPlay --width %d --height %d --fps %d` | Open message |
| `killall ARMiPhoneIAP2;ARMiPhoneIAP2 %d %d %d 2&` | Phone connection |
| `mv %s %s;tar -xvf %s -C /tmp;rm -f %s;sync` | hwfs.tar.gz upload |
| `/script/phone_link_deamon.sh %s start &` | Phone link start |
| `sync;sleep 1;reboot` | Reboot command |
| `cp /tmp/carlogo.png /etc/boa/images/carlogo.png` | Logo upload |
| `rm -f /etc/riddle.conf /tmp/.riddle.conf` | Factory reset |
| `df -h >> %s;du -sh /* >> %s;cat /proc/meminfo >> %s;ps -l >> %s` | Debug test |
| `echo y > /sys/module/printk/parameters/time;dmesg >> %s` | Debug test |

### Script Execution

| Script Path | Trigger |
|-------------|---------|
| `/script/phone_link_deamon.sh %s start` | Phone connection |
| `/script/start_bluetooth_wifi.sh` | BT/WiFi init |
| `/script/open_log.sh` | Debug mode |
| `/script/update_box_ota.sh %s` | OTA update |
| `/script/custom_init.sh` | **Boot (if exists)** |

### SendFile Related Strings

| String | Purpose |
|--------|---------|
| `SEND FILE: %s, %d byte` | File upload logging |
| `UPLOAD FILE: %s, %d byte` | File upload logging |
| `UPLOAD FILE Length Error!!!` | Size validation error |
| `/tmp/uploadFileTmp` | Staging location |

---

## DMSDP Protocol Functions (libdmsdp.so)

```cpp
// Protocol initialization
DMSDPInitial()
DMSDPServiceStart()
DMSDPServiceStop()

// Data transmission
DMSDPConnectSendData()
DMSDPConnectSendBinaryData()
DMSDPNetworkSessionSendCrypto()

// Session management
DMSDPDataSessionNewSession()
DMSDPDataSessionSendCtrlMsg()

// RTP streaming
DMSDPCreateRtpReceiver()
DMSDPCreateRtpSender()
DMSDPRtpSendPCMPackMaxUnpacket()

// Channel management
DMSDPChannelProtocolCreate()
DMSDPChannelGetDeviceType()
DMSDPChannelGetDeviceState()
DMSDPChannelHandleMsg()
DMSDPChannelDealGlbCommand()
DMSDPNearbyChannelSendData()
DMSDPNearbyChannelUnPackageRcvData()

// Service loading
DMSDPLoadAudioService()
DMSDPLoadCameraService()
DMSDPLoadGpsService()
```

---

## iAP2 Engines (ARMiPhoneIAP2)

```cpp
iAP2CallStateEngine
iAP2CommunicationEngine
iAP2LocationEngine
iAP2MediaPlayerEngine
iAP2RouteGuidanceEngine
iAP2WiFiConfigEngine
```

---

## Audio Processing (libdmsdpaudiohandler.so)

```cpp
class AudioConvertor {
    void SetFormat(AudioPCMFormat src, AudioPCMFormat dst);
    void PushSrcAudio(unsigned char* data, unsigned int size);
    void PopDstAudio(unsigned char* data, unsigned int size);
    float GetConvertRatio();
};

// Format queries
GetAudioPCMFormat(int format_id);
getSpeakerFormat();
getMicFormat();
getModemSpeakerFormat();
getModemMicFormat();

// Stream handling
handleAudioType(AUDIO_TYPE_HICAR_SDK& type, DMSDPAudioStreamType stream_type);
getAudioTypeByDataAndStream(const char* data, DMSDPVirtualStreamData* stream_data);

// Service management
AudioService::requestAudioFocus(int type, int flags);
AudioService::abandonAudioFocus();
AudioService::GetAudioCapability(DMSDPAudioCapabilities** caps, unsigned int* count);
```

---

## Internal Command Strings

```
CMD_CARPLAY_MODE_CHANGE
CMD_SET_BLUETOOTH_PIN_CODE
CMD_BOX_WIFI_NAME
CMD_MANUAL_DISCONNECT_PHONE
CMD_CARPLAY_AirPlayModeChanges
CMD_BLUETOOTH_ONLINE_LIST
CMD_CAR_MANUFACTURER_INFO
CMD_STOP_PHONE_CONNECTION
CMD_CAMERA_FRAME
CMD_MULTI_TOUCH
CMD_CONNECTION_URL
CMD_BOX_INFO
CMD_PAY_RESULT
CMD_ACK
CMD_DEBUG_TEST
CMD_UPDATE
CMD_APP_SET_BOX_CONFIG
CMD_ENABLE_CRYPT
CMD_APP_INFO
```

---

## D-Bus Interfaces

### org.riddle

```cpp
HUDComand_A_HeartBeat
HUDComand_A_ResetUSB
HUDComand_A_UploadFile
HUDComand_B_BoxSoftwareVersion
HUDComand_D_BluetoothName
kRiddleHUDComand_A_Reboot
kRiddleHUDComand_CommissionSetting
```

### Audio Signals

```cpp
kRiddleAudioSignal_MEDIA_START
kRiddleAudioSignal_MEDIA_STOP
kRiddleAudioSignal_ALERT_START
kRiddleAudioSignal_ALERT_STOP
kRiddleAudioSignal_PHONECALL_Incoming
```

---

## Firmware Version Format

```
YYYY.MM.DD.HHMMVer
Example: 2025.02.25.1521CAY

YYYY = Year
MM = Month
DD = Day
HHMM = Build time
Ver = Version code character
```

---

## Analysis Tools Used

| Tool | Purpose |
|------|---------|
| Ghidra 12.0 | Decompilation |
| radare2 | Disassembly |
| strings | String extraction |
| objdump | Binary analysis |
| ludwig-v modified UPX | Unpacking |

---

## Firmware Scripts (from extracted firmware)

| Script | Purpose |
|--------|---------|
| `/script/start_main_service.sh` | Main startup sequence |
| `/script/init_bluetooth_wifi.sh` | BT/WiFi initialization |
| `/script/init_audio_codec.sh` | Audio codec setup |
| `/script/init_gpio.sh` | GPIO initialization |
| `/script/start_iap2_ncm.sh` | iAP2 and NCM driver startup |
| `/script/start_ncm.sh` | NCM network startup |
| `/script/phone_link_deamon.sh` | Phone link process management |
| `/script/update_box.sh` | Firmware update handler |
| `/script/check_mfg_mode.sh` | Manufacturing test mode |
| `/script/custom_init.sh` | User-defined init hook (optional) |

---

## References

- Source: `GM_research/cpc200_research/docs/analysis/`
- Source: `pi-carplay-4.1.3/firmware_binaries/`
- Source: `cpc200_ccpa_firmware_binaries/analysis/`
- Source: `cpc200_ccpa_firmware_binaries/A15W_extracted/`
- External: ludwig-v/wireless-carplay-dongle-reverse-engineering
