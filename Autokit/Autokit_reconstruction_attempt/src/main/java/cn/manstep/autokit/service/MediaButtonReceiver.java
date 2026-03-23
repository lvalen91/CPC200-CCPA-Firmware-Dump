package cn.manstep.autokit.service;

/**
 * MediaButtonReceiver.java - Broadcast receiver for hardware media button events.
 *
 * <p>Handles ACTION_MEDIA_BUTTON and "hy.intent.action.MEDIA_BUTTON" intents
 * from steering wheel controls, Bluetooth headsets, etc. Maps physical key codes
 * to AutoKit car control commands via the key mapping database.</p>
 *
 * <h3>Key processing flow:</h3>
 * <ol>
 *   <li>Extract KeyEvent from intent extra</li>
 *   <li>On ACTION_DOWN: track repeat count for long press detection</li>
 *   <li>On ACTION_UP: look up command mapping for the keyCode</li>
 *   <li>If in key learn mode: forward to KeyLearnActivity callback</li>
 *   <li>If in normal mode: send car control command via ViewManager</li>
 * </ol>
 *
 * <h3>Long press detection:</h3>
 * <pre>
 *   repeatCount > 0 on ACTION_DOWN -> isLongPress = true
 *   Separate mappings for short press (b0.f()) and long press (b0.g())
 * </pre>
 *
 * <h3>Singleton callback holder (b class):</h3>
 * <pre>
 *   a() -> getInstance()
 *   b(keyCode, isLongPress) -> notifyKeyCode()
 *   c(listener) -> setListener()
 * </pre>
 *
 * <h3>Listener interface (a):</h3>
 * <pre>
 *   E(int keyCode, boolean isLongPress) -> onKeyCodeReceived()
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.MediaButtonReceiver</p>
 */
public class MediaButtonReceiver extends android.content.BroadcastReceiver {
    // static boolean isLongPress; // was 'a'
    // onReceive -> processes MEDIA_BUTTON intent
    // a(Intent, String) -> logIntentExtras() - debug helper
}
