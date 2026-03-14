package cn.manstep.phonemirrorBox.floatwindow;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ViewOnTouchListenerC0840b implements View.OnTouchListener {

    /* JADX INFO: renamed from: c */
    private final WindowManager f4926c;

    /* JADX INFO: renamed from: d */
    private float f4927d;

    /* JADX INFO: renamed from: e */
    private float f4928e;

    /* JADX INFO: renamed from: b */
    private final WindowManager.LayoutParams f4925b = new WindowManager.LayoutParams();

    /* JADX INFO: renamed from: f */
    private final List<View> f4929f = new LinkedList();

    /* JADX INFO: renamed from: g */
    private final Map<View, ViewGroup> f4930g = new ConcurrentHashMap();

    public ViewOnTouchListenerC0840b(Context context) {
        this.f4926c = (WindowManager) context.getSystemService("window");
    }

    /* JADX INFO: renamed from: a */
    public void m6276a(View view) {
        if (this.f4929f.contains(view)) {
            view.setOnTouchListener(null);
            ViewGroup viewGroup = this.f4930g.get(view);
            if (viewGroup != null) {
                view.setLayoutParams(viewGroup.getLayoutParams());
                this.f4930g.remove(view);
            }
            this.f4926c.removeView(view);
            this.f4929f.remove(view);
            if (viewGroup != null) {
                viewGroup.addView(view);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public void m6277b(View view, float f, float f2) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4926c.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            this.f4926c.getDefaultDisplay().getMetrics(displayMetrics);
        }
        float f3 = displayMetrics.density;
        m6278c(view, (int) ((f * f3) + 0.5f), (int) ((f2 * f3) + 0.5f));
    }

    /* JADX INFO: renamed from: c */
    public void m6278c(View view, int i, int i2) {
        if (!this.f4929f.contains(view)) {
            this.f4929f.add(view);
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
            this.f4930g.put(view, viewGroup);
        }
        view.setOnTouchListener(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            this.f4926c.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            this.f4926c.getDefaultDisplay().getMetrics(displayMetrics);
        }
        int i3 = displayMetrics.widthPixels;
        int i4 = displayMetrics.heightPixels;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f4925b.type = 2038;
        } else {
            this.f4925b.type = 2002;
        }
        WindowManager.LayoutParams layoutParams = this.f4925b;
        layoutParams.format = 1;
        layoutParams.flags = 65832;
        layoutParams.gravity = 8388659;
        layoutParams.width = i;
        layoutParams.height = i2;
        layoutParams.x = (i3 / 2) - (i / 2);
        layoutParams.y = ((i4 / 2) - (i2 / 2)) - 50;
        try {
            this.f4926c.addView(view, layoutParams);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f4927d = motionEvent.getX();
            this.f4928e = motionEvent.getY();
            return true;
        }
        if (action != 2) {
            return true;
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        WindowManager.LayoutParams layoutParams = this.f4925b;
        layoutParams.x = (int) (rawX - this.f4927d);
        layoutParams.y = (int) (rawY - this.f4928e);
        layoutParams.width = view.getWidth();
        this.f4925b.height = view.getHeight();
        this.f4926c.updateViewLayout(view, this.f4925b);
        return true;
    }
}
