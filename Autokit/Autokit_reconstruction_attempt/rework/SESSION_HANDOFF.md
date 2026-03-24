# AutoKit x86_64 Repackaging — Session Handoff

**Date:** 2026-03-24
**Status:** Working APK on both x86_64 emulator AND real GM gminfo3.7 Intel VPU hardware. Video, audio, and CarPlay session confirmed. Prolonged in-vehicle testing in progress.

---

## Context & Goal

**carlink_native** (`/Users/zeno/Documents/carlink/carlink_native`) suffers from H.264 P-frame corruption (decoder poisoning) on every CarPlay session. The 2-second periodic keyframe request is the current workaround (revision [40], see `documents/revisions.txt`). 97 revisions of troubleshooting have not identified the root cause.

The **Autokit** (OEM manufacturer app, `cn.manstep.phonemirrorBox`) was repackaged to run on x86_64 to compare codec behavior on the same hardware/adapter/iPhone. The video decode pipeline is **byte-for-byte identical** to the original Autokit — only infrastructure was changed (jiagu removal, native stubs, manifest fixes).

**Purpose:** Determine if the Autokit's codec approach (sync MediaCodec, no extras) avoids P-frame corruption on the Intel VPU over extended sessions.

---

## Test Results

| Platform | Video | Audio | P-frame Corruption |
|----------|-------|-------|--------------------|
| x86_64 AAOS emulator | Clean, 24-30fps | Working (48kHz stereo) | None observed |
| GM gminfo3.7 (Intel VPU) | Working, 17-60fps | Working (48kHz stereo) | **Under prolonged testing** |

**Known display anomaly on gminfo:** CarPlay session renders smaller than 2400x960 and aligns top-left. Caused by minimal `onCreate()` stub not setting fullscreen/window flags. Intentionally NOT fixed — any code changes risk invalidating the 1:1 video codec comparison.

---

## Key Finding: Codec Configuration Differences

Both apps decode H.264 from the same CPC200-CCPA adapter. The differences:

| Aspect | Autokit (clean on emulator) | carlink_native (corrupted) |
|--------|---------------------------|---------------------------|
| MediaCodec mode | **Synchronous** (`dequeueInputBuffer` blocking) | Async (`setCallback()`) |
| MediaFormat extras | **None** — bare `createVideoFormat("video/avc", w, h)` | `KEY_LOW_LATENCY=1`, `KEY_PRIORITY=0`, `KEY_MAX_INPUT_SIZE` |
| SPS+PPS+IDR feeding | **Single buffer, flags=0** | Split-feed with `BUFFER_FLAG_CODEC_CONFIG` on first keyframe |
| Output buffer handling | **Sync polling** (`dequeueOutputBuffer` with timeout) | Async `onOutputBufferAvailable` callback |
| PTS/Timestamp | Computed from frame count or uptime | Monotonic counter (0, 1, 2, 3...) |

**If Autokit is clean on gminfo after prolonged testing**, implement these changes in carlink_native in order:
1. Strip `KEY_LOW_LATENCY`, `KEY_PRIORITY`, `KEY_MAX_INPUT_SIZE` (smallest change)
2. Stop split-feeding SPS+PPS — feed as single buffer with `flags=0`
3. Switch to synchronous MediaCodec mode (biggest change)

---

## Code Integrity: 99.3% Identical to Original

Of 2,829 smali files, **2,811 are byte-for-byte identical** to the runtime-dumped DEX. Only 18 files were modified, and **none are in the video or audio playback path**:

| Component | File | Status |
|-----------|------|--------|
| **VideoDecoder** (`BoxInterface/b.smali`) | Video codec, MediaCodec feed, sync mode | **IDENTICAL** |
| **BoxProtocol** (`BoxInterface/f.smali`) | USB protocol handler | +6 lines (audio thread start only) |
| **AudioPlayer** (`l0/l.smali`) | AudioTrack playback | **IDENTICAL** |
| **AudioTrack wrapper** (`d/b/a/b.smali`) | PCM write, buffer mgmt | **IDENTICAL** |
| **USB read loop** | Data path from adapter | **IDENTICAL** |

Changes were limited to: jiagu removal (StubApp stub, MyApplication patch), native method stubs (JniTools, AudioProcess, Dtmf), logger redirect to logcat, 12 Activity onCreate stubs, manifest fixes.

---

## What Was Done to the APK

### 1. Jiagu (360 Qihoo packer) Removal
- Manifest `android:name` changed from `com.stub.StubApp` to `cn.manstep.phonemirrorBox.MyApplication`
- `MyApplication.attachBaseContext()`: removed `c/m/a->l()` jiagu init call (replaced with `nop`)
- `StubApp.smali` replaced with stub: `getOrigApplicationContext()` returns input, `interface11()` is no-op
- All `libjiagu*.so` and `.jgapp` removed from assets
- All `lib/` native libraries removed (no x86_64 versions exist)

### 2. Native onCreate Reconstruction
Jiagu replaced `onCreate()` in 12 Activities with native stubs. Patched each with minimal smali:
- `MainActivity`: `super.onCreate()` + `setContentView(0x7f0c0021)` + creates `G` (p0.c ProtocolController) + `J` (FragmentManager)
- All others: `super.onCreate()` only
- `MainActivity.onRequestPermissionsResult`: `super.onRequestPermissionsResult()` only
- Layout `0x7f0c0021` = FrameLayout containing a ViewStub that inflates the ViewAnimator (FirstPage, WaitFragment, AutoBoxMirrorFragment, etc.)

### 3. Native Library Stubs
- **JniTools** (`libtools2.1.so`): `check()`→0, `open()`→true, `box()`→**false** (legitimate device), `checkSignature()`→true, `amplifyPcmData()`→void, `mono2Stereo()`→void, `test()`→void
- **AudioProcess** (`libhtlog.so`): All 8 methods stubbed (create, destroy, destroyAgc, init, initAgc, processData, processDataAgc, set_config)
- **Dtmf** (`libdtmf.so`): `dtmfDoAec()`→0
- **OpenH264Decoder** (`libopenH264decoder.so`): Left native (graceful failure sets `p.g=false` → hardware MediaCodec used)
- **BoxConnection** (`libconnection.so`): Left native (graceful failure; `u.z().d0()` returns false on all non-DesaySV devices → Java USB Host API path used automatically)

**CRITICAL:** `JniTools.box()` must return **`false`** (not `true`). `true` = counterfeit device → triggers "product not authorized" error. `false` = legitimate device.

### 4. Audio Fix
- `BoxInterface/f.smali` (BoxProtocol): The `iosAudio` playback thread was created but **never started** in the original code. Patched constructor to call `this.u.start()` after `this.s.start()` (readUsb thread). This routes audio data from the protocol queue to AudioTrack callbacks.

### 5. Logger Fix
- `util/s.smali`: All logging methods (`c`, `d`, `e`, `f`, `h`, `i`, `p`) patched to call `android.util.Log` directly. Original code routed to Tencent Mars XLog (`libutil.so`) which isn't available on x86_64.
- Log tags: `AutoPlay`, `BoxProtocol`, `AvcDecoder`, `AudioPlayer`, `UsbManager`, `BoxInterface`
- Filter: `adb logcat -s AutoPlay:* BoxProtocol:* AvcDecoder:* AudioPlayer:*`

### 6. Manifest Fixes (USB + AAOS)

**USB Detection Fix (critical for gminfo):**
- `MainActivity`: Added `exported="true"` and `meta-data` with USB device filter (`@xml/b`)
- `Main1Activity`: Changed from `exported="false"` to `exported="true"`
- **Root cause:** On Android 12+ AAOS, `UsbManager.getDeviceList()` filters devices based on whether the app has a matching USB device filter in its manifest on an exported activity. Without this, the CPC200-CCPA adapter (VID 0x1314) was invisible to the Autokit. carlink_native worked because its `MainActivity` had both `exported="true"` and the USB `meta-data`.

**AAOS Metadata:**
- `distractionOptimized` metadata added to `MainActivity` and `Main1Activity`

---

## Build Instructions

### Prerequisites
```bash
brew install apktool   # v3.0.1+
# Android SDK build-tools (zipalign, apksigner) at:
# /Users/zeno/Library/Android/sdk/build-tools/36.1.0/
```

### Build
```bash
cd /Users/zeno/Downloads/misc/CPC200-CCPA/rework/autokit_repack
apktool b . -o ../AutoKit_x86_64.apk
```

### Sign
```bash
cd /Users/zeno/Downloads/misc/CPC200-CCPA/rework
/Users/zeno/Library/Android/sdk/build-tools/36.1.0/zipalign -f 4 AutoKit_x86_64.apk AutoKit_x86_64_aligned.apk
/Users/zeno/Library/Android/sdk/build-tools/36.1.0/apksigner sign \
  --ks debug.keystore --ks-pass pass:android --key-pass pass:android \
  AutoKit_x86_64_aligned.apk
```

### Install
```bash
adb install -r -g -i com.android.vending /Users/zeno/Downloads/misc/CPC200-CCPA/rework/AutoKit_x86_64_aligned.apk
```

Flags: `-r` replace, `-g` grant all permissions, `-i com.android.vending` set install source as Play Store.

---

## File Inventory

### Ready-to-install
```
AutoKit_x86_64_aligned.apk    — Signed, zipaligned, ready to install
debug.keystore                 — Signing key (pass: android, alias: debug)
```

### Build workspace
```
autokit_repack/                — Full apktool project with all patches applied
  ├── AndroidManifest.xml      — Patched (MyApplication, exported, distractionOptimized, USB meta-data)
  ├── apktool.yml              — Build config (minSdk 16, targetSdk 29)
  ├── smali/                   — 2829 smali files (2811 identical to original + 18 patched)
  ├── smali_classes2/          — 79 extra classes from dumped_extra.dex
  ├── res/                     — Full resources (layouts, drawables, values)
  └── assets/                  — App assets (jiagu libs removed)
```

### Source material (read-only reference — do NOT modify)
```
base.apk                      — Original Autokit APK (10MB, jiagu-packed)
dumped_real_classes.dex        — Runtime-dumped DEX (3.5MB, 2828 classes)
dumped_stub_classes.dex        — Jiagu stub DEX (1.2MB, 4 classes)
dumped_extra.dex               — Extra runtime DEX (93KB, 79 classes)
classes.dex                    — Same as dumped_stub_classes.dex
HWTouch.dex                   — Touch handling from assets
smali_real/                    — Disassembled dumped_real_classes.dex (UNPATCHED original)
smali_extra/                   — Disassembled dumped_extra.dex
smali/                         — Disassembled stub DEX (4 jiagu classes)
smali_hwtouch/                 — Disassembled HWTouch.dex
jadx_real/                     — JADX decompiled Java from real DEX (1215 .java files)
jadx_out/                      — JADX decompiled Java from stub DEX
apktool_out/                   — Original apktool decode of base.apk (unpatched)
native_libs/                   — Original native .so files (arm64, armeabi, x86 — NO x86_64)
dump/                          — ELF analysis, symbol tables, native method maps, runtime data
RECONSTRUCTION_BRIEFING.txt    — Detailed DEX packing analysis, native lib inventory, strategy
```

### Tools
```
baksmali.jar                   — DEX → smali disassembler (v2.5.2)
smali.jar                      — smali → DEX assembler (v2.5.2)
```

---

## Known Limitations

1. **Display sizing** — CarPlay session is smaller than fullscreen on gminfo. Caused by minimal `onCreate()` stub missing fullscreen/window/density setup. **Intentionally not fixed** to preserve 1:1 video codec comparison.

2. **No audio gain control** — `JniTools.amplifyPcmData()` is a no-op. Audio plays at raw PCM levels.

3. **No AGC** — `AudioProcess` methods are stubbed. No automatic gain control on audio.

4. **No microphone** — Siri and phone calls won't have mic input.

5. **Settings activities broken** — All non-Main activities have stub `onCreate()`. Settings, AdjustSize, KeyLearn, Language screens show empty/broken UI.

6. **No OpenH264 software decode** — Falls through to hardware MediaCodec (which is what we want for testing).

---

## Bugs Found & Fixed During Repackaging

### 1. JniTools.box() Return Value (anti-counterfeit check)
- **Bug:** Stubbed as `return true` (= counterfeit device)
- **Fix:** Changed to `return false` (= legitimate device)
- **Symptom:** "The product is not authorized, please contact the dealer"
- **Code path:** `j.i()` → `JniTools.box(VID)` → if true → `handleInvalidDevice: VID ERROR` → phase 123 → `EVT_BOX_VERSION_ERROR` → `MainActivity.h()` → error message

### 2. USB Device Visibility on GM AAOS (manifest)
- **Bug:** `MainActivity` had USB intent-filter but no `meta-data` device filter and was not `exported="true"`. `Main1Activity` had the `meta-data` but was `exported="false"`.
- **Fix:** Added `exported="true"` and `meta-data android:name="android.hardware.usb.action.USB_DEVICE_ATTACHED" android:resource="@xml/b"` to `MainActivity`. Set `Main1Activity` to `exported="true"`.
- **Symptom:** `UsbManager.getDeviceList()` returned only VID 0x2996 (GM system device), adapter VID 0x1314 was invisible. On Android 12+ AAOS, device list is filtered by manifest USB device filters.
- **Evidence:** carlink_native's `MainActivity` has both `exported="true"` and USB `meta-data` → sees VID 0x1314. Autokit without the fix → only sees VID 0x2996.

### 3. iosAudio Thread Never Started (audio playback)
- **Bug:** `BoxInterface/f.smali` constructor creates the `iosAudio` thread but never calls `start()`. Only `readUsb`, `checkOpen`, and `audioRecord` threads are started.
- **Fix:** Added `this.u.start()` after `this.s.start()` in the constructor.
- **Symptom:** AudioTrack delivered initial frames during connection handshake but no ongoing audio playback. Audio data accumulated in queue but was never consumed.

---

## Related Project Files

- **carlink_native source:** `/Users/zeno/Documents/carlink/carlink_native/`
- **Firmware RE docs:** `/Users/zeno/Documents/carlink/carlink_native/documents/reference/firmware/RE_Documention/`
- **Revision history:** `/Users/zeno/Documents/carlink/carlink_native/documents/revisions.txt`
- **Original Autokit analysis:** `/Users/zeno/Downloads/GitHub/CPC200-CCPA-Firmware-Dump/Autokit/`
- **Claude memory:** `/Users/zeno/.claude/projects/-Users-zeno/memory/`
