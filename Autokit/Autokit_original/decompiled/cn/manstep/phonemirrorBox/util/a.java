package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class a extends ImageView implements View.OnTouchListener {
    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setOnTouchListener(this);
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            view.animate().scaleX(1.5f);
            view.animate().scaleY(1.5f);
            return true;
        }
        if (action != 1 && action != 3) {
            return false;
        }
        view.animate().scaleX(1.0f);
        view.animate().scaleY(1.0f);
        callOnClick();
        return true;
    }
}
