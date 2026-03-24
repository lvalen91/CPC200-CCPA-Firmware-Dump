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
import androidx.core.view.v;
import com.google.android.material.textfield.TextInputLayout;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.k;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class d extends com.google.android.material.textfield.e {
    private static final boolean q;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final TextWatcher f2198d;
    private final View.OnFocusChangeListener e;
    private final TextInputLayout.e f;
    private final TextInputLayout.f g;

    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.g h;
    private boolean i;
    private boolean j;
    private long k;
    private StateListDrawable l;
    private d.c.a.a.a0.g m;
    private AccessibilityManager n;
    private ValueAnimator o;
    private ValueAnimator p;

    class a extends com.google.android.material.internal.i {

        /* JADX INFO: renamed from: com.google.android.material.textfield.d$a$a, reason: collision with other inner class name */
        class RunnableC0115a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AutoCompleteTextView f2200b;

            RunnableC0115a(AutoCompleteTextView autoCompleteTextView) {
                this.f2200b = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean zIsPopupShowing = this.f2200b.isPopupShowing();
                d.this.E(zIsPopupShowing);
                d.this.i = zIsPopupShowing;
            }
        }

        a() {
        }

        @Override // com.google.android.material.internal.i, android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            AutoCompleteTextView autoCompleteTextViewY = d.y(d.this.a.getEditText());
            if (d.this.n.isTouchExplorationEnabled() && d.D(autoCompleteTextViewY) && !d.this.f2209c.hasFocus()) {
                autoCompleteTextViewY.dismissDropDown();
            }
            autoCompleteTextViewY.post(new RunnableC0115a(autoCompleteTextViewY));
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            d.this.f2209c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            d.this.a.setEndIconActivated(z);
            if (z) {
                return;
            }
            d.this.E(false);
            d.this.i = false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.d$d, reason: collision with other inner class name */
    class C0116d extends TextInputLayout.e {
        C0116d(TextInputLayout textInputLayout) {
            super(textInputLayout);
        }

        @Override // com.google.android.material.textfield.TextInputLayout.e, androidx.core.view.a
        public void g(View view, androidx.core.view.e0.c cVar) {
            super.g(view, cVar);
            if (!d.D(d.this.a.getEditText())) {
                cVar.W(Spinner.class.getName());
            }
            if (cVar.J()) {
                cVar.g0(null);
            }
        }

        @Override // androidx.core.view.a
        public void h(View view, AccessibilityEvent accessibilityEvent) {
            super.h(view, accessibilityEvent);
            AutoCompleteTextView autoCompleteTextViewY = d.y(d.this.a.getEditText());
            if (accessibilityEvent.getEventType() == 1 && d.this.n.isTouchExplorationEnabled() && !d.D(d.this.a.getEditText())) {
                d.this.H(autoCompleteTextViewY);
            }
        }
    }

    class e implements TextInputLayout.f {
        e() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) {
            AutoCompleteTextView autoCompleteTextViewY = d.y(textInputLayout.getEditText());
            d.this.F(autoCompleteTextViewY);
            d.this.v(autoCompleteTextViewY);
            d.this.G(autoCompleteTextViewY);
            autoCompleteTextViewY.setThreshold(0);
            autoCompleteTextViewY.removeTextChangedListener(d.this.f2198d);
            autoCompleteTextViewY.addTextChangedListener(d.this.f2198d);
            textInputLayout.setEndIconCheckable(true);
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (!d.D(autoCompleteTextViewY)) {
                v.x0(d.this.f2209c, 2);
            }
            textInputLayout.setTextInputAccessibilityDelegate(d.this.f);
            textInputLayout.setEndIconVisible(true);
        }
    }

    class f implements TextInputLayout.g {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AutoCompleteTextView f2203b;

            a(AutoCompleteTextView autoCompleteTextView) {
                this.f2203b = autoCompleteTextView;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f2203b.removeTextChangedListener(d.this.f2198d);
            }
        }

        f() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.g
        public void a(TextInputLayout textInputLayout, int i) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout.getEditText();
            if (autoCompleteTextView == null || i != 3) {
                return;
            }
            autoCompleteTextView.post(new a(autoCompleteTextView));
            if (autoCompleteTextView.getOnFocusChangeListener() == d.this.e) {
                autoCompleteTextView.setOnFocusChangeListener(null);
            }
            autoCompleteTextView.setOnTouchListener(null);
            if (d.q) {
                autoCompleteTextView.setOnDismissListener(null);
            }
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.H((AutoCompleteTextView) d.this.a.getEditText());
        }
    }

    class h implements View.OnTouchListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ AutoCompleteTextView f2206b;

        h(AutoCompleteTextView autoCompleteTextView) {
            this.f2206b = autoCompleteTextView;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getAction() == 1) {
                if (d.this.C()) {
                    d.this.i = false;
                }
                d.this.H(this.f2206b);
            }
            return false;
        }
    }

    class i implements AutoCompleteTextView.OnDismissListener {
        i() {
        }

        @Override // android.widget.AutoCompleteTextView.OnDismissListener
        public void onDismiss() {
            d.this.i = true;
            d.this.k = System.currentTimeMillis();
            d.this.E(false);
        }
    }

    class j extends AnimatorListenerAdapter {
        j() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            d dVar = d.this;
            dVar.f2209c.setChecked(dVar.j);
            d.this.p.start();
        }
    }

    static {
        q = Build.VERSION.SDK_INT >= 21;
    }

    d(TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.f2198d = new a();
        this.e = new c();
        this.f = new C0116d(this.a);
        this.g = new e();
        this.h = new f();
        this.i = false;
        this.j = false;
        this.k = Long.MAX_VALUE;
    }

    private d.c.a.a.a0.g A(float f2, float f3, float f4, int i2) {
        k.b bVarA = k.a();
        bVarA.A(f2);
        bVarA.E(f2);
        bVarA.s(f3);
        bVarA.w(f3);
        k kVarM = bVarA.m();
        d.c.a.a.a0.g gVarM = d.c.a.a.a0.g.m(this.f2208b, f4);
        gVarM.setShapeAppearanceModel(kVarM);
        gVarM.Y(0, i2, 0, i2);
        return gVarM;
    }

    private void B() {
        this.p = z(67, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        ValueAnimator valueAnimatorZ = z(50, 1.0f, CropImageView.DEFAULT_ASPECT_RATIO);
        this.o = valueAnimatorZ;
        valueAnimatorZ.addListener(new j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean C() {
        long jCurrentTimeMillis = System.currentTimeMillis() - this.k;
        return jCurrentTimeMillis < 0 || jCurrentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean D(EditText editText) {
        return editText.getKeyListener() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E(boolean z) {
        if (this.j != z) {
            this.j = z;
            this.p.cancel();
            this.o.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(AutoCompleteTextView autoCompleteTextView) {
        if (q) {
            int boxBackgroundMode = this.a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.m);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.l);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void G(AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new h(autoCompleteTextView));
        autoCompleteTextView.setOnFocusChangeListener(this.e);
        if (q) {
            autoCompleteTextView.setOnDismissListener(new i());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H(AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (C()) {
            this.i = false;
        }
        if (this.i) {
            this.i = false;
            return;
        }
        if (q) {
            E(!this.j);
        } else {
            this.j = !this.j;
            this.f2209c.toggle();
        }
        if (!this.j) {
            autoCompleteTextView.dismissDropDown();
        } else {
            autoCompleteTextView.requestFocus();
            autoCompleteTextView.showDropDown();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void v(AutoCompleteTextView autoCompleteTextView) {
        if (D(autoCompleteTextView)) {
            return;
        }
        int boxBackgroundMode = this.a.getBoxBackgroundMode();
        d.c.a.a.a0.g boxBackground = this.a.getBoxBackground();
        int iC = d.c.a.a.q.a.c(autoCompleteTextView, d.c.a.a.b.colorControlHighlight);
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            x(autoCompleteTextView, iC, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            w(autoCompleteTextView, iC, iArr, boxBackground);
        }
    }

    private void w(AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, d.c.a.a.a0.g gVar) {
        int boxBackgroundColor = this.a.getBoxBackgroundColor();
        int[] iArr2 = {d.c.a.a.q.a.f(i2, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (q) {
            v.r0(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), gVar, gVar));
            return;
        }
        d.c.a.a.a0.g gVar2 = new d.c.a.a.a0.g(gVar.C());
        gVar2.W(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gVar, gVar2});
        int I = v.I(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int iH = v.H(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        v.r0(autoCompleteTextView, layerDrawable);
        v.A0(autoCompleteTextView, I, paddingTop, iH, paddingBottom);
    }

    private void x(AutoCompleteTextView autoCompleteTextView, int i2, int[][] iArr, d.c.a.a.a0.g gVar) {
        LayerDrawable layerDrawable;
        int iC = d.c.a.a.q.a.c(autoCompleteTextView, d.c.a.a.b.colorSurface);
        d.c.a.a.a0.g gVar2 = new d.c.a.a.a0.g(gVar.C());
        int iF = d.c.a.a.q.a.f(i2, iC, 0.1f);
        gVar2.W(new ColorStateList(iArr, new int[]{iF, 0}));
        if (q) {
            gVar2.setTint(iC);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iF, iC});
            d.c.a.a.a0.g gVar3 = new d.c.a.a.a0.g(gVar.C());
            gVar3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, gVar2, gVar3), gVar});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{gVar2, gVar});
        }
        v.r0(autoCompleteTextView, layerDrawable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AutoCompleteTextView y(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            return (AutoCompleteTextView) editText;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    private ValueAnimator z(int i2, float... fArr) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(fArr);
        valueAnimatorOfFloat.setInterpolator(d.c.a.a.l.a.a);
        valueAnimatorOfFloat.setDuration(i2);
        valueAnimatorOfFloat.addUpdateListener(new b());
        return valueAnimatorOfFloat;
    }

    @Override // com.google.android.material.textfield.e
    void a() {
        float dimensionPixelOffset = this.f2208b.getResources().getDimensionPixelOffset(d.c.a.a.d.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.f2208b.getResources().getDimensionPixelOffset(d.c.a.a.d.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.f2208b.getResources().getDimensionPixelOffset(d.c.a.a.d.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        d.c.a.a.a0.g gVarA = A(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        d.c.a.a.a0.g gVarA2 = A(CropImageView.DEFAULT_ASPECT_RATIO, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.m = gVarA;
        StateListDrawable stateListDrawable = new StateListDrawable();
        this.l = stateListDrawable;
        stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, gVarA);
        this.l.addState(new int[0], gVarA2);
        this.a.setEndIconDrawable(c.a.k.a.a.d(this.f2208b, q ? d.c.a.a.e.mtrl_dropdown_arrow : d.c.a.a.e.mtrl_ic_arrow_drop_down));
        TextInputLayout textInputLayout = this.a;
        textInputLayout.setEndIconContentDescription(textInputLayout.getResources().getText(d.c.a.a.i.exposed_dropdown_menu_content_description));
        this.a.setEndIconOnClickListener(new g());
        this.a.e(this.g);
        this.a.f(this.h);
        B();
        this.n = (AccessibilityManager) this.f2208b.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.e
    boolean b(int i2) {
        return i2 != 0;
    }

    @Override // com.google.android.material.textfield.e
    boolean d() {
        return true;
    }
}
