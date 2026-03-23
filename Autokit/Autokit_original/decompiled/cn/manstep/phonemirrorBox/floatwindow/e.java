package cn.manstep.phonemirrorBox.floatwindow;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowManager;
import cn.manstep.phonemirrorBox.util.s;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class e {
    private static volatile e k;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f1645d;
    private c e;
    private WindowManager.LayoutParams f;
    private WindowManager.LayoutParams g;
    private WindowManager h;
    private WeakReference<Activity> j;
    private final Point a = new Point();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f1643b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    boolean f1644c = false;
    private boolean i = true;

    private e() {
    }

    private void a(Context context) {
        WindowManager windowManagerH = h(context);
        int width = windowManagerH.getDefaultDisplay().getWidth();
        int height = windowManagerH.getDefaultDisplay().getHeight();
        Point currentPosition = this.f1645d.getCurrentPosition();
        int i = width / 2;
        int i2 = currentPosition.x > i ? 8388613 : 8388611;
        int measuredHeight = this.a.y - (this.f1645d.getMeasuredHeight() / 2);
        c cVar = this.e;
        if (cVar == null || cVar.getGravity() != i2) {
            c cVar2 = new c(context, i2);
            this.e = cVar2;
            WindowManager.LayoutParams layoutParams = this.g;
            if (layoutParams == null || layoutParams.x != currentPosition.x) {
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
                this.g = layoutParams2;
                layoutParams2.x = this.e.d() ? i - (c.q / 2) : currentPosition.x;
                if (measuredHeight > 0) {
                    this.g.y = measuredHeight;
                } else {
                    this.g.y = ((height / 2) - (c.r / 2)) - 50;
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    this.g.type = 2038;
                } else {
                    this.g.type = 2002;
                }
                WindowManager.LayoutParams layoutParams3 = this.g;
                layoutParams3.flags = 262184;
                layoutParams3.format = 1;
                layoutParams3.gravity = 51;
                layoutParams3.width = c.q;
                layoutParams3.height = c.r;
                layoutParams3.windowAnimations = this.e.getWindowAnimationStyle();
            } else {
                layoutParams.x = cVar2.d() ? i - (c.q / 2) : currentPosition.x;
                if (measuredHeight > 0) {
                    this.g.y = measuredHeight;
                } else {
                    this.g.y = ((height / 2) - (c.r / 2)) - 50;
                }
            }
        } else {
            this.g.x = this.e.d() ? i - (c.q / 2) : currentPosition.x;
            if (measuredHeight > 0) {
                this.g.y = measuredHeight;
            } else {
                this.g.y = ((height / 2) - (c.r / 2)) - 50;
            }
        }
        try {
            if (currentPosition.x > width / 2) {
                this.g.x -= c.q / 2;
            }
            windowManagerH.addView(this.e, this.g);
            this.f1643b = true;
        } catch (Exception e) {
            s.e("FloatWindowManager,createBigWindow: \n" + Log.getStackTraceString(e));
        }
        this.e.b(this.i);
    }

    private void b(Context context) {
        c(context, context.getResources().getBoolean(2131034128));
    }

    private void c(Context context, boolean z) {
        WindowManager windowManagerH = h(context);
        m(context);
        if (this.f1645d == null) {
            this.f1645d = new f(context);
        }
        WindowManager.LayoutParams layoutParams = this.f;
        if (layoutParams != null) {
            this.f1645d.f(context, layoutParams, z);
        } else {
            WindowManager.LayoutParams layoutParamsE = this.f1645d.e();
            this.f = layoutParamsE;
            this.f1645d.f(context, layoutParamsE, z);
            if (Build.VERSION.SDK_INT >= 26) {
                this.f.type = 2038;
            } else {
                this.f.type = 2002;
            }
            WindowManager.LayoutParams layoutParams2 = this.f;
            layoutParams2.format = 1;
            layoutParams2.flags = 65576;
            layoutParams2.gravity = 51;
            layoutParams2.width = f.v;
            layoutParams2.height = f.w;
        }
        try {
            windowManagerH.addView(this.f1645d, this.f);
            this.f1644c = true;
        } catch (RuntimeException e) {
            s.e("FloatWindowManager,createSmallWindow: \n" + Log.getStackTraceString(e));
        } catch (Exception e2) {
            s.e("FloatWindowManager,createSmallWindow: \n" + Log.getStackTraceString(e2));
        }
        s.d("FloatWindowManager", "createSmallWindow: " + this.f.x + "x" + this.f.y);
        v();
    }

    public static e g() {
        if (k == null) {
            synchronized (e.class) {
                if (k == null) {
                    k = new e();
                }
            }
        }
        return k;
    }

    private WindowManager h(Context context) {
        if (this.h == null) {
            this.h = (WindowManager) context.getSystemService("window");
        }
        return this.h;
    }

    private void l(Context context) {
        if (this.e != null) {
            WindowManager windowManagerH = h(context);
            if (this.f1643b) {
                try {
                    windowManagerH.removeView(this.e);
                    this.f1643b = false;
                } catch (Exception e) {
                    s.e("FloatWindowManager,removeBigWindow: \n" + Log.getStackTraceString(e));
                }
            }
        }
    }

    private void m(Context context) {
        f fVar = this.f1645d;
        if (fVar != null) {
            fVar.j();
            WindowManager windowManagerH = h(context);
            if (this.f1644c) {
                try {
                    windowManagerH.removeView(this.f1645d);
                    this.f1644c = false;
                } catch (Exception e) {
                    s.e("FloatWindowManager,removeSmallWindow: \n" + Log.getStackTraceString(e));
                }
            }
        }
    }

    public Activity d() {
        WeakReference<Activity> weakReference = this.j;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public Rect e() {
        Rect rect;
        Activity activityD = d();
        if (activityD != null) {
            View viewFindViewById = activityD.getWindow().getDecorView().findViewById(R.id.content);
            int[] iArr = new int[2];
            viewFindViewById.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            rect = new Rect(0, 0, 0, 0);
            rect.left = i;
            rect.top = i2;
            rect.right = i + viewFindViewById.getWidth();
            rect.bottom = i2 + viewFindViewById.getHeight();
        } else {
            rect = null;
        }
        return cn.manstep.phonemirrorBox.u0.c.h().i(rect) != null ? cn.manstep.phonemirrorBox.u0.c.h().i(rect) : rect;
    }

    public c f() {
        return this.e;
    }

    public boolean i() {
        return this.f1643b || this.f1644c;
    }

    public void j(Context context) {
        l(context);
        m(context);
        this.e = null;
        this.f1645d = null;
        this.f1643b = false;
        this.f1644c = false;
    }

    public void k(Context context) {
        j(context);
        this.g = null;
        this.f = null;
    }

    public void n() {
        f fVar = this.f1645d;
        if (fVar != null) {
            fVar.k();
        }
    }

    public void o(Context context) {
        f fVar = this.f1645d;
        if (fVar == null || !fVar.h()) {
            k(context);
            c(context, context.getResources().getBoolean(2131034129));
        }
    }

    public void p(Context context, boolean z) {
        Point currentPosition = this.f1645d.getCurrentPosition();
        s.d("FloatWindowManager", "smallWindowPos: " + this.a.x + ",point: " + currentPosition.x);
        if (!this.f1645d.h() || this.a.x == currentPosition.x) {
            return;
        }
        k(context);
        c(context, context.getResources().getBoolean(2131034129));
    }

    public void q(Activity activity) {
        this.j = new WeakReference<>(activity);
    }

    public void r(boolean z) {
        this.i = z;
    }

    public void s(Context context) {
        m(context);
        a(context);
    }

    public void t(Context context) {
        if (this.f1644c || this.f1643b) {
            return;
        }
        b(context);
    }

    public void u(Context context) {
        l(context);
        b(context);
    }

    public void v() {
        Point point = this.a;
        WindowManager.LayoutParams layoutParams = this.f;
        point.set(layoutParams.x, layoutParams.y);
    }
}
