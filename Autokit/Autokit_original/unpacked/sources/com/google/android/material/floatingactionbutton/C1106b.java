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
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import com.google.android.material.internal.C1117f;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import p016c.p041g.p049j.C0626h;
import p093d.p099c.p100a.p101a.C1201a;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1209h;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n;
import p093d.p099c.p100a.p101a.p104l.C1227a;
import p093d.p099c.p100a.p101a.p104l.C1228b;
import p093d.p099c.p100a.p101a.p104l.C1232f;
import p093d.p099c.p100a.p101a.p104l.C1233g;
import p093d.p099c.p100a.p101a.p104l.C1234h;
import p093d.p099c.p100a.p101a.p118y.C1262b;
import p093d.p099c.p100a.p101a.p119z.InterfaceC1264b;

/* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1106b {

    /* JADX INFO: renamed from: F */
    static final TimeInterpolator f7017F = C1227a.f7756c;

    /* JADX INFO: renamed from: G */
    static final int[] f7018G = {R.attr.state_pressed, R.attr.state_enabled};

    /* JADX INFO: renamed from: H */
    static final int[] f7019H = {R.attr.state_hovered, R.attr.state_focused, R.attr.state_enabled};

    /* JADX INFO: renamed from: I */
    static final int[] f7020I = {R.attr.state_focused, R.attr.state_enabled};

    /* JADX INFO: renamed from: J */
    static final int[] f7021J = {R.attr.state_hovered, R.attr.state_enabled};

    /* JADX INFO: renamed from: K */
    static final int[] f7022K = {R.attr.state_enabled};

    /* JADX INFO: renamed from: L */
    static final int[] f7023L = new int[0];

    /* JADX INFO: renamed from: E */
    private ViewTreeObserver.OnPreDrawListener f7028E;

    /* JADX INFO: renamed from: a */
    C1212k f7029a;

    /* JADX INFO: renamed from: b */
    C1208g f7030b;

    /* JADX INFO: renamed from: c */
    Drawable f7031c;

    /* JADX INFO: renamed from: d */
    C1105a f7032d;

    /* JADX INFO: renamed from: e */
    Drawable f7033e;

    /* JADX INFO: renamed from: f */
    boolean f7034f;

    /* JADX INFO: renamed from: h */
    float f7036h;

    /* JADX INFO: renamed from: i */
    float f7037i;

    /* JADX INFO: renamed from: j */
    float f7038j;

    /* JADX INFO: renamed from: k */
    int f7039k;

    /* JADX INFO: renamed from: l */
    private final C1117f f7040l;

    /* JADX INFO: renamed from: m */
    private C1234h f7041m;

    /* JADX INFO: renamed from: n */
    private C1234h f7042n;

    /* JADX INFO: renamed from: o */
    private Animator f7043o;

    /* JADX INFO: renamed from: p */
    private C1234h f7044p;

    /* JADX INFO: renamed from: q */
    private C1234h f7045q;

    /* JADX INFO: renamed from: r */
    private float f7046r;

    /* JADX INFO: renamed from: t */
    private int f7048t;

    /* JADX INFO: renamed from: v */
    private ArrayList<Animator.AnimatorListener> f7050v;

    /* JADX INFO: renamed from: w */
    private ArrayList<Animator.AnimatorListener> f7051w;

    /* JADX INFO: renamed from: x */
    private ArrayList<i> f7052x;

    /* JADX INFO: renamed from: y */
    final FloatingActionButton f7053y;

    /* JADX INFO: renamed from: z */
    final InterfaceC1264b f7054z;

    /* JADX INFO: renamed from: g */
    boolean f7035g = true;

    /* JADX INFO: renamed from: s */
    private float f7047s = 1.0f;

    /* JADX INFO: renamed from: u */
    private int f7049u = 0;

    /* JADX INFO: renamed from: A */
    private final Rect f7024A = new Rect();

    /* JADX INFO: renamed from: B */
    private final RectF f7025B = new RectF();

    /* JADX INFO: renamed from: C */
    private final RectF f7026C = new RectF();

    /* JADX INFO: renamed from: D */
    private final Matrix f7027D = new Matrix();

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$a */
    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        private boolean f7055a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ boolean f7056b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ j f7057c;

        a(boolean z, j jVar) {
            this.f7056b = z;
            this.f7057c = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f7055a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1106b.this.f7049u = 0;
            C1106b.this.f7043o = null;
            if (this.f7055a) {
                return;
            }
            C1106b.this.f7053y.m8737b(this.f7056b ? 8 : 4, this.f7056b);
            j jVar = this.f7057c;
            if (jVar != null) {
                jVar.mo8541b();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1106b.this.f7053y.m8737b(0, this.f7056b);
            C1106b.this.f7049u = 1;
            C1106b.this.f7043o = animator;
            this.f7055a = false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$b */
    class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f7059a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ j f7060b;

        b(boolean z, j jVar) {
            this.f7059a = z;
            this.f7060b = jVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1106b.this.f7049u = 0;
            C1106b.this.f7043o = null;
            j jVar = this.f7060b;
            if (jVar != null) {
                jVar.mo8540a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            C1106b.this.f7053y.m8737b(0, this.f7059a);
            C1106b.this.f7049u = 2;
            C1106b.this.f7043o = animator;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$c */
    class c extends C1233g {
        c() {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            C1106b.this.f7047s = f;
            return super.evaluate(f, matrix, matrix2);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$d */
    class d implements TypeEvaluator<Float> {

        /* JADX INFO: renamed from: a */
        FloatEvaluator f7063a = new FloatEvaluator();

        d(C1106b c1106b) {
        }

        @Override // android.animation.TypeEvaluator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float evaluate(float f, Float f2, Float f3) {
            float fFloatValue = this.f7063a.evaluate(f, (Number) f2, (Number) f3).floatValue();
            if (fFloatValue < 0.1f) {
                fFloatValue = CropImageView.DEFAULT_ASPECT_RATIO;
            }
            return Float.valueOf(fFloatValue);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$e */
    class e implements ViewTreeObserver.OnPreDrawListener {
        e() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            C1106b.this.m8565F();
            return true;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$f */
    private class f extends l {
        f(C1106b c1106b) {
            super(c1106b, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.l
        /* JADX INFO: renamed from: a */
        protected float mo8607a() {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$g */
    private class g extends l {
        g() {
            super(C1106b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.l
        /* JADX INFO: renamed from: a */
        protected float mo8607a() {
            C1106b c1106b = C1106b.this;
            return c1106b.f7036h + c1106b.f7037i;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$h */
    private class h extends l {
        h() {
            super(C1106b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.l
        /* JADX INFO: renamed from: a */
        protected float mo8607a() {
            C1106b c1106b = C1106b.this;
            return c1106b.f7036h + c1106b.f7038j;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$i */
    interface i {
        /* JADX INFO: renamed from: a */
        void mo8545a();

        /* JADX INFO: renamed from: b */
        void mo8546b();
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$j */
    interface j {
        /* JADX INFO: renamed from: a */
        void mo8540a();

        /* JADX INFO: renamed from: b */
        void mo8541b();
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$k */
    private class k extends l {
        k() {
            super(C1106b.this, null);
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.l
        /* JADX INFO: renamed from: a */
        protected float mo8607a() {
            return C1106b.this.f7036h;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.b$l */
    private abstract class l extends AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a */
        private boolean f7068a;

        /* JADX INFO: renamed from: b */
        private float f7069b;

        /* JADX INFO: renamed from: c */
        private float f7070c;

        private l() {
        }

        /* JADX INFO: renamed from: a */
        protected abstract float mo8607a();

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1106b.this.m8587c0((int) this.f7070c);
            this.f7068a = false;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            if (!this.f7068a) {
                C1208g c1208g = C1106b.this.f7030b;
                this.f7069b = c1208g == null ? CropImageView.DEFAULT_ASPECT_RATIO : c1208g.m9199w();
                this.f7070c = mo8607a();
                this.f7068a = true;
            }
            C1106b c1106b = C1106b.this;
            float f = this.f7069b;
            c1106b.m8587c0((int) (f + ((this.f7070c - f) * valueAnimator.getAnimatedFraction())));
        }

        /* synthetic */ l(C1106b c1106b, a aVar) {
            this();
        }
    }

    C1106b(FloatingActionButton floatingActionButton, InterfaceC1264b interfaceC1264b) {
        this.f7053y = floatingActionButton;
        this.f7054z = interfaceC1264b;
        C1117f c1117f = new C1117f();
        this.f7040l = c1117f;
        c1117f.m8696a(f7018G, m8556i(new h()));
        this.f7040l.m8696a(f7019H, m8556i(new g()));
        this.f7040l.m8696a(f7020I, m8556i(new g()));
        this.f7040l.m8696a(f7021J, m8556i(new g()));
        this.f7040l.m8696a(f7022K, m8556i(new k()));
        this.f7040l.m8696a(f7023L, m8556i(new f(this)));
        this.f7046r = this.f7053y.getRotation();
    }

    /* JADX INFO: renamed from: W */
    private boolean m8549W() {
        return C0292v.m2069T(this.f7053y) && !this.f7053y.isInEditMode();
    }

    /* JADX INFO: renamed from: d0 */
    private void m8553d0(ObjectAnimator objectAnimator) {
        if (Build.VERSION.SDK_INT != 26) {
            return;
        }
        objectAnimator.setEvaluator(new d(this));
    }

    /* JADX INFO: renamed from: g */
    private void m8554g(float f2, Matrix matrix) {
        matrix.reset();
        if (this.f7053y.getDrawable() == null || this.f7048t == 0) {
            return;
        }
        RectF rectF = this.f7025B;
        RectF rectF2 = this.f7026C;
        rectF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, r0.getIntrinsicWidth(), r0.getIntrinsicHeight());
        int i2 = this.f7048t;
        rectF2.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, i2, i2);
        matrix.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
        int i3 = this.f7048t;
        matrix.postScale(f2, f2, i3 / 2.0f, i3 / 2.0f);
    }

    /* JADX INFO: renamed from: h */
    private AnimatorSet m8555h(C1234h c1234h, float f2, float f3, float f4) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.f7053y, (Property<FloatingActionButton, Float>) View.ALPHA, f2);
        c1234h.m9350e("opacity").m9357a(objectAnimatorOfFloat);
        arrayList.add(objectAnimatorOfFloat);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(this.f7053y, (Property<FloatingActionButton, Float>) View.SCALE_X, f3);
        c1234h.m9350e("scale").m9357a(objectAnimatorOfFloat2);
        m8553d0(objectAnimatorOfFloat2);
        arrayList.add(objectAnimatorOfFloat2);
        ObjectAnimator objectAnimatorOfFloat3 = ObjectAnimator.ofFloat(this.f7053y, (Property<FloatingActionButton, Float>) View.SCALE_Y, f3);
        c1234h.m9350e("scale").m9357a(objectAnimatorOfFloat3);
        m8553d0(objectAnimatorOfFloat3);
        arrayList.add(objectAnimatorOfFloat3);
        m8554g(f4, this.f7027D);
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(this.f7053y, new C1232f(), new c(), new Matrix(this.f7027D));
        c1234h.m9350e("iconScale").m9357a(objectAnimatorOfObject);
        arrayList.add(objectAnimatorOfObject);
        AnimatorSet animatorSet = new AnimatorSet();
        C1228b.m9337a(animatorSet, arrayList);
        return animatorSet;
    }

    /* JADX INFO: renamed from: i */
    private ValueAnimator m8556i(l lVar) {
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setInterpolator(f7017F);
        valueAnimator.setDuration(100L);
        valueAnimator.addListener(lVar);
        valueAnimator.addUpdateListener(lVar);
        valueAnimator.setFloatValues(CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        return valueAnimator;
    }

    /* JADX INFO: renamed from: k */
    private C1234h m8557k() {
        if (this.f7042n == null) {
            this.f7042n = C1234h.m9348c(this.f7053y.getContext(), C1201a.design_fab_hide_motion_spec);
        }
        C1234h c1234h = this.f7042n;
        C0626h.m4855e(c1234h);
        return c1234h;
    }

    /* JADX INFO: renamed from: l */
    private C1234h m8558l() {
        if (this.f7041m == null) {
            this.f7041m = C1234h.m9348c(this.f7053y.getContext(), C1201a.design_fab_show_motion_spec);
        }
        C1234h c1234h = this.f7041m;
        C0626h.m4855e(c1234h);
        return c1234h;
    }

    /* JADX INFO: renamed from: q */
    private ViewTreeObserver.OnPreDrawListener m8559q() {
        if (this.f7028E == null) {
            this.f7028E = new e();
        }
        return this.f7028E;
    }

    /* JADX INFO: renamed from: A */
    void mo8560A() {
    }

    /* JADX INFO: renamed from: B */
    void m8561B() {
        ViewTreeObserver viewTreeObserver = this.f7053y.getViewTreeObserver();
        ViewTreeObserver.OnPreDrawListener onPreDrawListener = this.f7028E;
        if (onPreDrawListener != null) {
            viewTreeObserver.removeOnPreDrawListener(onPreDrawListener);
            this.f7028E = null;
        }
    }

    /* JADX INFO: renamed from: C */
    void mo8562C(int[] iArr) {
        this.f7040l.m8698d(iArr);
    }

    /* JADX INFO: renamed from: D */
    void mo8563D(float f2, float f3, float f4) {
        m8586b0();
        m8587c0(f2);
    }

    /* JADX INFO: renamed from: E */
    void m8564E(Rect rect) {
        C0626h.m4856f(this.f7033e, "Didn't initialize content background");
        if (!mo8581V()) {
            this.f7054z.mo8544c(this.f7033e);
        } else {
            this.f7054z.mo8544c(new InsetDrawable(this.f7033e, rect.left, rect.top, rect.right, rect.bottom));
        }
    }

    /* JADX INFO: renamed from: F */
    void m8565F() {
        float rotation = this.f7053y.getRotation();
        if (this.f7046r != rotation) {
            this.f7046r = rotation;
            mo8584Z();
        }
    }

    /* JADX INFO: renamed from: G */
    void m8566G() {
        ArrayList<i> arrayList = this.f7052x;
        if (arrayList != null) {
            Iterator<i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo8545a();
            }
        }
    }

    /* JADX INFO: renamed from: H */
    void m8567H() {
        ArrayList<i> arrayList = this.f7052x;
        if (arrayList != null) {
            Iterator<i> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().mo8546b();
            }
        }
    }

    /* JADX INFO: renamed from: I */
    boolean mo8568I() {
        return true;
    }

    /* JADX INFO: renamed from: J */
    void m8569J(ColorStateList colorStateList) {
        C1208g c1208g = this.f7030b;
        if (c1208g != null) {
            c1208g.setTintList(colorStateList);
        }
        C1105a c1105a = this.f7032d;
        if (c1105a == null) {
            return;
        }
        c1105a.m8547a(colorStateList);
        throw null;
    }

    /* JADX INFO: renamed from: K */
    void m8570K(PorterDuff.Mode mode) {
        C1208g c1208g = this.f7030b;
        if (c1208g != null) {
            c1208g.setTintMode(mode);
        }
    }

    /* JADX INFO: renamed from: L */
    final void m8571L(float f2) {
        if (this.f7036h != f2) {
            this.f7036h = f2;
            mo8563D(f2, this.f7037i, this.f7038j);
        }
    }

    /* JADX INFO: renamed from: M */
    void m8572M(boolean z) {
        this.f7034f = z;
    }

    /* JADX INFO: renamed from: N */
    final void m8573N(C1234h c1234h) {
        this.f7045q = c1234h;
    }

    /* JADX INFO: renamed from: O */
    final void m8574O(float f2) {
        if (this.f7037i != f2) {
            this.f7037i = f2;
            mo8563D(this.f7036h, f2, this.f7038j);
        }
    }

    /* JADX INFO: renamed from: P */
    final void m8575P(float f2) {
        this.f7047s = f2;
        Matrix matrix = this.f7027D;
        m8554g(f2, matrix);
        this.f7053y.setImageMatrix(matrix);
    }

    /* JADX INFO: renamed from: Q */
    final void m8576Q(float f2) {
        if (this.f7038j != f2) {
            this.f7038j = f2;
            mo8563D(this.f7036h, this.f7037i, f2);
        }
    }

    /* JADX INFO: renamed from: R */
    void mo8577R(ColorStateList colorStateList) {
        Drawable drawable = this.f7031c;
        if (drawable != null) {
            C0251a.m1794o(drawable, C1262b.m9477a(colorStateList));
        }
    }

    /* JADX INFO: renamed from: S */
    void m8578S(boolean z) {
        this.f7035g = z;
        m8586b0();
    }

    /* JADX INFO: renamed from: T */
    final void m8579T(C1212k c1212k) {
        this.f7029a = c1212k;
        C1208g c1208g = this.f7030b;
        if (c1208g != null) {
            c1208g.setShapeAppearanceModel(c1212k);
        }
        Object obj = this.f7031c;
        if (obj instanceof InterfaceC1215n) {
            ((InterfaceC1215n) obj).setShapeAppearanceModel(c1212k);
        }
        C1105a c1105a = this.f7032d;
        if (c1105a == null) {
            return;
        }
        c1105a.m8548b(c1212k);
        throw null;
    }

    /* JADX INFO: renamed from: U */
    final void m8580U(C1234h c1234h) {
        this.f7044p = c1234h;
    }

    /* JADX INFO: renamed from: V */
    boolean mo8581V() {
        return true;
    }

    /* JADX INFO: renamed from: X */
    final boolean m8582X() {
        return !this.f7034f || this.f7053y.getSizeDimension() >= this.f7039k;
    }

    /* JADX INFO: renamed from: Y */
    void m8583Y(j jVar, boolean z) {
        if (m8602x()) {
            return;
        }
        Animator animator = this.f7043o;
        if (animator != null) {
            animator.cancel();
        }
        if (!m8549W()) {
            this.f7053y.m8737b(0, z);
            this.f7053y.setAlpha(1.0f);
            this.f7053y.setScaleY(1.0f);
            this.f7053y.setScaleX(1.0f);
            m8575P(1.0f);
            if (jVar != null) {
                jVar.mo8540a();
                return;
            }
            return;
        }
        if (this.f7053y.getVisibility() != 0) {
            this.f7053y.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7053y.setScaleY(CropImageView.DEFAULT_ASPECT_RATIO);
            this.f7053y.setScaleX(CropImageView.DEFAULT_ASPECT_RATIO);
            m8575P(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        C1234h c1234hM8558l = this.f7044p;
        if (c1234hM8558l == null) {
            c1234hM8558l = m8558l();
        }
        AnimatorSet animatorSetM8555h = m8555h(c1234hM8558l, 1.0f, 1.0f, 1.0f);
        animatorSetM8555h.addListener(new b(z, jVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f7050v;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetM8555h.addListener(it.next());
            }
        }
        animatorSetM8555h.start();
    }

    /* JADX INFO: renamed from: Z */
    void mo8584Z() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.f7046r % 90.0f != CropImageView.DEFAULT_ASPECT_RATIO) {
                if (this.f7053y.getLayerType() != 1) {
                    this.f7053y.setLayerType(1, null);
                }
            } else if (this.f7053y.getLayerType() != 0) {
                this.f7053y.setLayerType(0, null);
            }
        }
        C1208g c1208g = this.f7030b;
        if (c1208g != null) {
            c1208g.m9188a0((int) this.f7046r);
        }
    }

    /* JADX INFO: renamed from: a0 */
    final void m8585a0() {
        m8575P(this.f7047s);
    }

    /* JADX INFO: renamed from: b0 */
    final void m8586b0() {
        Rect rect = this.f7024A;
        mo8596r(rect);
        m8564E(rect);
        this.f7054z.mo8542a(rect.left, rect.top, rect.right, rect.bottom);
    }

    /* JADX INFO: renamed from: c0 */
    void m8587c0(float f2) {
        C1208g c1208g = this.f7030b;
        if (c1208g != null) {
            c1208g.m9183V(f2);
        }
    }

    /* JADX INFO: renamed from: d */
    public void m8588d(Animator.AnimatorListener animatorListener) {
        if (this.f7051w == null) {
            this.f7051w = new ArrayList<>();
        }
        this.f7051w.add(animatorListener);
    }

    /* JADX INFO: renamed from: e */
    void m8589e(Animator.AnimatorListener animatorListener) {
        if (this.f7050v == null) {
            this.f7050v = new ArrayList<>();
        }
        this.f7050v.add(animatorListener);
    }

    /* JADX INFO: renamed from: f */
    void m8590f(i iVar) {
        if (this.f7052x == null) {
            this.f7052x = new ArrayList<>();
        }
        this.f7052x.add(iVar);
    }

    /* JADX INFO: renamed from: j */
    final Drawable m8591j() {
        return this.f7033e;
    }

    /* JADX INFO: renamed from: m */
    float mo8592m() {
        return this.f7036h;
    }

    /* JADX INFO: renamed from: n */
    boolean m8593n() {
        return this.f7034f;
    }

    /* JADX INFO: renamed from: o */
    final C1234h m8594o() {
        return this.f7045q;
    }

    /* JADX INFO: renamed from: p */
    float m8595p() {
        return this.f7037i;
    }

    /* JADX INFO: renamed from: r */
    void mo8596r(Rect rect) {
        int sizeDimension = this.f7034f ? (this.f7039k - this.f7053y.getSizeDimension()) / 2 : 0;
        int iMax = Math.max(sizeDimension, (int) Math.ceil(this.f7035g ? mo8592m() + this.f7038j : CropImageView.DEFAULT_ASPECT_RATIO));
        int iMax2 = Math.max(sizeDimension, (int) Math.ceil(r1 * 1.5f));
        rect.set(iMax, iMax2, iMax, iMax2);
    }

    /* JADX INFO: renamed from: s */
    float m8597s() {
        return this.f7038j;
    }

    /* JADX INFO: renamed from: t */
    final C1212k m8598t() {
        return this.f7029a;
    }

    /* JADX INFO: renamed from: u */
    final C1234h m8599u() {
        return this.f7044p;
    }

    /* JADX INFO: renamed from: v */
    void m8600v(j jVar, boolean z) {
        if (m8601w()) {
            return;
        }
        Animator animator = this.f7043o;
        if (animator != null) {
            animator.cancel();
        }
        if (!m8549W()) {
            this.f7053y.m8737b(z ? 8 : 4, z);
            if (jVar != null) {
                jVar.mo8541b();
                return;
            }
            return;
        }
        C1234h c1234hM8557k = this.f7045q;
        if (c1234hM8557k == null) {
            c1234hM8557k = m8557k();
        }
        AnimatorSet animatorSetM8555h = m8555h(c1234hM8557k, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        animatorSetM8555h.addListener(new a(z, jVar));
        ArrayList<Animator.AnimatorListener> arrayList = this.f7051w;
        if (arrayList != null) {
            Iterator<Animator.AnimatorListener> it = arrayList.iterator();
            while (it.hasNext()) {
                animatorSetM8555h.addListener(it.next());
            }
        }
        animatorSetM8555h.start();
    }

    /* JADX INFO: renamed from: w */
    boolean m8601w() {
        return this.f7053y.getVisibility() == 0 ? this.f7049u == 1 : this.f7049u != 2;
    }

    /* JADX INFO: renamed from: x */
    boolean m8602x() {
        return this.f7053y.getVisibility() != 0 ? this.f7049u == 2 : this.f7049u != 1;
    }

    /* JADX INFO: renamed from: y */
    void mo8603y() {
        this.f7040l.m8697c();
    }

    /* JADX INFO: renamed from: z */
    void m8604z() {
        C1208g c1208g = this.f7030b;
        if (c1208g != null) {
            C1209h.m9211f(this.f7053y, c1208g);
        }
        if (mo8568I()) {
            this.f7053y.getViewTreeObserver().addOnPreDrawListener(m8559q());
        }
    }
}
