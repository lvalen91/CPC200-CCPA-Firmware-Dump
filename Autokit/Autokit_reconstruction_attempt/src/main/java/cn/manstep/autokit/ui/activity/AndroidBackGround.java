package cn.manstep.autokit.ui.activity;

/**
 * AndroidBackGround.java - Transparent background view for Android mirroring.
 *
 * <p>A simple View that serves as a clickable transparent background behind
 * the Android mirroring controls. Clicking it collapses the assist touch
 * overlay (AnimationController.setExpanded(false)). onTouchEvent returns
 * false to allow touch events to pass through to the mirror surface below.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.AndroidBackGround</p>
 */
public class AndroidBackGround extends android.view.View {
    // Constructor: setClickable(true), setOnClickListener -> collapse assist touch
    // onTouchEvent -> returns false (pass-through)

    public AndroidBackGround(android.content.Context context, android.util.AttributeSet attrs) {
        super(context, attrs);
    }
}
