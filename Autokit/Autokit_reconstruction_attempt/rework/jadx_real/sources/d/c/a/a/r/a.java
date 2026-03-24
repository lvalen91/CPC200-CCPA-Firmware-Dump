package d.c.a.a.r;

import android.R;
import android.app.Dialog;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a implements View.OnTouchListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Dialog f2331b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2332c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f2333d;
    private final int e;

    public a(Dialog dialog, Rect rect) {
        this.f2331b = dialog;
        this.f2332c = rect.left;
        this.f2333d = rect.top;
        this.e = ViewConfiguration.get(dialog.getContext()).getScaledWindowTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View viewFindViewById = view.findViewById(R.id.content);
        int left = this.f2332c + viewFindViewById.getLeft();
        int width = viewFindViewById.getWidth() + left;
        if (new RectF(left, this.f2333d + viewFindViewById.getTop(), width, viewFindViewById.getHeight() + r3).contains(motionEvent.getX(), motionEvent.getY())) {
            return false;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        if (motionEvent.getAction() == 1) {
            motionEventObtain.setAction(4);
        }
        if (Build.VERSION.SDK_INT < 28) {
            motionEventObtain.setAction(0);
            int i = this.e;
            motionEventObtain.setLocation((-i) - 1, (-i) - 1);
        }
        view.performClick();
        return this.f2331b.onTouchEvent(motionEventObtain);
    }
}
