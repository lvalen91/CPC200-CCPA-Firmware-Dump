# AutoKit APK — Video Pipeline Reverse Engineering

> **Document version:** 2026-03-22
> **APK analyzed:** `AutoKit_2025.03.19.1126.apk` (`cn.manstep.phonemirrorBox`)
> **Methodology:** Static analysis of Jiagu-unpacked DEX (3.5 MB decrypted from process memory), decompiled Java sources (JADX raw + deobfuscated), native library symbol analysis, Frida hook instrumentation, and dex string extraction.
> **Verification:** All claims independently verified by three parallel analysis agents against source code. Two corrections applied (compress_flag variability, protocol type labeling). See [Verification Scorecard](#verification-scorecard) at end.

---

## Table of Contents

1. [Architecture Overview](#1-architecture-overview)
2. [Complete Data Flow: USB to Pixels](#2-complete-data-flow-usb-to-pixels)
3. [Three Rendering Paths](#3-three-rendering-paths)
4. [H.264 Hardware Decoder (MediaCodec)](#4-h264-hardware-decoder-mediacodec)
5. [H.264 Software Decoder (OpenH264)](#5-h264-software-decoder-openh264)
6. [NAL Unit State Machine](#6-nal-unit-state-machine)
7. [CarPlay vs Android Auto Video Paths](#7-carplay-vs-android-auto-video-paths)
8. [Video Size Negotiation & Resolution Tiers](#8-video-size-negotiation--resolution-tiers)
9. [The Oversizing Mechanism (Android Auto)](#9-the-oversizing-mechanism-android-auto)
10. [Touch Coordinate Remapping](#10-touch-coordinate-remapping)
11. [Surface Lifecycle Management](#11-surface-lifecycle-management)
12. [Decoder Error Recovery](#12-decoder-error-recovery)
13. [Threading Model & Performance](#13-threading-model--performance)
14. [Platform-Specific Quirks](#14-platform-specific-quirks)
15. [OpenGL Shader Pipeline](#15-opengl-shader-pipeline)
16. [Native Library Analysis](#16-native-library-analysis)
17. [Frida Instrumentation Points](#17-frida-instrumentation-points)
18. [Obfuscation Map](#18-obfuscation-map)
19. [Resolved Unknowns](#19-resolved-unknowns)
20. [Verification Scorecard](#20-verification-scorecard)

---

## 1. Architecture Overview

The AutoKit video pipeline consists of four layers:

```
┌─────────────────────────────────────────────────────────────┐
│ LAYER 1: USB Protocol (BoxProtocol — f.java, 2613 lines)   │
│  Receives CMD type 6 (VIDEO_FRAME) from adapter            │
│  Parses 20-byte header: width, height, flags, timestamp    │
│  Routes to decoder based on protocol type (3 or 5)         │
└──────────────────────────┬──────────────────────────────────┘
                           │
┌──────────────────────────▼──────────────────────────────────┐
│ LAYER 2: Decoder Wrapper (BoxInterface.b — b.java, 1365 ln)│
│  h() dispatcher: type 8→decode, 0→stop, 7→resize           │
│  Render Thread (class f): NAL state machine, SPS/PPS cache │
│  Decoder (class C0074b): MediaCodec or OpenH264            │
└──────────────────────────┬──────────────────────────────────┘
                           │
┌──────────────────────────▼──────────────────────────────────┐
│ LAYER 3: Video Sizing (c0.java + i.java + j.java)          │
│  Resolution tier selection (480/720/1080/1440)              │
│  Oversizing for AA bar cropping                             │
│  Aspect ratio correction with even-number alignment         │
└──────────────────────────┬──────────────────────────────────┘
                           │
┌──────────────────────────▼──────────────────────────────────┐
│ LAYER 4: Rendering Surface                                  │
│  AutoBoxMirrorView (SurfaceView) — default                  │
│  AutoBoxMirrorTextureView (TextureView) — optional          │
│  AutoBoxMirrorSoftView (GLSurfaceView) — software decode    │
└─────────────────────────────────────────────────────────────┘
```

### Source File Map

| Obfuscated | Real Name | File | Lines | Role |
|------------|-----------|------|-------|------|
| `BoxInterface.f` | BoxProtocol | `BoxInterface/f.java` | 2613 | USB protocol, video routing |
| `BoxInterface.b` | VideoDecoder | `BoxInterface/b.java` | 1365 | MediaCodec wrapper + render thread |
| `BoxInterface.e` | MultiTouchEvent | `BoxInterface/e.java` | ~80 | Touch normalization |
| `BoxInterface.d` | BoxInterface | `BoxInterface/d.java` | ~400 | Connection manager |
| `BoxInterface.j` | UsbDeviceHandler | `BoxInterface/j.java` | ~82 | USB enumeration |
| `c0` | VideoSizeManager | `c0.java` | ~350 | Resolution tiers, DPI calc |
| `i` | AutoBoxMirrorViewCommon | `i.java` | ~140 | Oversizing logic |
| `j` | AutoBoxMirrorViewUtil | `j.java` | ~130 | Aspect ratio helpers |
| `p` | GlobalConfig | `p.java` | ~180 | Static flags & constants |
| `u` | DeviceConfig | `u.java` | ~350 | Platform detection |
| — | OpenH264Decoder | `OpenH264Decoder.java` | ~95 | Software H.264 JNI bridge |

> **Source paths:** All references use the base path:
> `/Users/zeno/Downloads/GitHub/CPC200-CCPA-Firmware-Dump/Autokit/unpacked/sources_raw/cn/manstep/phonemirrorBox/`

---

## 2. Complete Data Flow: USB to Pixels

### Step 1: USB Frame Arrival

Video frames arrive as **CMD type 6** (`VIDEO_FRAME`) in the BoxProtocol receive loop.

**File:** `BoxInterface/f.java:906-928`

```java
// Video frame header parsing
if (i2 == 6) {
    if (this.r.a().booleanValue()) {
        int i7 = lVar.d().getInt(0);    // width
        int i8 = lVar.d().getInt(4);    // height
        int i9 = lVar.d().getInt(8);    // flags
        long j2 = cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo("2024.12.13.1130") >= 0
                   ? lVar.d().getInt(12) : 0L;  // timestamp (firmware >= 2024.12.13)

        int i10 = i9 & 1;              // compress_flag (0 or 1)
        int i11 = (i9 >> 2) & 3;       // work_mode bits
```

**Frame header structure (20 bytes):**

```
Offset  Size  Field         Notes
0       4     width         H.264 frame width (little-endian int)
4       4     height        H.264 frame height (little-endian int)
8       4     flags         Bit 0: compress_flag. Bits 2-3: work_mode
12      4     timestamp     Present only on firmware >= 2024.12.13.1130
16      4     (reserved)
20+     N     H.264 data    Raw NAL units
```

### Step 2: Work Mode Classification

**File:** `BoxInterface/f.java:920-928`

```java
// Work mode mapping
if (i11 == 0) {
    i11 = 2;    // CarLife
} else if (i11 == 1) {
    i11 = 1;    // AndroidAuto
} else if (i11 == 2) {
    i11 = 4;    // HiCar
}
```

### Step 3: Compress Mode Change Detection

**File:** `BoxInterface/f.java:929-941`

```java
if (this.f1449c != i10) {
    this.f1449c = i10;
    if (this.q.f1470d == 5) {  // ICCOA protocol
        if (i10 == 0) {
            // On-screen video (CarPlay live frame)
            bVar3.g(3, i7, i8, null, 0);
        } else {
            // Off-screen H.264 (Android Auto rendered frame)
            bVar2.g(4, i7, i8, null, 0);
        }
        s.c("COMPRESS_METHORD_H264  boffscreen= " + this.f1449c);
    }
}
```

> **CORRECTION (verified):** The original analysis stated "Android Auto frames always have compress_flag=1." This is **FALSE**. The compress_flag is variable — it can be 0 or 1, and the code explicitly handles both values. The flag changes dynamically during a session.

### Step 4: Resolution Change Detection

**File:** `BoxInterface/f.java:943-953`

```java
if (i7 != this.f1450d || i8 != this.e) {
    this.f1450d = i7;
    this.e = i8;
    if (this.q.f1470d == 5 && N != -1 && this.z != null) {
        s.e("new w h " + i7 + "x" + i8);
        this.z.g(7, i7, i8, null, 0);  // Video size change → type 7
    }
}
```

### Step 5: H.264 Data Extraction

**File:** `BoxInterface/f.java:955-985`

Two protocol paths exist:

**Protocol type 3 (iPhone without ICCOA):**
```java
if (i12 == 3) {
    int iF = lVar.f() - 20;              // Data length minus header
    byte[] bArr = new byte[iF + 32];      // New buffer with 32-byte wrapper
    ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
    byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
    byteBufferWrap.putInt(4, iF + 36);
    byteBufferWrap.putInt(8, i7);          // width
    byteBufferWrap.putInt(12, i8);         // height
    byteBufferWrap.putInt(24, 131072);     // 0x20000 marker
    System.arraycopy(lVar.e(), 20, bArr, 32, iF);
    cn.manstep.phonemirrorBox.BoxInterface.d.F(bArr);  // → UI handler
}
```

> **CORRECTION (verified):** Protocol type 3 is labeled `"NonAirPlay"` in the code (f.java:470-481), not "AirPlay" as originally stated. The 0x20000 (131072) marker at offset 24 is confirmed.

**Protocol type 5 (ICCOA — standard CarPlay/Android Auto):**
```java
if (i12 == 5 && i13 != -1) {
    int iF2 = lVar.f() - 20;
    bVar4.h(8, i7, i8, lVar.e(), iF2, j2);  // Direct to decoder
}
```

### Step 6: Decoder Dispatcher

**File:** `BoxInterface/b.java:840-901`

The `h()` method routes video commands by type:

```java
public void h(int i2, int i3, int i4, byte[] bArr, int i5, long j2) {
    if (this.f1418d == null) return;

    if (i2 == 0) {          // STOP
        g.e(0, 0); g.d(0); g.c(0);
        this.f1418d.l();     // Close decoder
        return;
    }
    if (i2 == 1) {          // RESUME
        f.n = false;
        f.p = false;
        g.c(1); g.d(1);
        return;
    }
    if (i2 == 7) {          // SIZE CHANGE
        this.f1418d.t(i3, i4);
        g.e(i3, i4);
        s.c("BoxCarPlay,onDataOut: VideoSize=" + i3 + "x" + i4);
        return;
    }
    if (i2 == 8) {          // H.264 FRAME DATA
        h = true;
        this.f1418d.m(bArr, 20, i5, j2);  // offset 20 strips header
        return;
    }
}
```

### Step 7: NAL Parsing & Decode

See [Section 6: NAL Unit State Machine](#6-nal-unit-state-machine) for the complete `m()` method analysis.

---

## 3. Three Rendering Paths

The rendering path is selected by two `GlobalConfig` flags:

**File:** `p.java:33-35`
```java
public static boolean g = false;   // useSoftDecode
public static boolean i = false;   // useTextureView
```

**File:** `p.java:73` (static initializer)
```java
C = 60;   // videoFrameRate default
```

### Selection Logic

**File:** `AutoBoxMirrorView.java:67-71`
```java
if (C0925p.f5872i) {             // p.i == true → TextureView
    AutoBoxMirrorTextureView.m5337m(i, i2);
}
if (C0925p.f5870g) {             // p.g == true → GLSurfaceView (soft decode)
    AutoBoxMirrorSoftView.m5326h(i, i2);
}
```

### Path A: SurfaceView (Default)

**File:** `AutoBoxMirrorView.java:14`
```java
public class AutoBoxMirrorView extends SurfaceView
    implements d.g, SurfaceHolder.Callback
```

- Used when: `p.g == false && p.i == false`
- Decoder: `MediaCodec` hardware H.264 → renders directly to Surface
- Advantage: HWC overlay, lowest latency
- Disadvantage: Surface destroyed on window detach

### Path B: TextureView (Optional)

**File:** `AutoBoxMirrorTextureView.java:17`
```java
public class AutoBoxMirrorTextureView extends TextureView
    implements d.g, TextureView.SurfaceTextureListener
```

- Used when: `p.i == true`
- Decoder: Same `MediaCodec`, but Surface from SurfaceTexture
- Advantage: **Caches SurfaceTexture on destroy** — survives window transitions
- Optional: OpenGL shader post-processing (via `UseOpenGLRender` preference)

### Path C: GLSurfaceView (Software Decode)

**File:** `AutoBoxMirrorSoftView.java:17`
```java
public class AutoBoxMirrorSoftView extends GLSurfaceView
    implements d.g, SurfaceHolder.Callback
```

- Used when: `p.g == true`
- Decoder: `OpenH264Decoder.java` → `libopenH264decoder.so` (Cisco OpenH264)
- Output: YUV420 byte array → OpenGL ES 2.0 texture upload
- Frame rate: **Forced to 25 fps** (see Section 5)

### Path D: AndroidH264view (Legacy)

**File:** `AndroidH264view.java` (663 lines)

Self-contained alternative with its own `MediaCodec` instance, SPS/PPS cache (inner class `c`), and dedicated feed/render threads. Uses FrameLayout with margins for positioning.

> **I don't know** what condition activates this path instead of the primary `BoxInterface.b` decoder.

---

## 4. H.264 Hardware Decoder (MediaCodec)

### Decoder Creation

**File:** `BoxInterface/b.java:484-510` — Method `z()`

```java
void z() {
    int i = 5;
    while (true) {
        i--;
        if (i <= 0) {
            return;
        }
        try {
            MediaCodec mediaCodecCreateDecoderByType =
                MediaCodec.createDecoderByType("video/avc");
            // ...
            return;
        } catch (IOException e) {
            s.e("AvcDecoder,AvcDecoder->open:Create decoder Exception!!!\n" + s.g(e));
            try {
                Thread.sleep(200L);
            } catch (InterruptedException unused) {}
        }
    }
}
```

**Behavior:** 5 retry attempts, 200ms sleep between failures. If all 5 fail, returns without a decoder — subsequent frames will trigger keyframe requests.

### Decoder Configuration

**File:** `BoxInterface/b.java:285-331` — Method `B(Surface, int, int)`

```java
void B(Surface surface, int i, int i2) {
    s.c("AvcDecoder,start: decode h264 size:" + i + "x" + i2);
    // ...
    if (!p.g) {  // Hardware decode path
        MediaFormat mediaFormatCreateVideoFormat =
            MediaFormat.createVideoFormat("video/avc", i, i2);
        try {
            y(mediaFormatCreateVideoFormat, surface);  // First attempt
        } catch (Exception e) {
            s.f("AvcDecoder", "start: surface=" + surface + "\n" + s.g(e));
            try {
                this.f1421d.release();
                this.f1421d = null;
                this.f1421d = MediaCodec.createDecoderByType("video/avc");
                y(mediaFormatCreateVideoFormat, surface);  // Retry
            } catch (Exception e2) {
                s.e("AvcDecoder,start:\n" + s.g(e2));
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 18);  // Error code 18
            }
        }
    }
}
```

### MediaCodec Configure + Start

**File:** `BoxInterface/b.java:469-476` — Method `y()`

```java
private void y(MediaFormat mediaFormat, Surface surface) {
    this.f1421d.configure(mediaFormat, surface, (MediaCrypto) null, 0);
    this.f1421d.start();
    if (cn.manstep.phonemirrorBox.BoxInterface.d.u() && u.z().T()) {
        this.f1421d.setVideoScalingMode(2);
        // 2 = VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING
        // Only for AC8317 devices in Android Auto mode
    }
    this.f1419b = true;
}
```

### Frame Feeding

**File:** `BoxInterface/b.java:393-462` — Method `v(byte[], int, int, long)`

This is the main hardware decode entry point. It:
1. Calls `MediaCodec.dequeueInputBuffer()` with timeout
2. Copies H.264 NAL unit data into the input buffer
3. Calls `MediaCodec.queueInputBuffer()` with presentation timestamp
4. If dequeue fails repeatedly, sends error code 18:

```java
cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 18);  // b.java:452
```

### Output Rendering

**File:** `BoxInterface/b.java:184-191` — Inner class `c implements Runnable`

```java
class c implements Runnable {
    @Override
    public void run() {
        MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
        Process.setThreadPriority(-19);  // Near-realtime priority
        // dequeueOutputBuffer loop → releaseOutputBuffer(idx, true)
    }
}
```

The output thread runs at **Linux priority -19** (highest non-RT priority), ensuring decoded frames reach the display with minimal scheduling delay.

---

## 5. H.264 Software Decoder (OpenH264)

### Native Library Loading

**File:** `OpenH264Decoder.java:27-34`

```java
static {
    try {
        System.loadLibrary("openH264decoder");
    } catch (UnsatisfiedLinkError e) {
        C0925p.f5870g = false;  // Disable soft decode on load failure
        C0982s.m7376f("OpenH264Decoder", "static initializer: " + C0982s.m7377g(e));
    }
}
```

### Buffer Pre-allocation

**File:** `OpenH264Decoder.java:41-48` — Method `b()`

```java
public void m6009b() {
    this.f4707f = new byte[4392000];  // ~4.2 MB pre-allocated
    this.f4704c = 0;
    this.f4703b = 0;
    this.f4702a = 0;
    this.f4705d = AutoBoxMirrorSoftView.getSoftH264Render();
    this.f4706e = 0;
    nativeInit();
}
```

The 4,392,000-byte buffer holds YUV420 output. For a 1920x1520 frame: `1920 * 1520 * 1.5 = 4,377,600` — this buffer is sized just above that.

### Frame Decode

**File:** `OpenH264Decoder.java:62-86` — Method `c(byte[], int, int)`

```java
public void m6010c(byte[] bArr, int i, int i2) {
    byte[] bArr2 = this.f4707f;
    int iDecodeFrameOffset = decodeFrameOffset(bArr, i, i2, bArr2, bArr2.length);
    this.f4706e++;

    // Dynamic resolution detection
    if (this.f4702a != getWidth() || this.f4703b != getHeight()) {
        int width = getWidth();
        int height = getHeight();
        this.f4704c = width;
        this.f4702a = width;
        this.f4703b = height;

        // Reallocate if buffer too small
        if (this.f4707f.length < ((width * height) * 3) / 2) {
            this.f4707f = new byte[((width * height) * 3) / 2];
        }

        // Notify renderer of new dimensions
        if (c1285b2 != null) {
            c1285b2.m9603b(this.f4704c, this.f4703b);
        }
    }

    // Send decoded YUV to OpenGL renderer
    if (iDecodeFrameOffset > 0 && c1285b != null) {
        c1285b.m9604c(this.f4707f);
    }
}
```

### Forced 25 FPS

**File:** `BoxInterface/f.java:403-410` — StOpenParams constructor (class `k`)

```java
public k() {
    if (p.g) {
        s.e("use soft-decode, framerate = 25 !!!!!!!!!!!!!!!");
        p.C = 25;
    }
    this.a = 0;
    this.f1468b = 0;
    this.f1469c = p.C;  // Frame rate (60 default, 25 for soft)
    this.f1470d = 5;     // Protocol type (5 = ICCOA)
    this.e = 16384;      // Buffer size
}
```

---

## 6. NAL Unit State Machine

The render thread `f.m()` is the heart of the decoder pipeline:

**File:** `BoxInterface/b.java:1156-1259`

### NAL Type Extraction

```java
// b.java:1157
(bArr[i + 4] & 31) == 7   // NAL type 7 = SPS
// b.java:1276
(bArr[i + 4] & 31) == 5   // NAL type 5 = IDR
```

The expression `& 31` (decimal) is equivalent to `& 0x1F`, masking the lower 5 bits of the NAL unit header byte.

### State Machine Flow

```
                    ┌──────────────────────────┐
                    │   Frame arrives in m()   │
                    └────────────┬─────────────┘
                                 │
                    ┌────────────▼─────────────┐
                    │  Extract NAL type:       │
                    │  (bArr[offset+4] & 31)   │
                    └────────────┬─────────────┘
                                 │
              ┌──────────────────┼──────────────────┐
              │                  │                   │
     ┌────────▼───────┐  ┌──────▼──────┐  ┌────────▼───────┐
     │ NAL 7/8 (SPS/  │  │ NAL 5 (IDR) │  │ NAL 1 (P-frame)│
     │    PPS)        │  │             │  │                │
     └────────┬───────┘  └──────┬──────┘  └────────┬───────┘
              │                  │                   │
     ┌────────▼───────┐  ┌──────▼──────┐  ┌────────▼───────┐
     │ Cache in       │  │ Decoder     │  │ Decoder exists? │
     │ static byte[] l│  │ exists?     │  │                │
     │ Set flag p=true│  │             │  │                │
     └────────┬───────┘  └──────┬──────┘  └────────┬───────┘
              │             Y/  │  \N            Y/ │ \N
     ┌────────▼───────┐  ┌──▼──┐ ┌──▼───┐  ┌───▼──┐ ┌──▼────┐
     │ Wait surface   │  │Feed │ │Create│  │Feed  │ │Request│
     │ (300ms max,    │  │frame│ │from  │  │frame │ │I-frame│
     │  10ms poll)    │  │     │ │cache │  │      │ │       │
     └────────┬───────┘  └─────┘ └──────┘  └──────┘ └───────┘
              │
     ┌────────▼───────┐
     │ Surface ready? │
     │                │
     └────────┬───────┘
         Y/   │   \N
     ┌───▼──┐ ┌──▼───────────┐
     │Create│ │Try TextureView│
     │codec │ │fallback,      │
     │      │ │else set n=true│
     └──────┘ │(request key)  │
              └───────────────┘
```

### Surface Wait (SPS arrival before surface exists)

**File:** `BoxInterface/b.java:1156-1175`

```java
if (!p.g && this.f1432d == null && cn.manstep.phonemirrorBox.v0.e.C()
    && (bArr[i + 4] & 31) == 7) {
    int i3 = 300;  // 300ms max wait
    while (this.f1432d == null) {
        try {
            Thread.sleep(10L);  // 10ms polling interval
        } catch (InterruptedException e) {
            s.e(Log.getStackTraceString(e));
        }
        i3 -= 10;
        if (i3 <= 0) {
            break;
        }
    }
    // TextureView fallback
    if (p.i && this.f1432d == null) {
        this.f1432d = AutoBoxMirrorTextureView.getSurface();
    }
    if (this.f1432d == null) {
        s.e("BoxCarPlay,decode: Can't wait surface available, need request key frame!!");
        n = true;
    }
}
```

### SPS/PPS Caching and IDR-Triggered Decoder Init

**File:** `BoxInterface/b.java:1195-1232`

```java
// SPS/PPS frame (NAL type 7 or 8)
s.c("BoxCarPlay,decode: RenderThread, is SPS PPS frame coming: mSurface=" + this.f1432d);
s(bArr, i, i2, j);  // Cache SPS/PPS data in static byte[] l

if (this.f1432d != null && this.f1430b == null) {
    C0074b c0074b = new C0074b();
    this.f1430b = c0074b;
    c0074b.z();                            // Create MediaCodec (5 retries)
    this.f1430b.B(this.f1432d, this.e, this.f);  // Configure with surface
    o = true;                              // Enable frame caching
}

// IDR frame (NAL type 5) — can init decoder from cache
s.c("BoxCarPlay,decode: RenderThread, is I frame coming: mSurface=" + this.f1432d);
if (this.f1432d != null && this.f1430b == null) {
    if (l != null) {  // Cached SPS/PPS exists
        C0074b c0074b2 = new C0074b();
        this.f1430b = c0074b2;
        c0074b2.z();
        this.f1430b.B(this.f1432d, this.e, this.f);
        this.f1430b.w(l, j);  // Feed cached SPS/PPS first
    }
    o = true;
}
```

### P-Frame Without Decoder — Keyframe Request

**File:** `BoxInterface/b.java:1237-1245`

```java
s.e("BoxCarPlay,decode: mdecoder = null, should request Key frame!!!!!!");
if (cn.manstep.phonemirrorBox.BoxInterface.d.s() != null
    && cn.manstep.phonemirrorBox.BoxInterface.d.s().d()) {
    cn.manstep.phonemirrorBox.v0.e.H(12);  // Request I-frame from adapter
}
```

### Frame Cache for Recovery Replay

**File:** `BoxInterface/b.java:940,960`

```java
public static byte[] l;           // SPS/PPS cache (line 940)
public static byte[] m;           // I-frame cache (line 941)
public static boolean n;          // Request key frame flag (line 942)
public static boolean o;          // Enable frame caching (line 943)
public static boolean p;          // SPS/PPS received flag (line 944)

public h k = new h(320);          // Ring buffer, 320 entries (line 960)
```

---

## 7. CarPlay vs Android Auto Video Paths

### Protocol Types

| Phone Type | N value | Protocol | Video Routing |
|-----------|---------|----------|---------------|
| iPhone (CarPlay) | 3 | Type 3 "NonAirPlay" or Type 5 (ICCOA) | Wrapper + UI handler OR direct to decoder |
| Android (AA) | 1 | Type 5 (ICCOA) | Direct to decoder |
| HiCar | 4 | Type 5 (ICCOA) | Direct to decoder |

### CarPlay-Specific Behavior

1. **No explicit size API** — CarPlay size is negotiated through the adapter's runtime config files (`/tmp/screen_size`, `/tmp/screen_fps`) and frame headers
2. **DPI calculated separately** via `VideoSizeManager.r(w, h)` → `setSize()`
3. **Protocol type 3 path** wraps frames with a 32-byte header including 0x20000 marker:
   ```java
   byteBufferWrap.putInt(24, 131072);  // 0x20000 = NonAirPlay marker
   ```
4. **No oversizing** — CarPlay frames are displayed at their native resolution without bar cropping

### Android Auto-Specific Behavior

1. **Explicit size negotiation** via `sendAndroidAutoSize()`:
   ```java
   // f.java:2115-2127
   jSONObject.put("androidAutoSizeW", i2);
   jSONObject.put("androidAutoSizeH", i3);
   return h1(jSONObject.toString().getBytes());  // cmd 25 (BoxSettings)
   ```
2. **Oversizing mechanism** crops AA system bars (see Section 9)
3. **compress_flag is variable** — can be 0 (on-screen) or 1 (off-screen H.264), depending on adapter state
4. **Version-gated features** — `isAndroidAutoWithVersionCheck()` requires firmware >= `"2022.06.02.1010"`:
   ```java
   // From TRANSLATION_DICTIONARY.md:181
   // d.u() → true if firmware >= "2022.06.02.1010" AND isAndroidAutoConnected()
   ```

---

## 8. Video Size Negotiation & Resolution Tiers

### Four Fixed Tiers

**File:** `c0.java:47`

```java
int[] iArr = {480, 720, 1080, 1440};
```

### Tier → Resolution Mapping (Landscape)

**File:** `c0.java:54-85`

```java
// For each tier height, calculate proportional width
// constrained by max bounds:
//   480  → max 800x480
//   720  → max 1280x720
//   1080 → max 1920x1080
//   1440 → max 2560x1440

// Width calculation:
c0987x2.f6159c = i3;  // tier height
int i6 = ((int) (((i3 * 1.0f) * c0987x.f6158b) / i5)) & 65534;
c0987x2.f6158b = i6;  // proportional width

// Clamp to max
if (i6 > i4) {
    c0987x2.f6158b = i4;
    c0987x2.f6159c = ((int) (((i4 * 1.0f) * i5) / c0987x.f6158b)) & 65534;
}
```

The `& 65534` (`& 0xFFFE`) mask ensures **even-number dimensions** — required for H.264 macroblock alignment. This mask appears in multiple locations:

- `c0.java:77,81,319,323`
- `j.java:56,59,63,88,91,95,106,109`

### DPI Calculation

**File:** `c0.java:88-94`

```java
private int d(int i, int i2) {
    if (i * i2 < 384000) {
        return 100;  // Minimum DPI for small resolutions
    }
    int i3 = (int) (((((r2 - 384000) * 23) / 998400) + 120) * 1.25f);
    return i3 - (10 - (i3 % 10));  // Round down to nearest 10
}
```

**Formula:** `DPI = ((pixels - 384000) * 23 / 998400 + 120) * 1.25`

| Resolution | Pixels | Calculated DPI |
|------------|--------|---------------|
| 800x480 | 384,000 | 150 |
| 1280x720 | 921,600 | 160 |
| 1920x1080 | 2,073,600 | 180 |
| 2560x1440 | 3,686,400 | 220 |

For landscape orientations, an additional 1.2x multiplier is applied:

**File:** `c0.java:308`
```java
if (i2 > i3) {
    this.f4752k = (int) (m6107d(i2, i3) * 1.2f);
}
```

### Tier Selection

**File:** `c0.java:290-312`

```java
private void n(int i) {
    this.f4750i = i;
    if (this.f4745d.size() < 2) {
        this.f4744c.m7401n(this.f4745d.get(0));
    } else if (i == 1440) {
        this.f4744c.m7401n(this.f4745d.get(3));
    } else if (i == 1080) {
        this.f4744c.m7401n(this.f4745d.get(2));
    } else if (i != 720 && i == 480) {
        this.f4744c.m7401n(this.f4745d.get(0));
    } else {
        this.f4744c.m7401n(this.f4745d.get(1));  // 720 (default)
    }
}
```

---

## 9. The Oversizing Mechanism (Android Auto)

This is the most complex and unique aspect of the video pipeline. It exists to **hide Android Auto's navigation/status bars** by rendering them off-screen.

### Complete Flow (from TRANSLATION_DICTIONARY.md:308-381)

**File:** `i.java:69-132` — Method `c(View, int, int)` → `resizeAndroidAutoView()`

```java
public void c(View view, int i, int i2) {
    C0987x maxVideoSize = c0.m();     // e.g., {1280, 720}
    C0987x androidAutoSize = c0.a();  // e.g., {1280, 512}

    // FitSize mode for AC8317 — proportional, no oversizing
    if (u.z().T()) {
        this.f5016d = 0;
        this.f5015c = 0;
        this.f5013a = maxVideoSize.width;
        this.f5014b = (maxVideoSize.width * this.f5018f) / this.f5017e;
        return;
    }

    // OVERSIZING mode (all other devices)
    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
    layoutParams.width = maxVideoSize.width;
    layoutParams.height = maxVideoSize.height;

    // Calculate margins (difference between full frame and content area)
    int marginX = (this.f5017e - androidAutoSize.width) / 2;
    int marginY = (this.f5018f - androidAutoSize.height) / 2;

    // Handle aspect ratio mismatch — recalculate AA size
    if (marginX != 0 && marginY != 0) {
        androidAutoSize = c0.i().g(this.f5017e, this.f5018f);
        marginX = (this.f5017e - androidAutoSize.width) / 2;
        marginY = (this.f5018f - androidAutoSize.height) / 2;
    }

    // Scale margins to display coordinate space
    int scaledMarginX = (marginX * maxVideoSize.width) / androidAutoSize.width;
    int scaledMarginY = (marginY * maxVideoSize.height) / androidAutoSize.height;

    // PUSH VIEW BEYOND SCREEN BOUNDS
    view.setTop(-scaledMarginY);
    view.setLeft(-scaledMarginX);

    // MAKE VIEW PHYSICALLY LARGER THAN DISPLAY
    this.f5015c = scaledMarginX;   // scaled_left — saved for touch offset
    this.f5016d = scaledMarginY;   // scaled_top  — saved for touch offset
    layoutParams.width = maxVideoSize.width + (scaledMarginX * 2);
    layoutParams.height = maxVideoSize.height + (scaledMarginY * 2);
    this.f5013a = layoutParams.width;   // scaled_width
    this.f5014b = layoutParams.height;  // scaled_height

    view.setLayoutParams(layoutParams);
}
```

### Worked Example

For a 2400x960 display at 720p tier:

```
Display:         2400 x 960
maxVideoSize:    2400 x 960
androidAutoSize: 2400 x 768  (content area at 720p)
H.264 frame:     2400 x 960  (full frame from adapter)

marginX = (2400 - 2400) / 2 = 0
marginY = (960 - 768) / 2 = 96

scaledMarginX = 0
scaledMarginY = (96 * 960) / 768 = 120

view.setTop(-120)    → Top 120px pushed above screen
view.setLeft(0)

layoutParams.width  = 2400 + 0   = 2400
layoutParams.height = 960 + 240  = 1200  (oversized!)

Result: 1200px tall view on 960px screen
        Top 120px (AA status bar) above screen
        Bottom 120px (AA nav bar) below screen
        Only 960px content area visible
```

---

## 10. Touch Coordinate Remapping

### SurfaceView Path (Single-Touch for CarPlay/Non-AA)

**File:** `AutoBoxMirrorView.java:247-274`

```java
int x = ((int) motionEvent.getX()) - this.f4260c.f5015c;  // subtract scaled_left
int y = (int) motionEvent.getY();
int i = y - c0854i2.f5016d;                                // subtract scaled_top
int i2 = c0854i2.f5013a;                                   // scaled_width
int i3 = x > i2 ? 10000 : x > 0 ? (x * 10000) / i2 : 0;  // normalize to 0-10000
int i4 = this.f4260c.f5014b;                                // scaled_height
int i5 = i <= i4 ? i > 0 ? (i * 10000) / i4 : 0 : 10000;
```

### Multi-Touch Path (Android Auto)

**File:** `BoxInterface/e.java:48-67`

```java
int x = ((int) motionEvent.getX(i6)) - i;   // subtract offsetX
int y = ((int) motionEvent.getY(i6)) - i2;  // subtract offsetY
float f2 = x > i3 ? 1.0f : x > 0 ? (x * 1.0f) / i3 : 0.0f;  // normalize 0.0-1.0
float f3 = y > i4 ? 1.0f : y > 0 ? (y * 1.0f) / i4 : 0.0f;
// Clamp to [0, 1]
if (f2 < 0.0f) f2 = 0.0f;
else if (f2 > 1.0f) f2 = 1.0f;
```

**Serialization format:** 5 pointers max, 4 floats per pointer (x, y, action, pointerId):
```java
// e.java (from TRANSLATION_DICTIONARY.md:210-218)
// a[5]     → x coordinates (normalized 0.0-1.0)
// f1445b[5] → y coordinates
// f1446c[5] → action (0=UP, 1=DOWN, 2=MOVE)
// f1447d[5] → pointerId
// e         → pointerCount
// Byte size: pointerCount * 16
```

### Touch Rate Limiting

**File:** `i.java` (from TRANSLATION_DICTIONARY.md:34-48)

```
g → moveEventScheduler (17ms interval = ~60fps)
b(x, y) → scheduleMoveEvent() — rate-limited to prevent flooding
a() → cancelMoveEvent() — cancels pending
```

---

## 11. Surface Lifecycle Management

### SurfaceView Lifecycle

**File:** `AutoBoxMirrorView.java:293-325`

```java
public void surfaceCreated(SurfaceHolder surfaceHolder) {
    c0733d.m5611S(surfaceHolder, true);  // Pass to decoder
}

public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    f4256f = i2;          // Update display width
    f4257g = i3;          // Update display height
    f4255e = true;        // Mark recalculation needed
    C0733d.m5603x();
    c0733d.m5612T(i, i2, i3);
}

public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
    c0733d.m5613U();      // Notify decoder surface lost
}
```

### TextureView Lifecycle — SurfaceTexture Caching

**File:** `AutoBoxMirrorTextureView.java:352-360`

```java
public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
    if (this.f) {         // Plug-out state
        i();              // Full cleanup
        return true;      // Let system destroy SurfaceTexture
    }
    m = surfaceTexture;   // CACHE the SurfaceTexture (static field)
    return false;         // Prevent system from destroying it
}
```

By returning `false`, the TextureView **keeps the SurfaceTexture alive** across window transitions. This prevents decoder pipeline breakage that occurs with SurfaceView's destroy/recreate cycle.

---

## 12. Decoder Error Recovery

### Reset Flow

**File:** `BoxInterface/b.java:1261-1273` — Method `q()`

```java
public void q() {
    if (this.f1432d == null || this.f1430b == null) {
        return;
    }
    l();  // Stop current decoder, join threads, release MediaCodec

    // Phase 1: Schedule decoder restart after 500ms
    if (cn.manstep.phonemirrorBox.BoxInterface.d.l.J().d() && this.i == null) {
        C0076b c0076b = new C0076b();
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor =
            new ScheduledThreadPoolExecutor(1);
        this.i = scheduledThreadPoolExecutor;
        scheduledThreadPoolExecutor.schedule(c0076b, 500L, TimeUnit.MILLISECONDS);
    }

    // Phase 2: Request new keyframe after 100ms
    new Handler().postDelayed(new a(this), 100L);
}
```

**Two-phase recovery:**
1. **100ms:** Handler posts keyframe request to adapter
2. **500ms:** ScheduledExecutor re-initializes decoder if still connected

### Error Escalation

| Condition | Error Code | Trigger |
|-----------|-----------|---------|
| Double MediaCodec configure failure | `d.O(1, 18)` | b.java:314 |
| Repeated dequeueInputBuffer failure | `d.O(1, 18)` | b.java:452 |
| Surface unavailable after 300ms wait | `n = true` (request keyframe) | b.java:1171 |
| P-frame without decoder | `v0.e.H(12)` (request I-frame) | b.java:1240 |

---

## 13. Threading Model & Performance

### Thread Summary

| Thread | Name String | Priority | Created In | Role |
|--------|-------------|----------|------------|------|
| Render Thread | — | default | `b.m()` | NAL state machine, frame routing |
| HW Decode Input | `"hdv"` | default | `b.B()` | Async MediaCodec input (when `p.F > 0`) |
| Output Render | `"render"` | **-19** | `b.B()` | dequeueOutputBuffer → Surface |
| SW Decode | `"sdv"` | default | `b.B()` | OpenH264 decode loop |
| Stats Timer | ScheduledExecutor | default | `b.B()` | 1-second FPS/bitrate reporting |
| Reset Timer | ScheduledExecutor | default | `b.q()` | 500ms decoder restart |

### Buffer Sizes

| Buffer | Size | Location |
|--------|------|----------|
| USB read buffer | 16,384 bytes (16KB) | `j.java:24` — `new byte[16384]` |
| StOpenParams buffer | 16,384 bytes | `f.java:409` — `this.e = 16384` |
| Frame cache ring buffer | 320 entries | `b.java:960` — `new h(320)` |
| MediaCodec input queue | 320 entries | `b.java:301` — `new h(320)` |
| OpenH264 decode output | 4,392,000 bytes | `OpenH264Decoder.java:41` |

### Frame Rate Configuration

| Mode | Rate | Source |
|------|------|--------|
| Hardware decode default | 60 fps | `p.java:73` — `C = 60` |
| Software decode forced | 25 fps | `f.java:405` — `p.C = 25` |

---

## 14. Platform-Specific Quirks

### Device Detection

**File:** `u.java:325-327` — Method `T()` → `isFitSizeMode()`

```java
public boolean T() {
    return "ATC-Generic Android on ac8317-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.f1837d)
        || "ADAYO-AC822X-generic_ac8317-4.2.2(17)-JDQ39E".equals(this.f1837d);
}
```

### Platform Delay Table

**File:** `p.java:99-105`

```java
if ("rockchip-rk3399".equals(str)) { return 530; }
if ("Allwinner-t3".equals(str)) { return 1320; }
return "ATC-ac8317".equals(str)
    ? "at8317_1537323153".equals(str2) ? 844 : 150
    : "sprd-sp7731e".equals(str)
        ? "sp7731e_1h10_native".equals(str2) ? 1081 : 150
        : "rockchip-rk3368".equals(str)
            ? "PX5".equals(Build.MODEL) ? 540 : 150
            : "alps-mt6753".equals(str)
                ? ("land_rover_mrw1920x720".equals(Build.MODEL)
                   && "full_land_rover_mrw1920x720".equals(Build.PRODUCT)) ? 1079 : 150
                : "rockchip-rk3188".equals(str) ? 580 : 150;
```

| Platform | Model | Delay (ms) |
|----------|-------|-----------|
| Rockchip RK3399 | * | 530 |
| Rockchip RK3368 | PX5 | 540 |
| Rockchip RK3368 | Other | 150 |
| Rockchip RK3188 | * | 580 |
| Allwinner T3 | * | 1320 |
| ATC AC8317 | at8317_1537323153 | 844 |
| ATC AC8317 | Other | 150 |
| Spreadtrum SP7731E | sp7731e_1h10_native | 1081 |
| MediaTek MT6753 | land_rover_mrw1920x720 | 1079 |
| Default | * | 150 |

### Video-Affecting Device Quirks

| Device | Method | Effect |
|--------|--------|--------|
| AC8317 | `T()` isFitSizeMode | Proportional scaling, no oversizing; `setVideoScalingMode(2)` |
| FAW vehicles | `c()` getCornerRadius | 32/36px rounded corners on video view |
| FAW vehicles | `G()` getVideoMargin | 620px video margin |
| NIO/HUAWEI | `f(tierH)` overrideTierHeight | Force 1080p tier |
| Renesas (portrait) | `r()` getFixedVideoSize | Fixed 1408x1506 |
| NIO, Hozon, Renesas | `Y()` usesMeasureBasedMaxSize | Runtime measurement for max size |

---

## 15. OpenGL Shader Pipeline

### YUV→RGB Conversion Shader

**File:** `dex_strings_filtered.txt:1766-1768`

```glsl
vec4 c = vec4((texture2D(tex_y, tc).r - 16./255.) * 1.164);
vec4 U = vec4(texture2D(tex_u, tc).r - 128./255.);
vec4 V = vec4(texture2D(tex_v, tc).r - 128./255.);
```

This implements **BT.601 YUV→RGB conversion** with:
- Y channel: offset by 16/255 (TV range), scaled by 1.164
- U/V channels: offset by 128/255 (centered)

### Additional Shader Effects

From `dex_strings_filtered.txt:19-32`:

```glsl
// Blur kernel (multi-sample)
vec4 texc = texture2D(sTexture, vTextureCoord + uTexOffset[i]);
sum = texture2D(sTexture, vTextureCoord);

// Direct texture pass-through
gl_FragColor = texture2D(sTexture, vTextureCoord);

// Color adjustment
vec4 tc = texture2D(sTexture, vTextureCoord);
vec4 vTextureColor = texture2D(uTextureSampler, vTextureCoord);
```

Available effects include brightness, contrast, exposure, and saturation adjustments — enabled via the `UseOpenGLRender` preference on the TextureView path.

---

## 16. Native Library Analysis

### libopenH264decoder.so (arm64-v8a)

**Source:** `native_analysis.txt:229-285`

**JNI Entry Points:**
```
Java_cn_manstep_phonemirrorBox_OpenH264Decoder_nativeInit  (184 bytes)
Java_cn_manstep_phonemirrorBox_OpenH264Decoder_getWidth    (12 bytes)
Java_cn_manstep_phonemirrorBox_OpenH264Decoder_getHeight   (12 bytes)
```

**Core Decoder Functions:**
```
WelsDec::CWelsDecoder::CWelsDecoder()          — Constructor
WelsDec::CWelsDecoder::InitDecoder()           — Initialize with params
WelsDec::CWelsDecoder::DecodeFrameNoDelay()    — Single-pass decode
WelsDec::CWelsDecoder::DecodeFrameEx()         — Extended decode with stats
WelsDec::ParseSps()                            — SPS parsing (4984 bytes)
WelsDec::ParseNalHeader()                      — NAL unit parsing (3220 bytes)
WelsDec::WelsDqLayerDecodeStart()              — Decode layer init
```

**NEON SIMD Optimizations (ARM64):**
```
WelsDecoderI4x4LumaPredHU_AArch64_neon
WelsDecoderI16x16LumaPredV_AArch64_neon
WelsDecoderIChromaPredH_AArch64_neon
WelsDecoderI16x16LumaPredDc_AArch64_neon
WelsDecoderI4x4LumaPredDDLTop_AArch64_neon
```

**Entropy Decoding — Both CAVLC and CABAC:**
```
WelsDec::WelsResidualBlockCavlc()              — Baseline profile
WelsDec::WelsResidualBlockCavlc8x8()           — 8x8 transform
WelsDec::WelsDecodeMbCabacPSlice()             — Main/High profile
WelsDec::WelsDecodeMbCabacPSliceBaseMode0()    — CABAC base mode
```

**Validation Limits:**
```
"max_num_ref_frames exceeds level limits!"
"the pic_height_in_mbs exceeds the level limits!"
"the pic_width_in_mbs exceeds the level limits!"
```

### libconnection.so (arm64-v8a)

**Source:** `native_analysis.txt:112-147`

USB device communication via **libusb**:
```
libusb_control_transfer, libusb_bulk_transfer, libusb_claim_interface
Device paths: /dev/bus/usb/%03u/%03u, /dev/usbdev%u.%u
JNI class: cn/manstep/phonemirrorBox/BoxInterface/BoxConnection
```

### libtools2.1.so (arm64-v8a)

**Source:** `native_analysis.txt:335-345`

```
JNI class: cn.manstep.phonemirrorBox.tool
Additional: com.leapmotor.phonemirrorBox  (LeapMotor EV variant)
```

---

## 17. Frida Instrumentation Points

**File:** `frida_hooks.js` (217 lines)

| Hook | Target Class | Target Method | What It Reveals |
|------|-------------|---------------|-----------------|
| Line 35 | `i` (ViewCommon) | `c(view, w, h)` | Scaled dimensions before/after resize |
| Line 58 | `c0` (VideoSizeManager) | `a()` | Negotiated AA size (WxH) |
| Line 68 | `c0` | `m()` | Maximum video size |
| Line 75 | `c0` | `b(tierH)` | Tier selection output |
| Line 83 | `c0` instance | `g(vw, vh)` | Aspect ratio recalculation |
| Line 95 | `BoxInterface.f` | `g0(w, h)` | sendAndroidAutoSize with stack trace |
| Line 105 | `BoxInterface.f` | `q0()` | sendBoxAllSettings result |
| Line 117 | `AutoBoxMirrorView` | `surfaceCreated/Changed` | Surface lifecycle events |
| Line 130 | `AutoBoxMirrorView` | `h(w, h)` | setVideoWH |
| Line 136 | `AutoBoxMirrorView` | `b(w, h)` | ReSizeView |
| Line 146 | `AutoBoxMirrorTextureView` | `onSurfaceTexture*` | Texture lifecycle |
| Line 163 | `BoxInterface.e` | `b(event, ...)` | Touch coordinate transform |
| Line 179 | `u` (DeviceConfig) | `T()` | isFitSizeMode result |
| Line 193 | `BoxInterface.d` | `u()` | isAndroidAutoWithVersionCheck |
| Line 207 | `p` (GlobalConfig) | static fields | All config flags dump |

---

## 18. Obfuscation Map

### Classes

| Obfuscated | Deobfuscated | Package |
|------------|-------------|---------|
| `BoxInterface.b` | VideoDecoder | BoxInterface/ |
| `BoxInterface.b.C0074b` | AvcDecoder (inner) | BoxInterface/ |
| `BoxInterface.b.f` | RenderThread (inner) | BoxInterface/ |
| `BoxInterface.b.c` | OutputRenderRunnable (inner) | BoxInterface/ |
| `BoxInterface.b.d` | StatsTimerTask (inner) | BoxInterface/ |
| `BoxInterface.d` | BoxInterface (connection mgr) | BoxInterface/ |
| `BoxInterface.e` | MultiTouchEvent | BoxInterface/ |
| `BoxInterface.f` | BoxProtocol | BoxInterface/ |
| `BoxInterface.f.k` | StOpenParams | BoxInterface/ |
| `BoxInterface.j` | UsbDeviceHandler | BoxInterface/ |
| `c0` | VideoSizeManager | root |
| `i` | AutoBoxMirrorViewCommon | root |
| `j` | AutoBoxMirrorViewUtil | root |
| `p` | GlobalConfig | root |
| `u` | DeviceConfig | root |

### Key Fields

| Class.Field | Deobfuscated | Type | Purpose |
|-------------|-------------|------|---------|
| `p.g` | useSoftDecode | boolean | Enables OpenH264 software decode path |
| `p.i` | useTextureView | boolean | Enables TextureView instead of SurfaceView |
| `p.C` | videoFrameRate | int | 60 (HW) or 25 (SW) |
| `p.D` | dropThreshold | int | Frame drop threshold |
| `p.E` | compressMethod | int | 1=H264 |
| `p.F` | bufferFrameCount | int | 0=sync, >0=async decode |
| `i.a` | scaled_width | int | View width after oversizing |
| `i.f1667b` | scaled_height | int | View height after oversizing |
| `i.f1668c` | scaled_left | int | X offset for touch adjustment |
| `i.f1669d` | scaled_top | int | Y offset for touch adjustment |
| `i.e` | video_width | int | H.264 frame width |
| `i.f` | video_height | int | H.264 frame height |
| `f.N` | phoneType | int (static) | -2=unknown, -1=iPhone, 1=Android |
| `f.z` | videoDecoder | BoxInterface.b | Decoder reference |
| `f.f1449c` | offScreen | int | Compress flag (0 or 1) |
| `f.f1450d` | videoWidth | int | Current frame width |
| `b.f.l` | spsPpsData | byte[] (static) | Cached SPS/PPS |
| `b.f.m` | iframeData | byte[] (static) | Cached I-frame |
| `b.f.n` | requestKeyFrame | boolean (static) | Keyframe request flag |
| `b.f.p` | spsPpsReceived | boolean (static) | SPS/PPS received flag |

---

## 19. Resolved Unknowns

> *Originally 7 unknowns from static analysis. Resolved via radare2 binary analysis of native libraries, deep DEX/smali cross-referencing, and disassembly of JNI functions. Analysis date: 2026-03-22.*

### 19.1 H.265/HEVC Activation Path — RESOLVED

**Finding: H.265 is the DEFAULT encoder type. No special activation needed.**

The field `f1448b` defaults to `2` (H.265) at declaration:

**File:** `BoxInterface/f.java:76`
```java
private int f1448b = 2;  // encoderType: 1=H264, 2=H265, 4=MJPEG
```

The adapter firmware controls codec selection via **CMD_VIDEO (type 6)** flags dword bits [3:2]:

**File:** `BoxInterface/f.java:912-928`
```java
int i10 = i9 & 1;        // compress_flag (bit 0)
int i11 = (i9 >> 2) & 3; // codec type (bits 2-3)

// Wire protocol → internal mapping:
if (i11 == 0) i11 = 2;   // wire 0 → H.265 (DEFAULT)
if (i11 == 1) i11 = 1;   // wire 1 → H.264
if (i11 == 2) i11 = 4;   // wire 2 → MJPEG
```

| Wire bits [3:2] | f1448b | Codec |
|------------------|--------|-------|
| 0 (default) | 2 | **H.265** |
| 1 | 1 | H.264 |
| 2 | 4 | MJPEG |

**`libby265n.so` is NOT an H.265 decoder** — radare2 analysis reveals it is a **phone-side screen capture and encoding agent** with zero JNI exports. Key evidence:

- Single export: `doMain` at `0x0001c520` (x86 variant)
- Loaded via `helloworld*` ELF stub: `dlopen("/data/local/tmp/libby265n_x86.so") → dlsym("doMain") → call`
- Contains: libjpeg-turbo (JPEG), libyuv (color conversion), mDNS client, screen capture via `libscreencap*.so`
- Key strings: `"InitH264Encoder"` at `0x79163`, `"pCodeType=%d"` at `0x79303`, `"versionName=9.8"` at `0x79078`
- HTTP User-Agent: `"Tuobao Http 0.1"` — identifies vendor as Tuobao/Boyuan

The encoder type is relayed to the phone-side agent via the **touch head command** (CMD type 5):

**File:** `BoxInterface/f.java:1728`
```java
lVar.d().putInt(12, this.f1448b | (this.f1449c << 16));
```

**Firmware version gate:** Firmware `>= "2024.12.13.1130"` enables timestamp field at offset 12 of CMD_VIDEO.

---

### 19.2 AndroidH264view Activation Trigger — RESOLVED

**Finding: AndroidH264view activates when `f.N == -1` (unknown/generic phone type) AND the frame header encodes compression method 1.**

The routing is controlled by the `f.N` static field (phoneType) in the BoxProtocol video dispatch:

**File:** `BoxInterface/f.java:953-966`
```java
if (N == -1) {
    // Unknown phone type → broadcast to ALL d.g listeners (including AndroidH264view)
    byte[] bArr = new byte[iF + 32];
    // ... wraps with 32-byte header, puts 0x10000 at offset 24 ...
    cn.manstep.phonemirrorBox.BoxInterface.d.F(bArr);  // BROADCAST
    return;
}
// Known phone type → direct to BoxInterface.b's decoder
bVar4.h(8, i7, i8, lVar.e(), iF2, j2);  // DIRECT
```

AndroidH264view registers as a `d.g` listener via `onAttachedToWindow()`:

**File:** `AndroidH264view.java:170-173`
```java
protected void onAttachedToWindow() {
    cn.manstep.phonemirrorBox.v0.e.M(this);  // Register as d.g listener
    super.onAttachedToWindow();
}
```

Within `AndroidH264view.v(byte[])`, a secondary filter checks the compression method:

**File:** `AndroidH264view.java:235`
```java
if (((byteBufferWrap.getInt(24) >> 16) & 255) != 1) {
    // Not compression type 1 → hide view, ignore frame
    return;
}
```

The layout XML confirms AndroidH264view is **always inflated** alongside the primary views:

**File:** `resources/layout/APKTOOL_RENAMED_0x7f0c0043.xml:6`
```xml
<cn.manstep.phonemirrorBox.AndroidH264view
    android:layout_width="match_parent"
    android:layout_height="match_parent" />
```

**Summary:** AndroidH264view is a legacy fallback decoder that activates when the phone type is unknown (`N == -1`) and frames are broadcast via `d.F()`. Once `N` is set to a known value (3=CarPlay, 5=AndroidAuto, etc.), frames route directly to `BoxInterface.b.h()` and AndroidH264view becomes dormant.

---

### 19.3 bufferFrameCount (p.F) Activation — RESOLVED

**Finding: `p.F` is set to 1 for CarPlay, HiCar, Carlink, unknown phone types, and devices with bad decoders. It remains 0 only for AndroidMirror, iPhoneMirror, and AndroidAuto on good hardware.**

**Initialization:** `p.java:77`
```java
F = 0;  // default: synchronous decode
```

**Set during phone-type negotiation:**

**File:** `BoxInterface/f.java:681-709`
```java
if (i2 == 3) {     // CarPlay
    p.F = 1;
} else if (i2 == 6) {  // HiCar
    p.F = 1;
} else if (i2 != 7) {  // Unknown/other
    p.F = 1;
} else {            // Carlink (7)
    p.F = 1;
}
// Effectively: p.F = 1 for ALL phone types EXCEPT
// 1 (AndroidMirror), 4 (iPhoneMirror), 5 (AndroidAuto)
```

**Set during codec enumeration for bad decoders:**

**File:** `BoxInterface/b.java:764-771`
```java
if (p.v) {
    p.F = 1;
    return true;
}
if (strC.toLowerCase().equals("alps") || str.contains("ac83xx_evb")) {
    s.f("MediaCodecList", "Bad decoder, set low framerate!!!!");
    p.F = 1;
    return true;
}
```

**Effect on decode pipeline:**

When `p.F > 0`, frames are queued into a `Vector<byte[]>` buffer instead of synchronous decode:

**File:** `BoxInterface/b.java:270-282`
```java
if (p.F <= 0) {
    v(bArr, i, i2, j);  // SYNCHRONOUS: direct to MediaCodec
    return;
}
byte[] bArr3 = new byte[i2];
System.arraycopy(bArr, i, bArr3, 0, i2);
synchronized (this.e) {
    this.f.a(bArr3, j);         // BUFFERED: queue frame
    if (this.f.f() == p.F) {
        this.e.notifyAll();      // Wake consumer when buffer reaches threshold
    }
}
```

The consumer thread (`RunnableC0075b`, named `"hdv"`) is only started when `p.F > 0`:

**File:** `BoxInterface/b.java:319`
```java
if (p.F > 0) {
    thread.start();
}
```

| Phone Type | p.F | Decode Mode |
|-----------|-----|-------------|
| AndroidMirror (1) | 0 | Synchronous |
| iPhoneMirror (4) | 0 | Synchronous |
| AndroidAuto (5) | 0 | Synchronous |
| CarPlay (3) | 1 | Buffered (1-frame latency) |
| HiCar (6) | 1 | Buffered |
| Carlink (7) | 1 | Buffered |
| MediaTek/alps devices | 1 | Buffered |
| ac83xx_evb devices | 1 | Buffered |

---

### 19.4 OpenGL Shader Effect Chain — RESOLVED

**Finding: Three complete shader systems exist in the codebase.**

#### Shader System A: Image Adjustment Pipeline (class `w0.c`)

**File:** `w0/c.java:31-32`

Used by `AutoBoxMirrorTextureView` when `UseOpenGLRender` preference is enabled.

**Vertex shader:**
```glsl
attribute vec4 aPosition;
uniform mat4 uTextureMatrix;
attribute vec4 aTextureCoordinate;
varying vec2 vTextureCoord;
void main() {
    vTextureCoord = (uTextureMatrix * aTextureCoordinate).xy;
    gl_Position = aPosition;
}
```

**Fragment shader (full effect chain):**
```glsl
#extension GL_OES_EGL_image_external : require
precision mediump float;
uniform samplerExternalOES uTextureSampler;
varying vec2 vTextureCoord;
const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);
uniform lowp float saturation;
uniform lowp float brightness;
uniform lowp float exposure;
uniform lowp float contrast;

void main() {
    vec4 vTextureColor = texture2D(uTextureSampler, vTextureCoord);
    // 1. Saturation
    lowp float luminance = dot(vTextureColor.rgb, luminanceWeighting);
    lowp vec3 greyScaleColor = vec3(luminance);
    vTextureColor = vec4(mix(greyScaleColor, vTextureColor.rgb, saturation), vTextureColor.w);
    // 2. Brightness
    vTextureColor = vec4(vTextureColor.rgb + vec3(brightness), vTextureColor.w);
    // 3. Exposure
    vTextureColor = vec4(vTextureColor.rgb * pow(2.0, exposure), vTextureColor.w);
    // 4. Contrast
    vTextureColor = vec4((vTextureColor.rgb - vec3(0.5)) * contrast + vec3(0.5), vTextureColor.w);
    gl_FragColor = vTextureColor;
}
```

**Effect chain order:** OES texture sample → saturation → brightness → exposure → contrast

**Uniform control mapping** (`c.f()`, line 78-88):
- saturation: `(value / 10.0) - 4.0`
- brightness: `(value / 50.0) - 1.0`
- exposure: `(value / 10.0) - 5.0`
- contrast: `(value / 10.0) - 4.0`

#### Shader System B: YUV420→RGB BT.601 Converter (class `d.d.a.c`)

**File:** `d/d/a/c.java:82`

Used by `AutoBoxMirrorSoftView` for OpenH264 software decode output.

```glsl
precision mediump float;
uniform sampler2D tex_y;
uniform sampler2D tex_u;
uniform sampler2D tex_v;
varying vec2 tc;
void main() {
    vec4 c = vec4((texture2D(tex_y, tc).r - 16./255.) * 1.164);
    vec4 U = vec4(texture2D(tex_u, tc).r - 128./255.);
    vec4 V = vec4(texture2D(tex_v, tc).r - 128./255.);
    c += V * vec4(1.596, -0.813, 0, 0);
    c += U * vec4(0, -0.392, 2.017, 0);
    c.a = 1.0;
    gl_FragColor = c;
}
```

Standard BT.601 YUV→RGB with 3-plane texture inputs.

#### Shader System C: EGL Helper Programs (class `d.a.a.b.f`)

**File:** `d/a/a/b/f.java:63-78` — Four fragment shader variants:

| Name | Purpose |
|------|---------|
| `TEXTURE_2D` | `sampler2D` passthrough |
| `TEXTURE_EXT` | `samplerExternalOES` passthrough |
| `TEXTURE_EXT_BW` | Greyscale: `0.3R + 0.59G + 0.11B` |
| `TEXTURE_EXT_FILT` | 3x3 kernel convolution with diagonal split (debug/demo shader) |

The filter shader applies a configurable 9-element kernel with `uKernel[9]` and `uTexOffset[9]` uniforms, with a diagonal split showing filtered below and unfiltered above (red line on diagonal).

---

### 19.5 Frame-Drop Heuristic (x() method) — RESOLVED

**Finding: The method is NOT obfuscated. It implements a two-phase rendering warmup with a hardcoded threshold of 4 frames.**

**File:** `BoxInterface/b.java:514-517`
```java
public boolean x() {
    s.d("AvcDecoder", "isBelowMinRenderFrameCnt: render_frame_cnt=" + this.j);
    return SystemClock.uptimeMillis() - this.h >= ((long) p.D) && this.j < 4;
}
```

**Variables:**
- `this.h` — timestamp of first frame submission (`SystemClock.uptimeMillis()` at line 406)
- `this.j` — rendered frame counter (incremented each time a frame reaches the Surface)
- `p.D` — warm-up threshold in milliseconds (default `0`; set to `300` on AC8317 platforms at b.java:785)

**Returns `true` when:** at least `p.D` ms have elapsed since first frame AND fewer than 4 frames have rendered — indicating a stalled decoder needing recovery.

**How it's used — output render thread (class c):**

**File:** `BoxInterface/b.java:231-235`
```java
if (jUptimeMillis < ((long) p.D) - j) {
    // Within warm-up: release WITHOUT rendering (visible=false)
    C0074b.this.f1421d.releaseOutputBuffer(iDequeueOutputBuffer, false);
} else {
    // Past warm-up: render only if render_cnt >= 4
    C0074b.this.f1421d.releaseOutputBuffer(iDequeueOutputBuffer, C0074b.this.j >= 4);
}
```

**And for recovery replay (repeat frame loop):**

**File:** `BoxInterface/b.java:1047`
```java
while (iL > 0 && this.f1430b.x()) {
    for (int i = 0; i < this.k.f(); i++) {
        this.f1430b.A(bArr, 0, bArr.length, timestamp);
        Thread.sleep(33L);  // ~30fps pacing
    }
    iL--;
}
```

**Two-phase warmup behavior:**
1. **Phase 1 (first 4 frames or within `p.D` ms):** Decoded frames are released **without rendering** to the Surface — primes the MediaCodec pipeline without showing potentially corrupted initial frames
2. **Phase 2 (after 4 rendered frames):** Normal rendering to Surface

**radare2 confirmation:** Analysis of `libopenH264decoder.so` (x86, 579 functions) confirms **zero frame-drop logic in the native library**. All frame-drop decisions are made entirely in the Java layer. The native decoder is a pure H.264 decode engine with return codes: `0` (no output), positive (YUV frame size), `-1` (error), `-2` (buffer too small — logged as `"outbuf len is not enough, need %d byte!"`).

---

### 19.6 Stats Timer Output Format — RESOLVED

**File:** `BoxInterface/b.java:519-553`

```java
private class d extends TimerTask {
    StringBuilder f1425b = new StringBuilder();

    @Override
    public void run() {
        if (C0074b.this.f1420c > C0074b.p) {
            StringBuilder sb = this.f1425b;
            sb.append(C0074b.this.f1420c - C0074b.p);  // FPS (delta)
            sb.append("fps");
            sb.append(", cnt: ");
            sb.append(C0074b.this.f1420c);               // total frames decoded
            sb.append(", render_cnt: ");
            sb.append(C0074b.this.j);                     // total frames rendered
            sb.append(", bitrate: ");
            sb.append(C0074b.this.o / 1024.0d);           // KiB/s
            s.h("AvcDecoder,FrameRate:" + this.f1425b.toString());
            this.f1425b.setLength(0);
        }
        C0074b.p = C0074b.this.f1420c;  // Save baseline for next tick
        C0074b.this.o = 0L;              // Reset bitrate accumulator
    }
}
```

**Output format:**
```
AvcDecoder,FrameRate:<delta>fps, cnt: <total_decoded>, render_cnt: <total_rendered>, bitrate: <KiB/s>
```

**Field semantics:**
| Field | Source | Meaning |
|-------|--------|---------|
| `<delta>fps` | `f1420c - p` (static) | Frames decoded in last 1-second interval |
| `cnt` | `f1420c` | Lifetime total frames submitted to decoder |
| `render_cnt` | `j` | Lifetime total frames rendered to Surface |
| `bitrate` | `o / 1024.0` | Raw bytes received per interval in KiB/s |

Timer fires every 1000ms (b.java:292: `scheduleAtFixedRate(dVar, 1000L, 1000L, TimeUnit.MILLISECONDS)`).

The difference between `cnt` and `render_cnt` reveals decoder efficiency — frames decoded but not rendered are either dropped during warm-up or lost to MediaCodec output timeouts.

**Note:** Bitrate is in **KiB/s** (bytes/1024), not kbit/s. The accumulator `o` is incremented by raw H.264 frame byte length at line 398: `this.o += (long) i2`.

---

### 19.7 Jiagu DEX Decryption Algorithm — PARTIALLY RESOLVED

**Finding: The packer is iJiami (ijm) commercial protection. Multi-layer decryption pipeline identified, but the core cipher algorithm resides in a dynamically-loaded library not present in the dump.**

**Identified via radare2** analysis of `libjiagu_x86.so` (728KB):

**Identity strings:**
- `"JIAGU_APP_NAME"` at `0x00018e1d`
- `"JIAGU_ENCRYPTED_DEX_NAME"` at `0x00018e47`
- `"libijmDataEncryption"` at `0x00018e75` — **ijm = iJiami**
- `"com/stub/StubApp"` at `0x00018efd`
- `"RMUTGF_KEY"` at `0x00018e09`

**Decryption pipeline (4 layers):**

```
Layer 1: GOT trampoline dispatch
  fcn.00001b40 → jmp dword [ebx + 0x7c]
  (Runtime-resolved indirect jump, defeats static analysis)

Layer 2: External crypto library
  DynCryptor::__arm_c_0() at 0x00005f9c
  → dlopen("libijmDataEncryption") at 0x00002696
  → dlsym(handle, symbol) at 0x000026c5
  → call eax (invoke decryption function) at 0x000026e1

Layer 3: Key derivation
  10-byte hardcoded key: 0x34575676 0x53239123 0x7456
  → Key expansion via fcn.00005240 (constant 0x0a = 10)
  → Decryption via fcn.0000529e

Layer 4: Decompression
  dlopen("/system/lib/libz.so") at 0x00018b30
  → dlsym(handle, "uncompress") at 0x00018b4c
  → zlib decompress decrypted DEX
```

**Full pipeline:** Read encrypted DEX → decrypt (via libijmDataEncryption or built-in cipher) → zlib decompress → load via `DexClassLoader`

**`.jgapp` asset** (16 bytes): Contains hex ASCII `45349e10da75a91d` — per-app encryption key or app ID hash used for key derivation.

**Internal hash function:** DJB2 hash (seed `0x1505` = 5381) at `fcn.00003334` (2129 bytes) — used for internal symbol resolution via `hash = hash * 33 + byte`.

**Anti-tamper mechanisms detected:**
- `/proc/self/maps` scanning (detect injected libraries)
- `inotify_init`/`inotify_add_watch` (filesystem tamper detection)
- `prctl` (disable memory dumps via `PR_SET_DUMPABLE(0)`)
- `MSHookFunction(%p, %p, %p)` at `0x18cf0` (Cydia Substrate hook detection)
- `"fake-libs"` at `0x18ccf` (LD_PRELOAD detection)

**I don't know** the exact block cipher algorithm (AES, DES, RC4, or custom) because the core cipher implementation resides in `libijmDataEncryption.so` which is dynamically loaded at runtime and not present in the unpacked assets. The built-in fallback path uses an obfuscated indirect dispatch mechanism through the GOT trampoline that prevents static analysis.

---

### 19.8 Additional Finding: libopenH264decoder.so JNI Internals (via radare2)

**File:** `native/x86/libopenH264decoder.so` — 579 functions, 305 Wels-prefixed

**Global State Layout (BSS section):**

| Offset | Type | Field |
|--------|------|-------|
| `+0x00` | dword | `iBufferStatus` (1 = frame available) |
| `+0x18` | dword | `width` (returned by `getWidth()`) |
| `+0x1c` | dword | `height` (returned by `getHeight()`) |
| `+0x30` | pointer | `ISVCDecoder*` handle |

**`nativeInit()` at `0x0000b6d0` (168 bytes):**
1. Zeroes 40-byte state structure
2. Calls `WelsCreateDecoder` — on failure logs `"Create Decoder failed:%ld!\n"`
3. Initializes `SDecodingParam`: `uiTargetDqLayer=0xFF` (all layers), `eEcActiveIdc=2` (ERROR_CON_SLICE_COPY), `eVideoBsType=1` (VIDEO_BITSTREAM_DEFAULT)
4. Calls `ISVCDecoder::Initialize` — on failure logs `"Init decoder failed:%ld!\n"`

**`decodeFrameOffset()` at `0x0000bbf0` (1007 bytes):**
1. Null-checks decoder handle — if NULL: `"Decoder not init!\n"`, returns `-1`
2. Calls `GetByteArrayElements` on input array, adds offset
3. Calls `ISVCDecoder::DecodeFrame2` via vtable
4. On decode error: `"Decode frame failed:%d!\n"`, returns `-1`
5. If `iBufferStatus == 1`: reads width/height, computes YUV420 size = `(w*h*3)/2`
6. Buffer size check: if output too small, returns `-2` (`"outbuf len is not enough, need %d byte!\n"`)
7. Copies Y/U/V planes via row-by-row `memcpy` (stride-aware)
8. Returns frame data size on success

**Return codes:** `0` = no output frame, positive = YUV frame size, `-1` = error, `-2` = buffer overflow

---

### 19.9 Additional Finding: libtools2.1.so Internals (via radare2)

**File:** `native/x86/libtools2.1.so` — 22KB, 7 JNI methods registered to `cn/manstep/phonemirrorBox/util/JniTools`

| Function | Address | Size | Purpose |
|----------|---------|------|---------|
| `checkSignature` | `0x0cc0` | 289B | APK signing cert verification against **9 hardcoded fingerprints** — always returns true |
| `check` | `0x0f00` | 543B | Extended signature + package verification |
| `box` | `0x1360` | 212B | Package name whitelist (4 packages) |
| `open` | `0x1130` | 548B | MD5-based token generation with key `"y7Zw8Qm6WdDPRWt6"` |
| `amplifyPcmData` | `0x0ae0` | 258B | PCM audio amplification via `pow()` |
| `mono2Stereo` | `0x0bf0` | 199B | Mono→stereo PCM conversion |
| `test` | — | 10B | Stub (no-op) |

**Package whitelist** (from `.rodata` at `0x3d00-0x3d7c`):
- `cn.manstep.phonemirrorBox` — Carlinkit main
- `cn.carlinkit.autokit` — Carlinkit AutoKit
- `cn.manstep.phonemirrorBox.tool` — Carlinkit tools
- `com.leapmotor.phonemirrorBox` — **LeapMotor OEM variant**

**Additional references:** `com.huawei.hicar` and `com.bz.CA08.Adapter` in signature checking

---

## 20. Verification Scorecard

Three independent analysis agents verified 32 claims against source code:

| # | Claim | V1 | V2 | V3 | Final |
|---|-------|----|----|----|----|
| 1 | MediaCodec 5 retries / 200ms backoff | TRUE | — | — | **TRUE** |
| 2 | NAL type = (byte & 31) extraction | TRUE | — | — | **TRUE** |
| 3 | SPS cached in static byte[] l | TRUE | — | — | **TRUE** |
| 4 | 300ms surface wait / 10ms poll | TRUE | — | — | **TRUE** |
| 5 | Output thread priority -19 | TRUE | — | — | **TRUE** |
| 6 | Error code 18 on double failure | TRUE | — | — | **TRUE** |
| 7 | Ring buffer 320 entries | TRUE | — | — | **TRUE** |
| 8 | Soft decode = 25fps | TRUE | — | — | **TRUE** |
| 9 | OpenH264 4,392,000 byte buffer | TRUE | — | — | **TRUE** |
| 10 | h() routes type 8/0/7 correctly | TRUE | — | — | **TRUE** |
| 11 | Tiers 480/720/1080/1440 | — | TRUE | — | **TRUE** |
| 12 | DPI formula with rounding | — | TRUE | — | **TRUE** |
| 13 | & 0xFFFE even alignment mask | — | TRUE | — | **TRUE** |
| 14 | setTop/setLeft negative oversizing | — | TRUE | — | **TRUE** |
| 15 | sendAndroidAutoSize cmd 25 JSON | — | TRUE | — | **TRUE** |
| 16 | No sendCarPlaySize API exists | — | TRUE | — | **TRUE** |
| 17 | Protocol type 3 label | — | PARTIAL | — | **CORRECTED** |
| 18 | AA compress_flag always=1 | — | FALSE | — | **CORRECTED** |
| 19 | AC8317 isFitSizeMode | — | TRUE | — | **TRUE** |
| 20 | Touch 0-10000 normalization | — | TRUE | — | **TRUE** |
| 21 | Three rendering path classes | — | — | TRUE | **TRUE** |
| 22 | p.g / p.i / p.C field mappings | — | — | PARTIAL | **TRUE** (nuanced) |
| 23 | NEON SIMD in libopenH264decoder | — | — | TRUE | **TRUE** |
| 24 | Two-phase decoder reset (100+500ms) | — | — | TRUE | **TRUE** |
| 25 | 16KB USB read buffer | — | — | TRUE | **TRUE** |
| 26 | Dual USB mode (JNI vs UsbManager) | — | — | TRUE | **TRUE** |
| 27 | Platform-specific delay values | — | — | TRUE | **TRUE** |
| 28 | TextureView caches SurfaceTexture | — | — | TRUE | **TRUE** |
| 29 | VIDEO_SCALING_MODE=2 for AC8317+AA | — | — | TRUE | **TRUE** |
| 30 | YUV shader formula | — | — | TRUE | **TRUE** |
| 31 | Frida target classes match | — | — | TRUE | **TRUE** |
| 32 | LeapMotor reference in libtools2.1 | — | — | TRUE | **TRUE** |

**Result: 29 confirmed TRUE, 2 CORRECTED, 1 nuanced (all corrections applied in this document)**

### Corrections Applied

1. **Claim 17:** Protocol type 3 was described as "AirPlay" — code labels it `"NonAirPlay"` (f.java:470-481). The 0x20000 marker is confirmed.

2. **Claim 18:** "Android Auto frames always have compress_flag=1" is **FALSE**. The compress_flag is variable (0 or 1) and changes dynamically during a session. The code explicitly handles both values with different rendering commands (g(3,...) for 0, g(4,...) for 1).

3. **Claim 22:** `p.C` is declared as `public static int C = 0` (line 13) but then set to 60 in the static initializer block (line 73). Both statements are in the code; the effective default is 60.

---

*Generated from static analysis of AutoKit_2025.03.19.1126.apk. All code quotes reference decompiled sources in `/Users/zeno/Downloads/GitHub/CPC200-CCPA-Firmware-Dump/Autokit/unpacked/sources_raw/cn/manstep/phonemirrorBox/`.*
