package cn.manstep.phonemirrorBox.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class CustomImageView extends AppCompatImageView {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1573d;

    public CustomImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1573d = 0;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1573d = getImageAlpha();
            setImageAlpha(150);
        } else if (action == 1) {
            if (motionEvent.getEventTime() - motionEvent.getDownTime() > 1000) {
                performLongClick();
            } else {
                performClick();
            }
            setImageAlpha(this.f1573d);
        } else {
            if (action != 3) {
                return super.onTouchEvent(motionEvent);
            }
            setImageAlpha(this.f1573d);
        }
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }

    @Override // android.view.View
    public boolean performLongClick() {
        return super.performLongClick();
    }
}
