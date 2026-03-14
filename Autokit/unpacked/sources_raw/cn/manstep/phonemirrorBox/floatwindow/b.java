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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b implements View.OnTouchListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WindowManager f1638c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1639d;
    private float e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WindowManager.LayoutParams f1637b = new WindowManager.LayoutParams();
    private final List<View> f = new LinkedList();
    private final Map<View, ViewGroup> g = new ConcurrentHashMap();

    public b(Context context) {
        this.f1638c = (WindowManager) context.getSystemService("window");
    }

    public void a(View view) {
        if (this.f.contains(view)) {
            view.setOnTouchListener(null);
            ViewGroup viewGroup = this.g.get(view);
            if (viewGroup != null) {
                view.setLayoutParams(viewGroup.getLayoutParams());
                this.g.remove(view);
            }
            this.f1638c.removeView(view);
            this.f.remove(view);
            if (viewGroup != null) {
                viewGroup.addView(view);
            }
        }
    }

    public void b(View view, float f, float f2) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1638c.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            this.f1638c.getDefaultDisplay().getMetrics(displayMetrics);
        }
        float f3 = displayMetrics.density;
        c(view, (int) ((f * f3) + 0.5f), (int) ((f2 * f3) + 0.5f));
    }

    public void c(View view, int i, int i2) {
        if (!this.f.contains(view)) {
            this.f.add(view);
        }
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
            this.g.put(view, viewGroup);
        }
        view.setOnTouchListener(this);
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1638c.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            this.f1638c.getDefaultDisplay().getMetrics(displayMetrics);
        }
        int i3 = displayMetrics.widthPixels;
        int i4 = displayMetrics.heightPixels;
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1637b.type = 2038;
        } else {
            this.f1637b.type = 2002;
        }
        WindowManager.LayoutParams layoutParams = this.f1637b;
        layoutParams.format = 1;
        layoutParams.flags = 65832;
        layoutParams.gravity = 8388659;
        layoutParams.width = i;
        layoutParams.height = i2;
        layoutParams.x = (i3 / 2) - (i / 2);
        layoutParams.y = ((i4 / 2) - (i2 / 2)) - 50;
        try {
            this.f1638c.addView(view, layoutParams);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1639d = motionEvent.getX();
            this.e = motionEvent.getY();
            return true;
        }
        if (action != 2) {
            return true;
        }
        float rawX = motionEvent.getRawX();
        float rawY = motionEvent.getRawY();
        WindowManager.LayoutParams layoutParams = this.f1637b;
        layoutParams.x = (int) (rawX - this.f1639d);
        layoutParams.y = (int) (rawY - this.e);
        layoutParams.width = view.getWidth();
        this.f1637b.height = view.getHeight();
        this.f1638c.updateViewLayout(view, this.f1637b);
        return true;
    }
}
