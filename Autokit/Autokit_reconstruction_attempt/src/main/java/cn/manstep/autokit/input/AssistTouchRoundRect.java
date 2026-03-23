package cn.manstep.autokit.input;

/**
 * AssistTouchRoundRect.java - Background overlay for expanded assist touch panel.
 *
 * <p>A View that draws a black rounded rectangle background behind the
 * AssistCmd buttons. When the assist touch is expanded, this view scales
 * to 4x and centers on screen. Tapping it collapses the panel.</p>
 *
 * <h3>Observer messages handled (g interface):</h3>
 * <pre>
 *   MSG_EXPAND (1): val=1 -> expand (alpha=0.7, scale=4x, center)
 *                   val=0 -> collapse (alpha=0, scale=1x, return to position)
 *   MSG_VISIBILITY (4): val=1 -> VISIBLE, val=0 -> INVISIBLE
 * </pre>
 *
 * <h3>Expand animation:</h3>
 * <pre>
 *   - Animates to center of parent FrameLayout
 *   - Scales to 4x size
 *   - Updates AnimationController with expanded bounds for AssistCmd positioning
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.AssistTouchRoundRect</p>
 */
public class AssistTouchRoundRect extends android.view.View
    /* implements g (AnimationController observer) */ {
    // Draws solid black rounded rect (4px corner radius)
    // Click handler: AnimationController.setExpanded(false)
}
