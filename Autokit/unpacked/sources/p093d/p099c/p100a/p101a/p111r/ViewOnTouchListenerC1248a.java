package p093d.p099c.p100a.p101a.p111r;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: renamed from: d.c.a.a.r.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnTouchListenerC1248a implements View.OnTouchListener {

    /* JADX INFO: renamed from: b */
    private final Dialog f7800b;

    /* JADX INFO: renamed from: c */
    private final int f7801c;

    /* JADX INFO: renamed from: d */
    private final int f7802d;

    /* JADX INFO: renamed from: e */
    private final int f7803e;

    public ViewOnTouchListenerC1248a(Dialog dialog, Rect rect) {
        this.f7800b = dialog;
        this.f7801c = rect.left;
        this.f7802d = rect.top;
        this.f7803e = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f7801c + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        if (new RectF(left, this.f7802d + viewFindViewById.getTop(), width, viewFindViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i = this.f7803e;
            motionEventObtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f7800b.onTouchEvent(motionEventObtain);
    }
}
