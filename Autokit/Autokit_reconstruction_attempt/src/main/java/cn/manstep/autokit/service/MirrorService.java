package cn.manstep.autokit.service;

/**
 * MirrorService.java - IPC service for external mirror control.
 *
 * <p>This service provides an IPC interface for external applications to control
 * the mirroring session. It listens for broadcast intents and forwards
 * ViewManager messages as outgoing broadcast events.</p>
 *
 * <h3>Intent actions:</h3>
 * <pre>
 *   INCOMING: "cn.manstep.phonemirror.MirrorService.INTENT_MSG_IN"
 *     Extra "Action":
 *       "onResume"   -> Set ViewManager visible
 *       "onStop"     -> Set ViewManager not visible
 *       "onDestroy"  -> Stop this service
 *       "OnRestart"  -> Restart mirroring (phases 3, 4) + set visible
 *
 *   OUTGOING: "cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT"
 *     Extra "WPARAM" = 1
 *     Extra "LPARAM" = wParam from ViewManager message
 * </pre>
 *
 * <p>Implements: ViewManager.d (v0.e.d) - message listener</p>
 * <p>Original: cn.manstep.phonemirrorBox.MirrorService</p>
 */
public class MirrorService extends android.app.Service
    /* implements ViewManager.MessageListener */ {
    // onCreate -> registers broadcast receiver, initializes ViewManager
    // onDestroy -> unregisters receiver, detaches ViewManager
}
