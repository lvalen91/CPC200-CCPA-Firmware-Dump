# Host Application Implementation Guide

**Purpose:** Guide for implementing a CarPlay/Android Auto host application
**Consolidated from:** GM_research implementation docs, carlink_native
**Last Updated:** 2026-01-19

---

## Overview

A host application communicates with the CPC200-CCPA adapter via USB to:
1. Initialize and maintain the connection
2. Process video frames (H.264 decoding)
3. Process audio streams (PCM routing)
4. Handle touch input
5. Manage configuration

---

## Connection Lifecycle

### 1. Adapter Discovery

```
1. Scan USB devices for:
   - VID: 0x1314
   - PID: 0x1521

2. Open USB interface (bulk transfer)

3. Claim interface and configure endpoints:
   - Endpoint OUT: Host → Adapter
   - Endpoint IN: Adapter → Host
```

### 2. Initialization Sequence (CRITICAL)

```
1. USB Reset (clear partially configured state)

2. 3-second mandatory wait

3. Find adapter (2nd detection after reset)

4. Open USB connection

5. START HEARTBEAT FIRST (CRITICAL!)
   - Must start BEFORE sending init messages
   - Interval: 2 seconds
   - Message: HeartBeat (0xAA)

6. Send initialization messages:
   a. SendFile /tmp/screen_dpi
   b. Open (resolution, fps, format)
   c. SendFile /tmp/night_mode
   d. SendFile /tmp/hand_drive_mode
   e. BoxSettings (JSON configuration)
   f. Command messages as needed

7. Start reading loop
```

### 3. Message Processing Loop

```
while (connected) {
    // Read message header (16 bytes)
    header = read(16)

    // Validate
    if (header.magic != 0x55AA55AA) continue
    if (header.type != ~header.type_check) continue

    // Read payload
    payload = read(header.length)

    // Dispatch by type
    switch (header.type) {
        case 0x02: handlePlugged(payload)
        case 0x03: handlePhase(payload)
        case 0x04: handleUnplugged()
        case 0x06: handleVideo(payload)
        case 0x07: handleAudio(payload)
        case 0x08: handleCommand(payload)
        case 0x19: handleBoxSettings(payload)
        case 0xCC: handleSoftwareVersion(payload)
        // ... other types
    }
}
```

### 4. Heartbeat Management

```
// Start heartbeat timer immediately after USB open
heartbeatTimer = setInterval(2000) {
    send(HeartBeat: 0xAA)
}

// On disconnect or error
heartbeatTimer.cancel()
```

---

## Video Processing

**IMPORTANT:** The adapter does NOT decode or transcode video. It forwards H.264 passthrough with USB headers prepended. Your host application MUST perform H.264 decoding.

### Video Architecture (Binary Verified)

```
Phone (CarPlay/AA)  →  Adapter (Forward Only)  →  Host App (Decode)
     H.264 stream       Add 36-byte header          MediaCodec/FFmpeg
```

The adapter:
- Receives H.264 via AirPlay/iAP2
- Parses NAL units for keyframe detection only
- Prepends USB header (16 bytes) + video metadata (20 bytes)
- Forwards unchanged H.264 payload to USB

### Receiving Video Frames

```
if (msg_type == 0x06) {
    width = payload[0:4]
    height = payload[4:8]
    pts = payload[12:16]
    h264_data = payload[20:]  // Raw H.264 NAL units (Annex B format)

    // Host MUST decode H.264 - adapter does NOT decode
    decoder.decode(h264_data, pts)
}
```

### Keyframe Recovery

```
// On decode error
send(Frame: 0x0C)  // Request IDR

// Wait for response (100-200ms)
// Adapter sends: SPS + PPS + IDR
```

### Decoder Configuration

| Parameter | Recommended |
|-----------|-------------|
| Profile | High |
| Level | 4.1+ |
| Low Latency | Enabled |
| Output Format | YUV420 or RGB |

### Resolution/FPS Limits (Binary Verified)

**The adapter has no hardcoded resolution or FPS validation.** Limits are practical, not programmatic.

| Constraint | Limit | Failure Mode |
|------------|-------|--------------|
| USB 2.0 Bandwidth | ~35-40 MB/s (~280 Mbps) | Stream stutters/drops |
| Adapter RAM | ~128MB total | `Failed to allocate memory for video frame` |
| Buffer Size | Fixed (implementation-dependent) | `H264 data buffer overrun!` |

**Recommended Maximums:**

| Resolution | Max FPS | Bitrate | Notes |
|------------|---------|---------|-------|
| 1920x1080 | 60 | ~15-25 Mbps | Safe |
| 2400x960 | 60 | ~15-25 Mbps | Safe (ultra-wide) |
| 2560x1440 | 60 | ~25-35 Mbps | Marginal |
| 3840x2160 (4K) | 30 | ~25-40 Mbps | Marginal, may fail |
| 3840x2160 (4K) | 60 | ~50+ Mbps | **Will exceed USB bandwidth** |
| Any | 120 | 2x of 60fps | Requires halving resolution |

**Host apps should request only resolutions they can decode and that fit within USB 2.0 bandwidth.**

---

## Audio Processing

### Audio Stream Routing

```kotlin
// Create audio tracks based on audio_type
val mediaTrack = AudioTrack(USAGE_MEDIA, ...)
val navTrack = AudioTrack(USAGE_ASSISTANCE_NAVIGATION_GUIDANCE, ...)
val voiceTrack = AudioTrack(USAGE_ASSISTANT, ...)

fun handleAudio(payload) {
    val decodeType = payload[0:4]
    val volume = payload[4:8].toFloat()
    val audioType = payload[8:12]

    if (payload.size == 13) {
        // Command packet
        handleAudioCommand(payload[12])
    } else {
        // Data packet - route by audioType
        val pcm = payload[12:]
        when (audioType) {
            1 -> mediaTrack.write(pcm)
            2 -> navTrack.write(pcm)
            3 -> sendMicrophoneData(pcm)
        }
    }
}
```

### Audio Command Handling

```kotlin
fun handleAudioCommand(cmd: Byte) {
    when (cmd) {
        0x01 -> outputStart()
        0x02 -> outputStop()
        0x03 -> inputStart()   // Start mic capture
        0x04 -> inputStop()
        0x07 -> naviStart()    // Duck media
        0x10 -> naviComplete() // Restore media
        0x0A -> mediaStart()
        0x0B -> mediaStop()
        // ... etc
    }
}
```

### Volume Ducking

```kotlin
// When volume packet received (not 0.0)
if (volume > 0.0f && volume < 1.0f) {
    mediaTrack.setVolume(volume)  // Duck to 0.2
}
if (volume == 1.0f) {
    mediaTrack.setVolume(1.0f)    // Restore
}
```

### Microphone Capture

**IMPORTANT:** The firmware WebRTC processing only accepts **8000 Hz or 16000 Hz** sample rates (binary verified at `0x2dfa2`). Use the `decodeType` from the adapter's AudioData command message.

```kotlin
// Store the decodeType from adapter's audio command
var micDecodeType = 5  // Default to 16kHz, but use adapter's value

// When INPUT_START/PHONECALL_START received with audio command
fun handleAudioCommand(decodeType: Int, cmd: Byte) {
    when (cmd) {
        0x04 -> {  // PHONECALL_START
            micDecodeType = decodeType  // Use adapter's requested format
            startMicCapture(sampleRate = if (decodeType == 3) 8000 else 16000)
        }
        0x08 -> {  // SIRI_START
            micDecodeType = decodeType  // Usually 5 (16kHz)
            startMicCapture(sampleRate = 16000)
        }
    }
}

fun startMicCapture(sampleRate: Int) {
    // Configure recorder with the requested sample rate
    micRecorder = AudioRecord(..., sampleRate, ...)
    micRecorder.startRecording()
    micTimer = setInterval(256ms) {
        val data = micRecorder.read(8192)
        send(AudioData: decodeType=micDecodeType, audioType=3, data)
    }
}
```

**Supported Sample Rates (WebRTC AECM validated):**
- `decodeType=3` → 8000 Hz (narrowband)
- `decodeType=5` → 16000 Hz (wideband)
- Other sample rates will cause WebRTC initialization failure on the adapter

---

## Touch Input

### Sending Touch Events

```kotlin
fun sendTouch(action: Int, x: Float, y: Float) {
    val payload = ByteBuffer.allocate(16)
        .putInt(action)      // 0=Down, 1=Move, 2=Up
        .putFloat(x / screenWidth)   // Normalized 0.0-1.0
        .putFloat(y / screenHeight)  // Normalized 0.0-1.0
        .putInt(0)           // Flags

    send(Touch: 0x05, payload)
}

// For multi-touch (0x17)
fun sendMultiTouch(points: List<TouchPoint>) {
    val payload = ByteBuffer.allocate(4 + points.size * 16)
        .putInt(points.size)

    for (point in points) {
        payload.putInt(point.action)
        payload.putFloat(point.x)
        payload.putFloat(point.y)
        payload.putInt(point.id)
    }

    send(MultiTouch: 0x17, payload)
}
```

---

## Configuration

### BoxSettings JSON (Binary Verified Jan 2026)

**⚠️ SECURITY NOTE:** The `wifiName`, `btName`, and `oemIconLabel` fields are passed to shell commands via `popen()` without sanitization. This enables command injection - any shell command can be executed as root by including shell metacharacters in these fields. See `03_Security_Analysis/vulnerabilities.md` for details.

**Command Execution Example (Live Tested Jan 2026):**
```kotlin
// This executes riddleBoxCfg immediately on the adapter:
put("wifiName", "a\"; /usr/sbin/riddleBoxCfg -s AdvancedFeatures 1; /usr/sbin/riddleBoxCfg --upConfig; echo \"")
```

**Important Notes:**
- Injection breaks the sed command, so WiFi SSID is NOT updated
- **Workaround:** Send BoxSettings twice - first with injection, second with normal values
- Use `busybox <applet>` for commands without symlinks (e.g., `busybox chpasswd` not `chpasswd`)

```kotlin
// Send BoxSettings twice to inject AND set proper WiFi name:
fun sendInitWithInjection() {
    val injection = "a\"; /usr/sbin/riddleBoxCfg -s AdvancedFeatures 1; /usr/sbin/riddleBoxCfg --upConfig; echo \""

    // First: Execute injection
    val injectionSettings = JSONObject().apply {
        put("wifiName", injection)
        put("btName", "carlink")
        // ... other fields
    }
    send(BoxSettings: 0x19, injectionSettings.toString().toByteArray())

    // Second: Set proper WiFi name
    val normalSettings = JSONObject().apply {
        put("wifiName", "MyCarPlay")  // Actual desired name
        put("btName", "MyCarPlay")
        // ... other fields
    }
    send(BoxSettings: 0x19, normalSettings.toString().toByteArray())
}
```

#### Supported Fields

| Category | Fields |
|----------|--------|
| **Core** | `mediaDelay`, `syncTime`, `autoConn`, `autoPlay`, `autoDisplay`, `bgMode`, `startDelay`, `syncMode`, `lang` |
| **Display** | `androidAutoSizeW`, `androidAutoSizeH`, `screenPhysicalW`, `screenPhysicalH`, `drivePosition` |
| **Audio** | `mediaSound`, `mediaVol`, `navVol`, `callVol`, `ringVol`, `speechVol`, `otherVol`, `echoDelay`, `callQuality` |
| **Network** | `wifiName`⚠️, `wifiFormat`, `WiFiChannel`, `btName`⚠️, `btFormat`, `boxName`, `iAP2TransMode` |
| **Branding** | `oemName`, `productType`, `lightType` |
| **Navigation** | `naviScreenInfo` (nested: `width`, `height`, `fps`) |
| **Android Auto** | `androidWorkMode` |

See `02_Protocol_Reference/usb_protocol.md` for complete field documentation.

```kotlin
fun sendBoxSettings() {
    val settings = JSONObject().apply {
        // Core configuration
        put("mediaDelay", 300)
        put("syncTime", System.currentTimeMillis() / 1000)
        put("autoConn", true)
        put("autoPlay", false)
        put("bgMode", 0)
        put("startDelay", 0)

        // Display settings
        put("androidAutoSizeW", displayWidth)
        put("androidAutoSizeH", displayHeight)
        put("screenPhysicalW", 250)   // Physical width in mm
        put("screenPhysicalH", 100)   // Physical height in mm
        put("drivePosition", 0)       // 0=LHD, 1=RHD

        // Audio settings
        put("mediaSound", 1)          // 0=44.1kHz, 1=48kHz
        put("callQuality", 1)
        put("echoDelay", 320)
        put("mediaVol", 1.0)
        put("navVol", 1.0)
        put("callVol", 1.0)

        // Network (⚠️ wifiName/btName vulnerable to command injection)
        put("WiFiChannel", 36)
        put("wifiName", "carlink")    // ⚠️ CMD INJECTION RISK
        put("btName", "carlink")      // ⚠️ CMD INJECTION RISK
        put("boxName", "carlink")

        // For iOS 13+ navigation video (requires AdvancedFeatures=1 in riddle.conf)
        put("naviScreenInfo", JSONObject().apply {
            put("width", 480)
            put("height", 272)
            put("fps", 30)
        })
    }

    send(BoxSettings: 0x19, settings.toString().toByteArray())
}
```

### Open Message

```kotlin
fun sendOpen() {
    val payload = ByteBuffer.allocate(28)
        .putInt(displayWidth)    // e.g., 2400
        .putInt(displayHeight)   // e.g., 960
        .putInt(fps)             // e.g., 60
        .putInt(5)               // format=5 for full H.264
        .putInt(49152)           // packetMax
        .putInt(2)               // boxVersion
        .putInt(2)               // phoneMode

    send(Open: 0x01, payload)
}
```

### Android Auto Mode (CRITICAL)

**For Android Auto support**, you MUST send the `android_work_mode` file on every connection:

```kotlin
fun enableAndroidAutoMode() {
    // Send file: /etc/android_work_mode with value 1
    val path = "/etc/android_work_mode"
    val content = ByteBuffer.allocate(4).putInt(1).array()

    val payload = ByteBuffer.allocate(4 + path.length + 1 + 4 + content.size)
        .putInt(path.length)
        .put(path.toByteArray())
        .put(0)  // null terminator
        .putInt(content.size)
        .put(content)

    send(SendFile: 0x99, payload)
}
```

**CRITICAL:** This must be sent on EVERY connection, not just the first time:
- Firmware resets `AndroidWorkMode` to 0 when phone disconnects
- Without this, Android Auto pairing will fail even if Bluetooth pairs successfully
- Firmware logs: `OnAndroidWorkModeChanged: 0 → 1` followed by `Start Link Deamon: AndroidAuto`

### Advanced File Operations (SendFile 0x99)

SendFile has **no path validation** - any writable path is accessible. The root filesystem is mounted read-write.

#### Writable Paths (Live Verified Jan 2026)

| Path | Writable | Persistence | Notes |
|------|----------|-------------|-------|
| `/tmp/*` | ✅ Yes | RAM (lost on reboot) | ~52 MB free |
| `/etc/*` | ✅ Yes | Flash (persistent) | Config files, init scripts |
| `/script/*` | ✅ Yes | Flash (persistent) | Startup scripts |
| `/usr/sbin/*` | ✅ Yes | Flash (persistent) | System binaries |

#### Binary Upload Example

```kotlin
// Upload ARM binary to adapter
fun uploadBinary(binaryPath: String, destinationPath: String) {
    val binaryData = File(binaryPath).readBytes()

    // Step 1: Send to /tmp (always safe)
    sendFile("/tmp/uploaded_binary", binaryData)

    // Step 2: Use injection to install and make executable
    val installCmd = "a\"; mv /tmp/uploaded_binary $destinationPath; chmod +x $destinationPath; echo \""
    sendBoxSettingsWithInjection(installCmd)
}

// Example: Upload custom tool
uploadBinary("/path/to/armv7l_tool", "/usr/sbin/mytool")
```

**Note:** Binaries must be cross-compiled for **armv7l** (ARM 32-bit).

#### Modify Init Scripts

```kotlin
// Option 1: Use sed via injection (surgical change)
val enableDropbear = "a\"; sed -i 's/#dropbear/dropbear/' /etc/init.d/rcS; echo \""

// Option 2: Replace entire file via SendFile
val newRcS = """
#!/bin/sh
. /etc/profile
dropbear
telnetd -l /bin/sh -p 23 &
mount -a
# ... rest of script
""".trimIndent()
sendFile("/etc/init.d/rcS", newRcS.toByteArray())
```

#### Auto-Extraction (hwfs.tar.gz)

Files sent to `/tmp/hwfs.tar.gz` are automatically extracted:

```kotlin
// Firmware executes: tar -xvf /tmp/hwfs.tar.gz -C /tmp
sendFile("/tmp/hwfs.tar.gz", createTarGz(files))
```

See `03_Security_Analysis/vulnerabilities.md` for complete security implications.

### Navigation Video Setup (iOS 13+)

To enable CarPlay Dashboard/navigation video:

1. **One-time setup** (via SSH or first connection):
   ```bash
   riddleBoxCfg -s AdvancedFeatures 1
   riddleBoxCfg --upConfig
   ```

2. **Include naviScreenInfo in BoxSettings** (see BoxSettings JSON above)

3. **Handle Command 508 handshake**:
   ```kotlin
   // When receiving Command 508 from adapter
   if (commandId == 508) {
       // MUST respond with 508 back to enable navigation video
       send(Command: 0x08, payload = 508)
   }
   ```

4. **Handle NaviVideoData (Type 0x2C)**:
   ```kotlin
   // Navigation video uses SAME header structure as main video (20-byte header)
   if (msg_type == 0x2C) {
       width = payload[0:4]      // e.g., 1200
       height = payload[4:8]     // e.g., 500
       unknown1 = payload[8:12]  // Always 1 (purpose unknown, NOT frame type)
       pts = payload[12:16]      // Presentation timestamp
       flags = payload[16:20]    // Usually 0
       h264_data = payload[20:]

       // Frame type determined by NAL unit type in H.264 data, not header field
       naviDecoder.decode(h264_data, pts)
   }
   ```

---

## Error Handling

### Connection Errors

| Error | Recovery |
|-------|----------|
| USB disconnect | Stop heartbeat, close interface, retry |
| projectionDisconnected (0x3F2) | Full restart sequence |
| Phase stuck at 7 | Wait or timeout and retry |
| No heartbeat response | Reset USB and restart |

### Video Errors

| Error | Recovery |
|-------|----------|
| Decode failure | Send Frame (0x0C) for IDR |
| No video data | Check Phase is 8 |
| Resolution mismatch | Re-send Open message |

### Audio Errors

| Error | Recovery |
|-------|----------|
| No audio | Check audioType routing |
| Distortion | Verify sample rate matches decodeType |
| Echo | Adjust EchoLatency in config |
| WebRTC init fail | Use only 8kHz or 16kHz for mic (firmware limitation) |
| Mic not working | Check decodeType from adapter's AudioData command |

---

## Platform-Specific Notes

### Android (AAOS)

- Use `AudioTrack` with appropriate `AudioAttributes`
- Map audio_type to Android audio buses
- Handle `AUDIOFOCUS_*` events

### Linux (Pi, Embedded)

- Use ALSA/PulseAudio for audio output
- Use V4L2 or GStreamer for video decode
- Manage USB via libusb

### iOS (Unlikely use case)

- Would require MFi program access
- USB communication via ExternalAccessory framework

---

## GPS/GNSS Data (Binary Verified Jan 2026)

If your head unit has GPS hardware, you can forward location data to the phone for CarPlay navigation. This allows CarPlay Maps to use the vehicle's GPS instead of the phone's.

### Prerequisites

1. **Enable GPS forwarding in adapter config:**
   ```kotlin
   // Via SendFile (0x99) - Write to /tmp/gnss_switch
   sendFile("/tmp/gnss_switch", byteArrayOf(1))

   // Or via command injection (one-time):
   // wifiName = "a\"; riddleBoxCfg -s HudGPSSwitch 1; riddleBoxCfg --upConfig; echo \""
   ```

2. **Send StartGNSSReport command** when CarPlay session starts:
   ```kotlin
   send(Command: 0x08, payload = 18)  // StartGNSSReport
   ```

### Sending GPS Data

GPS data is sent via SendFile (0x99) to `/tmp/gnss_info` in standard **NMEA 0183** format:

```kotlin
fun sendGpsData(lat: Double, lon: Double, alt: Double, speed: Float, heading: Float) {
    // Format NMEA sentences
    val time = SimpleDateFormat("HHmmss.SS", Locale.US).format(Date())
    val date = SimpleDateFormat("ddMMyy", Locale.US).format(Date())

    // Convert decimal degrees to NMEA format (DDDMM.MMMM)
    val latDeg = Math.abs(lat).toInt()
    val latMin = (Math.abs(lat) - latDeg) * 60
    val latDir = if (lat >= 0) "N" else "S"

    val lonDeg = Math.abs(lon).toInt()
    val lonMin = (Math.abs(lon) - lonDeg) * 60
    val lonDir = if (lon >= 0) "E" else "W"

    // $GPGGA - Position fix
    val gpgga = String.format(
        "\$GPGGA,%s,%02d%07.4f,%s,%03d%07.4f,%s,1,08,0.9,%.1f,M,0.0,M,,",
        time, latDeg, latMin, latDir, lonDeg, lonMin, lonDir, alt
    )

    // $GPRMC - Recommended minimum
    val gprmc = String.format(
        "\$GPRMC,%s,A,%02d%07.4f,%s,%03d%07.4f,%s,%.1f,%.1f,%s,,,A",
        time, latDeg, latMin, latDir, lonDeg, lonMin, lonDir,
        speed * 1.94384, // m/s to knots
        heading, date
    )

    // Add checksums
    val gpggaWithChecksum = addNmeaChecksum(gpgga)
    val gprmcWithChecksum = addNmeaChecksum(gprmc)

    // Combine and send
    val nmeaData = "$gpggaWithChecksum\r\n$gprmcWithChecksum\r\n"
    sendFile("/tmp/gnss_info", nmeaData.toByteArray())
}

fun addNmeaChecksum(sentence: String): String {
    var checksum = 0
    for (c in sentence.substring(1)) {  // Skip leading $
        checksum = checksum xor c.code
    }
    return "$sentence*${String.format("%02X", checksum)}"
}
```

### NMEA Sentence Reference

| Sentence | Purpose | Required Fields |
|----------|---------|-----------------|
| `$GPGGA` | Position fix | Time, lat, lon, fix quality, satellites, altitude |
| `$GPRMC` | Recommended minimum | Time, status, lat, lon, speed (knots), course, date |
| `$GPGSV` | Satellites in view | Number of satellites, satellite info (optional) |

### Additional Vehicle Data

The adapter also supports vehicle sensor data via separate files:

| Data Type | File Path | Format |
|-----------|-----------|--------|
| Vehicle Speed | `/tmp/vehicle_speed` | Float (m/s) |
| Vehicle Heading | `/tmp/vehicle_heading` | Float (degrees, 0-360) |
| Reverse Gear | `/tmp/reverse_gear` | 0 or 1 |

```kotlin
// Send vehicle speed (for dead reckoning)
fun sendVehicleSpeed(speedMs: Float) {
    val data = ByteBuffer.allocate(4).putFloat(speedMs).array()
    sendFile("/tmp/vehicle_speed", data)
}

// Send heading from vehicle compass
fun sendVehicleHeading(degrees: Float) {
    val data = ByteBuffer.allocate(4).putFloat(degrees).array()
    sendFile("/tmp/vehicle_heading", data)
}
```

### GPS Data Flow

```
Host App (HU GPS)  →  SendFile /tmp/gnss_info  →  Adapter
                                                    │
                                                    ▼
                                           iAP2LocationEngine
                                                    │
                                                    ▼
                                           Phone (CarPlay Maps)
```

### Stopping GPS Reports

When CarPlay session ends:
```kotlin
send(Command: 0x08, payload = 19)  // StopGNSSReport
```

---

## Charge Mode Control (Binary Verified Jan 2026)

The adapter can control USB charging speed for connected phones.

### Setting Charge Mode

```kotlin
// Enable fast charging
fun enableFastCharge() {
    sendFile("/tmp/charge_mode", byteArrayOf(1))
}

// Use slow charging (default)
fun enableSlowCharge() {
    sendFile("/tmp/charge_mode", byteArrayOf(0))
}
```

### GPIO Behavior

| `/tmp/charge_mode` | GPIO6 | GPIO7 | Effect |
|--------------------|-------|-------|--------|
| 0 (or missing) | 1 | 1 | **SLOW** charge (default) |
| 1 | 1 | 0 | **FAST** charge |

---

## Testing Checklist

| Test | Expected Result |
|------|-----------------|
| Cold start (app restart) | Stable connection in <10s |
| Reconnect (adapter replug) | Auto-reconnect works |
| Media playback | Smooth video, synced audio |
| Navigation prompts | Media ducks, nav audible |
| Siri activation | Bidirectional audio works |
| Phone call | Voice clear both directions |
| Touch input | Responsive, accurate |

---

## References

- Source: `GM_research/cpc200_research/docs/implementation/`
- Source: `carlink_native/documents/reference/Firmware/`
- Protocol reference: See `02_Protocol_Reference/` in this documentation
- **Session examples: See `session_examples.md` for real captured CarPlay/Android Auto packet sequences**
