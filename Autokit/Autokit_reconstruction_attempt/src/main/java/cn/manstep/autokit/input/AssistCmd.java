package cn.manstep.autokit.input;

/**
 * AssistCmd.java - Individual command buttons in the assist touch overlay.
 *
 * <p>Each AssistCmd instance represents one of four directional command buttons
 * (Back, Home, Quit, Rotate) that appear around the AssistTouchRoundRect
 * when the assist touch panel is expanded.</p>
 *
 * <h3>Commands by view ID:</h3>
 * <pre>
 *   2131296336 -> KEY_BACK (1)   - sends back command
 *   2131296338 -> KEY_HOME (0)   - sends home command
 *   2131296340 -> KEY_QUIT (10)  - sends quit/disconnect command
 *   2131296341 -> KEY_ROTATE (2) - sends rotate command
 * </pre>
 *
 * <h3>Observer messages handled (g interface):</h3>
 * <pre>
 *   MSG_EXPAND (1):  val=1 -> alpha=1 + clickable, val=0 -> alpha=0 + not clickable
 *   MSG_REPOSITION (3): receives int[5] = {x, y, w, h, scale},
 *                       positions each button relative to expanded panel
 *   MSG_VISIBILITY (4): val=1 -> VISIBLE, val=0 -> INVISIBLE
 * </pre>
 *
 * <h3>Button positioning in expanded state:</h3>
 * <pre>
 *   KEY_BACK   -> left-center of expanded rect
 *   KEY_HOME   -> top-center
 *   KEY_QUIT   -> right-center
 *   KEY_ROTATE -> bottom-center
 * </pre>
 *
 * <p>Extends: cn.manstep.phonemirrorBox.util.a (TouchFeedbackView)</p>
 * <p>Original: cn.manstep.phonemirrorBox.AssistCmd</p>
 */
public class AssistCmd extends android.view.View
    /* implements g (AnimationController observer) */ {
    // Click sends ViewManager.J(commandId) for car control
    // Any touch resets the expand timer (f.b(true))
}
