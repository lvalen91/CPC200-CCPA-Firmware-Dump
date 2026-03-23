package cn.manstep.phonemirrorBox.floatwindow;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.CountDownTimer;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import c.q.a.a.h;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.j;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f extends LinearLayout {
    public static int v;
    public static int w;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private WindowManager f1646b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WindowManager.LayoutParams f1647c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f1648d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private int j;
    private int k;
    private ImageView l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private Drawable q;
    private Drawable r;
    private boolean s;
    private final CountDownTimer t;
    private final CountDownTimer u;

    class a extends CountDownTimer {
        a(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            f.this.i();
            s.d("FloatWindowSmallView", "onFinish: view.getX()=" + f.this.l.getX() + ",view.getRotation()=" + f.this.l.getRotation());
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    class b extends CountDownTimer {
        b(long j, long j2) {
            super(j, j2);
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (f.this.l != null) {
                f.this.l.setAlpha(0.6f);
                if (f.this.o) {
                    f.this.t.start();
                }
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(long j) {
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.l.setVisibility(0);
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.l.setX(f.this.l.getX() + (f.this.l.getWidth() / 5.0f));
        }
    }

    public f(Context context) {
        super(context);
        this.j = 0;
        this.k = 0;
        this.p = false;
        this.t = new a(1500L, 500L);
        this.u = new b(1500L, 500L);
    }

    private void g(Context context, boolean z) {
        try {
            this.q = h.b(getResources(), 2131230902, null);
        } catch (Error | Exception unused) {
            this.q = androidx.core.content.a.d(context, 2131230902);
        }
        try {
            this.r = h.b(getResources(), 2131230890, null);
        } catch (Error | Exception unused2) {
            this.r = androidx.core.content.a.d(context, 2131230890);
        }
        this.m = context.getResources().getBoolean(2131034127);
        this.o = context.getResources().getBoolean(2131034129);
        this.n = context.getResources().getBoolean(2131034130);
        this.f1646b = (WindowManager) context.getSystemService("window");
        LayoutInflater.from(context).inflate(2131492927, this);
        ImageView imageView = (ImageView) findViewById(2131296785);
        this.l = imageView;
        ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (Build.VERSION.SDK_INT >= 17) {
            this.f1646b.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            this.f1646b.getDefaultDisplay().getMetrics(displayMetrics);
        }
        this.j = displayMetrics.widthPixels;
        this.k = displayMetrics.heightPixels;
        s.d("FloatWindowSmallView", "FloatWindowSmallView: " + layoutParams.width + "x" + layoutParams.height + "," + this.j + " " + displayMetrics.densityDpi);
        int iMin = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
        int iSqrt = (int) Math.sqrt((double) (((float) (iMin * iMin)) * 0.018f));
        if (iSqrt > 0) {
            layoutParams.width = iSqrt;
            layoutParams.height = iSqrt;
        }
        s.d("FloatWindowSmallView", "FloatWindowSmallView: " + layoutParams.width + "x" + layoutParams.height + ",minimize=" + z);
        this.l.setLayoutParams(layoutParams);
        v = layoutParams.width;
        w = layoutParams.height;
        getCurrentPosition();
        if (z) {
            i();
        } else {
            this.l.setImageDrawable(this.q);
            this.u.start();
        }
        j.c().e("FloatWindowShow", 500L, new c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        this.p = true;
        this.l.setAlpha(0.6f);
        this.l.setImageDrawable(this.r);
        if (this.n) {
            if (!this.s) {
                this.l.setRotation(CropImageView.DEFAULT_ASPECT_RATIO);
                ImageView imageView = this.l;
                imageView.setX(-((imageView.getWidth() == 0 ? v : this.l.getWidth()) / 5.0f));
            } else {
                this.l.setRotation(180.0f);
                ImageView imageView2 = this.l;
                imageView2.setX(imageView2.getX() + (this.l.getWidth() / 5.0f));
                if (this.l.getWidth() == 0) {
                    this.l.post(new d());
                }
            }
        }
    }

    private void l() {
        int iJ0 = (cn.manstep.phonemirrorBox.v0.e.C() && cn.manstep.phonemirrorBox.BoxInterface.d.G()) ? 0 : u.z().j0();
        int iK0 = u.z().k0();
        WindowManager.LayoutParams layoutParams = this.f1647c;
        int i = ((int) (this.f1648d - this.h)) - iJ0;
        layoutParams.x = i;
        int i2 = (int) (this.e - this.i);
        layoutParams.y = i2;
        layoutParams.y = i2 - iK0;
        if (i < 0) {
            layoutParams.x = 0;
        }
        WindowManager.LayoutParams layoutParams2 = this.f1647c;
        if (layoutParams2.y < 0) {
            layoutParams2.y = 0;
        }
        this.f1646b.updateViewLayout(this, this.f1647c);
        this.t.cancel();
        this.u.cancel();
        if (this.l.getAlpha() < 1.0f) {
            this.l.setAlpha(1.0f);
            this.l.setImageDrawable(this.q);
        }
    }

    public WindowManager.LayoutParams e() {
        Point currentPosition = getCurrentPosition();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f1647c = layoutParams;
        layoutParams.x = currentPosition.x;
        layoutParams.y = currentPosition.y;
        return layoutParams;
    }

    public void f(Context context, WindowManager.LayoutParams layoutParams, boolean z) {
        this.f1647c = layoutParams;
        g(context, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0082  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Point getCurrentPosition() {
        boolean z;
        int iJ0 = (cn.manstep.phonemirrorBox.v0.e.C() && cn.manstep.phonemirrorBox.BoxInterface.d.G()) ? 0 : u.z().j0();
        boolean z2 = cn.manstep.phonemirrorBox.v0.e.C() && getResources().getInteger(2131361802) == 1;
        boolean z3 = u.z().k() == 1;
        Rect rectE = e.g().e();
        Point point = new Point();
        WindowManager.LayoutParams layoutParams = this.f1647c;
        if (layoutParams == null) {
            z = getResources().getBoolean(2131034131) || z3;
            int i = this.k;
            if (i == 0) {
                i = p.l;
            }
            point.y = (i / 2) - 50;
        } else {
            int i2 = layoutParams.x;
            point.x = i2;
            point.y = layoutParams.y;
            if (rectE == null) {
                int i3 = p.I;
                z = i2 - i3 > (this.j - i3) / 2;
            } else if ((i2 - rectE.left) + iJ0 > rectE.width() / 2) {
            }
        }
        if (rectE != null) {
            if (z) {
                point.x = rectE.right - v;
            } else {
                point.x = rectE.left;
            }
            if (point.y < 0) {
                point.y = (rectE.height() / 2) - 50;
            }
        } else if (z) {
            point.x = this.j;
        } else {
            point.x = p.I;
        }
        if (!z2 && !z3 && !z && getResources().getInteger(2131361802) == 1) {
            point.x = 0;
        }
        if (!z2 && z3 && z) {
            point.x = this.j;
        }
        if ("hozon-EP36-vnd_mars-11(30)".equals(u.z().y()) && point.y == 0) {
            point.y = 30;
        }
        point.x -= iJ0;
        this.s = z;
        return point;
    }

    public boolean h() {
        return this.p;
    }

    public void j() {
        CountDownTimer countDownTimer = this.t;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        CountDownTimer countDownTimer2 = this.u;
        if (countDownTimer2 != null) {
            countDownTimer2.cancel();
        }
    }

    public void k() {
        if (this.f1647c != null) {
            if (Build.VERSION.SDK_INT < 19 || isAttachedToWindow()) {
                Point currentPosition = getCurrentPosition();
                WindowManager.LayoutParams layoutParams = this.f1647c;
                layoutParams.x = currentPosition.x;
                layoutParams.y = currentPosition.y;
                this.f1646b.updateViewLayout(this, layoutParams);
            }
        }
    }

    public void m() {
        if (!this.m) {
            Point currentPosition = getCurrentPosition();
            WindowManager.LayoutParams layoutParams = this.f1647c;
            layoutParams.x = currentPosition.x;
            layoutParams.y = currentPosition.y;
            this.f1646b.updateViewLayout(this, layoutParams);
            s.d("FloatWindowSmallView", "updateViewPositionEnd: C mParams.x=" + this.f1647c.x);
            e.g().v();
        }
        this.u.start();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.h = motionEvent.getX();
            this.i = motionEvent.getY();
            this.f = motionEvent.getRawX();
            this.g = motionEvent.getRawY();
            this.f1648d = motionEvent.getRawX();
            this.e = motionEvent.getRawY();
            if (this.n) {
                float f = this.f1648d;
                int i = this.j;
                if (f > i / 2.0f || this.f1647c.x > i / 2.0f) {
                    this.l.setX(CropImageView.DEFAULT_ASPECT_RATIO);
                } else {
                    this.l.setX(CropImageView.DEFAULT_ASPECT_RATIO);
                }
            }
            this.l.setImageDrawable(this.q);
        } else if (action != 1) {
            if (action == 2) {
                this.f1648d = motionEvent.getRawX();
                this.e = motionEvent.getRawY();
                l();
            }
        } else if (Math.abs(this.f - this.f1648d) >= 10.0f || Math.abs(this.g - this.e) >= 10.0f) {
            m();
        } else {
            e.g().s(getContext());
        }
        return true;
    }
}
