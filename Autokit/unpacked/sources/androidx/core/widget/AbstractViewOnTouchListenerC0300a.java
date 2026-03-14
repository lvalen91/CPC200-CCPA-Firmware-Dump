package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: androidx.core.widget.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractViewOnTouchListenerC0300a implements View.OnTouchListener {

    /* JADX INFO: renamed from: s */
    private static final int f1961s = ViewConfiguration.getTapTimeout();

    /* JADX INFO: renamed from: d */
    final View f1964d;

    /* JADX INFO: renamed from: e */
    private Runnable f1965e;

    /* JADX INFO: renamed from: h */
    private int f1968h;

    /* JADX INFO: renamed from: i */
    private int f1969i;

    /* JADX INFO: renamed from: m */
    private boolean f1973m;

    /* JADX INFO: renamed from: n */
    boolean f1974n;

    /* JADX INFO: renamed from: o */
    boolean f1975o;

    /* JADX INFO: renamed from: p */
    boolean f1976p;

    /* JADX INFO: renamed from: q */
    private boolean f1977q;

    /* JADX INFO: renamed from: r */
    private boolean f1978r;

    /* JADX INFO: renamed from: b */
    final a f1962b = new a();

    /* JADX INFO: renamed from: c */
    private final Interpolator f1963c = new AccelerateInterpolator();

    /* JADX INFO: renamed from: f */
    private float[] f1966f = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: g */
    private float[] f1967g = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: j */
    private float[] f1970j = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: k */
    private float[] f1971k = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO};

    /* JADX INFO: renamed from: l */
    private float[] f1972l = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: androidx.core.widget.a$a */
    private static class a {

        /* JADX INFO: renamed from: a */
        private int f1979a;

        /* JADX INFO: renamed from: b */
        private int f1980b;

        /* JADX INFO: renamed from: c */
        private float f1981c;

        /* JADX INFO: renamed from: d */
        private float f1982d;

        /* JADX INFO: renamed from: j */
        private float f1988j;

        /* JADX INFO: renamed from: k */
        private int f1989k;

        /* JADX INFO: renamed from: e */
        private long f1983e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: i */
        private long f1987i = -1;

        /* JADX INFO: renamed from: f */
        private long f1984f = 0;

        /* JADX INFO: renamed from: g */
        private int f1985g = 0;

        /* JADX INFO: renamed from: h */
        private int f1986h = 0;

        a() {
        }

        /* JADX INFO: renamed from: e */
        private float m2250e(long j) {
            if (j < this.f1983e) {
                return CropImageView.DEFAULT_ASPECT_RATIO;
            }
            long j2 = this.f1987i;
            if (j2 < 0 || j < j2) {
                return AbstractViewOnTouchListenerC0300a.m2229e((j - this.f1983e) / this.f1979a, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f) * 0.5f;
            }
            long j3 = j - j2;
            float f = this.f1988j;
            return (1.0f - f) + (f * AbstractViewOnTouchListenerC0300a.m2229e(j3 / this.f1989k, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f));
        }

        /* JADX INFO: renamed from: g */
        private float m2251g(float f) {
            return ((-4.0f) * f * f) + (f * 4.0f);
        }

        /* JADX INFO: renamed from: a */
        public void m2252a() {
            if (this.f1984f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fM2251g = m2251g(m2250e(jCurrentAnimationTimeMillis));
            long j = jCurrentAnimationTimeMillis - this.f1984f;
            this.f1984f = jCurrentAnimationTimeMillis;
            float f = j * fM2251g;
            this.f1985g = (int) (this.f1981c * f);
            this.f1986h = (int) (f * this.f1982d);
        }

        /* JADX INFO: renamed from: b */
        public int m2253b() {
            return this.f1985g;
        }

        /* JADX INFO: renamed from: c */
        public int m2254c() {
            return this.f1986h;
        }

        /* JADX INFO: renamed from: d */
        public int m2255d() {
            float f = this.f1981c;
            return (int) (f / Math.abs(f));
        }

        /* JADX INFO: renamed from: f */
        public int m2256f() {
            float f = this.f1982d;
            return (int) (f / Math.abs(f));
        }

        /* JADX INFO: renamed from: h */
        public boolean m2257h() {
            return this.f1987i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f1987i + ((long) this.f1989k);
        }

        /* JADX INFO: renamed from: i */
        public void m2258i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1989k = AbstractViewOnTouchListenerC0300a.m2230f((int) (jCurrentAnimationTimeMillis - this.f1983e), 0, this.f1980b);
            this.f1988j = m2250e(jCurrentAnimationTimeMillis);
            this.f1987i = jCurrentAnimationTimeMillis;
        }

        /* JADX INFO: renamed from: j */
        public void m2259j(int i) {
            this.f1980b = i;
        }

        /* JADX INFO: renamed from: k */
        public void m2260k(int i) {
            this.f1979a = i;
        }

        /* JADX INFO: renamed from: l */
        public void m2261l(float f, float f2) {
            this.f1981c = f;
            this.f1982d = f2;
        }

        /* JADX INFO: renamed from: m */
        public void m2262m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f1983e = jCurrentAnimationTimeMillis;
            this.f1987i = -1L;
            this.f1984f = jCurrentAnimationTimeMillis;
            this.f1988j = 0.5f;
            this.f1985g = 0;
            this.f1986h = 0;
        }
    }

    /* JADX INFO: renamed from: androidx.core.widget.a$b */
    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractViewOnTouchListenerC0300a abstractViewOnTouchListenerC0300a = AbstractViewOnTouchListenerC0300a.this;
            if (abstractViewOnTouchListenerC0300a.f1976p) {
                if (abstractViewOnTouchListenerC0300a.f1974n) {
                    abstractViewOnTouchListenerC0300a.f1974n = false;
                    abstractViewOnTouchListenerC0300a.f1962b.m2262m();
                }
                a aVar = AbstractViewOnTouchListenerC0300a.this.f1962b;
                if (aVar.m2257h() || !AbstractViewOnTouchListenerC0300a.this.m2249u()) {
                    AbstractViewOnTouchListenerC0300a.this.f1976p = false;
                    return;
                }
                AbstractViewOnTouchListenerC0300a abstractViewOnTouchListenerC0300a2 = AbstractViewOnTouchListenerC0300a.this;
                if (abstractViewOnTouchListenerC0300a2.f1975o) {
                    abstractViewOnTouchListenerC0300a2.f1975o = false;
                    abstractViewOnTouchListenerC0300a2.m2237c();
                }
                aVar.m2252a();
                AbstractViewOnTouchListenerC0300a.this.mo2238j(aVar.m2253b(), aVar.m2254c());
                C0292v.m2089g0(AbstractViewOnTouchListenerC0300a.this.f1964d, this);
            }
        }
    }

    public AbstractViewOnTouchListenerC0300a(View view) {
        this.f1964d = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float f2 = (int) ((1575.0f * f) + 0.5f);
        m2243o(f2, f2);
        float f3 = (int) ((f * 315.0f) + 0.5f);
        m2244p(f3, f3);
        m2240l(1);
        m2242n(Float.MAX_VALUE, Float.MAX_VALUE);
        m2247s(0.2f, 0.2f);
        m2248t(1.0f, 1.0f);
        m2239k(f1961s);
        m2246r(CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
        m2245q(CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
    }

    /* JADX INFO: renamed from: d */
    private float m2228d(int i, float f, float f2, float f3) {
        float fM2232h = m2232h(this.f1966f[i], f2, this.f1967g[i], f);
        if (fM2232h == CropImageView.DEFAULT_ASPECT_RATIO) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        float f4 = this.f1970j[i];
        float f5 = this.f1971k[i];
        float f6 = this.f1972l[i];
        float f7 = f4 * f3;
        return fM2232h > CropImageView.DEFAULT_ASPECT_RATIO ? m2229e(fM2232h * f7, f5, f6) : -m2229e((-fM2232h) * f7, f5, f6);
    }

    /* JADX INFO: renamed from: e */
    static float m2229e(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX INFO: renamed from: f */
    static int m2230f(int i, int i2, int i3) {
        return i > i3 ? i3 : i < i2 ? i2 : i;
    }

    /* JADX INFO: renamed from: g */
    private float m2231g(float f, float f2) {
        if (f2 == CropImageView.DEFAULT_ASPECT_RATIO) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        int i = this.f1968h;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    return 1.0f - (f / f2);
                }
                if (this.f1976p && this.f1968h == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < CropImageView.DEFAULT_ASPECT_RATIO) {
            return f / (-f2);
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: h */
    private float m2232h(float f, float f2, float f3, float f4) {
        float interpolation;
        float fM2229e = m2229e(f * f2, CropImageView.DEFAULT_ASPECT_RATIO, f3);
        float fM2231g = m2231g(f2 - f4, fM2229e) - m2231g(f4, fM2229e);
        if (fM2231g < CropImageView.DEFAULT_ASPECT_RATIO) {
            interpolation = -this.f1963c.getInterpolation(-fM2231g);
        } else {
            if (fM2231g <= CropImageView.DEFAULT_ASPECT_RATIO) {
                return CropImageView.DEFAULT_ASPECT_RATIO;
            }
            interpolation = this.f1963c.getInterpolation(fM2231g);
        }
        return m2229e(interpolation, -1.0f, 1.0f);
    }

    /* JADX INFO: renamed from: i */
    private void m2233i() {
        if (this.f1974n) {
            this.f1976p = false;
        } else {
            this.f1962b.m2258i();
        }
    }

    /* JADX INFO: renamed from: v */
    private void m2234v() {
        int i;
        if (this.f1965e == null) {
            this.f1965e = new b();
        }
        this.f1976p = true;
        this.f1974n = true;
        if (this.f1973m || (i = this.f1969i) <= 0) {
            this.f1965e.run();
        } else {
            C0292v.m2091h0(this.f1964d, this.f1965e, i);
        }
        this.f1973m = true;
    }

    /* JADX INFO: renamed from: a */
    public abstract boolean mo2235a(int i);

    /* JADX INFO: renamed from: b */
    public abstract boolean mo2236b(int i);

    /* JADX INFO: renamed from: c */
    void m2237c() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0);
        this.f1964d.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    /* JADX INFO: renamed from: j */
    public abstract void mo2238j(int i, int i2);

    /* JADX INFO: renamed from: k */
    public AbstractViewOnTouchListenerC0300a m2239k(int i) {
        this.f1969i = i;
        return this;
    }

    /* JADX INFO: renamed from: l */
    public AbstractViewOnTouchListenerC0300a m2240l(int i) {
        this.f1968h = i;
        return this;
    }

    /* JADX INFO: renamed from: m */
    public AbstractViewOnTouchListenerC0300a m2241m(boolean z) {
        if (this.f1977q && !z) {
            m2233i();
        }
        this.f1977q = z;
        return this;
    }

    /* JADX INFO: renamed from: n */
    public AbstractViewOnTouchListenerC0300a m2242n(float f, float f2) {
        float[] fArr = this.f1967g;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* JADX INFO: renamed from: o */
    public AbstractViewOnTouchListenerC0300a m2243o(float f, float f2) {
        float[] fArr = this.f1972l;
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
        if (!this.f1977q) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                m2233i();
            } else if (actionMasked != 2) {
                if (actionMasked == 3) {
                }
            }
            return this.f1978r && this.f1976p;
        }
        this.f1975o = true;
        this.f1973m = false;
        this.f1962b.m2261l(m2228d(0, motionEvent.getX(), view.getWidth(), this.f1964d.getWidth()), m2228d(1, motionEvent.getY(), view.getHeight(), this.f1964d.getHeight()));
        if (!this.f1976p && m2249u()) {
            m2234v();
        }
        if (this.f1978r) {
            return false;
        }
    }

    /* JADX INFO: renamed from: p */
    public AbstractViewOnTouchListenerC0300a m2244p(float f, float f2) {
        float[] fArr = this.f1971k;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* JADX INFO: renamed from: q */
    public AbstractViewOnTouchListenerC0300a m2245q(int i) {
        this.f1962b.m2259j(i);
        return this;
    }

    /* JADX INFO: renamed from: r */
    public AbstractViewOnTouchListenerC0300a m2246r(int i) {
        this.f1962b.m2260k(i);
        return this;
    }

    /* JADX INFO: renamed from: s */
    public AbstractViewOnTouchListenerC0300a m2247s(float f, float f2) {
        float[] fArr = this.f1966f;
        fArr[0] = f;
        fArr[1] = f2;
        return this;
    }

    /* JADX INFO: renamed from: t */
    public AbstractViewOnTouchListenerC0300a m2248t(float f, float f2) {
        float[] fArr = this.f1970j;
        fArr[0] = f / 1000.0f;
        fArr[1] = f2 / 1000.0f;
        return this;
    }

    /* JADX INFO: renamed from: u */
    boolean m2249u() {
        a aVar = this.f1962b;
        int iM2256f = aVar.m2256f();
        int iM2255d = aVar.m2255d();
        return (iM2256f != 0 && mo2236b(iM2256f)) || (iM2255d != 0 && mo2235a(iM2255d));
    }
}
