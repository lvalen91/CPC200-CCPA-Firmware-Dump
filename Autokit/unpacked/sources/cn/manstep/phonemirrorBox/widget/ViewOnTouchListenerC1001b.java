package cn.manstep.phonemirrorBox.widget;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.widget.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnTouchListenerC1001b implements View.OnTouchListener {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.widget.b$a */
    static class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if (action == 0) {
                view.setAlpha(0.5f);
            } else if (action == 1) {
                view.setAlpha(1.0f);
                if (motionEvent.getEventTime() - motionEvent.getDownTime() <= 1000 || !view.performLongClick()) {
                    view.performClick();
                }
            } else {
                if (action != 3) {
                    return false;
                }
                view.setAlpha(1.0f);
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: b */
    public static View m7491b(View view) {
        view.setOnTouchListener(new a());
        return view;
    }

    /* JADX INFO: renamed from: a */
    public View m7492a(View view) {
        view.setOnTouchListener(this);
        return view;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            view.setAlpha(0.5f);
        } else if (action == 1) {
            view.setAlpha(1.0f);
            if (motionEvent.getEventTime() - motionEvent.getDownTime() <= 1000 || !view.performLongClick()) {
                view.performClick();
            }
        } else {
            if (action != 3) {
                return false;
            }
            view.setAlpha(1.0f);
        }
        return true;
    }
}
