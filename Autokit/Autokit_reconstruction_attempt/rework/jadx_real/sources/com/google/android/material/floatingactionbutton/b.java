package com.google.android.material.floatingactionbutton;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Matrix;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.core.view.v;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.n;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class b {
    static final TimeInterpolator F = d.c.a.a.l.a.f2316c;
    static final int[] G = {R.attr.state_pressed, R.attr.state_enabled};
    static final int[] H = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};
    static final int[] I = {R.attr.state_focused, R.attr.state_enabled};
    static final int[] J = {R.attr.state_hovered, R.attr.state_enabled};
    static final int[] K = {R.attr.state_enabled};
    static final int[] L = new int[0];
    private ViewTreeObserver.OnPreDrawListener E;
    d.c.a.a.a0.k a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    d.c.a.a.a0.g f2132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Drawable f2133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.google.android.material.floatingactionbutton.a f2134d;
    Drawable e;
    boolean f;
    float h;
    float i;
    float j;
    int k;
    private final com.google.android.material.internal.f l;
    private d.c.a.a.l.h m;
    private d.c.a.a.l.h n;
    private Animator o;
    private d.c.a.a.l.h p;
    private d.c.a.a.l.h q;
    private float r;
    private int t;
    private ArrayList<Animator.AnimatorListener> v;
    private ArrayList<Animator.AnimatorListener> w;
    private ArrayList<i> x;
    final FloatingActionButton y;
    final d.c.a.a.z.b z;
    boolean g = true;
    private float s = 1.0f;
    private int u = 0;
    private final Rect A = new Rect();
    private final RectF B = new RectF();
    private final RectF C = new RectF();
    private final Matrix D = new Matrix();

    class a extends AnimatorListenerAdapter {
        private boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f2135b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ j f2136c;

        a(boolean z, j jVar) {
            this.f2135b = z;
            this.f2136c = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.u = 0;
            b.this.o = null;
            if (this.a) {
                return;
            }
            b.this.y.b(this.f2135b ? 8 : 4, this.f2135b);
            j jVar = this.f2136c;
            if (jVar != null) {
                jVar.b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.y.b(0, this.f2135b);
            b.this.u = 1;
            b.this.o = animator;
            this.a = false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$b, reason: collision with other inner class name */
    class C0111b extends AnimatorListenerAdapter {
        final /* synthetic */ boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ j f2138b;

        C0111b(boolean z, j jVar) {
            this.a = z;
            this.f2138b = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.u = 0;
            b.this.o = null;
            j jVar = this.f2138b;
            if (jVar != null) {
                jVar.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.y.b(0, this.a);
            b.this.u = 2;
            b.this.o = animator;
        }
    }

    class c extends d.c.a.a.l.g {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            b.this.s = f;
            return super.evaluate(f, matrix, matrix2);
        }
    }

    class d implements TypeEvaluator<Float> {
        FloatEvaluator a = new FloatEvaluator();

        d(b bVar) {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f, Float f2, Float f3) {
            float fFloatValue = this.a.evaluate(f, (Number) f2, (Number) f3).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = CropImageView.DEFAULT_ASPECT_RATIO;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    class e implements ViewTreeObserver.OnPreDrawListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            b.this.F();
            return true;
        }
    }

    private class f extends l {
        f(b bVar) {
            super(bVar, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.l
        protected float a() {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
    }

    private class g extends l {
        g() {
            super(b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.l
        protected float a() {
            b bVar = b.this;
            return bVar.h + bVar.i;
        }
    }

    private class h extends l {
        h() {
            super(b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.l
        protected float a() {
            b bVar = b.this;
            return bVar.h + bVar.j;
        }
    }

    interface i {
        void a();

        void b();
    }

    interface j {
        void a();

        void b();
    }

    private class k extends l {
        k() {
            super(b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.b.l
        protected float a() {
            return b.this.h;
        }
    }

    private abstract class l extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {
        private boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private float f2142b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f2143c;

        private l() {
        }

        protected abstract float a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            b.this.c0((int) this.f2143c);
            this.a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.a) {
                d.c.a.a.a0.g gVar = b.this.f2132b;
                this.f2142b = gVar == null ? CropImageView.DEFAULT_ASPECT_RATIO : gVar.w();
                this.f2143c = a();
                this.a = true;
            }
            b bVar = b.this;
            float f = this.f2142b;
            bVar.c0((int) (f + ((this.f2143c - f) * valueAnimator.getAnimatedFraction())));
        }

        /* synthetic */ l(b bVar, a aVar) {
            this();
        }
    }

    b(FloatingActionButton floatingActionButton, d.c.a.a.z.b bVar) {
        this.y = floatingActionButton;
        this.z = bVar;
        com.google.android.material.internal.f fVar = new com.google.android.material.internal.f();
        this.l = fVar;
        fVar.a(G, i(new h()));
        this.l.a(H, i(new g()));
        this.l.a(I, i(new g()));
        this.l.a(J, i(new g()));
        this.l.a(K, i(new k()));
        this.l.a(L, i(new f(this)));
        this.r = this.y.getRotation();
    }

    private boolean W() {
        return v.T(this.y) && !this.y.isInEditMode();
    }

    private void d0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new d(this));
    }

    private void g(float f2, Matrix matrix) {
        matrix.reset();
        if (this.y.getDrawable() == null || this.t == 0) {
            return;
        }
        RectF rectF = this.B;
        RectF rectF2 = this.C;
        rectF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i2 = this.t;
        rectF2.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, i2, i2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i3 = this.t;
        matrix.postScale(f2, f2, i3 / 2.0f, i3 / 2.0f);
    }

    private AnimatorSet h(d.c.a.a.l.h hVar, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.ALPHA, f2);
        hVar.e("opacity").a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        hVar.e("scale").a(objectAnimatorOfFloat2);
        d0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        hVar.e("scale").a(objectAnimatorOfFloat3);
        d0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        g(f4, this.D);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.y, new d.c.a.a.l.f(), new c(), new Matrix(this.D));
        hVar.e("iconScale").a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        d.c.a.a.l.b.a(animatorSet, arrayList);
        return animatorSet;
    }

    private ValueAnimator i(l lVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(F);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(lVar);
        valueAnimator.addUpdateListener(lVar);
        valueAnimator.setFloatValues(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        return valueAnimator;
    }

    private d.c.a.a.l.h k() {
        if (this.n == null) {
            this.n = d.c.a.a.l.h.c(this.y.getContext(), d.c.a.a.a.design_fab_hide_motion_spec);
        }
        d.c.a.a.l.h hVar = this.n;
        c.g.j.h.e(hVar);
        return hVar;
    }

    private d.c.a.a.l.h l() {
        if (this.m == null) {
            this.m = d.c.a.a.l.h.c(this.y.getContext(), d.c.a.a.a.design_fab_show_motion_spec);
        }
        d.c.a.a.l.h hVar = this.m;
        c.g.j.h.e(hVar);
        return hVar;
    }

    private ViewTreeObserver.OnPreDrawListener q() {
        if (this.E == null) {
            this.E = new e();
        }
        return this.E;
    }

    void A() {
    }

    void B() {
        ViewTreeObserver viewTreeObserver = this.y.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.E;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.E = null;
        }
    }

    void C(int[] iArr) {
        this.l.d(iArr);
    }

    void D(float f2, float f3, float f4) {
        b0();
        c0(f2);
    }

    void E(Rect rect) {
        c.g.j.h.f(this.e, "Didn't initialize content background");
        if (!V()) {
            this.z.c(this.e);
        } else {
            this.z.c(new InsetDrawable(this.e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    void F() {
        float rotation = this.y.getRotation();
        if (this.r != rotation) {
            this.r = rotation;
            Z();
        }
    }

    void G() {
        ArrayList<i> arrayList = this.x;
        if (arrayList != null) {
            Iterator<i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }

    void H() {
        ArrayList<i> arrayList = this.x;
        if (arrayList != null) {
            Iterator<i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }
    }

    boolean I() {
        return true;
    }

    void J(ColorStateList colorStateList) {
        d.c.a.a.a0.g gVar = this.f2132b;
        if (gVar != null) {
            gVar.setTintList(colorStateList);
        }
        com.google.android.material.floatingactionbutton.a aVar = this.f2134d;
        if (aVar == null) {
            return;
        }
        aVar.a(colorStateList);
        throw null;
    }

    void K(PorterDuff.Mode mode) {
        d.c.a.a.a0.g gVar = this.f2132b;
        if (gVar != null) {
            gVar.setTintMode(mode);
        }
    }

    final void L(float f2) {
        if (this.h != f2) {
            this.h = f2;
            D(f2, this.i, this.j);
        }
    }

    void M(boolean z) {
        this.f = z;
    }

    final void N(d.c.a.a.l.h hVar) {
        this.q = hVar;
    }

    final void O(float f2) {
        if (this.i != f2) {
            this.i = f2;
            D(this.h, f2, this.j);
        }
    }

    final void P(float f2) {
        this.s = f2;
        Matrix matrix = this.D;
        g(f2, matrix);
        this.y.setImageMatrix(matrix);
    }

    final void Q(float f2) {
        if (this.j != f2) {
            this.j = f2;
            D(this.h, this.i, f2);
        }
    }

    void R(ColorStateList colorStateList) {
        Drawable drawable = this.f2133c;
        if (drawable != null) {
            androidx.core.graphics.drawable.a.o(drawable, d.c.a.a.y.b.a(colorStateList));
        }
    }

    void S(boolean z) {
        this.g = z;
        b0();
    }

    final void T(d.c.a.a.a0.k kVar) {
        this.a = kVar;
        d.c.a.a.a0.g gVar = this.f2132b;
        if (gVar != null) {
            gVar.setShapeAppearanceModel(kVar);
        }
        Object obj = this.f2133c;
        if (obj instanceof n) {
            ((n) obj).setShapeAppearanceModel(kVar);
        }
        com.google.android.material.floatingactionbutton.a aVar = this.f2134d;
        if (aVar == null) {
            return;
        }
        aVar.b(kVar);
        throw null;
    }

    final void U(d.c.a.a.l.h hVar) {
        this.p = hVar;
    }

    boolean V() {
        return true;
    }

    final boolean X() {
        return !this.f || this.y.getSizeDimension() >= this.k;
    }

    void Y(j jVar, boolean z) {
        if (x()) {
            return;
        }
        Animator animator = this.o;
        if (animator != null) {
            animator.cancel();
        }
        if (!W()) {
            this.y.b(0, z);
            this.y.setAlpha(1.0f);
            this.y.setScaleY(1.0f);
            this.y.setScaleX(1.0f);
            P(1.0f);
            if (jVar != null) {
                jVar.a();
                return;
            }
            return;
        }
        if (this.y.getVisibility() != 0) {
            this.y.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            this.y.setScaleY(CropImageView.DEFAULT_ASPECT_RATIO);
            this.y.setScaleX(CropImageView.DEFAULT_ASPECT_RATIO);
            P(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        d.c.a.a.l.h hVarL = this.p;
        if (hVarL == null) {
            hVarL = l();
        }
        AnimatorSet animatorSetH = h(hVarL, 1.0f, 1.0f, 1.0f);
        animatorSetH.addListener(new C0111b(z, jVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.v;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetH.addListener(it.next());
            }
        }
        animatorSetH.start();
    }

    void Z() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.r % 90.0f != CropImageView.DEFAULT_ASPECT_RATIO) {
                if (this.y.getLayerType() != 1) {
                    this.y.setLayerType(1, null);
                }
            } else if (this.y.getLayerType() != 0) {
                this.y.setLayerType(0, null);
            }
        }
        d.c.a.a.a0.g gVar = this.f2132b;
        if (gVar != null) {
            gVar.a0((int) this.r);
        }
    }

    final void a0() {
        P(this.s);
    }

    final void b0() {
        Rect rect = this.A;
        r(rect);
        E(rect);
        this.z.a(rect.left, rect.top, rect.right, rect.bottom);
    }

    void c0(float f2) {
        d.c.a.a.a0.g gVar = this.f2132b;
        if (gVar != null) {
            gVar.V(f2);
        }
    }

    public void d(Animator.AnimatorListener animatorListener) {
        if (this.w == null) {
            this.w = new ArrayList<>();
        }
        this.w.add(animatorListener);
    }

    void e(Animator.AnimatorListener animatorListener) {
        if (this.v == null) {
            this.v = new ArrayList<>();
        }
        this.v.add(animatorListener);
    }

    void f(i iVar) {
        if (this.x == null) {
            this.x = new ArrayList<>();
        }
        this.x.add(iVar);
    }

    final Drawable j() {
        return this.e;
    }

    float m() {
        return this.h;
    }

    boolean n() {
        return this.f;
    }

    final d.c.a.a.l.h o() {
        return this.q;
    }

    float p() {
        return this.i;
    }

    void r(Rect rect) {
        int sizeDimension = this.f ? (this.k - this.y.getSizeDimension()) / 2 : 0;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(this.g ? m() + this.j : CropImageView.DEFAULT_ASPECT_RATIO));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    float s() {
        return this.j;
    }

    final d.c.a.a.a0.k t() {
        return this.a;
    }

    final d.c.a.a.l.h u() {
        return this.p;
    }

    void v(j jVar, boolean z) {
        if (w()) {
            return;
        }
        Animator animator = this.o;
        if (animator != null) {
            animator.cancel();
        }
        if (!W()) {
            this.y.b(z ? 8 : 4, z);
            if (jVar != null) {
                jVar.b();
                return;
            }
            return;
        }
        d.c.a.a.l.h hVarK = this.q;
        if (hVarK == null) {
            hVarK = k();
        }
        AnimatorSet animatorSetH = h(hVarK, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        animatorSetH.addListener(new a(z, jVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.w;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetH.addListener(it.next());
            }
        }
        animatorSetH.start();
    }

    boolean w() {
        return this.y.getVisibility() == 0 ? this.u == 1 : this.u != 2;
    }

    boolean x() {
        return this.y.getVisibility() != 0 ? this.u == 2 : this.u != 1;
    }

    void y() {
        this.l.c();
    }

    void z() {
        d.c.a.a.a0.g gVar = this.f2132b;
        if (gVar != null) {
            d.c.a.a.a0.h.f(this.y, gVar);
        }
        if (I()) {
            this.y.getViewTreeObserver().addOnPreDrawListener(q());
        }
    }
}
