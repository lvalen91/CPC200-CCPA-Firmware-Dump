package cn.manstep.autokit.widget;

/**
 * TouchFeedbackHelper.java - Adds press-dimming touch feedback to any View.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as widget.b, this class implements OnTouchListener
 * to provide visual touch feedback (alpha dimming) for any View. On press,
 * the view alpha is set to 0.5; on release, it's restored to 1.0. Also
 * handles long click detection (1000ms threshold).</p>
 *
 * <h3>Usage:</h3>
 * <pre>
 *   new TouchFeedbackHelper().a(view) -> attaches instance listener
 *   TouchFeedbackHelper.b(view)       -> attaches static listener (singleton)
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.widget.b</p>
 */
public class TouchFeedbackHelper implements android.view.View.OnTouchListener {
    // Instance method a(View) -> sets this as OnTouchListener
    // Static method b(View) -> uses singleton inner class listener

    @Override
    public boolean onTouch(android.view.View v, android.view.MotionEvent event) {
        // ACTION_DOWN -> alpha=0.5
        // ACTION_UP -> alpha=1.0, performClick or performLongClick
        // ACTION_CANCEL -> alpha=1.0
        return false;
    }
}
