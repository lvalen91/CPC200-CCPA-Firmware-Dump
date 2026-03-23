package cn.manstep.autokit.ui.customview;

/**
 * CustomImageView.java - ImageView with press-dimming touch feedback.
 *
 * <p>Extends AppCompatImageView to add visual touch feedback: when pressed
 * (ACTION_DOWN), the image alpha is reduced to 150/255. On release (ACTION_UP),
 * the original alpha is restored and either a click or long-click is performed
 * based on press duration (threshold: 1000ms).</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.customview.CustomImageView</p>
 */
public class CustomImageView extends androidx.appcompat.widget.AppCompatImageView {
    // private int originalAlpha; // was f1573d
    // onTouchEvent: ACTION_DOWN -> dim to 150, ACTION_UP -> restore, ACTION_CANCEL -> restore
    // Long click threshold: 1000ms (eventTime - downTime)

    public CustomImageView(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
    }
}
