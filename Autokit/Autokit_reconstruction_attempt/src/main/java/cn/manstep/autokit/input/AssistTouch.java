package cn.manstep.autokit.input;

/**
 * AssistTouch.java - Draggable floating assist touch button (like iOS AssistiveTouch).
 *
 * <p>An ImageView that can be dragged around the screen and tapped to expand
 * the AssistTouchRoundRect + AssistCmd overlay. Automatically snaps to the
 * nearest screen edge after dragging and fades to 50% alpha after 5 seconds
 * of inactivity.</p>
 *
 * <h3>Behavior:</h3>
 * <ul>
 *   <li>Tap: expands the command overlay (AnimationController.setExpanded(true))</li>
 *   <li>Drag: moves freely, snaps to left/right edge on release</li>
 *   <li>Auto-fade: 50% alpha after 5 seconds idle</li>
 *   <li>Constrained to parent FrameLayout bounds</li>
 * </ul>
 *
 * <h3>Observer messages handled (g interface):</h3>
 * <pre>
 *   MSG_EXPAND (1):  val=1 -> hide (alpha=0), val=0 -> show (alpha=1)
 *   MSG_GET_POSITION (2): reports current position via Point object
 *   MSG_VISIBILITY (4): val=1 -> VISIBLE, val=0 -> INVISIBLE; also resets position
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.AssistTouch</p>
 */
public class AssistTouch extends android.widget.ImageView
    /* implements g (AnimationController observer) */ {
    // Registered with AnimationController in constructor
    // Touch: 5px threshold distinguishes tap from drag
    // Edge snap: left if x < parent.width/2, else right
}
