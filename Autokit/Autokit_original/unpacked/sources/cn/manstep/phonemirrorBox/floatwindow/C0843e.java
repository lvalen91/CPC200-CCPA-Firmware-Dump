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
import cn.manstep.phonemirrorBox.p088u0.C0956c;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.floatwindow.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0843e {

    /* JADX INFO: renamed from: k */
    private static volatile C0843e f4949k;

    /* JADX INFO: renamed from: d */
    private C0844f f4953d;

    /* JADX INFO: renamed from: e */
    private ViewOnClickListenerC0841c f4954e;

    /* JADX INFO: renamed from: f */
    private WindowManager.LayoutParams f4955f;

    /* JADX INFO: renamed from: g */
    private WindowManager.LayoutParams f4956g;

    /* JADX INFO: renamed from: h */
    private WindowManager f4957h;

    /* JADX INFO: renamed from: j */
    private WeakReference<Activity> f4959j;

    /* JADX INFO: renamed from: a */
    private final Point f4950a = new Point();

    /* JADX INFO: renamed from: b */
    boolean f4951b = false;

    /* JADX INFO: renamed from: c */
    boolean f4952c = false;

    /* JADX INFO: renamed from: i */
    private boolean f4958i = true;

    private C0843e() {
    }

    /* JADX INFO: renamed from: a */
    private void m6286a(Context context) {
        WindowManager windowManagerM6290h = m6290h(context);
        int width = windowManagerM6290h.getDefaultDisplay().getWidth();
        int height = windowManagerM6290h.getDefaultDisplay().getHeight();
        Point currentPosition = this.f4953d.getCurrentPosition();
        int i = width / 2;
        int i2 = currentPosition.x > i ? 8388613 : 8388611;
        int measuredHeight = this.f4950a.y - (this.f4953d.getMeasuredHeight() / 2);
        ViewOnClickListenerC0841c viewOnClickListenerC0841c = this.f4954e;
        if (viewOnClickListenerC0841c == null || viewOnClickListenerC0841c.getGravity() != i2) {
            ViewOnClickListenerC0841c viewOnClickListenerC0841c2 = new ViewOnClickListenerC0841c(context, i2);
            this.f4954e = viewOnClickListenerC0841c2;
            WindowManager.LayoutParams layoutParams = this.f4956g;
            if (layoutParams == null || layoutParams.x != currentPosition.x) {
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams();
                this.f4956g = layoutParams2;
                layoutParams2.x = this.f4954e.m6284d() ? i - (ViewOnClickListenerC0841c.f4931q / 2) : currentPosition.x;
                if (measuredHeight > 0) {
                    this.f4956g.y = measuredHeight;
                } else {
                    this.f4956g.y = ((height / 2) - (ViewOnClickListenerC0841c.f4932r / 2)) - 50;
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    this.f4956g.type = 2038;
                } else {
                    this.f4956g.type = 2002;
                }
                WindowManager.LayoutParams layoutParams3 = this.f4956g;
                layoutParams3.flags = 262184;
                layoutParams3.format = 1;
                layoutParams3.gravity = 51;
                layoutParams3.width = ViewOnClickListenerC0841c.f4931q;
                layoutParams3.height = ViewOnClickListenerC0841c.f4932r;
                layoutParams3.windowAnimations = this.f4954e.getWindowAnimationStyle();
            } else {
                layoutParams.x = viewOnClickListenerC0841c2.m6284d() ? i - (ViewOnClickListenerC0841c.f4931q / 2) : currentPosition.x;
                if (measuredHeight > 0) {
                    this.f4956g.y = measuredHeight;
                } else {
                    this.f4956g.y = ((height / 2) - (ViewOnClickListenerC0841c.f4932r / 2)) - 50;
                }
            }
        } else {
            this.f4956g.x = this.f4954e.m6284d() ? i - (ViewOnClickListenerC0841c.f4931q / 2) : currentPosition.x;
            if (measuredHeight > 0) {
                this.f4956g.y = measuredHeight;
            } else {
                this.f4956g.y = ((height / 2) - (ViewOnClickListenerC0841c.f4932r / 2)) - 50;
            }
        }
        try {
            if (currentPosition.x > width / 2) {
                this.f4956g.x -= ViewOnClickListenerC0841c.f4931q / 2;
            }
            windowManagerM6290h.addView(this.f4954e, this.f4956g);
            this.f4951b = true;
        } catch (Exception e) {
            C0982s.m7375e("FloatWindowManager,createBigWindow: \n" + Log.getStackTraceString(e));
        }
        this.f4954e.m6282b(this.f4958i);
    }

    /* JADX INFO: renamed from: b */
    private void m6287b(Context context) {
        m6288c(context, context.getResources().getBoolean(2131034128));
    }

    /* JADX INFO: renamed from: c */
    private void m6288c(Context context, boolean z) {
        WindowManager windowManagerM6290h = m6290h(context);
        m6292m(context);
        if (this.f4953d == null) {
            this.f4953d = new C0844f(context);
        }
        WindowManager.LayoutParams layoutParams = this.f4955f;
        if (layoutParams != null) {
            this.f4953d.m6316f(context, layoutParams, z);
        } else {
            WindowManager.LayoutParams layoutParamsM6315e = this.f4953d.m6315e();
            this.f4955f = layoutParamsM6315e;
            this.f4953d.m6316f(context, layoutParamsM6315e, z);
            if (Build.VERSION.SDK_INT >= 26) {
                this.f4955f.type = 2038;
            } else {
                this.f4955f.type = 2002;
            }
            WindowManager.LayoutParams layoutParams2 = this.f4955f;
            layoutParams2.format = 1;
            layoutParams2.flags = 65576;
            layoutParams2.gravity = 51;
            layoutParams2.width = C0844f.f4960v;
            layoutParams2.height = C0844f.f4961w;
        }
        try {
            windowManagerM6290h.addView(this.f4953d, this.f4955f);
            this.f4952c = true;
        } catch (RuntimeException e) {
            C0982s.m7375e("FloatWindowManager,createSmallWindow: \n" + Log.getStackTraceString(e));
        } catch (Exception e2) {
            C0982s.m7375e("FloatWindowManager,createSmallWindow: \n" + Log.getStackTraceString(e2));
        }
        C0982s.m7374d("FloatWindowManager", "createSmallWindow: " + this.f4955f.x + "x" + this.f4955f.y);
        m6307v();
    }

    /* JADX INFO: renamed from: g */
    public static C0843e m6289g() {
        if (f4949k == null) {
            synchronized (C0843e.class) {
                if (f4949k == null) {
                    f4949k = new C0843e();
                }
            }
        }
        return f4949k;
    }

    /* JADX INFO: renamed from: h */
    private WindowManager m6290h(Context context) {
        if (this.f4957h == null) {
            this.f4957h = (WindowManager) context.getSystemService("window");
        }
        return this.f4957h;
    }

    /* JADX INFO: renamed from: l */
    private void m6291l(Context context) {
        if (this.f4954e != null) {
            WindowManager windowManagerM6290h = m6290h(context);
            if (this.f4951b) {
                try {
                    windowManagerM6290h.removeView(this.f4954e);
                    this.f4951b = false;
                } catch (Exception e) {
                    C0982s.m7375e("FloatWindowManager,removeBigWindow: \n" + Log.getStackTraceString(e));
                }
            }
        }
    }

    /* JADX INFO: renamed from: m */
    private void m6292m(Context context) {
        C0844f c0844f = this.f4953d;
        if (c0844f != null) {
            c0844f.m6318j();
            WindowManager windowManagerM6290h = m6290h(context);
            if (this.f4952c) {
                try {
                    windowManagerM6290h.removeView(this.f4953d);
                    this.f4952c = false;
                } catch (Exception e) {
                    C0982s.m7375e("FloatWindowManager,removeSmallWindow: \n" + Log.getStackTraceString(e));
                }
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public Activity m6293d() {
        WeakReference<Activity> weakReference = this.f4959j;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* JADX INFO: renamed from: e */
    public Rect m6294e() {
        Rect rect;
        Activity activityM6293d = m6293d();
        if (activityM6293d != null) {
            View viewFindViewById = activityM6293d.getWindow().getDecorView().findViewById(R.id.content);
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
        return C0956c.m7100h().m7115i(rect) != null ? C0956c.m7100h().m7115i(rect) : rect;
    }

    /* JADX INFO: renamed from: f */
    public ViewOnClickListenerC0841c m6295f() {
        return this.f4954e;
    }

    /* JADX INFO: renamed from: i */
    public boolean m6296i() {
        return this.f4951b || this.f4952c;
    }

    /* JADX INFO: renamed from: j */
    public void m6297j(Context context) {
        m6291l(context);
        m6292m(context);
        this.f4954e = null;
        this.f4953d = null;
        this.f4951b = false;
        this.f4952c = false;
    }

    /* JADX INFO: renamed from: k */
    public void m6298k(Context context) {
        m6297j(context);
        this.f4956g = null;
        this.f4955f = null;
    }

    /* JADX INFO: renamed from: n */
    public void m6299n() {
        C0844f c0844f = this.f4953d;
        if (c0844f != null) {
            c0844f.m6319k();
        }
    }

    /* JADX INFO: renamed from: o */
    public void m6300o(Context context) {
        C0844f c0844f = this.f4953d;
        if (c0844f == null || !c0844f.m6317h()) {
            m6298k(context);
            m6288c(context, context.getResources().getBoolean(2131034129));
        }
    }

    /* JADX INFO: renamed from: p */
    public void m6301p(Context context, boolean z) {
        Point currentPosition = this.f4953d.getCurrentPosition();
        C0982s.m7374d("FloatWindowManager", "smallWindowPos: " + this.f4950a.x + ",point: " + currentPosition.x);
        if (!this.f4953d.m6317h() || this.f4950a.x == currentPosition.x) {
            return;
        }
        m6298k(context);
        m6288c(context, context.getResources().getBoolean(2131034129));
    }

    /* JADX INFO: renamed from: q */
    public void m6302q(Activity activity) {
        this.f4959j = new WeakReference<>(activity);
    }

    /* JADX INFO: renamed from: r */
    public void m6303r(boolean z) {
        this.f4958i = z;
    }

    /* JADX INFO: renamed from: s */
    public void m6304s(Context context) {
        m6292m(context);
        m6286a(context);
    }

    /* JADX INFO: renamed from: t */
    public void m6305t(Context context) {
        if (this.f4952c || this.f4951b) {
            return;
        }
        m6287b(context);
    }

    /* JADX INFO: renamed from: u */
    public void m6306u(Context context) {
        m6291l(context);
        m6287b(context);
    }

    /* JADX INFO: renamed from: v */
    public void m6307v() {
        Point point = this.f4950a;
        WindowManager.LayoutParams layoutParams = this.f4955f;
        point.set(layoutParams.x, layoutParams.y);
    }
}
