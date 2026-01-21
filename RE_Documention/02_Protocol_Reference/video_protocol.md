# CPC200-CCPA Video Protocol Reference

**Status:** VERIFIED via capture analysis and binary reverse engineering
**Consolidated from:** GM_research, carlink_native, binary analysis
**Last Updated:** 2026-01-19

---

## Video Message Structure

### Main Video (Type 0x06)

**Total Header: 36 bytes** (16-byte USB header + 20-byte video header)

```
┌─────────────────────────────────────────────────────────────────────┐
│                    COMMON USB HEADER (16 bytes)                     │
├─────────┬──────┬────────────┬───────────────────────────────────────┤
│ Offset  │ Size │ Field      │ Description                           │
├─────────┼──────┼────────────┼───────────────────────────────────────┤
│ 0x00    │  4   │ Magic      │ 0x55AA55AA (little-endian)            │
│ 0x04    │  4   │ PayloadLen │ Bytes after this 16-byte header       │
│ 0x08    │  4   │ MsgType    │ 6 = VideoData                         │
│ 0x0C    │  4   │ Checksum   │ MsgType ^ 0xFFFFFFFF = 0xFFFFFFF9 (-7)│
├─────────┴──────┴────────────┴───────────────────────────────────────┤
│                  VIDEO-SPECIFIC HEADER (20 bytes)                   │
├─────────┬──────┬────────────┬───────────────────────────────────────┤
│ 0x10    │  4   │ Width      │ Video width (e.g., 2400)              │
│ 0x14    │  4   │ Height     │ Video height (e.g., 960)              │
│ 0x18    │  4   │ EncoderState│ Encoder generation/stream ID (see below)│
│ 0x1C    │  4   │ PTS        │ Presentation timestamp (1kHz clock)   │
│ 0x20    │  4   │ Flags      │ Usually 0x00000000                    │
├─────────┴──────┴────────────┴───────────────────────────────────────┤
│                     H.264 PAYLOAD (variable)                        │
├─────────────────────────────────────────────────────────────────────┤
│ 0x24+   │  N   │ H.264 Data │ NAL units with 00 00 00 01 start code │
└─────────────────────────────────────────────────────────────────────┘
```

### EncoderState Field Analysis (Firmware Verified Jan 2026)

The `EncoderState` field (offset 0x18) contains encoder generation/stream identifiers that change during video stream transitions.

**Observed Values (CarPlay):**

| Value | Hex | Count | Context |
|-------|-----|-------|---------|
| 7 | 0x00000007 | 4487 | Normal streaming (stable state) |
| 1617352863 | 0x6066d89f | 208 | Early stream phase |
| 8379311 | 0x007fdbaf | 16 | Stream initialization (with SPS) |
| 231883 | 0x000389cb | 21 | Brief reconfiguration |
| 3 | 0x00000003 | 1 | Transient state |

**Observed Values (Android Auto):**

| Value | Hex | Count | Context |
|-------|-----|-------|---------|
| 3 | 0x00000003 | 660 | All frames (stable) |

**Temporal Pattern (CarPlay):**
```
PTS 136351-136884: 0x007fdbaf (initialization, SPS present)
PTS 136918-146850: 0x6066d89f (early streaming)
PTS 146883+:       0x00000007 (normal streaming)
```

**Interpretation:**
- Changes indicate encoder state transitions or stream reconfiguration
- NOT correlated with NAL type (I-frame vs P-frame)
- Different default values for CarPlay (7) vs Android Auto (3)
- Large values (0x6066d89f, 0x007fdbaf) may be encoder-internal timestamps or counters

**Host Implementation:**
- Can be safely ignored for video decoding
- Useful for debugging stream initialization issues
- May indicate need to reset decoder if value changes unexpectedly

### Navigation Video (Type 0x2C) - iOS 13+

**Total Header: 36 bytes** (16-byte USB header + 20-byte video header)

**IMPORTANT:** Navigation video uses the SAME header structure as main video.

```
┌─────────────────────────────────────────────────────────────────────┐
│                    COMMON USB HEADER (16 bytes)                     │
├─────────┬──────┬────────────┬───────────────────────────────────────┤
│ 0x00    │  4   │ Magic      │ 0x55AA55AA                            │
│ 0x04    │  4   │ PayloadLen │ Bytes after 16-byte header            │
│ 0x08    │  4   │ MsgType    │ 44 (0x2C) = NaviVideoData             │
│ 0x0C    │  4   │ Checksum   │ MsgType ^ 0xFFFFFFFF = 0xFFFFFFD3     │
├─────────┴──────┴────────────┴───────────────────────────────────────┤
│                  VIDEO-SPECIFIC HEADER (20 bytes)                   │
├─────────┬──────┬────────────┬───────────────────────────────────────┤
│ 0x10    │  4   │ Width      │ Navigation width (e.g., 1200)         │
│ 0x14    │  4   │ Height     │ Navigation height (e.g., 500)         │
│ 0x18    │  4   │ EncoderState│ Always 1 for nav video                │
│ 0x1C    │  4   │ PTS        │ Presentation timestamp (1kHz clock)   │
│ 0x20    │  4   │ Flags      │ Usually 0x00000000                    │
├─────────┴──────┴────────────┴───────────────────────────────────────┤
│                     H.264 PAYLOAD (variable)                        │
├─────────────────────────────────────────────────────────────────────┤
│ 0x24+   │  N   │ H.264 Data │ NAL units with 00 00 00 01 start code │
└─────────────────────────────────────────────────────────────────────┘
```

**Capture Verification (Jan 2026):**
- 429 navigation video packets analyzed
- Resolution: 1200x500 (matches host's naviScreenInfo configuration)
- NAL distribution: 4 SPS (I-frames), 425 P-frames
- Unknown1 field: Always 1 (does NOT indicate frame type)
- Frame type determined by NAL unit type in H.264 payload

**Requirements:**
- iOS 13+ with `AdvancedFeatures=1` in riddle.conf
- Host must send `naviScreenInfo` in BoxSettings JSON
- Host must respond to 508 handshake (see Navigation Video Protocol section below)

---

## Video Processing Architecture (Binary Verified)

**CRITICAL FINDING:** Video from CarPlay/Android Auto is **forwarded/passthrough** - the adapter does NOT transcode or re-encode the H.264 stream.

### Architecture Overview

```
┌────────────────┐     ┌─────────────────────────────────────────┐     ┌──────────────┐
│   iPhone/AA    │     │           CPC200-CCPA Adapter           │     │    Host      │
│                │     │                                         │     │    App       │
│  CarPlay UI    │────►│  AppleCarPlay  ──────►  ARMadb-driver   │────►│              │
│  (H.264)       │iAP2 │   (Unix Sock)   IPC    (_SendDataToCar) │ USB │  (H.264      │
│                │     │                                         │     │   Decode)    │
└────────────────┘     └─────────────────────────────────────────┘     └──────────────┘
```

### What the Adapter Does to Video

| Step | Operation | Modifies H.264 Payload? |
|------|-----------|-------------------------|
| 1 | Receive H.264 from AirPlay/iAP2 | NO |
| 2 | Parse NAL units (keyframe detection only) | NO |
| 3 | Extract/log timestamp | NO |
| 4 | Prepend USB header (16 bytes) | Header only |
| 5 | Prepend video metadata (20 bytes) | Metadata only |
| 6 | Forward to USB endpoint | NO |

### Binary Evidence (Jan 2026 Analysis)

**AppleCarPlay Binary:**
- `AirPlayReceiverSessionScreen_ProcessFrames` - receives H.264 stream
- `_AirPlayReceiverSessionScreen_ProcessFrame` - processes individual frames
- `### Send screen h264 frame data failed!` - sends raw H.264 data
- `### Send h264 I frame data %d byte!` - sends I-frames unchanged
- `### H264 data buffer overrun!` - buffer management, not decoding
- Only codec imports: `aacDecoder_*`, `aacEncoder_*` (AAC audio only)

**ARMadb-driver Binary:**
- `recv CarPlay videoTimestamp:%llu` (at 0x6d139) - logs timestamp
- `_SendDataToCar iSize: %d, may need send ZLP` (at 0x6b823) - USB transmission
- USB magic header `0x55AA55AA` at 0x62e18

**No Video Codec Libraries Found:**
- No FFmpeg, x264, x265, libvpx, OpenH264
- Video encoder functions in `libdmsdpdvcamera.so` are for **reverse camera** (sending TO phone), not CarPlay video

### Inter-Process Communication

| Component | Mechanism | Purpose |
|-----------|-----------|---------|
| AppleCarPlay → ARMadb-driver | Unix Socket (`CRiddleUnixSocketServer`) | Video frame transfer |
| AppleCarPlay → ARMadb-driver | D-Bus (`org.riddle`) | Control signals |
| ARMadb-driver → Host | USB Bulk Transfer | Video data forwarding |

### Implications for Host Apps

1. **Host must decode H.264** - the adapter does not provide decoded frames
2. **H.264 is Annex B format** - NAL units with 00 00 00 01 start codes
3. **Keyframe requests** - Host can request IDR via Frame command (0x0C)
4. **No format conversion** - Resolution/framerate set during CarPlay negotiation

---

## H.264 Configuration

| Parameter | Value |
|-----------|-------|
| **Profile** | High Profile (100) |
| **Level** | 5.0 (Level IDC = 50) |
| **NAL Format** | Annex B (00 00 00 01 start codes) |
| **SPS/PPS** | In-band with IDR frames |

**Note:** Level 5.0 supports up to 4096×2304 @ 30fps, providing headroom for 2400×960 @ 60fps.

### Typical Resolutions

| Resolution | FPS | Use Case |
|------------|-----|----------|
| 800x480 | 30 | Basic head units |
| 1280x720 | 60 | Standard HD |
| 1920x720 | 60 | Widescreen |
| 1920x1080 | 60 | Full HD |
| 2400x960 | 60 | Ultra-wide (GM Info 3.7) |

---

## Keyframe (IDR) Management

### Frame Sync Command (0x0C)

The host can request a keyframe by sending:
```
Magic: 55 AA 55 AA
Length: 00 00 00 00
Type: 0C 00 00 00
Check: F3 FF FF FF
```

**Response:** Adapter sends SPS + PPS + IDR frame within 100-200ms

**Measured Response Times (Jan 2026):**
| Frame Sync Sent | IDR Received | Delta |
|-----------------|--------------|-------|
| 41,297ms | 41,395ms | **98ms** |
| 440,859ms | 441,040ms | **181ms** |

### IDR Sent Notification (0x3F1)

**Direction:** Device → Host

After sending an IDR, adapter may send type 0x3F1 to notify host.

**Note:** Only sent when host uses format=5 in Open command.

### Comparison (Jan 2026 Capture)

| Metric | format=5 (carlink_native) | format=1 (pi-carplay) |
|--------|--------------------------|------------------------|
| IDR frames | 107 | 27 |
| SPS repetitions | 118 | 33 |
| Receives 0x3F1 | Yes | No |
| Frame sync sent | Yes | No |

---

## Video Timing

### Variable Frame Rate Streaming (IMPORTANT)

CarPlay uses **variable frame rate** streaming. The configured FPS (e.g., 60) is the **maximum** rate, not guaranteed. When screen content is static, frame rate drops to conserve bandwidth.

**PTS Delta Distribution (8,605 frame intervals from Jan 2026 capture):**

| PTS Delta | Count | Percentage | Implied FPS |
|-----------|-------|------------|-------------|
| 16-17 | 6,532 | 75.9% | ~60 fps |
| 30-36 | 327 | 3.8% | ~30 fps |
| Other | 1,746 | 20.3% | Adaptive |

**Frame Rate Over Time (sample windows):**
```
Time(s)  | FPS   | Bitrate   | Activity
─────────┼───────┼───────────┼──────────────────────
8        | 11.2  | 1.6 Mbps  | Session start
35       | 25.3  | 4.3 Mbps  | Active navigation
57       | 50.0  | 0.3 Mbps  | Static screen
227      | 1.7   | 0.3 Mbps  | Nearly static

Actual FPS range: 1.7-50.0, Avg: 27.1 fps
```

### Bitrate Statistics

| Metric | Value |
|--------|-------|
| Overall Average | 1.18 Mbps |
| 1-second Window Avg | 1.52 Mbps |
| Minimum (1s window) | 70 kbps |
| Maximum (1s window) | 15.3 Mbps |
| Peak (active content) | 4.3 Mbps |

**Note:** Low average reflects variable frame rate - static screens consume minimal bandwidth.

### vs Audio Independence

| Metric | Video | Audio |
|--------|-------|-------|
| Frame Rate | Variable (1.7-50 fps) | Fixed (16-17 fps) |
| Packet Timing | 10-20ms typical | 60ms fixed |
| Bitrate | 0.07-15.3 Mbps | 1.54 Mbps fixed |

---

## SPS/PPS Handling

### SpsPpsMode Configuration

| Value | Behavior |
|-------|----------|
| 0 | Auto - firmware decides |
| 1 | Re-inject - prepend cached SPS/PPS before each IDR |
| 2 | Cache - store in memory, replay on decode errors |
| 3 | Repeat - duplicate SPS/PPS in every video packet |

### Typical SPS/PPS NAL Units

```
SPS: 00 00 00 01 67 ...  (NAL type 7)
PPS: 00 00 00 01 68 ...  (NAL type 8)
IDR: 00 00 00 01 65 ...  (NAL type 5)
P-frame: 00 00 00 01 41 ... (NAL type 1)
```

---

## Video Buffer Management

### Open Message Format Field

| Value | Name | IDR Behavior |
|-------|------|--------------|
| 1 | Basic | Minimal IDR insertion (stream start only) |
| 5 | Full H.264 | Responsive to Frame sync, aggressive IDR |

### Keyframe Recovery Flow

```
1. Video decode error detected
2. Host sends Frame (0x0C) command
3. Adapter responds within 100-200ms with:
   - SPS (sequence parameter set)
   - PPS (picture parameter set)
   - IDR (instantaneous decoder refresh)
4. Adapter sends IdrSent (0x3F1) notification
5. Host resets decoder, resumes playback
```

---

## Navigation Video Protocol (iOS 13+)

### Handshake Sequence (REQUIRED)

**VERIFIED (Jan 2026):** The 508 handshake is **required** for navigation video to start. Analysis of pi-carplay-main confirms the bidirectional handshake implementation.

**Handshake sequence:**
```
1. Adapter sends Command 508 to host (RequestNaviScreenFocus)
2. Host MUST respond by sending Command 508 back to adapter
3. This triggers HU_NEEDNAVI_STREAM D-Bus signal in firmware
4. Navigation video (Type 0x2C) streaming begins
```

**pi-carplay implementation** (`src/main/carplay/services/CarplayService.ts:270-277`):
```typescript
if ((msg.value as number) === 508 && this.config.naviScreen?.enabled) {
  this.driver.send(new SendCommand('requestNaviScreenFocus'))
}
```

**Prerequisites for 508 handshake to occur:**
- `AdvancedFeatures=1` must be set in riddle.conf
- `naviScreenInfo` must be sent in BoxSettings JSON
- CarPlay navigation app becomes active on phone
- Host's `naviScreen.enabled` config must be true

### naviScreenInfo BoxSettings Field

```json
{
  "naviScreenInfo": {
    "width": 1200,
    "height": 500,
    "fps": 24
  }
}
```

**Resolution is configurable** - the adapter streams at whatever resolution the host specifies in `naviScreenInfo`. Examples:
- 480x272 @ 30fps - compact display
- 1200x500 @ 24fps - widescreen cluster

**Optional safeArea field:**
```json
{
  "naviScreenInfo": {
    "width": 1200,
    "height": 500,
    "fps": 24,
    "safeArea": { "x": 0, "y": 0, "width": 1200, "height": 500 }
  }
}
```

### Focus Control Commands

| Type | Dec | Name | Direction |
|------|-----|------|-----------|
| 0x1FA | 506 | NaviFocus | H→D |
| 0x1FB | 507 | NaviRelease | H→D |
| 0x1FC | 508 | RequestNaviScreenFocus | Both |
| 0x1FD | 509 | ReleaseNaviScreenFocus | H→D |
| 0x6E | 110 | NaviFocusRequest | D→H |
| 0x6F | 111 | NaviFocusRelease | D→H |

---

## Video Limitations (Binary Verified Jan 2026)

**CRITICAL FINDING:** The adapter has **no hardcoded resolution or FPS validation** in the video forwarding path. Limits are practical (memory, bandwidth), not programmatic.

### Resolution Limits

**Binary Evidence - No Validation Found:**
- `recv CarPlay size info:%dx%d` - logs resolution, no rejection logic
- `set frame format: %s %dx%d %dfps` - sets format without bounds checking
- Width/Height stored as 32-bit integers (supports values up to 4 billion)
- No "resolution too large" or "unsupported resolution" error strings found

**Practical Constraints:**

| Constraint | Binary Evidence | Limit |
|------------|-----------------|-------|
| Memory Allocation | `### Failed to allocate memory for video frame with timestamp!` | ~128MB RAM total |
| Buffer Overrun | `### H264 data buffer overrun!` | Fixed buffer size |
| USB 2.0 Bandwidth | libusb bulk transfers | ~35-40 MB/s practical (~280 Mbps) |

### FPS Limits

**Binary Evidence - No Hardcoded Maximum:**
- `kScreenProperty_MaxFPS :%d` - property exists but value is **dynamic**, not hardcoded
- `--fps %d` command line parameter - accepts any integer
- `/tmp/screen_fps` - runtime configuration file
- `minFps: %d maxFps: %d` - tracks range, no rejection logic found
- `format[%d]: %s size: %dx%d minFps: %d maxFps: %d` - format logging only

### Bandwidth Constraints

**Binary Evidence:**
```
### tcpSock recv bufSize: %d, maxBitrate: %d Mbps
Not Enough Bandwidth
Bandwidth Limit Exceeded
```

Bandwidth checking exists but is **configured at runtime**, not hardcoded.

### What Would Happen (Binary-Based Analysis)

| Scenario | Resolution | FPS | Expected Result | Failure Mode |
|----------|------------|-----|-----------------|--------------|
| Standard | 1920x1080 | 60 | ✅ Works | - |
| Ultra-wide | 2400x960 | 60 | ✅ Works | - |
| 4K | 3840x2160 | 30 | ⚠️ Marginal | Memory pressure, USB bandwidth limit |
| 4K | 3840x2160 | 60 | ❌ Likely fails | USB bandwidth exceeded (~50+ Mbps needed) |
| 8K | 7680x4320 | Any | ❌ Fails | Memory allocation failure |
| High FPS | 1920x1080 | 120 | ⚠️ Marginal | 2x bandwidth vs 60fps |
| Extreme | 4K | 120 | ❌ Fails | Bandwidth + memory exceeded |

### Configuration Files (Runtime Limits)

| File | Purpose | Set By |
|------|---------|--------|
| `/tmp/screen_fps` | Current FPS setting | Host Open message |
| `/tmp/screen_size` | Current resolution | Host Open message |
| `/tmp/screen_dpi` | Display DPI | Host SendFile |

### Key Insight: "Unaware" Forwarding

The adapter is essentially **unaware** of absolute resolution/FPS limits:
1. CarPlay/Android Auto negotiates format during session setup
2. Phone determines format based on host's `Open` message
3. Adapter forwards whatever stream the phone sends
4. Failures occur from practical limits, not validation:
   - Memory exhaustion (dynamic allocation)
   - Buffer overrun (fixed buffers)
   - USB 2.0 bandwidth saturation

**Host applications should:**
- Request only resolutions they can decode/display
- Stay within USB 2.0 practical bandwidth (~25-35 Mbps for video)
- Monitor for `CarPlay recv data size error!` indicating data issues

---

## Captured Video Analysis (Jan 2026)

Real-world video characteristics from USB capture analysis of CarPlay and Android Auto sessions.

### CarPlay Main Video Session

| Property | Value |
|----------|-------|
| Device | iPhone 18,4 (iOS 23D5103d) |
| Resolution | 1280×720 |
| Duration | 216.2 seconds |
| Total frames | 4,733 |
| Total data | 50.96 MB |
| Average bitrate | 1.98 Mbps |
| Effective FPS | 21.9 fps |
| Average frame size | 11.02 KB |
| Min frame | 313 bytes |
| Max frame | 164,824 bytes |

**H.264 Codec Parameters:**
```
Profile: High (100)
Level: 3.1
SPS: 2764001fac13145014016e9b8086830368221196 (20 bytes)
PPS: 28ee3cb0 (4 bytes)
```

**NAL Unit Distribution:**
| NAL Type | Count | Description |
|----------|-------|-------------|
| 1 | 4,732 | Non-IDR (P-frames) |
| 5 | 1 | IDR (keyframe) |
| 7 | 1 | SPS |
| 8 | 1 | PPS |

**Frame Timing:**
- Expected interval: 33.3ms (30 fps target)
- Actual average: 45.7ms
- 70.7% of frames in 20-40ms range
- Some bursting: 8.6% delivered <10ms apart
- Occasional stalls: 3.5% intervals >100ms

### CarPlay Navigation Video

| Property | Value |
|----------|-------|
| Resolution | 1200×500 |
| Total frames | 2,841 |
| Total data | 10.31 MB |
| Average frame size | 3,804 bytes |
| Effective FPS | 12.5 fps |
| First frame | 7524ms into session |

**Navigation Video Header (12 bytes):**
```
Offset  Size  Field       Example
------  ----  -----       -------
0x00    4     Width       1200 (0x04B0)
0x04    4     Height      500 (0x01F4)
0x08    4     Flags       1
```

**H.264 Codec Parameters:**
```
Profile: High (100)
Level: 3.1
SPS: 2764001fac13145012c107e79b80868303682211 (21 bytes)
```

### Android Auto Video Session

| Property | Value |
|----------|-------|
| Device | Google Pixel 10 |
| Resolution | 1280×720 |
| Duration | 30.3 seconds |
| Total frames | 660 |
| Total data | 4.19 MB |
| Average bitrate | 1.16 Mbps |
| Effective FPS | 21.8 fps |
| Average frame size | 6.51 KB |
| Min frame | 49 bytes |
| Max frame | 56,291 bytes |

**H.264 Codec Parameters:**
```
Profile: Baseline (66)
Level: 3.1
Constraint flags: 0x40
SPS: 6742401fe900a00b74d40404041e100854 (17 bytes)
PPS: 68ca8f20 (4 bytes)
```

**NAL Unit Distribution:**
| NAL Type | Count | Description |
|----------|-------|-------------|
| 1 | 659 | Non-IDR (P-frames) |
| 5 | 1 | IDR (keyframe) |
| 7 | 1 | SPS |
| 8 | 1 | PPS |

**Frame Timing:**
- Expected interval: 33.3ms (30 fps target)
- Actual average: 46.0ms
- 86.2% of frames in 20-40ms range (more consistent than CarPlay)
- Less bursting: 0.6% delivered <10ms apart
- Fewer stalls: 1.7% intervals >100ms

### CarPlay vs Android Auto Comparison

| Aspect | CarPlay | Android Auto |
|--------|---------|--------------|
| H.264 Profile | High (100) | Baseline (66) |
| H.264 Level | 3.1 | 3.1 |
| Average bitrate | 1.98 Mbps | 1.16 Mbps |
| Frame size avg | 11.02 KB | 6.51 KB |
| IDR frame size | 9.5 KB | 2.7 KB |
| P-frame size avg | 5.9 KB | 6.7 KB |
| Frame timing consistency | 70.7% normal | 86.2% normal |
| Navigation video | Yes (Type 44) | Not observed |

**Key Observations:**

1. **CarPlay uses High profile** - Better compression efficiency, more complex decode
2. **Android Auto uses Baseline** - Simpler decode, broader compatibility
3. **Single IDR per session** - Both protocols send SPS/PPS/IDR only at start
4. **Variable frame rate** - Neither protocol maintains strict 30fps
5. **Android Auto more consistent** - Less frame timing variance
6. **CarPlay higher bitrate** - 70% higher average bitrate for same resolution

### Video Header Comparison

**Main Video Header (20 bytes):**
```
Offset  Field    CarPlay        Android Auto
------  -----    -------        ------------
0x00    Width    1280           1280
0x04    Height   720            720
0x08    Flags    0x007fdbaf     0x00000003
0x0C    PTS      Variable       Variable
0x10    Reserved 0              0
```

The Flags field differs significantly between protocols.

---

## TTY Log Correlation: Video Stream Setup

### CarPlay Video Setup Sequence

The adapter TTY log shows the internal AirPlay video stream negotiation:

| Timestamp | Event | Details |
|-----------|-------|---------|
| +5.2s | Setup stream type 111 | Navigation screen stream |
| +5.3s | Video Latency 75 ms | AirPlay latency negotiation |
| +5.5s | Screen set widthPixels: 1200 | Navigation video config |
| +5.5s | Screen set heightPixels: 500 | Navigation video config |
| +5.5s | Send h264 I frame data 187 byte | First nav I-frame |
| +5.6s | Setup stream type 110 | Main screen stream |
| +5.7s | Screen set widthPixels: 1280 | Main video config |
| +5.7s | Screen set heightPixels: 720 | Main video config |
| +5.7s | Send h264 I frame data 9687 byte | First main I-frame |
| +5.9s | RequestVideoFocus(500) | Adapter requests video focus |

**TTY Log Excerpt:**
```
[AirPlay] ### Setup stream type: 111
[AirPlayReceiverSessionScreen] Video Latency 75 ms
[ScreenStream] ### Screen set widthPixels: 1200
[ScreenStream] ### Screen set heightPixels: 500
[ScreenStream] ### Screen set avcc data: 40, 1f006401
[ScreenStream] ### Send h264 I frame data 187 byte!
[AirPlay] ### Setup stream type: 110
[ScreenStream] ### Screen set widthPixels: 1280
[ScreenStream] ### Screen set heightPixels: 720
[ScreenStream] ### Send h264 I frame data 9687 byte!
[D] _SendPhoneCommandToCar: RequestVideoFocus(500)
```

### Android Auto Video Setup Sequence

| Timestamp | Event | Details |
|-----------|-------|---------|
| +36.2s | Begin handshake | SSL/TLS handshake start |
| +36.3s | Handshake, size: 2348 | Certificate exchange |
| +36.3s | Handshake, size: 51 | Handshake completion |
| +36.5s | VideoService start | OpenAuto video service |
| +39.3s | First video frame | USB capture |
| +103.6s | H264 I frame | I-frame logged |

**TTY Log Excerpt:**
```
[OpenAuto] [Configuration] setVideoResolution = 2
[OpenAuto] [VideoService] start.
[D] [BoxVideoOutput] maxVideoBitRate = 0 Kbps, bEnableTimestamp_ = 1
[I] Begin handshake.
[I] Handshake, size: 2348
[I] continue handshake.
[I] Handshake, size: 51
[D] [BoxVideoOutput] [BoxVideoOutput] H264 I frame
```

### Video Frame Rate Logging

The adapter logs video/audio frame rates every 10 seconds:

```
[D] box video frame rate: 26, 562.19 KB/s, audio frame rate: 0, 0.00 KB/s
[D] box video frame rate: 22, 73.35 KB/s, audio frame rate: 17, 191.45 KB/s
```

---

## References

- Source: `carlink_native/documents/reference/Firmware/firmware_video.md`
- Source: `pi-carplay-4.1.3/firmware_binaries/2025.02/NAVIGATION_PROTOCOL_ANALYSIS.md`
- **508 handshake verified:** `pi-carplay-main/src/main/carplay/services/CarplayService.ts` (Jan 2026)
- Binary analysis: `ARMadb-driver_unpacked`, `AppleCarPlay_unpacked` (Jan 2026)
- Capture analysis: Jan 2026 (iPhone 18,4, Pixel 10)
- Session examples: `../04_Implementation/session_examples.md`
