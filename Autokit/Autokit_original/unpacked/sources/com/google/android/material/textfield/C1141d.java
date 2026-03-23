package com.google.android.material.textfield;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import com.google.android.material.internal.C1120i;
import com.google.android.material.textfield.TextInputLayout;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.p018k.p019a.C0503a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1220e;
import p093d.p099c.p100a.p101a.C1224i;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p104l.C1227a;
import p093d.p099c.p100a.p101a.p110q.C1247a;

/* JADX INFO: renamed from: com.google.android.material.textfield.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1141d extends AbstractC1142e {

    /* JADX INFO: renamed from: q */
    private static final boolean f7350q;

    /* JADX INFO: renamed from: d */
    private final TextWatcher f7351d;

    /* JADX INFO: renamed from: e */
    private final View.OnFocusChangeListener f7352e;

    /* JADX INFO: renamed from: f */
    private final TextInputLayout.C1134e f7353f;

    /* JADX INFO: renamed from: g */
    private final TextInputLayout.InterfaceC1135f f7354g;

    /* JADX INFO: renamed from: h */
    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.InterfaceC1136g f7355h;

    /* JADX INFO: renamed from: i */
    private boolean f7356i;

    /* JADX INFO: renamed from: j */
    private boolean f7357j;

    /* JADX INFO: renamed from: k */
    private long f7358k;

    /* JADX INFO: renamed from: l */
    private StateListDrawable f7359l;

    /* JADX INFO: renamed from: m */
    private C1208g f7360m;

    /* JADX INFO: renamed from: n */
    private AccessibilityManager f7361n;

    /* JADX INFO: renamed from: o */
    private ValueAnimator f7362o;

    /* JADX INFO: renamed from: p */
    private ValueAnimator f7363p;

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$a */
    class a extends C1120i {

        /* JADX INFO: renamed from: com.google.android.material.textfield.d$a$a, reason: collision with other inner class name */
        class RunnableC1363a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ AutoCompleteTextView f7365b;

            RunnableC1363a(AutoCompleteTextView autoCompleteTextView) {
                this.f7365b = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.f7365b.isPopupShowing();
                C1141d.this.m8867E(zIsPopupShowing);
                C1141d.this.f7356i = zIsPopupShowing;
            }
        }

        a() {
        }

        @Override // com.google.android.material.internal.C1120i, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewM8891y = C1141d.m8891y(C1141d.this.f7379a.getEditText());
            if (C1141d.this.f7361n.isTouchExplorationEnabled() && C1141d.m8866D(autoCompleteTextViewM8891y) && !C1141d.this.f7381c.hasFocus()) {
                autoCompleteTextViewM8891y.dismissDropDown();
            }
            autoCompleteTextViewM8891y.post(new RunnableC1363a(autoCompleteTextViewM8891y));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$b */
    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            C1141d.this.f7381c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$c */
    class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            C1141d.this.f7379a.setEndIconActivated(z);
            if (z) {
                return;
            }
            C1141d.this.m8867E(false);
            C1141d.this.f7356i = false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$d */
    class d extends TextInputLayout.C1134e {
        d(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.C1134e, androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            if (!C1141d.m8866D(C1141d.this.f7379a.getEditText())) {
                c0269c.m1919W(Spinner.class.getName());
            }
            if (c0269c.m1911J()) {
                c0269c.m1933g0(null);
            }
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: h */
        public void mo1814h(View view, AccessibilityEvent accessibilityEvent) {
            super.mo1814h(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewM8891y = C1141d.m8891y(C1141d.this.f7379a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && C1141d.this.f7361n.isTouchExplorationEnabled() && !C1141d.m8866D(C1141d.this.f7379a.getEditText())) {
                C1141d.this.m8870H(autoCompleteTextViewM8891y);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$e */
    class e implements TextInputLayout.InterfaceC1135f {
        e() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.InterfaceC1135f
        /* JADX INFO: renamed from: a */
        public void mo8838a(TextInputLayout textInputLayout) {
            AutoCompleteTextView autoCompleteTextViewM8891y = C1141d.m8891y(textInputLayout.getEditText());
            C1141d.this.m8868F(autoCompleteTextViewM8891y);
            C1141d.this.m8888v(autoCompleteTextViewM8891y);
            C1141d.this.m8869G(autoCompleteTextViewM8891y);
            autoCompleteTextViewM8891y.setThreshold(0);
            autoCompleteTextViewM8891y.removeTextChangedListener(C1141d.this.f7351d);
            autoCompleteTextViewM8891y.addTextChangedListener(C1141d.this.f7351d);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!C1141d.m8866D(autoCompleteTextViewM8891y)) {
                C0292v.m2123x0(C1141d.this.f7381c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(C1141d.this.f7353f);
            textInputLayout.setEndIconVisible(true);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$f */
    class f implements TextInputLayout.InterfaceC1136g {

        /* JADX INFO: renamed from: com.google.android.material.textfield.d$f$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ AutoCompleteTextView f7372b;

            a(AutoCompleteTextView autoCompleteTextView) {
                this.f7372b = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f7372b.removeTextChangedListener(C1141d.this.f7351d);
            }
        }

        f() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.InterfaceC1136g
        /* JADX INFO: renamed from: a */
        public void mo8839a(TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i != 3) {
                return;
            }
            autoCompleteTextView.post(new a(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == C1141d.this.f7352e) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            if (C1141d.f7350q) {
                autoCompleteTextView.setOnDismissListener(null);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$g */
    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C1141d.this.m8870H((AutoCompleteTextView) C1141d.this.f7379a.getEditText());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$h */
    class h implements View.OnTouchListener {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ AutoCompleteTextView f7375b;

        h(AutoCompleteTextView autoCompleteTextView) {
            this.f7375b = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (C1141d.this.m8865C()) {
                    C1141d.this.f7356i = false;
                }
                C1141d.this.m8870H(this.f7375b);
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$i */
    class i implements AutoCompleteTextView.OnDismissListener {
        i() {
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            C1141d.this.f7356i = true;
            C1141d.this.f7358k = System.currentTimeMillis();
            C1141d.this.m8867E(false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$j */
    class j extends AnimatorListenerAdapter {
        j() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C1141d c1141d = C1141d.this;
            c1141d.f7381c.setChecked(c1141d.f7357j);
            C1141d.this.f7363p.start();
        }
    }

    static {
        f7350q = Build.VERSION.SDK_INT >= 21;
    }

    C1141d(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f7351d = new a();
        this.f7352e = new c();
        this.f7353f = new d(this.f7379a);
        this.f7354g = new e();
        this.f7355h = new f();
        this.f7356i = false;
        this.f7357j = false;
        this.f7358k = Long.MAX_VALUE;
    }

    /* JADX INFO: renamed from: A */
    private C1208g m8863A(float f2, float f3, float f4, int i2) {
        C1212k.b bVarM9212a = C1212k.m9212a();
        bVarM9212a.m9250A(f2);
        bVarM9212a.m9254E(f2);
        bVarM9212a.m9261s(f3);
        bVarM9212a.m9265w(f3);
        C1212k c1212kM9256m = bVarM9212a.m9256m();
        C1208g c1208gM9164m = C1208g.m9164m(this.f7380b, f4);
        c1208gM9164m.setShapeAppearanceModel(c1212kM9256m);
        c1208gM9164m.m9186Y(0, i2, 0, i2);
        return c1208gM9164m;
    }

    /* JADX INFO: renamed from: B */
    private void m8864B() {
        this.f7363p = m8892z(67, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        ValueAnimator valueAnimatorM8892z = m8892z(50, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO);
        this.f7362o = valueAnimatorM8892z;
        valueAnimatorM8892z.addListener(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: C */
    public boolean m8865C() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.f7358k;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: D */
    public static boolean m8866D(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: E */
    public void m8867E(boolean z) {
        if (this.f7357j != z) {
            this.f7357j = z;
            this.f7363p.cancel();
            this.f7362o.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: F */
    public void m8868F(AutoCompleteTextView autoCompleteTextView) {
        if (f7350q) {
            int boxBackgroundMode = this.f7379a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f7360m);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.f7359l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    /* JADX INFO: renamed from: G */
    public void m8869G(AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new h(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.f7352e);
        if (f7350q) {
            autoCompleteTextView.setOnDismissListener(new i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: H */
    public void m8870H(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (m8865C()) {
            this.f7356i = false;
        }
        if (this.f7356i) {
            this.f7356i = false;
            return;
        }
        if (f7350q) {
            m8867E(!this.f7357j);
        } else {
            this.f7357j = !this.f7357j;
            this.f7381c.toggle();
        }
        if (!this.f7357j) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: v */
    public void m8888v(AutoCompleteTextView autoCompleteTextView) {
        if (m8866D(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.f7379a.getBoxBackgroundMode();
        C1208g boxBackground = this.f7379a.getBoxBackground();
        int iM9428c = C1247a.m9428c(autoCompleteTextView, C1216b.colorControlHighlight);
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            m8890x(autoCompleteTextView, iM9428c, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            m8889w(autoCompleteTextView, iM9428c, iArr, boxBackground);
        }
    }

    /* JADX INFO: renamed from: w */
    private void m8889w(AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, C1208g c1208g) {
        int boxBackgroundColor = this.f7379a.getBoxBackgroundColor();
        int[] iArr2 = {C1247a.m9431f(i2, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (f7350q) {
            C0292v.m2111r0(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), c1208g, c1208g));
            return;
        }
        C1208g c1208g2 = new C1208g(c1208g.m9172C());
        c1208g2.m9184W(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c1208g, c1208g2});
        int iM2058I = C0292v.m2058I(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int iM2056H = C0292v.m2056H(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        C0292v.m2111r0(autoCompleteTextView, layerDrawable);
        C0292v.m2043A0(autoCompleteTextView, iM2058I, paddingTop, iM2056H, paddingBottom);
    }

    /* JADX INFO: renamed from: x */
    private void m8890x(AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, C1208g c1208g) {
        LayerDrawable layerDrawable;
        int iM9428c = C1247a.m9428c(autoCompleteTextView, C1216b.colorSurface);
        C1208g c1208g2 = new C1208g(c1208g.m9172C());
        int iM9431f = C1247a.m9431f(i2, iM9428c, 0.1f);
        c1208g2.m9184W(new ColorStateList(iArr, new int[]{iM9431f, 0}));
        if (f7350q) {
            c1208g2.setTint(iM9428c);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iM9431f, iM9428c});
            C1208g c1208g3 = new C1208g(c1208g.m9172C());
            c1208g3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, c1208g2, c1208g3), c1208g});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{c1208g2, c1208g});
        }
        C0292v.m2111r0(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y */
    public static AutoCompleteTextView m8891y(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    /* JADX INFO: renamed from: z */
    private ValueAnimator m8892z(int i2, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(C1227a.f7754a);
        valueAnimatorOfFloat.setDuration(i2);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.textfield.AbstractC1142e
    /* JADX INFO: renamed from: a */
    void mo8852a() {
        float dimensionPixelOffset = this.f7380b.getResources().getDimensionPixelOffset(C1219d.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f7380b.getResources().getDimensionPixelOffset(C1219d.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f7380b.getResources().getDimensionPixelOffset(C1219d.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        C1208g c1208gM8863A = m8863A(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        C1208g c1208gM8863A2 = m8863A(CropImageView.DEFAULT_ASPECT_RATIO, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.f7360m = c1208gM8863A;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.f7359l = stateListDrawable;
        stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, c1208gM8863A);
        this.f7359l.addState(new int[0], c1208gM8863A2);
        this.f7379a.setEndIconDrawable(C0503a.m4047d(this.f7380b, f7350q ? C1220e.mtrl_dropdown_arrow : C1220e.mtrl_ic_arrow_drop_down));
        TextInputLayout textInputLayout = this.f7379a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(C1224i.exposed_dropdown_menu_content_description));
        this.f7379a.setEndIconOnClickListener(new g());
        this.f7379a.m8831e(this.f7354g);
        this.f7379a.m8833f(this.f7355h);
        m8864B();
        this.f7361n = (AccessibilityManager) this.f7380b.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.AbstractC1142e
    /* JADX INFO: renamed from: b */
    boolean mo8893b(int i2) {
        return i2 != 0;
    }

    @Override // com.google.android.material.textfield.AbstractC1142e
    /* JADX INFO: renamed from: d */
    boolean mo8894d() {
        return true;
    }
}
