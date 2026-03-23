package cn.manstep.autokit.ui.customview;

/**
 * CustomProgressBar.java - Custom horizontal progress bar with rounded corners.
 *
 * <p>A custom ProgressBar that draws a rounded rectangle track and fill.
 * Uses custom colors from XML attributes (CustomProgressBar styleable).
 * The fill animates smoothly by repeatedly calling invalidate().</p>
 *
 * <h3>Custom attributes:</h3>
 * <pre>
 *   attr[0] -> trackColor (default: #FFFFFF)
 *   attr[1] -> fillColor (default: #5A80F1)
 * </pre>
 *
 * <h3>Key methods:</h3>
 * <pre>
 *   setBarMax(int max) -> sets maximum value and resets progress to 0
 *   f()                -> reset() - resets progress to 0
 *   q                  -> maxValue (public field)
 *   r                  -> currentValue (public field)
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.customview.CustomProgressBar</p>
 */
public class CustomProgressBar extends android.widget.ProgressBar {
    public int maxValue;     // was q
    public int currentValue; // was r

    public CustomProgressBar(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
    }
}
