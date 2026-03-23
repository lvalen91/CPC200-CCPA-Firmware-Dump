/**
 * ScaleOnTouchImageView.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.a
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * An ImageView that scales up to 1.5x on touch-down and returns to 1.0x
 * on touch-up/cancel, providing a press-feedback animation. Triggers
 * callOnClick() on release.
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

public class ScaleOnTouchImageView /* was: 'util.a' */ extends ImageView implements View.OnTouchListener {

    public ScaleOnTouchImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setOnTouchListener(this);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) { /* ACTION_DOWN */
            view.animate().scaleX(1.5f);
            view.animate().scaleY(1.5f);
            return true;
        }
        if (action != 1 && action != 3) { /* ACTION_UP or ACTION_CANCEL */
            return false;
        }
        view.animate().scaleX(1.0f);
        view.animate().scaleY(1.0f);
        callOnClick();
        return true;
    }
}
