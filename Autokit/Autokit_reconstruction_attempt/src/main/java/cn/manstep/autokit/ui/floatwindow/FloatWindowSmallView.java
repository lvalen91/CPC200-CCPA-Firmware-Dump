package cn.manstep.autokit.ui.floatwindow;

/**
 * FloatWindowSmallView.java - The small draggable floating ball view.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as floatwindow.f, this LinearLayout creates the
 * small circular floating ball that can be dragged around the screen.
 * Tapping opens the big window; dragging repositions it.</p>
 *
 * <h3>Features:</h3>
 * <ul>
 *   <li>Auto-snap to screen edge after drag (configurable)</li>
 *   <li>Auto-minimize after 1.5s idle (hides partially off-screen)</li>
 *   <li>Auto-fade to 60% alpha after 1.5s without interaction</li>
 *   <li>Size calculated as sqrt(minDimension^2 * 0.018) pixels</li>
 *   <li>Position saved/restored via FloatWindowManager</li>
 * </ul>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   e()  -> getInitialLayoutParams()
 *   f(ctx, params, minimize) -> initialize() - sets up drawable, size, position
 *   getCurrentPosition() -> calculates snapped position based on screen half
 *   h()  -> isMinimized()
 *   i()  -> minimize() - partial off-screen with rotated icon
 *   k()  -> updatePosition() - reposition on screen change
 *   l()  -> updateViewPosition() - during drag
 *   m()  -> updateViewPositionEnd() - after drag, snap to edge
 * </pre>
 *
 * <h3>Drawables:</h3>
 * <pre>
 *   q -> normalDrawable (2131230902 - ball icon)
 *   r -> minimizedDrawable (2131230890 - small dot icon)
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.floatwindow.f</p>
 */
public class FloatWindowSmallView extends android.widget.LinearLayout {
    public static int ballWidth;   // was v
    public static int ballHeight;  // was w
    // onTouchEvent -> handles drag and tap detection
}
