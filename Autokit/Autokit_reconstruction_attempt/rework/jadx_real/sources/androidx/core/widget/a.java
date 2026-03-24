package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.v;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int s = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final View f623d;
    private Runnable e;
    private int h;
    private int i;
    private boolean m;
    boolean n;
    boolean o;
    boolean p;
    private boolean q;
    private boolean r;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final C0029a f621b = new C0029a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Interpolator f622c = new AccelerateInterpolator();
    private float[] f = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};
    private float[] g = {Float.MAX_VALUE, Float.MAX_VALUE};
    private float[] j = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};
    private float[] k = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};
    private float[] l = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    private static class C0029a {
        private int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f624b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f625c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f626d;
        private float j;
        private int k;
        private long e = Long.MIN_VALUE;
        private long i = -1;
        private long f = 0;
        private int g = 0;
        private int h = 0;

        C0029a() {
        }

        private float e(long j) {
            if (j < this.e) {
                return CropImageView.DEFAULT_ASPECT_RATIO;
            }
            long j2 = this.i;
            if (j2 < 0 || j < j2) {
                return a.e((j - this.e) / this.a, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f) * 0.5f;
            }
            long j3 = j - j2;
            float f = this.j;
            return (1.0f - f) + (f * a.e(j3 / this.k, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f));
        }

        private float g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        public void a() {
            if (this.f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j = jCurrentAnimationTimeMillis - this.f;
            this.f = jCurrentAnimationTimeMillis;
            float f = j * fG;
            this.g = (int) (this.f625c * f);
            this.h = (int) (f * this.f626d);
        }

        public int b() {
            return this.g;
        }

        public int c() {
            return this.h;
        }

        public int d() {
            float f = this.f625c;
            return (int) (f / Math.abs(f));
        }

        public int f() {
            float f = this.f626d;
            return (int) (f / Math.abs(f));
        }

        public boolean h() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.k = a.f((int) (jCurrentAnimationTimeMillis - this.e), 0, this.f624b);
            this.j = e(jCurrentAnimationTimeMillis);
            this.i = jCurrentAnimationTimeMillis;
        }

        public void j(int i) {
            this.f624b = i;
        }

        public void k(int i) {
            this.a = i;
        }

        public void l(float f, float f2) {
            this.f625c = f;
            this.f626d = f2;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.e = jCurrentAnimationTimeMillis;
            this.i = -1L;
            this.f = jCurrentAnimationTimeMillis;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }
    }

    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.p) {
                if (aVar.n) {
                    aVar.n = false;
                    aVar.f621b.m();
                }
                C0029a c0029a = a.this.f621b;
                if (c0029a.h() || !a.this.u()) {
                    a.this.p = false;
                    return;
                }
                a aVar2 = a.this;
                if (aVar2.o) {
                    aVar2.o = false;
                    aVar2.c();
                }
                c0029a.a();
                a.this.j(c0029a.b(), c0029a.c());
                v.g0(a.this.f623d, this);
            }
        }
    }

    public a(View view) {
        this.f623d = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = (int) ((1575.0f * f) + 0.5f);
        o(f2, f2);
        float f3 = (int) ((f * 315.0f) + 0.5f);
        p(f3, f3);
        l(1);
        n(Float.MAX_VALUE, Float.MAX_VALUE);
        s(0.2f, 0.2f);
        t(1.0f, 1.0f);
        k(s);
        r(CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
        q(CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
    }

    private float d(int i, float f, float f2, float f3) {
        float fH = h(this.f[i], f2, this.g[i], f);
        if (fH == CropImageView.DEFAULT_ASPECT_RATIO) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        float f4 = this.j[i];
        float f5 = this.k[i];
        float f6 = this.l[i];
        float f7 = f4 * f3;
        return fH > CropImageView.DEFAULT_ASPECT_RATIO ? e(fH * f7, f5, f6) : -e((-fH) * f7, f5, f6);
    }

    static float e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    static int f(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    private float g(float f, float f2) {
        if (f2 == CropImageView.DEFAULT_ASPECT_RATIO) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        int i = this.h;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    return 1.0f - (f / f2);
                }
                if (this.p && this.h == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < CropImageView.DEFAULT_ASPECT_RATIO) {
            return f / (-f2);
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    private float h(float f, float f2, float f3, float f4) {
        float interpolation;
        float fE = e(f * f2, CropImageView.DEFAULT_ASPECT_RATIO, f3);
        float fG = g(f2 - f4, fE) - g(f4, fE);
        if (fG < CropImageView.DEFAULT_ASPECT_RATIO) {
            interpolation = -this.f622c.getInterpolation(-fG);
        } else {
            if (fG <= CropImageView.DEFAULT_ASPECT_RATIO) {
                return CropImageView.DEFAULT_ASPECT_RATIO;
            }
            interpolation = this.f622c.getInterpolation(fG);
        }
        return e(interpolation, -1.0f, 1.0f);
    }

    private void i() {
        if (this.n) {
            this.p = false;
        } else {
            this.f621b.i();
        }
    }

    private void v() {
        int i;
        if (this.e == null) {
            this.e = new b();
        }
        this.p = true;
        this.n = true;
        if (this.m || (i = this.i) <= 0) {
            this.e.run();
        } else {
            v.h0(this.f623d, this.e, i);
        }
        this.m = true;
    }

    public abstract boolean a(int i);

    public abstract boolean b(int i);

    void c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0);
        this.f623d.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    public abstract void j(int i, int i2);

    public a k(int i) {
        this.i = i;
        return this;
    }

    public a l(int i) {
        this.h = i;
        return this;
    }

    public a m(boolean z) {
        if (this.q && !z) {
            i();
        }
        this.q = z;
        return this;
    }

    public a n(float f, float f2) {
        float[] fArr = this.g;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    public a o(float f, float f2) {
        float[] fArr = this.l;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!this.q) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                i();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                }
            }
            return this.r && this.p;
        }
        this.o = true;
        this.m = false;
        this.f621b.l(d(0, motionEvent.getX(), view.getWidth(), this.f623d.getWidth()), d(1, motionEvent.getY(), view.getHeight(), this.f623d.getHeight()));
        if (!this.p && u()) {
            v();
        }
        if (this.r) {
            return false;
        }
    }

    public a p(float f, float f2) {
        float[] fArr = this.k;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    public a q(int i) {
        this.f621b.j(i);
        return this;
    }

    public a r(int i) {
        this.f621b.k(i);
        return this;
    }

    public a s(float f, float f2) {
        float[] fArr = this.f;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    public a t(float f, float f2) {
        float[] fArr = this.j;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    boolean u() {
        C0029a c0029a = this.f621b;
        int iF = c0029a.f();
        int iD = c0029a.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }
}
