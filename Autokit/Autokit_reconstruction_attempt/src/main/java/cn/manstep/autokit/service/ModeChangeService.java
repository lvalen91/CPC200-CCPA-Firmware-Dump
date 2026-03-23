package cn.manstep.autokit.service;

/**
 * ModeChangeService.java - Service managing phone call and mic state transitions.
 *
 * <p>Bound to MainActivity, this service listens for mode change events
 * (phone calls, Siri/voice assistant, navigation) and manages the
 * foreground/background state of the mirroring UI accordingly.</p>
 *
 * <h3>Choiceway MCU integration:</h3>
 * <p>Listens for "com.szchoiceway.eventcenter.EventUtils.ACTION_MCU_CMD_EVENT"
 * broadcasts. When receiving MCU command [25, 0] and the app is in foreground
 * with box connected, it responds with [25, 1] to acknowledge.</p>
 *
 * <h3>v0.b interface implementation (ModeChangeListener):</h3>
 * <pre>
 *   a()           -> onCallIncoming() - brings app to front if in background
 *   b()           -> onCallRinging() (no-op)
 *   c()           -> onCallStop() - sends back press if was in background
 *   d(String)     -> onModeChanged() (no-op)
 *   e()           -> onMicStart() - delayed check to bring app to front
 *   f()           -> onMicStop() (no-op)
 *   g()           -> onCallStart() - brings app to front, sets backPressed flag
 *   h()-k()       -> Various state callbacks (no-op)
 * </pre>
 *
 * <h3>Binder (c class):</h3>
 * <pre>
 *   a()  -> getService() - returns ModeChangeService from WeakReference
 *   n(boolean) -> setForeground() - tracks if app is in foreground
 *   o(MainActivity) -> setMainActivity() - stores weak reference
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.ModeChangeService</p>
 */
public class ModeChangeService extends android.app.Service
    /* implements v0.b (ModeChangeListener) */ {
    // onCreate -> creates Binder, registers MCU broadcast receiver, registers with AppState
    // onDestroy -> unregisters receiver, unregisters from AppState
}
