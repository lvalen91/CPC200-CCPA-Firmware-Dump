package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.v;
import androidx.recyclerview.widget.RecyclerView;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class d extends RecyclerView.m implements RecyclerView.r {
    private static final int[] D = {R.attr.state_pressed};
    private static final int[] E = new int[0];
    private final int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f958b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final StateListDrawable f959c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Drawable f960d;
    private final int e;
    private final int f;
    private final StateListDrawable g;
    private final Drawable h;
    private final int i;
    private final int j;
    int k;
    int l;
    float m;
    int n;
    int o;
    float p;
    private RecyclerView s;
    private int q = 0;
    private int r = 0;
    private boolean t = false;
    private boolean u = false;
    private int v = 0;
    private int w = 0;
    private final int[] x = new int[2];
    private final int[] y = new int[2];
    final ValueAnimator z = ValueAnimator.ofFloat(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
    int A = 0;
    private final Runnable B = new a();
    private final RecyclerView.s C = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.q(CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
        }
    }

    class b extends RecyclerView.s {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.s
        public void b(RecyclerView recyclerView, int i, int i2) {
            d.this.B(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    private class c extends AnimatorListenerAdapter {
        private boolean a = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                this.a = false;
                return;
            }
            if (((Float) d.this.z.getAnimatedValue()).floatValue() == CropImageView.DEFAULT_ASPECT_RATIO) {
                d dVar = d.this;
                dVar.A = 0;
                dVar.y(0);
            } else {
                d dVar2 = d.this;
                dVar2.A = 2;
                dVar2.v();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.d$d, reason: collision with other inner class name */
    private class C0039d implements ValueAnimator.AnimatorUpdateListener {
        C0039d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            d.this.f959c.setAlpha(iFloatValue);
            d.this.f960d.setAlpha(iFloatValue);
            d.this.v();
        }
    }

    d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i, int i2, int i3) {
        this.f959c = stateListDrawable;
        this.f960d = drawable;
        this.g = stateListDrawable2;
        this.h = drawable2;
        this.e = Math.max(i, stateListDrawable.getIntrinsicWidth());
        this.f = Math.max(i, drawable.getIntrinsicWidth());
        this.i = Math.max(i, stateListDrawable2.getIntrinsicWidth());
        this.j = Math.max(i, drawable2.getIntrinsicWidth());
        this.a = i2;
        this.f958b = i3;
        this.f959c.setAlpha(255);
        this.f960d.setAlpha(255);
        this.z.addListener(new c());
        this.z.addUpdateListener(new C0039d());
        j(recyclerView);
    }

    private void C(float f) {
        int[] iArrP = p();
        float fMax = Math.max(iArrP[0], Math.min(iArrP[1], f));
        if (Math.abs(this.l - fMax) < 2.0f) {
            return;
        }
        int iX = x(this.m, fMax, iArrP, this.s.computeVerticalScrollRange(), this.s.computeVerticalScrollOffset(), this.r);
        if (iX != 0) {
            this.s.scrollBy(0, iX);
        }
        this.m = fMax;
    }

    private void k() {
        this.s.removeCallbacks(this.B);
    }

    private void l() {
        this.s.V0(this);
        this.s.W0(this);
        this.s.X0(this.C);
        k();
    }

    private void m(Canvas canvas) {
        int i = this.r;
        int i2 = this.i;
        int i3 = this.o;
        int i4 = this.n;
        this.g.setBounds(0, 0, i4, i2);
        this.h.setBounds(0, 0, this.q, this.j);
        canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, i - i2);
        this.h.draw(canvas);
        canvas.translate(i3 - (i4 / 2), CropImageView.DEFAULT_ASPECT_RATIO);
        this.g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    private void n(Canvas canvas) {
        int i = this.q;
        int i2 = this.e;
        int i3 = i - i2;
        int i4 = this.l;
        int i5 = this.k;
        int i6 = i4 - (i5 / 2);
        this.f959c.setBounds(0, 0, i2, i5);
        this.f960d.setBounds(0, 0, this.f, this.r);
        if (!s()) {
            canvas.translate(i3, CropImageView.DEFAULT_ASPECT_RATIO);
            this.f960d.draw(canvas);
            canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, i6);
            this.f959c.draw(canvas);
            canvas.translate(-i3, -i6);
            return;
        }
        this.f960d.draw(canvas);
        canvas.translate(this.e, i6);
        canvas.scale(-1.0f, 1.0f);
        this.f959c.draw(canvas);
        canvas.scale(1.0f, 1.0f);
        canvas.translate(-this.e, -i6);
    }

    private int[] o() {
        int[] iArr = this.y;
        int i = this.f958b;
        iArr[0] = i;
        iArr[1] = this.q - i;
        return iArr;
    }

    private int[] p() {
        int[] iArr = this.x;
        int i = this.f958b;
        iArr[0] = i;
        iArr[1] = this.r - i;
        return iArr;
    }

    private void r(float f) {
        int[] iArrO = o();
        float fMax = Math.max(iArrO[0], Math.min(iArrO[1], f));
        if (Math.abs(this.o - fMax) < 2.0f) {
            return;
        }
        int iX = x(this.p, fMax, iArrO, this.s.computeHorizontalScrollRange(), this.s.computeHorizontalScrollOffset(), this.q);
        if (iX != 0) {
            this.s.scrollBy(iX, 0);
        }
        this.p = fMax;
    }

    private boolean s() {
        return v.C(this.s) == 1;
    }

    private void w(int i) {
        k();
        this.s.postDelayed(this.B, i);
    }

    private int x(float f, float f2, int[] iArr, int i, int i2, int i3) {
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

    private void z() {
        this.s.h(this);
        this.s.j(this);
        this.s.k(this.C);
    }

    public void A() {
        int i = this.A;
        if (i != 0) {
            if (i != 3) {
                return;
            } else {
                this.z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.z.setDuration(500L);
        this.z.setStartDelay(0L);
        this.z.start();
    }

    void B(int i, int i2) {
        int iComputeVerticalScrollRange = this.s.computeVerticalScrollRange();
        int i3 = this.r;
        this.t = iComputeVerticalScrollRange - i3 > 0 && i3 >= this.a;
        int iComputeHorizontalScrollRange = this.s.computeHorizontalScrollRange();
        int i4 = this.q;
        boolean z = iComputeHorizontalScrollRange - i4 > 0 && i4 >= this.a;
        this.u = z;
        if (!this.t && !z) {
            if (this.v != 0) {
                y(0);
                return;
            }
            return;
        }
        if (this.t) {
            float f = i3;
            this.l = (int) ((f * (i2 + (f / 2.0f))) / iComputeVerticalScrollRange);
            this.k = Math.min(i3, (i3 * i3) / iComputeVerticalScrollRange);
        }
        if (this.u) {
            float f2 = i4;
            this.o = (int) ((f2 * (i + (f2 / 2.0f))) / iComputeHorizontalScrollRange);
            this.n = Math.min(i4, (i4 * i4) / iComputeHorizontalScrollRange);
        }
        int i5 = this.v;
        if (i5 == 0 || i5 == 1) {
            y(1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public boolean a(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i = this.v;
        if (i == 1) {
            boolean zU = u(motionEvent.getX(), motionEvent.getY());
            boolean zT = t(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zU && !zT) {
                return false;
            }
            if (zT) {
                this.w = 1;
                this.p = (int) motionEvent.getX();
            } else if (zU) {
                this.w = 2;
                this.m = (int) motionEvent.getY();
            }
            y(2);
        } else if (i != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void b(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zU = u(motionEvent.getX(), motionEvent.getY());
            boolean zT = t(motionEvent.getX(), motionEvent.getY());
            if (zU || zT) {
                if (zT) {
                    this.w = 1;
                    this.p = (int) motionEvent.getX();
                } else if (zU) {
                    this.w = 2;
                    this.m = (int) motionEvent.getY();
                }
                y(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.v == 2) {
            this.m = CropImageView.DEFAULT_ASPECT_RATIO;
            this.p = CropImageView.DEFAULT_ASPECT_RATIO;
            y(1);
            this.w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.v == 2) {
            A();
            if (this.w == 1) {
                r(motionEvent.getX());
            }
            if (this.w == 2) {
                C(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void c(boolean z) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void i(Canvas canvas, RecyclerView recyclerView, RecyclerView.z zVar) {
        if (this.q != this.s.getWidth() || this.r != this.s.getHeight()) {
            this.q = this.s.getWidth();
            this.r = this.s.getHeight();
            y(0);
        } else if (this.A != 0) {
            if (this.t) {
                n(canvas);
            }
            if (this.u) {
                m(canvas);
            }
        }
    }

    public void j(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            l();
        }
        this.s = recyclerView;
        if (recyclerView != null) {
            z();
        }
    }

    void q(int i) {
        int i2 = this.A;
        if (i2 == 1) {
            this.z.cancel();
        } else if (i2 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), CropImageView.DEFAULT_ASPECT_RATIO);
        this.z.setDuration(i);
        this.z.start();
    }

    boolean t(float f, float f2) {
        if (f2 >= this.r - this.i) {
            int i = this.o;
            int i2 = this.n;
            if (f >= i - (i2 / 2) && f <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean u(float f, float f2) {
        if (!s() ? f >= this.q - this.e : f <= this.e / 2) {
            int i = this.l;
            int i2 = this.k;
            if (f2 >= i - (i2 / 2) && f2 <= i + (i2 / 2)) {
                return true;
            }
        }
        return false;
    }

    void v() {
        this.s.invalidate();
    }

    void y(int i) {
        if (i == 2 && this.v != 2) {
            this.f959c.setState(D);
            k();
        }
        if (i == 0) {
            v();
        } else {
            A();
        }
        if (this.v == 2 && i != 2) {
            this.f959c.setState(E);
            w(1200);
        } else if (i == 1) {
            w(1500);
        }
        this.v = i;
    }
}
