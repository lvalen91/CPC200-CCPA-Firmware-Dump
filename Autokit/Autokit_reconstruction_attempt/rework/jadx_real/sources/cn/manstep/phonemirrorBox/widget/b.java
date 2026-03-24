package cn.manstep.phonemirrorBox.widget;

import android.view.MotionEvent;
import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b implements View.OnTouchListener {

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

    public static View b(View view) {
        view.setOnTouchListener(new a());
        return view;
    }

    public View a(View view) {
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
