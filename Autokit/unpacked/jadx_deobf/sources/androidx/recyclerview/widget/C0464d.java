package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.C0292v;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: androidx.recyclerview.widget.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0464d extends RecyclerView.AbstractC0441m implements RecyclerView.InterfaceC0446r {

    /* JADX INFO: renamed from: D */
    private static final int[] f2953D = {R.attr.state_pressed};

    /* JADX INFO: renamed from: E */
    private static final int[] f2954E = new int[0];

    /* JADX INFO: renamed from: a */
    private final int f2958a;

    /* JADX INFO: renamed from: b */
    private final int f2959b;

    /* JADX INFO: renamed from: c */
    final StateListDrawable f2960c;

    /* JADX INFO: renamed from: d */
    final Drawable f2961d;

    /* JADX INFO: renamed from: e */
    private final int f2962e;

    /* JADX INFO: renamed from: f */
    private final int f2963f;

    /* JADX INFO: renamed from: g */
    private final StateListDrawable f2964g;

    /* JADX INFO: renamed from: h */
    private final Drawable f2965h;

    /* JADX INFO: renamed from: i */
    private final int f2966i;

    /* JADX INFO: renamed from: j */
    private final int f2967j;

    /* JADX INFO: renamed from: k */
    int f2968k;

    /* JADX INFO: renamed from: l */
    int f2969l;

    /* JADX INFO: renamed from: m */
    float f2970m;

    /* JADX INFO: renamed from: n */
    int f2971n;

    /* JADX INFO: renamed from: o */
    int f2972o;

    /* JADX INFO: renamed from: p */
    float f2973p;

    /* JADX INFO: renamed from: s */
    private RecyclerView f2976s;

    /* JADX INFO: renamed from: q */
    private int f2974q = 0;

    /* JADX INFO: renamed from: r */
    private int f2975r = 0;

    /* JADX INFO: renamed from: t */
    private boolean f2977t = false;

    /* JADX INFO: renamed from: u */
    private boolean f2978u = false;

    /* JADX INFO: renamed from: v */
    private int f2979v = 0;

    /* JADX INFO: renamed from: w */
    private int f2980w = 0;

    /* JADX INFO: renamed from: x */
    private final int[] f2981x = new int[2];

    /* JADX INFO: renamed from: y */
    private final int[] f2982y = new int[2];

    /* JADX INFO: renamed from: z */
    final ValueAnimator f2983z = ValueAnimator.ofFloat(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);

    /* JADX INFO: renamed from: A */
    int f2955A = 0;

    /* JADX INFO: renamed from: B */
    private final Runnable f2956B = new a();

    /* JADX INFO: renamed from: C */
    private final RecyclerView.AbstractC0447s f2957C = new b();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.d$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0464d.this.m3856q(CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.d$b */
    class b extends RecyclerView.AbstractC0447s {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0447s
        /* JADX INFO: renamed from: b */
        public void mo3581b(RecyclerView recyclerView, int i, int i2) {
            C0464d.this.m3854B(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.d$c */
    private class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        private boolean f2986a = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f2986a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f2986a) {
                this.f2986a = false;
                return;
            }
            if (((Float) C0464d.this.f2983z.getAnimatedValue()).floatValue() == CropImageView.DEFAULT_ASPECT_RATIO) {
                C0464d c0464d = C0464d.this;
                c0464d.f2955A = 0;
                c0464d.m3860y(0);
            } else {
                C0464d c0464d2 = C0464d.this;
                c0464d2.f2955A = 2;
                c0464d2.m3859v();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.d$d */
    private class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            C0464d.this.f2960c.setAlpha(iFloatValue);
            C0464d.this.f2961d.setAlpha(iFloatValue);
            C0464d.this.m3859v();
        }
    }

    C0464d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f2960c = stateListDrawable;
        this.f2961d = drawable;
        this.f2964g = stateListDrawable2;
        this.f2965h = drawable2;
        this.f2962e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f2963f = Math.max(i, drawable.getIntrinsicWidth());
        this.f2966i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.f2967j = Math.max(i, drawable2.getIntrinsicWidth());
        this.f2958a = i2;
        this.f2959b = i3;
        this.f2960c.setAlpha(255);
        this.f2961d.setAlpha(255);
        this.f2983z.addListener(new c());
        this.f2983z.addUpdateListener(new d());
        m3855j(recyclerView);
    }

    /* JADX INFO: renamed from: C */
    private void m3841C(float f) {
        int[] iArrM3847p = m3847p();
        float fMax = Math.max(iArrM3847p[0], Math.min(iArrM3847p[1], f));
        if (Math.abs(this.f2969l - fMax) < 2.0f) {
            return;
        }
        int iM3851x = m3851x(this.f2970m, fMax, iArrM3847p, this.f2976s.computeVerticalScrollRange(), this.f2976s.computeVerticalScrollOffset(), this.f2975r);
        if (iM3851x != 0) {
            this.f2976s.scrollBy(0, iM3851x);
        }
        this.f2970m = fMax;
    }

    /* JADX INFO: renamed from: k */
    private void m3842k() {
        this.f2976s.removeCallbacks(this.f2956B);
    }

    /* JADX INFO: renamed from: l */
    private void m3843l() {
        this.f2976s.m3279V0(this);
        this.f2976s.m3280W0(this);
        this.f2976s.m3282X0(this.f2957C);
        m3842k();
    }

    /* JADX INFO: renamed from: m */
    private void m3844m(Canvas canvas) {
        int i = this.f2975r;
        int i2 = this.f2966i;
        int i3 = this.f2972o;
        int i4 = this.f2971n;
        this.f2964g.setBounds(0, 0, i4, i2);
        this.f2965h.setBounds(0, 0, this.f2974q, this.f2967j);
        canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, i - i2);
        this.f2965h.draw(canvas);
        canvas.translate(i3 - (i4 / 2), CropImageView.DEFAULT_ASPECT_RATIO);
        this.f2964g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    /* JADX INFO: renamed from: n */
    private void m3845n(Canvas canvas) {
        int i = this.f2974q;
        int i2 = this.f2962e;
        int i3 = i - i2;
        int i4 = this.f2969l;
        int i5 = this.f2968k;
        int i6 = i4 - (i5 / 2);
        this.f2960c.setBounds(0, 0, i2, i5);
        this.f2961d.setBounds(0, 0, this.f2963f, this.f2975r);
        if (!m3849s()) {
            canvas.translate(i3, CropImageView.DEFAULT_ASPECT_RATIO);
            this.f2961d.draw(canvas);
            canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, i6);
            this.f2960c.draw(canvas);
            canvas.translate(-i3, -i6);
            return;
        }
        this.f2961d.draw(canvas);
        canvas.translate(this.f2962e, i6);
        canvas.scale(-1.0f, 1.0f);
        this.f2960c.draw(canvas);
        canvas.scale(1.0f, 1.0f);
        canvas.translate(-this.f2962e, -i6);
    }

    /* JADX INFO: renamed from: o */
    private int[] m3846o() {
        int[] iArr = this.f2982y;
        int i = this.f2959b;
        iArr[0] = i;
        iArr[1] = this.f2974q - i;
        return iArr;
    }

    /* JADX INFO: renamed from: p */
    private int[] m3847p() {
        int[] iArr = this.f2981x;
        int i = this.f2959b;
        iArr[0] = i;
        iArr[1] = this.f2975r - i;
        return iArr;
    }

    /* JADX INFO: renamed from: r */
    private void m3848r(float f) {
        int[] iArrM3846o = m3846o();
        float fMax = Math.max(iArrM3846o[0], Math.min(iArrM3846o[1], f));
        if (Math.abs(this.f2972o - fMax) < 2.0f) {
            return;
        }
        int iM3851x = m3851x(this.f2973p, fMax, iArrM3846o, this.f2976s.computeHorizontalScrollRange(), this.f2976s.computeHorizontalScrollOffset(), this.f2974q);
        if (iM3851x != 0) {
            this.f2976s.scrollBy(iM3851x, 0);
        }
        this.f2973p = fMax;
    }

    /* JADX INFO: renamed from: s */
    private boolean m3849s() {
        return C0292v.m2046C(this.f2976s) == 1;
    }

    /* JADX INFO: renamed from: w */
    private void m3850w(int i) {
        m3842k();
        this.f2976s.postDelayed(this.f2956B, i);
    }

    /* JADX INFO: renamed from: x */
    private int m3851x(float f, float f2, int[] iArr, int i, int i2, int i3) {
        int i4 = iArr[1] - iArr[0];
        if (i4 == 0) {
            return 0;
        }
        int i5 = i - i3;
        int i6 = (int) (((f2 - f) / i4) * i5);
        int i7 = i2 + i6;
        if (i7 >= i5 || i7 < 0) {
            return 0;
        }
        return i6;
    }

    /* JADX INFO: renamed from: z */
    private void m3852z() {
        this.f2976s.m3296h(this);
        this.f2976s.m3299j(this);
        this.f2976s.m3302k(this.f2957C);
    }

    /* JADX INFO: renamed from: A */
    public void m3853A() {
        int i = this.f2955A;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.f2983z.cancel();
            }
        }
        this.f2955A = 1;
        ValueAnimator valueAnimator = this.f2983z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f2983z.setDuration(500L);
        this.f2983z.setStartDelay(0L);
        this.f2983z.start();
    }

    /* JADX INFO: renamed from: B */
    void m3854B(int i, int i2) {
        int iComputeVerticalScrollRange = this.f2976s.computeVerticalScrollRange();
        int i3 = this.f2975r;
        this.f2977t = iComputeVerticalScrollRange - i3 > 0 && i3 >= this.f2958a;
        int iComputeHorizontalScrollRange = this.f2976s.computeHorizontalScrollRange();
        int i4 = this.f2974q;
        boolean z = iComputeHorizontalScrollRange - i4 > 0 && i4 >= this.f2958a;
        this.f2978u = z;
        if (!this.f2977t && !z) {
            if (this.f2979v != 0) {
                m3860y(0);
                return;
            }
            return;
        }
        if (this.f2977t) {
            float f = i3;
            this.f2969l = (int) ((f * (i2 + (f / 2.0f))) / iComputeVerticalScrollRange);
            this.f2968k = Math.min(i3, (i3 * i3) / iComputeVerticalScrollRange);
        }
        if (this.f2978u) {
            float f2 = i4;
            this.f2972o = (int) ((f2 * (i + (f2 / 2.0f))) / iComputeHorizontalScrollRange);
            this.f2971n = Math.min(i4, (i4 * i4) / iComputeHorizontalScrollRange);
        }
        int i5 = this.f2979v;
        if (i5 == 0 || i5 == 1) {
            m3860y(1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.InterfaceC0446r
    /* JADX INFO: renamed from: a */
    public boolean mo3577a(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i = this.f2979v;
        if (i == 1) {
            boolean zM3858u = m3858u(motionEvent.getX(), motionEvent.getY());
            boolean zM3857t = m3857t(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zM3858u && !zM3857t) {
                return false;
            }
            if (zM3857t) {
                this.f2980w = 1;
                this.f2973p = (int) motionEvent.getX();
            } else if (zM3858u) {
                this.f2980w = 2;
                this.f2970m = (int) motionEvent.getY();
            }
            m3860y(2);
        } else if (i != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.InterfaceC0446r
    /* JADX INFO: renamed from: b */
    public void mo3578b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f2979v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zM3858u = m3858u(motionEvent.getX(), motionEvent.getY());
            boolean zM3857t = m3857t(motionEvent.getX(), motionEvent.getY());
            if (zM3858u || zM3857t) {
                if (zM3857t) {
                    this.f2980w = 1;
                    this.f2973p = (int) motionEvent.getX();
                } else if (zM3858u) {
                    this.f2980w = 2;
                    this.f2970m = (int) motionEvent.getY();
                }
                m3860y(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f2979v == 2) {
            this.f2970m = CropImageView.DEFAULT_ASPECT_RATIO;
            this.f2973p = CropImageView.DEFAULT_ASPECT_RATIO;
            m3860y(1);
            this.f2980w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f2979v == 2) {
            m3853A();
            if (this.f2980w == 1) {
                m3848r(motionEvent.getX());
            }
            if (this.f2980w == 2) {
                m3841C(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.InterfaceC0446r
    /* JADX INFO: renamed from: c */
    public void mo3579c(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0441m
    /* JADX INFO: renamed from: i */
    public void mo3461i(Canvas canvas, RecyclerView recyclerView, RecyclerView.C0454z c0454z) {
        if (this.f2974q != this.f2976s.getWidth() || this.f2975r != this.f2976s.getHeight()) {
            this.f2974q = this.f2976s.getWidth();
            this.f2975r = this.f2976s.getHeight();
            m3860y(0);
        } else if (this.f2955A != 0) {
            if (this.f2977t) {
                m3845n(canvas);
            }
            if (this.f2978u) {
                m3844m(canvas);
            }
        }
    }

    /* JADX INFO: renamed from: j */
    public void m3855j(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f2976s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            m3843l();
        }
        this.f2976s = recyclerView;
        if (recyclerView != null) {
            m3852z();
        }
    }

    /* JADX INFO: renamed from: q */
    void m3856q(int i) {
        int i2 = this.f2955A;
        if (i2 == 1) {
            this.f2983z.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.f2955A = 3;
        ValueAnimator valueAnimator = this.f2983z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), CropImageView.DEFAULT_ASPECT_RATIO);
        this.f2983z.setDuration(i);
        this.f2983z.start();
    }

    /* JADX INFO: renamed from: t */
    boolean m3857t(float f, float f2) {
        if (f2 >= this.f2975r - this.f2966i) {
            int i = this.f2972o;
            int i2 = this.f2971n;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: u */
    boolean m3858u(float f, float f2) {
        if (!m3849s() ? f >= this.f2974q - this.f2962e : f <= this.f2962e / 2) {
            int i = this.f2969l;
            int i2 = this.f2968k;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: v */
    void m3859v() {
        this.f2976s.invalidate();
    }

    /* JADX INFO: renamed from: y */
    void m3860y(int i) {
        if (i == 2 && this.f2979v != 2) {
            this.f2960c.setState(f2953D);
            m3842k();
        }
        if (i == 0) {
            m3859v();
        } else {
            m3853A();
        }
        if (this.f2979v == 2 && i != 2) {
            this.f2960c.setState(f2954E);
            m3850w(1200);
        } else if (i == 1) {
            m3850w(1500);
        }
        this.f2979v = i;
    }
}
