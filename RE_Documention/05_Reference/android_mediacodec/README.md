# Android MediaCodec Reference

**Purpose:** Implementation reference for H.264 video decoding on Android
**Source:** Google Android Developer Documentation
**Last Updated:** 2026-01-19

---

## Overview

This directory contains Android MediaCodec implementation guidance specific to CarPlay/Android Auto video decoding.

---

## Key Findings for H.264 Decoding

### Buffer Invalidation Rule (CRITICAL)

> "After calling getInputBuffer() any ByteBuffer previously returned for the same input index MUST no longer be used."

**Impact:** Do NOT call `getInputBuffer(bufferIndex)` twice with the same index when injecting SPS/PPS before IDR frames.

### Flush Requires CSD Resubmission

> "If you flush the codec too soon after start() – generally, before the first output buffer is received – you will need to resubmit the codec-specific-data."

### Async Mode Flush Requires start()

> "After calling flush(), you MUST call start() to resume receiving input buffers."

### Mid-Stream SPS/PPS Injection

> "Package the entire new codec-specific configuration data together with the key frame into a single buffer (including start codes), and submit as a regular input buffer."

This validates prepending SPS+PPS to IDR frames, but the implementation must not call getInputBuffer() twice.

---

## H.264 Codec-Specific Data (CSD)

### CSD Contents for H.264/AVC

| Key | Content | Description |
|-----|---------|-------------|
| csd-0 | SPS | Sequence Parameter Set |
| csd-1 | PPS | Picture Parameter Set |

Each parameter set MUST start with a start code: `\x00\x00\x00\x01`

### Method 1: Via MediaFormat (Preferred)

```java
MediaFormat format = MediaFormat.createVideoFormat("video/avc", width, height);

// SPS with start code (00 00 00 01 67 ...)
ByteBuffer spsBuffer = ByteBuffer.wrap(spsData);
format.setByteBuffer("csd-0", spsBuffer);

// PPS with start code (00 00 00 01 68 ...)
ByteBuffer ppsBuffer = ByteBuffer.wrap(ppsData);
format.setByteBuffer("csd-1", ppsBuffer);

codec.configure(format, surface, null, 0);
codec.start();
```

**Important**: When using this method, do NOT submit CSD data explicitly via input buffers.

### Method 2: Via Input Buffers

```java
int index = codec.dequeueInputBuffer(timeout);
ByteBuffer buffer = codec.getInputBuffer(index);

buffer.put(spsData);  // With start code
buffer.put(ppsData);  // With start code

codec.queueInputBuffer(index, 0, totalSize, 0, MediaCodec.BUFFER_FLAG_CODEC_CONFIG);
```

### Mid-Stream Configuration Changes

> "For H.264, H.265, VP8 and VP9, it is possible to change the picture size or configuration mid-stream. To do this, you must package the entire new codec-specific configuration data together with the key frame into a single buffer (including any start codes), and submit it as a regular input buffer."

---

## Low Latency Decoding

### KEY_LOW_LATENCY

> "When enabled, the decoder doesn't hold input and output data more than required by the codec standards."

### Checking Support

```java
MediaCodecInfo codecInfo = // ... get codec info
CodecCapabilities caps = codecInfo.getCapabilitiesForType("video/avc");
boolean lowLatencySupported = caps.isFeatureSupported(CodecCapabilities.FEATURE_LowLatency);
```

### Enabling Low Latency Mode

```java
MediaFormat format = MediaFormat.createVideoFormat("video/avc", width, height);

if (lowLatencySupported) {
    format.setInteger(MediaFormat.KEY_LOW_LATENCY, 1);
}

codec.configure(format, surface, null, 0);
```

### Related Settings

```java
// Realtime priority
format.setInteger(MediaFormat.KEY_PRIORITY, 0);

// Intel decoder optimization (disable Adaptive Playback)
if (codecName.contains("Intel")) {
    format.setInteger(MediaFormat.KEY_MAX_INPUT_SIZE, width * height);
}
```

---

## NAL Unit Types Reference

| NAL Type | Description | Header Byte Pattern |
|----------|-------------|---------------------|
| 1 | Non-IDR slice (P-frame) | 0x21, 0x41, 0x61 |
| 5 | IDR slice (keyframe) | 0x25, 0x45, 0x65 |
| 6 | SEI | 0x06, 0x26, 0x46 |
| 7 | SPS | 0x27, 0x47, 0x67 |
| 8 | PPS | 0x28, 0x48, 0x68 |

NAL type extraction: `nalType = headerByte & 0x1F`

---

## H.264 Annex B Format

Start codes:
- 3-byte: `00 00 01`
- 4-byte: `00 00 00 01`

---

## Async Callback Mode

### Callback Methods

```java
codec.setCallback(new MediaCodec.Callback() {
    @Override
    void onInputBufferAvailable(MediaCodec codec, int index) {
        // Input buffer ready
    }

    @Override
    void onOutputBufferAvailable(MediaCodec codec, int index, BufferInfo info) {
        // Output buffer ready
    }

    @Override
    void onError(MediaCodec codec, CodecException e) {
        // Handle error
    }

    @Override
    void onOutputFormatChanged(MediaCodec codec, MediaFormat format) {
        // Format changed
    }
});
```

### Flush Behavior in Async Mode

> "After calling flush(), you MUST call start() to resume receiving input buffers, even if an input surface was created."

---

## Profile/Level Support

### Common H.264 Profiles

| Profile | Constant | Value |
|---------|----------|-------|
| Baseline | AVCProfileBaseline | 1 |
| Main | AVCProfileMain | 2 |
| Extended | AVCProfileExtended | 4 |
| High | AVCProfileHigh | 8 |
| High 10 | AVCProfileHigh10 | 16 |
| High 4:2:2 | AVCProfileHigh422 | 32 |
| High 4:4:4 | AVCProfileHigh444 | 64 |

### Common H.264 Levels

| Level | Constant | Max Resolution @ 30fps |
|-------|----------|------------------------|
| 3.1 | AVCLevel31 | 1280x720 |
| 4.0 | AVCLevel4 | 1920x1080 |
| 4.1 | AVCLevel41 | 1920x1080 |
| 5.0 | AVCLevel5 | 4096x2160 |
| 5.1 | AVCLevel51 | 4096x2160 |

---

## References

- Source: `carlink_native/documents/reference/google/`
- Android Developer Documentation: https://developer.android.com/reference/android/media/MediaCodec
- BigFlake MediaCodec Guide: https://bigflake.com/mediacodec/
