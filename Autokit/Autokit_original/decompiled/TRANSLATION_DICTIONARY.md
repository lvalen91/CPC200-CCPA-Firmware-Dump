# Autokit APK Deobfuscation Translation Dictionary

Package: `cn.manstep.phonemirrorBox` (Autokit 2025.03.19.1126)
Decompiled from runtime-dumped DEX (Jiagu-packed, 3.5MB decrypted from process memory)
Source: `/tmp/autokit_analysis/jadx_decrypted/sources/cn/manstep/phonemirrorBox/`
Saved copy: `/Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/decompiled/`

---

## Core Video Rendering Classes

### `AutoBoxMirrorTextureView` — TextureView video surface
- Extends `TextureView`, implements `SurfaceTextureListener`
- Used when `p.i == true` (preference: `UseTextureView`)
- Has OpenGL render option (`UseOpenGLRender` preference)
- Caches `SurfaceTexture` on destroy, restores on recreate
- Touch: adjusts by `scaled_left`/`scaled_top`, normalizes to 0-10000

### `AutoBoxMirrorView` — SurfaceView video surface (default)
- Extends `SurfaceView`, implements `SurfaceHolder.Callback`
- Used when `p.i == false` and `p.g == false`
- Same touch/resize patterns as TextureView variant

### `AutoBoxMirrorSoftView` — Software rendering fallback
- Used when `p.g == true` (software decode mode)
- Uses `libopenH264decoder.so` via `OpenH264Decoder.java`

### `AndroidH264view` — Alternative H.264 decoder+view
- Self-contained: own `MediaCodec` instance (inner class `b`)
- Synchronous decode loop with separate render thread
- SPS/PPS caching (inner class `c`)
- Older/simpler path, uses `FrameLayout.LayoutParams` with margins

### `i` → `AutoBoxMirrorViewCommon` — Video scaling state & logic
- **Fields**:
  - `a` → `scaled_width` (view width after scaling)
  - `f1667b` → `scaled_height` (view height after scaling)
  - `f1668c` → `scaled_left` (X offset for oversized view, touch adjustment)
  - `f1669d` → `scaled_top` (Y offset for oversized view, touch adjustment)
  - `e` → `video_width` (H.264 frame width from adapter)
  - `f` → `video_height` (H.264 frame height from adapter)
  - `g` → `moveEventScheduler` (throttled touch move events, 17ms = ~60fps)
- **Methods**:
  - `a()` → `cancelMoveEvent()` — cancels pending scheduled move
  - `b(x, y)` → `scheduleMoveEvent(x, y)` — rate-limited touch move (17ms interval)
  - `c(view, screenW, screenH)` → **`resizeAndroidAutoView()`** — THE critical AA scaling method
  - `toString()` → debug string with all field names

### `j` → `AutoBoxMirrorViewUtil` — Layout sizing utilities
- `a(ctx, params, screenW, screenH, videoW, videoH)` → `onRotationChanged()` — aspect-ratio layout on rotation
- `b(ctx, params, screenW, screenH, videoW, videoH)` → `ReSizeView()` — aspect-ratio resize, respects `ImageScale` pref
- `c(view)` → `applyRoundedCorners()` — `ViewOutlineProvider` clip via `u.z().c()` radius

---

## Configuration & State Classes

### `p` → `GlobalConfig` — Static configuration flags
- `a` → `APP_VERSION` = "VER:2025.03.19.1126"
- `f1804b` → `BOX_VERSION` = "BOX:unknown" (updated at runtime)
- `f1805c` → `debugMode`
- `f1806d` → `isRecording`
- `e` → `LOG_PATH` = "/sdcard/hwbox.log"
- `f` → `hardwareId` = "None"
- **`g`** → **`useSoftDecode`** — enables `AutoBoxMirrorSoftView` + openH264
- **`i`** → **`useTextureView`** — enables `AutoBoxMirrorTextureView`
- `j` → `useOpenGLRender`
- **`k`** → **`screenWidth`** (static, set via `f(w,h)`)
- **`l`** → **`screenHeight`** (static)
- `m` → `screenSizeLocked`
- `n` → `phoneType` (0=unknown, 1=Android, 2=iPhone)
- `o` → `outputFormat`
- `p` → `videoRotation`
- `q` → `density`
- `r` → `currentPhoneType` (-1=none, set to -1 on USB disconnect)
- `s` → `hasExternalMic`
- `t` → `useCustomLayout`
- `u` → `hideNavBar`
- `v` → `hideStatusBar`
- `w` → `autoConnect`
- `x` → `wifiAutoConnect`
- `y` → `btAutoConnect`
- `z` → `showFloatWindow`
- `A` → `enableTouchPassthrough` = true
- `B` → `enableMultiTouch` = true
- **`C`** → **`videoFrameRate`** = 60 (25 for soft decode)
- **`D`** → **`dropThreshold`** = 0
- `E` → `compressMethod` = 1 (H264)
- **`F`** → **`bufferFrameCount`** = 0
- **`G`** → **`micRecordDelay`** (from `CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION` = 500ms)
- `H` → `enableHeartbeat` = true
- `I` → `audioOutputMode` = 0
- `J` → `deviceDelayMap` (HashMap: platform letter → delay code)
- **Methods**:
  - `a()` → `getDeviceDelayCode("Y")` = 2
  - `b()` → `getRecordDelay()` — platform-specific mic recording delay
  - `c(prop, default)` → `getSystemProperty()` — reflective SystemProperties.get
  - `d(boxVersion)` → `isUnknownBox()` — checks version string format
  - `e()` → `isRegisterMediaButton()` — platform-specific media button support
  - `f(w, h)` → `setScreenSize()` — sets `k`/`l` if not locked

### `c0` → `VideoSizeManager` — Singleton managing video resolution tiers
- **Fields**:
  - `l` → singleton instance
  - `f1568c` → **`androidAutoSize`** (the WxH sent as `androidAutoSizeW/H` to adapter)
  - `a` → `displaySize` (screen dimensions)
  - `f1567b` → `defaultVideoSize`
  - `f1569d` → `tierList` (List of resolution tiers: 480p, 720p, 1080p, 1440p)
  - `e` → **`maxVideoSize`** (max resolution for current display)
  - `f` → `videoSize` (current CarPlay/HiCar video size)
  - `g` → `defaultSize`
  - `h` → `resolutionOptions` (List<String> for settings UI)
  - `i` → `currentTierHeight` (480/720/1080/1440)
  - `j` → `carplayDpi` (calculated DPI for CarPlay)
  - `k` → `androidAutoDpi` (calculated DPI for AA)
- **Key Methods**:
  - `a()` → **`getAndroidAutoSize()`** — returns `androidAutoSize` (the `util.x` with W/H)
  - `b(tierHeight)` → **`getAndroidAutoSizeForTier(tierHeight)`** — sets tier then returns AA size
  - `c(maxSize)` → `buildTierList()` — generates 4 resolution tiers from max display size
  - `d(w, h)` → `calculateDpi()` — DPI formula: `((w*h - 384000) * 23 / 998400 + 120) * 1.25`
  - `e(w, h, defW, defH, list)` → `buildResolutionOptions()` — generates ±5% stepped resolution list
  - `i()` → `getInstance()` — singleton accessor
  - `j(displayW, displayH, defW, defH, str, tierH)` → `getInstance(displayW, displayH, ...)` — factory with full init
  - `k(w, h)` → `isSpecialResolution()` — checks "1920x1152" or "1088x768"
  - `m()` → **`getMaxVideoSize()`** — returns `maxVideoSize`
  - `n(tierHeight)` → `setAutoSize()` — selects AA tier and calculates AA DPI
  - `o(w, h)` → `setMaxByUser()` — user-set max resolution
  - `p(w, h, defW, defH)` → `setMax()` — internal max resolution setter
  - `q(w, h)` → `setMaxByMeasure()` — measure-based max, saves to prefs
  - `r(w, h)` → `setSize()` — set CarPlay/HiCar video size with DPI calc
  - `t()` → `getVideoSize()` — current CarPlay video size
  - **`g(videoW, videoH)`** → **`calculateAndroidAutoSizeFromAspectRatio()`** — scales maxVideoSize by video aspect ratio, clamps to bounds. Used in `resizeAndroidAutoView` for recalculating AA content area.

### `u` → `DeviceConfig` — Singleton device detection & platform quirks
- **Fields**:
  - `r` → singleton instance
  - `f1835b` → `info1` (Manufacturer-Model-Version(SDK))
  - `f1836c` → `info2` (Manufacturer-Model-Product-Version(SDK)) — primary device ID
  - `f1837d` → `info3` (info2 + Build.ID)
  - `e` → `huid` (hashed device ID)
  - `n` → `sysWidth`
  - `o` → `sysHeight`
  - `i` → `isLegacyDevice` (older chipsets needing special handling)
  - `j` → `useCustomVideoSizing`
- **Key Methods**:
  - `z()` → `getInstance()`
  - **`T()`** → **`isFitSizeMode()`** — returns true for AC8317 devices (uses width-proportional scaling instead of oversizing)
  - `c()` → `getCornerRadius()` — rounded corner radius (0 for most, 32/36 for FAW devices)
  - `u()` → `getWindowLayoutParams()` — device-specific window size overrides (Hozon, FAW, BYD, QTI)
  - `v()` → `getOrientationMode()` — 0=auto, 1=portrait, 2=custom layout, 4=FAW
  - `Y()` → `usesMeasureBasedMaxSize()` — NIO, Hozon, Renesas use measured max
  - `r()` → `getFixedVideoSize()` — Renesas portrait returns 1408x1506
  - `f(tierH)` → `overrideTierHeight()` — NIO/HUAWEI force 1080
  - `G(defaultMargin)` → `getVideoMargin()` — FAW returns 620
  - `b0()` → `useBTPhone()` — device-specific BT phone support
  - `H()` → `getScreenSizeInfo()` — debug string with all resolution sources

### `b0` → `PreferenceManager` — SharedPreferences wrapper
- `i()` → `getInstance()`
- `m(key, default)` → `getInt(key, default)`
- `n(key, default)` → `getString(key, default)`
- `o(key, default)` → `getBoolean(key, default)`
- `E(value)` → `setBoolean()` (specific pref)
- `F(key, value)` → `putString(key, value)`
- Key prefs: `"vandroidautoh"` (AA tier: 720 default), `"ImageScale"` (0=stretch, 1=fit), `"vmaxwh"` (max video WxH), `"mediaDelay"` (300ms default)

---

## BoxInterface Classes (USB/Protocol Layer)

### `BoxInterface.d` → `BoxInterface` — USB connection manager
- **Fields**:
  - `k` → `handler` (main thread Handler for UI events)
  - `l` → **`boxProtocol`** (static reference to `BoxInterface.f`)
  - `m` → `listeners` (List of `d.g` callback listeners)
  - `p` → `usbDetector` (j class)
  - `o` → `touchQueue` (Vector of pending touch data for socket)
  - `q` → `resetSent` (prevents duplicate decoder resets)
- **Key Methods**:
  - `i()` → **`isConnected()`** — returns true if `boxProtocol != null` and USB detected
  - **`u()`** → **`isAndroidAutoWithVersionCheck()`** — true if firmware >= "2022.06.02.1010" AND `t()` is true
  - **`t()`** → **`isAndroidAutoConnected()`** — true if `v()` AND `G()` AND `l.S()`
  - **`v()`** → **`isAndroidAutoMode()`** — `k.d() == 1` (AndroidAuto work mode)
  - `w(mode)` → `isAndroidAutoMode(mode)` — `mode == 1`
  - `A()` → `isHiCarMode()` — `k.d() == 4`
  - `B(mode)` → `isHiCarMode(mode)` — `mode == 4`
  - `x()` → `isCarPlayMode()` — `k.f() == 2`
  - `y(mode)` → `isCarPlayMode(mode)` — `mode == 2`
  - `s()` → `getConnectionState()` — returns `q0.g` from protocol
  - `G()` → `isProtocolOpen()` — returns `f.O`
  - `h()` → `isFeatureEnabled()` — returns `f.f`
  - `R()` → `sendResetOnceDecoder()` — one-shot decoder reset
  - `S(holder, flag)` → `setSurface(holder, flag)` — passes to `f.z.j(holder, flag)`
  - `T(fmt, w, h)` → `surfaceChanged(fmt, w, h)` — passes to `f.z.k(fmt, w, h)`
  - `U()` → `surfaceDestroyed()` — passes to `f.z.l()`
  - `V(x, y, w, h)` → `sendTouch(x, y, w, h)` — passes to `f.I0()`
  - `Z()` → `startMirror()` — creates `BoxInterface.f` protocol, starts touch thread
  - `b0()` → `stopMirror()` — stops protocol, nulls `l`
  - `g(listener)` → `addListener()` — registers `d.g` callback
  - `c0(listener)` → `removeListener()`
  - `q(phase)` → `getPhaseName()` — maps phase int to event name string (EVT_*)

### `BoxInterface.d.g` → `BoxListener` interface
- `a(phase, obj)` → `onPhaseWithData(phase, obj)` — phase change with data payload
- `c(phase)` → `onVideoSizeChanged(phase)`
- `n(box)` → `onBoxInterfaceBound(box)` — listener bound to BoxInterface
- `o(phase)` → `onPhase(phase)` — phase change (EVT_* codes)
- `v(data)` → `onRawData(data)` — raw byte callback

### `BoxInterface.e` → `MultiTouchEvent` — Touch event data
- `a[5]` → `x[5]` (normalized 0.0-1.0 x coordinates)
- `f1445b[5]` → `y[5]` (normalized 0.0-1.0 y coordinates)
- `f1446c[5]` → `action[5]` (0=UP, 1=DOWN, 2=MOVE)
- `f1447d[5]` → `pointerId[5]`
- `e` → `pointerCount`
- `b(event, offsetX, offsetY, scaleW, scaleH)` → **`processMotionEvent()`** — converts Android MotionEvent to normalized multi-touch data, adjusts by offset/scale, sends via `v0.e.K()`
- `a()` → `getByteSize()` — `pointerCount * 16`
- `c(buffer, offset)` → `writeTo(buffer, offset)` — serializes to ByteBuffer (4 floats per pointer: x, y, action, id)

### `BoxInterface.f` → `BoxProtocol` — Core USB protocol handler (2613 lines)
- **Fields**:
  - `N` → `phoneType` (static: -2=unknown, -1=iPhone, 1=Android, etc.)
  - `O` → `isPhoneConnected` (static boolean)
  - `P` → (unused/flag)
  - `Q` → (flag)
  - `R` → `isWifiDevice` (static boolean)
  - `z` → **`videoDecoder`** (type `BoxInterface.b` — MediaCodec wrapper)
  - `y` → `contextRef` (WeakReference<Context>)
  - `o` → `connectionState` (type `q0.g`)
  - `q` → **`openParams`** (type `k` — StOpen parameters)
  - `r` → `isOpenedFlag` (z<Boolean>)
  - `C` → `threadExit` (boolean — signals all threads to stop)
  - `A` → `audioQueue` (h — audio frame queue)
  - `B` → `audioListeners` (List<BoxInterface.a>)
  - `x` → `isMicRecording`
  - `f1448b` → `encoderType` (1=H264, 2=H265, 4=MJPEG)
  - `f1449c` → `offScreen` (0/1)
  - `f1450d` → `videoWidth`
  - `e` → `videoHeight`
- **Key Inner Class `k`** → **`StOpenParams`** — Video negotiation parameters
  - `a` → `width`
  - `f1468b` → `height`
  - `f1469c` → `frameRate` (default 60, 25 for soft decode)
  - `f1470d` → `compressMethod` (5 = H264)
  - `e` → `bufferSize` (16384)
  - `f` → `flags`
  - `h` (static) → `iphoneWorkMode` (0=invalid, 2=CarPlay, 3=NonAirPlay)
  - `i` (static) → `androidWorkMode` (0=invalid, 1=AndroidAuto, 2=CarLife, 3=Mirror, 4=HiCar)
  - `a(mode)` → `getAndroidModeName()` — "AndroidAuto(1)", "CarLife(2)", etc.
  - `h(mode)` → `getIphoneModeName()` — "CarPlay(2)", "AirPlay(1)", etc.
  - `d()` → `getAndroidWorkMode()` — returns static `i`
  - `f()` → `getIphoneWorkMode()` — returns static `h`
  - `i()` → `isHiCar()` — `i == 4`
- **Key Methods**:
  - `g0(w, h)` → **`sendAndroidAutoSize(w, h)`** — sends `{"androidAutoSizeW":w,"androidAutoSizeH":h}` via cmd 25
  - `q0()` → **`sendBoxAllSettings()`** — sends full JSON config including AA size, mediaDelay, drivePosition, HiCar, GNSS, BT
  - `h1(bytes)` → `sendBoxConfig(bytes)` — cmd 25
  - `T0(cmd)` → `sendCarControl(cmd)` — sends car control command
  - `G0(touch)` → `sendMultiTouch(touch)` — sends touch event to adapter
  - `I0(x, y, w, h)` → `sendSingleTouch(x, y, w, h)`
  - `B0(cmd, data, len)` → `sendCommand(cmd, data, len)` — low-level USB write
  - `J()` → `getConnectionState()` — returns `q0.g`
  - `S()` → `isAndroidAutoSupported()` — checks protocol capability
  - `U()` → `isSomeFeature()` — protocol feature check
  - `d()` → `initProtocol()` — called after open, sends app info, CarPlay icons, settings
  - `y()` → `shutdown()` — stops all threads, releases resources
  - `Z()` → `onPlugged()` — handles phone plug event, determines work mode
  - `R0(packet)` → `writePacket(packet)` — USB bulk write
  - `v1()` → `startHeartbeat()` — 2s heartbeat timer
  - Phase codes: 3=working, 4=wait hotspot, 5=wait AirPlay, 6=working(alt), 8=streaming(CarPlay), 10=registered, 13=link failed

---

## Utility Classes

### `util.x` → `Size` (Parcelable width×height)
- `f1934b` → **`width`**
- `f1935c` → **`height`**
- `l(str)` → `parse("WxH")` — parses from string (supports `*`, `x`, `_`, `,` separators)
- `m(w, h)` → `set(w, h)`
- `n(other)` → `copyFrom(other)`
- `j(w, h)` → `equals(w, h)`
- `k()` → `isEmpty()` — width<=0 or height<=0

### `util.s` → `Logger` — Logging utility
- `c(msg)` → `log(msg)` — standard log
- `d(tag, msg)` → `logDebug(tag, msg)`
- `e(msg)` → `logError(msg)`
- `f(tag, msg)` → `logWarning(tag, msg)`
- `i(tag, msg)` → `logInfo(tag, msg)`
- `g(exception)` → `getStackTrace(exception)`
- `p(tag, msg)` → `logPriority(tag, msg)`

### `h0.a` → `ScheduledTaskRunner` — Throttled task scheduler
- `b(name)` → `cancel(name)` — cancel named task
- `f(name, runnable, delay, period)` → `scheduleRepeating(name, runnable, delay, period)`

### `v0.e` → `ViewManager` — Main activity/view coordinator (implements `d.g`)
- `o` → singleton instance
- `M(view)` → `getBoxInterfaceForView(view)` — finds BoxInterface from attached views
- `S(view)` → `detachView(view)` — removes view from management
- `K(touchEvent)` → `dispatchMultiTouch(touchEvent)` — sends MultiTouchEvent to protocol
- `L(action, pointer, x, y)` → `dispatchSingleTouch(action, pointer, x, y)` — 0=DOWN, 1=MOVE, 2=UP, normalized 0-10000
- `C()` → `canRequestPermission()` — USB permission check

---

## AA Widescreen Scaling Flow (Complete Chain)

### 1. AA Size Calculation
```
c0.b(tierHeight=720) → c0.n(720) → selects tier[1] from tierList
  → androidAutoSize = {width: proportional to display AR, height: tier height}
  → Example: 2400x960 display → tier 720p → androidAutoSize = {1280, 512}
```

### 2. Sending to Adapter
```
f.q0() → sendBoxAllSettings() → {
  "androidAutoSizeW": 1280,  // from c0.b(720).width
  "androidAutoSizeH": 512,   // from c0.b(720).height
  "mediaDelay": 300, ...
}
  → cmd 25 → adapter sets margin_h/margin_w in AA protocol → phone renders content in 1280x512 area within 1280x720 H.264 frame
```

### 3. Video Frame Arrives (1280x720 H.264)
```
BoxInterface.b.g(mode=3, videoW=1280, videoH=720, ...) → decoder configured
  → AutoBoxMirrorView.h(1280, 720) → stores in i.e/i.f
  → AutoBoxMirrorView.b(screenW, screenH) → calls i.c(view, screenW, screenH)
```

### 4. resizeAndroidAutoView (class `i`, method `c`)
```
maxVideoSize = c0.m()  // e.g., {1280, 720} from tierList
androidAutoSize = c0.a()  // e.g., {1280, 512}

if (u.z().T()) {  // FitSize mode (AC8317 only)
  scaled_width = maxVideoSize.width
  scaled_height = maxVideoSize.width * videoH / videoW  // proportional
  scaled_left = 0, scaled_top = 0
else:  // OVERSIZING mode (most devices)
  layoutParams = {maxVideoSize.width, maxVideoSize.height}  // initial = display size
  marginX = (videoW - androidAutoSize.width) / 2   // = (1280 - 1280) / 2 = 0 for this example
  marginY = (videoH - androidAutoSize.height) / 2  // = (720 - 512) / 2 = 104

  // Handle aspect ratio mismatch — recalculate AA size
  if (marginX != 0 && marginY != 0):
    androidAutoSize = c0.i().g(videoW, videoH)  // recalc from video AR
    marginX = (videoW - newAA.width) / 2
    marginY = (videoH - newAA.height) / 2

  scaledMarginX = marginX * maxVideoSize.width / androidAutoSize.width
  scaledMarginY = marginY * maxVideoSize.height / androidAutoSize.height

  view.setTop(-scaledMarginY)   // PUSH UP beyond display
  view.setLeft(-scaledMarginX)  // PUSH LEFT beyond display

  layoutParams.width = maxVideoSize.width + (scaledMarginX * 2)   // OVERSIZED
  layoutParams.height = maxVideoSize.height + (scaledMarginY * 2)  // OVERSIZED

  scaled_width = layoutParams.width
  scaled_height = layoutParams.height
  scaled_left = scaledMarginX    // saved for touch offset
  scaled_top = scaledMarginY     // saved for touch offset
```

### 5. Touch Coordinate Adjustment
```
// In AutoBoxMirrorView.onTouchEvent / AutoBoxMirrorTextureView.onTouchEvent:
x = (int)event.getX() - scaled_left   // subtract oversizing offset
y = (int)event.getY() - scaled_top
normalizedX = clamp(x / scaled_width, 0, 1) * 10000
normalizedY = clamp(y / scaled_height, 0, 1) * 10000
→ v0.e.L(action, pointer, normalizedX, normalizedY)
```

### 6. Effect on Display
The view is physically larger than the display. The negative setTop/setLeft moves the black-bar regions off-screen. Only the content area (androidAutoSize region) is visible within the display bounds. Touch coordinates are remapped to the oversized view's coordinate space.

---

## Phone Type Codes (BoxInterface.f.k)
| Code | Android Mode (`k.i/d()`) | iPhone Mode (`k.h/f()`) |
|------|--------------------------|-------------------------|
| 0    | AndroidInvalid           | iPhoneInvalid           |
| 1    | **AndroidAuto**          | AirPlay                 |
| 2    | CarLife                  | **CarPlay**             |
| 3    | AndroidMirror            | NonAirPlay              |
| 4    | **HiCar**                | iPhoneCharge            |
| 5    | ICCOA                    | —                       |

## Phase/Event Codes (BoxInterface.d.q)
| Code | Name | Description |
|------|------|-------------|
| 0    | EVT_ANDROID_PLUG_OUT | Android phone disconnected |
| 2    | EVT_IPHONE_PLUG_OUT | iPhone disconnected |
| 3    | EVT_IPHONE_PLUG_IN | iPhone connected (phase=3) |
| 5    | EVT_WAIT_HOTPOT | Waiting for WiFi hotspot (phase=4) |
| 6    | EVT_WAIT_AIRPLAY | Waiting for AirPlay (phase=5) |
| 8    | EVT_NOT_REGIST | Not registered (phase=8) |
| 9    | EVT_REG | Registered |
| 12   | EVT_OTG_PLUG_OUT | USB adapter disconnected |
| 13   | EVT_OTG_PLUG_IN | USB adapter connected |
| 14   | EVT_ANDROID_WORKING | Android Auto streaming (phase=6) |
| 15   | EVT_IPHONE_WORKING | CarPlay streaming (phase=6/8/10) |
| 500  | — | Video size changed (triggers resize) |
| 501  | — | Video WH update (via util.x) |

## View Visibility Logic (AutoBoxMirrorView.o)
- Phase 2 or 12: INVISIBLE(4), reset layout to MATCH_PARENT, stop animation
- Phase 3: VISIBLE(0) unless soft-decode (then INVISIBLE), start/stop animation
- Phase 15: Resize if not soft-decode
- Phase 500: Resize always
- If `p.i` (TextureView): always GONE(8) for SurfaceView

---

## File Inventory (120 classes total)

### Root package — Major classes
| Obfuscated | Real Name | Purpose |
|------------|-----------|---------|
| `c0` | VideoSizeManager | Resolution tiers, AA sizing, DPI |
| `p` | GlobalConfig | Static flags, version, screen dims |
| `u` | DeviceConfig | Device detection, platform quirks |
| `b0` | PreferenceManager | SharedPrefs wrapper |
| `i` | AutoBoxMirrorViewCommon | Video scaling state, AA oversizing |
| `j` | AutoBoxMirrorViewUtil | Layout sizing, rounded corners |
| `f` | AnimationController | Fade/visibility animation |
| `m` | AudioManager | Audio routing |
| `r` | RecordManager | Audio recording/mic |
| `t` | ThemeManager | UI themes |
| `y` | WifiManager | WiFi AP management |

### BoxInterface/ — Protocol layer
| Obfuscated | Real Name | Purpose |
|------------|-----------|---------|
| `d` | BoxInterface | USB detect, connect, event dispatch |
| `d.g` | BoxListener | Phase/event callback interface |
| `e` | MultiTouchEvent | Touch coordinate normalization |
| `f` | BoxProtocol | Core USB protocol (2613 lines) |
| `f.k` | StOpenParams | Video negotiation parameters |
| `b` | VideoDecoder | MediaCodec wrapper |
| `a` | AudioCallback | Audio frame dispatch |
| `c` | BoxInfo | Firmware version/capabilities |
| `h` | AudioQueue | Audio frame buffer |
| `j` | UsbDetector | USB device enumeration |

### v0/ — View management
| Obfuscated | Real Name | Purpose |
|------------|-----------|---------|
| `e` | ViewManager | Main coordinator, touch dispatch |
| `a` | AppState | Application state singleton |

### util/ — Utilities
| Obfuscated | Real Name | Purpose |
|------------|-----------|---------|
| `x` | Size | Parcelable WxH |
| `s` | Logger | Logging |
| `c0` | CryptoUtil | MD5/hash |
| `a0` | Debouncer | Throttled action |
| `f` | NetworkUtil | Connectivity checks |
| `z` | AtomicValue | Thread-safe value wrapper |
| `JniTools` | JniTools | Native method bridge |

### q0/ — Connection state
| Obfuscated | Real Name | Purpose |
|------------|-----------|---------|
| `g` | ConnectionState | Phone connection state machine |

---

## Key Preferences (SharedPreferences keys)
| Key | Type | Default | Purpose |
|-----|------|---------|---------|
| `vandroidautoh` | int | 720 | AA tier height (480/720/1080/1440) |
| `ImageScale` | int | 0 | 0=stretch, 1=fit aspect ratio |
| `vmaxwh` | String | "WxH" | Max video resolution |
| `mediaDelay` | int | 300 | Audio sync delay (ms) |
| `IsLeftDrive` | bool | true | LHD=true, RHD=false |
| `UseTextureView` | bool | false | Use TextureView instead of SurfaceView |
| `UseOpenGLRender` | bool | false | Use GL for TextureView rendering |
| `RecordDelay` | int | 0 | Mic recording delay (ms) |
| `BootDelay` | int | 0 | Boot detection delay (s) |
| `CarPlayLogoType` | int | 1 | 1=default, 2=OEM |
| `CarPlayOEMIconName` | String | "" | Custom CarPlay icon filename |
| `WiFiChannel` | int | — | WiFi channel for wireless |
| `BoxVersion` | String | — | Adapter firmware version |
