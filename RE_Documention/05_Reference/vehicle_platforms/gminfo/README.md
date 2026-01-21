# GM Infotainment 3.7 Platform Reference

**Device:** GM Info 3.7 (gminfo37)
**Platform:** Intel Apollo Lake (Broxton)
**Android Version:** 12 (API 32)
**Research Date:** December 2025

---

## Overview

This document provides hardware specifications for the GM Infotainment 3.7 system, useful for optimizing CarPlay/Android Auto implementations on this platform.

---

## Hardware Specifications

### CPU

| Property | Value |
|----------|-------|
| Vendor | Intel |
| Model | IoT CPU 1.0 (Model 92) |
| Architecture | x86_64 |
| Cores | 4 |
| Base Frequency | 1881.6 MHz |
| Cache | 1024 KB per core |

**Key Features:** SSE4.2, AES-NI, SHA-NI, RDRAND

### GPU

| Property | Value |
|----------|-------|
| GPU Model | Intel HD Graphics 505 (APL 3) |
| Driver | Mesa Intel 21.1.5 |
| OpenGL ES | 3.2 |
| Vulkan | 1.0.64 |

### Display

| Property | Value |
|----------|-------|
| Panel Model | DD134IA-01B (Chimei Innolux) |
| Resolution | **2400 x 960** pixels |
| Aspect Ratio | 2.5:1 (ultra-wide) |
| Refresh Rate | 60.00 Hz |
| DPI | 192.91 x 193.52 |
| Density Bucket | xhdpi (200 dpi) |

---

## Video Decode Performance

### H.264 Hardware Decode (Intel VPU)

| Resolution | FPS Range |
|------------|-----------|
| 720x480 | 830-1020 |
| 1280x720 | 460-590 |
| 1920x1080 | 320-360 |

### H.265 Hardware Decode

| Resolution | FPS Range |
|------------|-----------|
| 1280x720 | 250-500 |
| 1920x1080 | 190-400 |
| 3840x2160 | 120-130 |

### VP9 Hardware Decode

| Resolution | FPS Range |
|------------|-----------|
| 1280x720 | 400-600 |
| 1920x1080 | 350-420 |
| 3840x2160 | 100-130 |

---

## Recommended CarPlay/Android Auto Settings

### Optimal Video Configuration

| Setting | Recommended Value |
|---------|-------------------|
| Resolution | 1920x1080 or 2400x960 |
| FPS | 60 (native refresh) |
| Codec | H.264 via `OMX.Intel.hw_vd.h264` |
| Color Format | NV12 (YUV420SemiPlanar) |
| Surface Type | SurfaceView (for HWC overlay) |

### Performance Notes

- Use SurfaceView for direct HWC overlay (zero-copy)
- Avoid TextureView (requires GPU composition)
- Triple-buffered framebuffer adds ~17ms latency
- No dedicated VRAM (shared system memory)

---

## Audio System

### Audio Buses (12 dedicated)

| Bus | Purpose |
|-----|---------|
| Bus 0 | Media playback |
| Bus 1 | Navigation/Notifications |
| Bus 2 | Voice assistant |
| Bus 3 | Voice communication (phone) |
| Bus 4-11 | System/OEM specific |

### Audio Processing

| Feature | Implementation |
|---------|----------------|
| Preprocessing | Harman (AEC, NS, AGC) |
| Effects | NXP audio effects bundle |
| Mixing | External DSP |
| Focus Policy | AAOS standard |

### Recommended Audio Settings

| Setting | Value |
|---------|-------|
| Sample Rate | 48 kHz |
| Channels | Stereo |
| Format | PCM 16-bit |
| Latency Target | ~24ms |

---

## Audio Codecs (Software)

All audio codecs are software-based (CPU). No hardware audio decoders.

### Decoders

| Codec | MIME Type | Max Channels | Sample Rates |
|-------|-----------|--------------|--------------|
| AAC | audio/mp4a-latm | 8 | 7350-48000 Hz |
| MP3 | audio/mpeg | 2 | 8000-48000 Hz |
| Opus | audio/opus | 8 | 8000-48000 Hz |
| FLAC | audio/flac | 8 | 1-655350 Hz |
| Vorbis | audio/vorbis | 8 | 8000-96000 Hz |

### Encoders

| Codec | MIME Type | Max Channels | Bitrate Range |
|-------|-----------|--------------|---------------|
| AAC | audio/mp4a-latm | 6 | 8-512 Kbps |
| Opus | audio/opus | 2 | 6-510 Kbps |
| FLAC | audio/flac | 2 | Lossless |

---

## Graphics Driver Stack

| Component | Implementation |
|-----------|----------------|
| Gralloc | `gralloc.broxton.so` |
| HW Composer | `hwcomposer.broxton.so` |
| Vulkan ICD | `vulkan.broxton.so` |

### Supported Buffer Formats

| Format | Code | Notes |
|--------|------|-------|
| RGBA_8888 | 0x1 | Standard |
| RGB_565 | 0x4 | Low memory |
| NV12 | 0x15 | Video decode output |
| YUV420Flexible | 0x7f420888 | Generic YUV |

---

## Composition Pipeline

### Layer Types

| Type | Description | Preference |
|------|-------------|------------|
| DEVICE | Hardware overlay (zero-copy) | Preferred |
| CLIENT | GPU composition | Fallback |

### SurfaceFlinger Settings

| Setting | Value |
|---------|-------|
| Framebuffer Buffers | 3 (triple buffering) |
| VSYNC Period | 16.666 ms |
| App VSYNC Offset | 2.5 ms |

---

## Color Management

| Feature | Status |
|---------|--------|
| Color Mode | Native (Mode 0) |
| Wide Color Gamut | Not Supported |
| HDR10 | Not Supported |
| HDR10+ | Not Supported |
| Dolby Vision | Not Supported |

---

## Automotive-Specific

### System Properties

```
ro.hardware.type=automotive
ro.boot.product.hardware.sku=gv221
ro.board.platform=broxton
```

### Display Flags

- `FLAG_SECURE` - Protected content support
- `FLAG_SUPPORTS_PROTECTED_BUFFERS` - DRM buffer support
- `FLAG_TRUSTED` - System display

---

## References

- Source: `carlink_native/documents/reference/gminfo/`
- Hardware analysis: December 2025
