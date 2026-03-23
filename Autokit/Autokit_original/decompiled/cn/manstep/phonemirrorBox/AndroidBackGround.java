package cn.manstep.phonemirrorBox;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class AndroidBackGround extends View {

    class a implements View.OnClickListener {
        a(AndroidBackGround androidBackGround) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            f.b(false);
        }
    }

    public AndroidBackGround(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setClickable(true);
        setOnClickListener(new a(this));
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
