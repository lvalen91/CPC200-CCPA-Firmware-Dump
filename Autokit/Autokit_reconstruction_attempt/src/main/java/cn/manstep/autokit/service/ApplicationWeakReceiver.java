package cn.manstep.autokit.service;

/**
 * ApplicationWeakReceiver.java - Broadcast receiver for external wake/sleep commands.
 *
 * <p>Listens for "cn.manstep.phonemirrorBox.AUTO_BOX_WEAK" broadcast action.
 * External applications can send this broadcast to wake up or put the box
 * to sleep.</p>
 *
 * <h3>Intent extras:</h3>
 * <pre>
 *   "cn.manstep.phonemirrorBox.AUTO_BOX_WEAK" (int):
 *     0 -> Sleep: sets keep-screen-on to false, sends box sleep command (O(1,25) + b1())
 *     1 -> Wake: sets keep-screen-on to true
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.ApplicationWeakReceiver</p>
 */
public class ApplicationWeakReceiver extends android.content.BroadcastReceiver {
    // onReceive -> checks action, dispatches wake/sleep based on int extra
}
