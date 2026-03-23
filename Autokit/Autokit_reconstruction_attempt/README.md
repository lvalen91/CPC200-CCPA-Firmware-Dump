# AutoKit APK — Deobfuscated Source

Restructured, deobfuscated decompilation of the AutoKit APK (`cn.manstep.phonemirrorBox`, version 2025.03.19.1126).

- **256 Java files**, **18,973 lines** across **29 packages**
- Deobfuscated from runtime-dumped DEX (Jiagu-packed, decrypted from process memory)
- Original obfuscated source: `../Autokit/decompiled/`
- Translation dictionary used: `../Autokit/unpacked/TRANSLATION_DICTIONARY.md`

> **Note:** This is a documentation/analysis artifact, not a compilable project. Cross-references between classes may not resolve. Package declarations in some relocated files still reference their original obfuscated paths.

---

## Confidence Levels

Each file is annotated with one of:

| Marker | Meaning |
|--------|---------|
| *(none)* | **Verified** — Translation from dictionary or name was already meaningful |
| `/* UNVERIFIED */` | **Inferred** — Name derived from code analysis (88% of unknowns) |
| `/* UNCERTAIN */` | **Low confidence** — Specific field/method translation is a best guess |

Two translation dictionary entries were found to be **incorrect** during analysis:
- `y.java` was listed as "WifiManager" — actually `StyleableIndex` (auto-generated R$styleable constants)
- `t.java` was listed as "ThemeManager" — actually a view binding helper (setImageResource + setOnLongClickListener)

---

## Package Structure

```
cn.manstep.autokit/
├── audio/                    # Audio routing and recording
│   ├── AudioManager.java         Audio routing defaults
│   ├── AudioRecordDebug.java     Debug audio recording to disk
│   ├── Dtmf.java                 DTMF tone generation (JNI)
│   ├── RecordManager.java        Locale-aware recording sessions
│   └── focus/                # Audio focus management (API 26+)
│       ├── AudioFocusManagerBase.java
│       ├── CallAudioFocusManager.java
│       ├── MediaAudioFocusManager.java
│       ├── MediaSessionClient.java
│       ├── NavAudioFocusManager.java
│       ├── RingAudioFocusManager.java
│       └── VoiceAudioFocusManager.java
│
├── config/                   # App configuration
│   ├── GlobalConfig.java         30+ static flags (was: p.java)
│   ├── DeviceConfig.java         Platform detection & quirks (was: u.java)
│   ├── PreferenceManager.java    SharedPreferences wrapper (was: b0.java)
│   ├── AbstractButtonConfig.java
│   └── SettingsButtonConfig.java
│
├── connection/               # Connection state strategy pattern
│   ├── ConnectionState.java      Interface (was: q0/g.java)
│   ├── AndroidAutoState.java     AA/CarLife mode
│   ├── AndroidMirrorState.java   Screen mirroring
│   ├── CarPlayState.java         Apple CarPlay
│   ├── IPhoneMirrorState.java    iPhone mirroring
│   ├── UnknownState.java         Unrecognized device
│   └── WirelessCarPlayState.java Wireless CarPlay
│
├── input/                    # Touch input handling
│   ├── AssistTouch.java          iOS-like floating button overlay
│   ├── AssistTouchRoundRect.java Rounded rect touch area
│   └── AssistCmd.java            Assist touch command dispatch
│
├── platform/                 # Vehicle platform integrations
│   ├── ecarx/                    Geely/Volvo eCarX SDK
│   │   ├── ECarXUtil.java
│   │   ├── ECarXMusicClient.java
│   │   ├── ECarXMusicIntentListener.java
│   │   ├── ECarXPlaybackInfo.java
│   │   ├── ECarXLog.java
│   │   └── DayNightChangeCallback.java
│   └── vendor/                   Third-party head unit SDKs
│       ├── ThirdPartySdkManager.java   Reflection-based SDK loader
│       ├── ThirdPartySdkBase.java      Base class for vendor adapters
│       ├── ThirdPartySdkCallback.java
│       ├── ZlinkReceiver.java          Zjinnova head unit key commands
│       └── UnknownU0E.java
│
├── protocol/                 # USB protocol layer (core)
│   ├── BoxProtocol.java          Core USB protocol handler (was: f.java)
│   ├── AdapterManager.java       USB connection lifecycle (was: d.java)
│   ├── VideoDecoder.java         MediaCodec H.264 wrapper (was: b.java)
│   ├── AudioCallback.java        Audio frame dispatch (was: a.java)
│   ├── AudioQueue.java           FIFO ring buffer (was: h.java)
│   ├── BoxInfo.java              Firmware info singleton (was: c.java)
│   ├── MultiTouchEvent.java      5-pointer touch serializer (was: e.java)
│   ├── UsbDetector.java          USB VID/PID matching (was: j.java)
│   ├── BoxConnection.java        JNI native USB wrapper
│   ├── WorkModeResolver.java     Mode value resolver (UNVERIFIED)
│   ├── VideoStreamRecorder.java  Debug H.264 recorder (UNVERIFIED)
│   ├── AndroidInterface.java     Android native interface
│   ├── IPhoneMirrorInterface.java
│   ├── CallbackInterface.java
│   └── MessageCallback.java
│
├── scheduling/               # Task scheduling
│   ├── ScheduledTaskRunner.java  Named repeating tasks (was: h0/a.java)
│   └── NamedThreadFactory.java   Thread factory builder (was: h0/b.java)
│
├── service/                  # Android services & receivers
│   ├── AutoStartService.java     Boot-time initialization
│   ├── AutoStartReceiver.java    BOOT_COMPLETED (priority 1000)
│   ├── MirrorService.java        Video/audio mirroring core
│   ├── ModeChangeService.java    Protocol mode switching
│   ├── ForegroundService.java    Notification foreground service
│   ├── FloatWindowService.java   Floating window overlay
│   ├── MediaButtonReceiver.java  Media control buttons
│   ├── ApplicationWeakReceiver.java
│   ├── KeyCodeReceiver.java
│   └── aidl/                     IPC/Binder interfaces
│       ├── IRemoteService.java
│       ├── ICallInfoChangeListener.java
│       ├── IConnectStateChangeListener.java
│       ├── IMusicInfoChangeListener.java
│       └── IVaStateChangeListener.java
│
├── ui/                       # User interface
│   ├── ViewManager.java          Central message dispatcher (was: v0/e.java)
│   ├── AbstractPageController.java
│   ├── AbstractUiLogic.java
│   ├── BroadcastModeDispatcher.java
│   ├── ModeChangeListener.java
│   ├── StateInterface.java
│   ├── activity/
│   │   ├── MainActivity.java         Main entry + USB intent
│   │   ├── Main1Activity.java        Alt USB handler (singleInstance)
│   │   ├── BaseActivity.java         Base activity (was: k.java)
│   │   ├── AnimationController.java  AssistTouch overlay (was: f.java)
│   │   ├── CheckActivity.java
│   │   ├── EmptyActivity.java
│   │   ├── LauncherActivity.java
│   │   ├── AndroidBackGround.java
│   │   ├── BaseActivityRoot.java
│   │   ├── MainUiController.java
│   │   ├── ActivityTracker.java
│   │   └── MainActivityHandler.java
│   ├── adapter/                  List adapters
│   │   ├── SelectableBaseAdapter.java
│   │   ├── AppListAdapter.java
│   │   ├── CheckboxListAdapter.java
│   │   ├── FileItemAdapter.java
│   │   ├── FileFolderAdapter.java
│   │   ├── SettingsItemAdapter.java
│   │   └── StringListAdapter.java
│   ├── customview/
│   │   ├── VideoAdjustPanel.java     Brightness/contrast/saturation
│   │   ├── AdjustSizeView.java
│   │   ├── CustomImageView.java
│   │   ├── CustomProgressBar.java
│   │   └── SelectTextSettingsItem.java
│   ├── databinding/              Auto-generated ViewDataBinding pairs
│   │   ├── *BindingBase.java + *BindingImpl.java (12 pairs)
│   │   ├── BindingClickListener.java
│   │   ├── BindingCheckedChangeListener.java
│   │   ├── BindingLongClickListener.java
│   │   └── DataBindingMapperImpl.java
│   ├── dialog/
│   │   ├── AlertDialogHelper.java
│   │   ├── InputDialog.java
│   │   ├── ProgressDialog.java
│   │   ├── SelectListDialog.java
│   │   ├── FontSizeDialog.java
│   │   ├── AudioTypeSelectDialog.java
│   │   ├── ActivationDialog.java
│   │   ├── BluetoothDeviceDialog.java
│   │   ├── PopupWindowHelper.java
│   │   └── UnknownDialog{D,E,F,K}.java
│   ├── floatwindow/              Floating quick-access ball
│   │   ├── FloatWindowManager.java
│   │   ├── FloatViewDragger.java
│   │   ├── FloatWindowBigView.java
│   │   ├── FloatWindowSmallView.java
│   │   ├── FloatButtonCallback.java
│   │   ├── DefaultFloatButtonCallback.java
│   │   └── QuickBallService.java
│   ├── fragment/
│   │   ├── FirstPage.java
│   │   ├── WaitFragment.java
│   │   ├── AutoBoxMirrorFragment.java
│   │   ├── AndroidMirrorFragment.java
│   │   ├── CarLifeDownload.java
│   │   ├── MainFragment.java
│   │   ├── BaseFragment.java
│   │   ├── SettingsFragment.java
│   │   ├── DebugFragment.java
│   │   ├── DeviceCheckFragment.java
│   │   ├── FileShareFragment.java
│   │   ├── PermissionRequestFragment.java
│   │   ├── AudioDebugFragment.java
│   │   ├── EchoCancellationFragment.java
│   │   ├── InputFragment.java
│   │   ├── LoadingFragment.java
│   │   ├── PrivacyPolicyFragment.java
│   │   ├── FragmentNavigationCallback.java
│   │   └── KeyEventCallback.java
│   ├── model/                    UI data models
│   │   ├── AppItem.java
│   │   ├── CheckableItem.java
│   │   ├── DeviceInfoItem.java
│   │   ├── SettingsMenuItem.java
│   │   └── WifiChannelItem.java
│   ├── presenter/                MVP presenter layer
│   │   ├── MainPresenter.java
│   │   ├── MainViewContract.java
│   │   ├── DashboardDataProvider.java
│   │   └── DashboardDataProviderStub.java
│   ├── settings/
│   │   ├── AdjustSizeActivity.java
│   │   ├── AdvancedSettingsActivity.java
│   │   ├── AutoKitHideSettingsActivity.java
│   │   ├── KeyLearnActivity.java
│   │   └── LanguageSettingsActivity.java
│   └── viewmodel/                MVVM ViewModel layer
│       ├── SettingsViewModel.java
│       ├── AdvancedSettingsViewModel.java
│       ├── AudioSettingsViewModel.java
│       ├── BoxViewModel.java
│       ├── DebugInfoViewModel.java
│       ├── DeviceSettingsViewModel.java
│       ├── DisplaySettingsViewModel.java
│       ├── FirstPageViewModel.java
│       ├── InputDialogViewModel.java
│       ├── MicTypeViewModel.java
│       ├── ContextAwareViewModelBase.java
│       ├── SettingsChangeListener.java
│       └── WirelessSettingsCallback.java
│
├── util/                     # Utilities (43 files)
│   ├── Logger.java               Xlog-backed logging (was: util/s.java)
│   ├── Size.java                 Parcelable WxH (was: util/x.java)
│   ├── CryptoUtil.java           MD5/hash/codec checks (was: util/c0.java)
│   ├── NetworkUtil.java          Connectivity utils (was: util/f.java)
│   ├── AtomicValue.java          Thread-safe wrapper (was: util/z.java)
│   ├── Debouncer.java            Throttled executor (was: util/a0.java)
│   ├── LocationUtil.java         GPS/NMEA listener
│   ├── HttpClient.java           OkHttp API client
│   ├── FileUtil.java             Cache/file I/O
│   ├── ByteBufferPool.java       Pooled byte arrays for streaming
│   ├── ThreeFingerGestureDetector.java
│   ├── QrCodeGenerator.java      ZXing QR code bitmap
│   ├── UpdateChecker.java        OTA update checker
│   ├── CrashHandler.java         Uncaught exception handler
│   ├── ... (43 files total)
│
├── video/                    # Video decode & rendering
│   ├── view/                     Rendering surfaces (3 paths)
│   │   ├── AutoBoxMirrorView.java      SurfaceView (default, lowest latency)
│   │   ├── AutoBoxMirrorTextureView.java TextureView (survives transitions)
│   │   ├── AutoBoxMirrorSoftView.java  GLSurfaceView (OpenH264 fallback, 25fps)
│   │   ├── AndroidH264view.java        Self-contained alt decoder+view
│   │   ├── AndroidJpegView.java        MJPEG viewer
│   │   ├── androidOffscreenView.java   Android off-screen sentinel
│   │   ├── iPhoneOffscreenView.java    iPhone off-screen indicator
│   │   └── iPhoneMirrorNotSupportView.java
│   ├── scaling/                  Resolution & AA oversizing
│   │   ├── VideoSizeManager.java       Tier management (was: c0.java)
│   │   ├── VideoScalingState.java      Scaling state + AA oversizing (was: i.java)
│   │   └── VideoLayoutUtil.java        Layout sizing utils (was: j.java)
│   ├── codec/
│   │   └── OpenH264Decoder.java        JNI bridge to libopenH264decoder.so
│   └── gl/                       OpenGL ES 2.0 post-processing
│       ├── GlShaderBase.java
│       ├── OESTextureShader.java       GLSL saturation/brightness/contrast
│       └── TextureViewRenderer.java    EGL context management
│
└── widget/
    ├── WaveformView.java
    ├── CustomToast.java
    └── TouchFeedbackHelper.java
```

---

## Original → Deobfuscated Mapping (Key Classes)

| Original | Deobfuscated | Package |
|----------|-------------|---------|
| `p.java` | `GlobalConfig.java` | config/ |
| `u.java` | `DeviceConfig.java` | config/ |
| `b0.java` | `PreferenceManager.java` | config/ |
| `c0.java` | `VideoSizeManager.java` | video/scaling/ |
| `i.java` | `VideoScalingState.java` | video/scaling/ |
| `j.java` | `VideoLayoutUtil.java` | video/scaling/ |
| `BoxInterface/f.java` | `BoxProtocol.java` | protocol/ |
| `BoxInterface/d.java` | `AdapterManager.java` | protocol/ |
| `BoxInterface/b.java` | `VideoDecoder.java` | protocol/ |
| `BoxInterface/e.java` | `MultiTouchEvent.java` | protocol/ |
| `BoxInterface/a.java` | `AudioCallback.java` | protocol/ |
| `BoxInterface/h.java` | `AudioQueue.java` | protocol/ |
| `BoxInterface/c.java` | `BoxInfo.java` | protocol/ |
| `BoxInterface/j.java` | `UsbDetector.java` | protocol/ |
| `v0/e.java` | `ViewManager.java` | ui/ |
| `v0/a.java` | `AppState.java` | (root) |
| `q0/g.java` | `ConnectionState.java` | connection/ |
| `q0/a-f.java` | `*State.java` | connection/ |
| `h0/a.java` | `ScheduledTaskRunner.java` | scheduling/ |
| `util/x.java` | `Size.java` | util/ |
| `util/s.java` | `Logger.java` | util/ |
| `f.java` | `AnimationController.java` | ui/activity/ |
| `k.java` | `BaseActivity.java` | ui/activity/ |
| `m.java` | `AudioManager.java` | audio/ |
| `r.java` | `RecordManager.java` | audio/ |

---

## Methodology

1. **Verified translations** applied from `TRANSLATION_DICTIONARY.md` (class, field, and method names for ~50 core classes)
2. **Code analysis** for ~120 unknown files: each was read, analyzed for superclass/interfaces/string literals/method signatures, and assigned a descriptive name
3. **Restructured** from flat obfuscated packages into domain-oriented hierarchy following `carlink_native` conventions
4. **Annotated** with `/* was: 'x' */` inline comments on every renamed element and `/* UNVERIFIED */` on inferred names
5. **Cross-references** updated in comments (e.g., `p.i` annotated as `GlobalConfig.useTextureView`)
