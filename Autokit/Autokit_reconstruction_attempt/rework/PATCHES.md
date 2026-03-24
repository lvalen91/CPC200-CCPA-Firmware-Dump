# AutoKit x86_64 — Patch Registry

Every modification made to the original runtime-dumped DEX, listed by file. Use `smali_real/` as the unpatched reference to verify or revert any change.

---

## Smali Patches (18 files modified out of 2,829)

### Infrastructure (jiagu removal)

| # | File | Change | Reason |
|---|------|--------|--------|
| 1 | `com/stub/StubApp.smali` | **NEW FILE** — stub with `getOrigApplicationContext()` (identity) + `interface11()` (no-op) | Replace jiagu packer entry point |
| 2 | `cn/manstep/phonemirrorBox/MyApplication.smali` | Line 330: `invoke-static {p0}, Lc/m/a;->l()V` → `nop` | Remove jiagu init hook in `attachBaseContext()` |

### Native Method Stubs (avoid UnsatisfiedLinkError crashes)

| # | File | Methods Stubbed | Return Values |
|---|------|-----------------|---------------|
| 3 | `cn/manstep/phonemirrorBox/util/JniTools.smali` | `check()`→0, `open()`→true, **`box()`→false**, `checkSignature()`→true, `amplifyPcmData()`→void, `mono2Stereo()`→void, `test()`→void | box()=false is CRITICAL (true=counterfeit) |
| 4 | `net/iwebrtc/audioprocess/sdk/AudioProcess.smali` | `create()`→0, `destroy()`→true, `destroyAgc()`→true, `init()`→0, `initAgc()`→1L, `processData()`→true, `processDataAgc()`→true, `set_config()`→0 | All no-op/success |
| 5 | `cn/manstep/phonemirrorBox/Dtmf.smali` | `dtmfDoAec()`→0 | No-op |

### Logger (redirect to logcat)

| # | File | Change |
|---|------|--------|
| 6 | `cn/manstep/phonemirrorBox/util/s.smali` | Methods `d()`, `f()`, `i()`, `p()` replaced with direct `android.util.Log.d/e/i/v` calls |

### Activity onCreate Reconstruction (12 activities)

| # | File | onCreate Body |
|---|------|---------------|
| 7 | `cn/manstep/phonemirrorBox/MainActivity.smali` | `super.onCreate()` + `setContentView(0x7f0c0021)` + `new p0.c(this, this, fragmentMgr)` → `G` + `getSupportFragmentManager()` → `J` |
| 8 | `cn/manstep/phonemirrorBox/Main1Activity.smali` | `super.onCreate()` only |
| 9 | `cn/manstep/phonemirrorBox/LauncherActivity.smali` | `super.onCreate()` only |
| 10 | `cn/manstep/phonemirrorBox/EmptyActivity.smali` | `super.onCreate()` only |
| 11 | `cn/manstep/phonemirrorBox/CheckActivity.smali` | `super.onCreate()` only |
| 12 | `cn/manstep/phonemirrorBox/AdvancedSettingsActivity.smali` | `super.onCreate()` only |
| 13 | `cn/manstep/phonemirrorBox/AutoKitHideSettingsActivity.smali` | `super.onCreate()` only |
| 14 | `cn/manstep/phonemirrorBox/KeyLearnActivity.smali` | `super.onCreate()` only |
| 15 | `cn/manstep/phonemirrorBox/AdjustSizeActivity.smali` | `super.onCreate()` only |
| 16 | `cn/manstep/phonemirrorBox/LanguageSettingsActivity.smali` | `super.onCreate()` only |

Also patched: `MainActivity.onRequestPermissionsResult` → `super.onRequestPermissionsResult()` only.

Note: `com/yalantis/ucrop/UCropActivity.smali` had `public native onCreate` (not `protected`). Patched to `super.onCreate()` only.

### Audio Thread Fix

| # | File | Change |
|---|------|--------|
| 17 | `cn/manstep/phonemirrorBox/BoxInterface/f.smali` | After line 373 (`this.s.start()`), inserted: load `this.u` (iosAudio thread), null-check, call `start()` |

### Manifest Only (not smali)

| # | File | Change |
|---|------|--------|
| 18 | `AndroidManifest.xml` | `com.stub.StubApp` → `cn.manstep.phonemirrorBox.MyApplication` |
| | | `MainActivity`: added `android:exported="true"`, added `meta-data android:name="android.hardware.usb.action.USB_DEVICE_ATTACHED" android:resource="@xml/b"`, added `meta-data distractionOptimized` |
| | | `Main1Activity`: `exported="false"` → `exported="true"`, added `meta-data distractionOptimized` |

---

## Files NOT Modified (video/audio critical path)

These files are **byte-for-byte identical** to `smali_real/` — verify with `diff`:

```
cn/manstep/phonemirrorBox/BoxInterface/b.smali       — VideoDecoder (MediaCodec sync mode, feed pattern)
cn/manstep/phonemirrorBox/BoxInterface/b$b.smali      — VideoDecoder inner classes
cn/manstep/phonemirrorBox/BoxInterface/b$b$*.smali    — VideoDecoder inner classes
cn/manstep/phonemirrorBox/l0/l.smali                  — AudioPlayer (AudioTrack management)
cn/manstep/phonemirrorBox/l0/l$*.smali                — AudioPlayer inner classes
d/b/a/b.smali                                          — AudioTrack wrapper (PCM write, buffer)
cn/manstep/phonemirrorBox/BoxInterface/BoxConnection.smali — USB JNI (left native, fails gracefully)
cn/manstep/phonemirrorBox/BoxInterface/j.smali        — USB device enumeration (Android API path)
cn/manstep/phonemirrorBox/OpenH264Decoder.smali       — Software decode (left native, fails to MediaCodec)
```

---

## Verification

To verify any file against the original:
```bash
diff smali_real/path/to/file.smali autokit_repack/smali/path/to/file.smali
```

To find all modified files:
```bash
for f in $(find autokit_repack/smali -name "*.smali"); do
  orig="${f//autokit_repack\/smali/smali_real}"
  [ -f "$orig" ] && ! diff -q "$f" "$orig" > /dev/null 2>&1 && echo "MODIFIED: $f"
  [ ! -f "$orig" ] && echo "NEW: $f"
done
```
