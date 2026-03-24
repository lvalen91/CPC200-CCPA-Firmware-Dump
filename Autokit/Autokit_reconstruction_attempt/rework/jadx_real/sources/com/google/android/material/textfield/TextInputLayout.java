package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.c0;
import androidx.appcompat.widget.u0;
import androidx.appcompat.widget.x;
import androidx.core.view.v;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.l;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.k;
import d.c.a.a.j;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class TextInputLayout extends LinearLayout {
    private static final int N0 = j.Widget_Design_TextInputLayout;
    private final TextView A;
    private ColorStateList A0;
    private boolean B;
    private int B0;
    private CharSequence C;
    private int C0;
    private boolean D;
    private int D0;
    private d.c.a.a.a0.g E;
    private int E0;
    private d.c.a.a.a0.g F;
    private int F0;
    private k G;
    private boolean G0;
    private final int H;
    final com.google.android.material.internal.a H0;
    private int I;
    private boolean I0;
    private int J;
    private boolean J0;
    private int K;
    private ValueAnimator K0;
    private int L;
    private boolean L0;
    private int M;
    private boolean M0;
    private int N;
    private int O;
    private int P;
    private final Rect Q;
    private final Rect R;
    private final RectF S;
    private Typeface T;
    private final CheckableImageButton U;
    private ColorStateList V;
    private boolean W;
    private PorterDuff.Mode a0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final FrameLayout f2184b;
    private boolean b0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final LinearLayout f2185c;
    private Drawable c0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final LinearLayout f2186d;
    private int d0;
    private final FrameLayout e;
    private View.OnLongClickListener e0;
    EditText f;
    private final LinkedHashSet<f> f0;
    private CharSequence g;
    private int g0;
    private int h;
    private final SparseArray<com.google.android.material.textfield.e> h0;
    private int i;
    private final CheckableImageButton i0;
    private final com.google.android.material.textfield.f j;
    private final LinkedHashSet<g> j0;
    boolean k;
    private ColorStateList k0;
    private int l;
    private boolean l0;
    private boolean m;
    private PorterDuff.Mode m0;
    private TextView n;
    private boolean n0;
    private int o;
    private Drawable o0;
    private int p;
    private int p0;
    private CharSequence q;
    private Drawable q0;
    private boolean r;
    private View.OnLongClickListener r0;
    private TextView s;
    private View.OnLongClickListener s0;
    private ColorStateList t;
    private final CheckableImageButton t0;
    private int u;
    private ColorStateList u0;
    private ColorStateList v;
    private ColorStateList v0;
    private ColorStateList w;
    private ColorStateList w0;
    private CharSequence x;
    private int x0;
    private final TextView y;
    private int y0;
    private CharSequence z;
    private int z0;

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout.this.v0(!r0.M0);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.k) {
                textInputLayout.n0(editable.length());
            }
            if (TextInputLayout.this.r) {
                TextInputLayout.this.z0(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.i0.performClick();
            TextInputLayout.this.i0.jumpDrawablesToCurrentState();
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f.requestLayout();
        }
    }

    class d implements ValueAnimator.AnimatorUpdateListener {
        d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.H0.a0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public static class e extends androidx.core.view.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final TextInputLayout f2190d;

        public e(TextInputLayout textInputLayout) {
            this.f2190d = textInputLayout;
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.e0.c cVar) {
            super.g(view, cVar);
            EditText editText = this.f2190d.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f2190d.getHint();
            CharSequence error = this.f2190d.getError();
            CharSequence placeholderText = this.f2190d.getPlaceholderText();
            int counterMaxLength = this.f2190d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f2190d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !this.f2190d.N();
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z2 ? hint.toString() : BuildConfig.FLAVOR;
            if (z) {
                cVar.r0(text);
            } else if (!TextUtils.isEmpty(string)) {
                cVar.r0(string);
                if (z3 && placeholderText != null) {
                    cVar.r0(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                cVar.r0(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    cVar.g0(string);
                } else {
                    if (z) {
                        string = ((Object) text) + ", " + string;
                    }
                    cVar.r0(string);
                }
                cVar.o0(!z);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            cVar.h0(counterMaxLength);
            if (z5) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                cVar.c0(error);
            }
            if (Build.VERSION.SDK_INT < 17 || editText == null) {
                return;
            }
            editText.setLabelFor(d.c.a.a.f.textinput_helper_text);
        }
    }

    public interface f {
        void a(TextInputLayout textInputLayout);
    }

    public interface g {
        void a(TextInputLayout textInputLayout, int i);
    }

    static class h extends c.i.a.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        CharSequence f2191d;
        boolean e;
        CharSequence f;
        CharSequence g;
        CharSequence h;

        static class a implements Parcelable.ClassLoaderCreator<h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public h[] newArray(int i) {
                return new h[i];
            }
        }

        h(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f2191d) + " hint=" + ((Object) this.f) + " helperText=" + ((Object) this.g) + " placeholderText=" + ((Object) this.h) + "}";
        }

        @Override // c.i.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f2191d, parcel, i);
            parcel.writeInt(this.e ? 1 : 0);
            TextUtils.writeToParcel(this.f, parcel, i);
            TextUtils.writeToParcel(this.g, parcel, i);
            TextUtils.writeToParcel(this.h, parcel, i);
        }

        h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2191d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.e = parcel.readInt() == 1;
            this.f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.c.a.a.b.textInputStyle);
    }

    private boolean A() {
        return this.B && !TextUtils.isEmpty(this.C) && (this.E instanceof com.google.android.material.textfield.c);
    }

    private void A0() {
        if (this.f == null) {
            return;
        }
        v.A0(this.y, Q() ? 0 : v.I(this.f), this.f.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(d.c.a.a.d.material_input_text_to_prefix_suffix_padding), this.f.getCompoundPaddingBottom());
    }

    private void B() {
        Iterator<f> it = this.f0.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    private void B0() {
        this.y.setVisibility((this.x == null || N()) ? 8 : 0);
        r0();
    }

    private void C(int i) {
        Iterator<g> it = this.j0.iterator();
        while (it.hasNext()) {
            it.next().a(this, i);
        }
    }

    private void C0(boolean z, boolean z2) {
        int defaultColor = this.A0.getDefaultColor();
        int colorForState = this.A0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.A0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.O = colorForState2;
        } else if (z2) {
            this.O = colorForState;
        } else {
            this.O = defaultColor;
        }
    }

    private void D(Canvas canvas) {
        d.c.a.a.a0.g gVar = this.F;
        if (gVar != null) {
            Rect bounds = gVar.getBounds();
            bounds.top = bounds.bottom - this.L;
            this.F.draw(canvas);
        }
    }

    private void D0() {
        if (this.f == null) {
            return;
        }
        v.A0(this.A, getContext().getResources().getDimensionPixelSize(d.c.a.a.d.material_input_text_to_prefix_suffix_padding), this.f.getPaddingTop(), (K() || L()) ? 0 : v.H(this.f), this.f.getPaddingBottom());
    }

    private void E(Canvas canvas) {
        if (this.B) {
            this.H0.m(canvas);
        }
    }

    private void E0() {
        int visibility = this.A.getVisibility();
        boolean z = (this.z == null || N()) ? false : true;
        this.A.setVisibility(z ? 0 : 8);
        if (visibility != this.A.getVisibility()) {
            getEndIconDelegate().c(z);
        }
        r0();
    }

    private void F(boolean z) {
        ValueAnimator valueAnimator = this.K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.K0.cancel();
        }
        if (z && this.J0) {
            i(CropImageView.DEFAULT_ASPECT_RATIO);
        } else {
            this.H0.a0(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        if (A() && ((com.google.android.material.textfield.c) this.E).i0()) {
            y();
        }
        this.G0 = true;
        J();
        B0();
        E0();
    }

    private int G(int i, boolean z) {
        int compoundPaddingLeft = i + this.f.getCompoundPaddingLeft();
        return (this.x == null || z) ? compoundPaddingLeft : (compoundPaddingLeft - this.y.getMeasuredWidth()) + this.y.getPaddingLeft();
    }

    private int H(int i, boolean z) {
        int compoundPaddingRight = i - this.f.getCompoundPaddingRight();
        return (this.x == null || !z) ? compoundPaddingRight : compoundPaddingRight + (this.y.getMeasuredWidth() - this.y.getPaddingRight());
    }

    private boolean I() {
        return this.g0 != 0;
    }

    private void J() {
        TextView textView = this.s;
        if (textView == null || !this.r) {
            return;
        }
        textView.setText((CharSequence) null);
        this.s.setVisibility(4);
    }

    private boolean L() {
        return this.t0.getVisibility() == 0;
    }

    private boolean P() {
        return this.J == 1 && (Build.VERSION.SDK_INT < 16 || this.f.getMinLines() <= 1);
    }

    private int[] R(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        return iArrCopyOf;
    }

    private void S() {
        p();
        a0();
        F0();
        k0();
        h();
        if (this.J != 0) {
            u0();
        }
    }

    private void T() {
        if (A()) {
            RectF rectF = this.S;
            this.H0.p(rectF, this.f.getWidth(), this.f.getGravity());
            l(rectF);
            int i = this.L;
            this.I = i;
            rectF.top = CropImageView.DEFAULT_ASPECT_RATIO;
            rectF.bottom = i;
            rectF.offset(-getPaddingLeft(), CropImageView.DEFAULT_ASPECT_RATIO);
            ((com.google.android.material.textfield.c) this.E).o0(rectF);
        }
    }

    private static void U(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                U((ViewGroup) childAt, z);
            }
        }
    }

    private void X(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(R(checkableImageButton), colorStateList.getDefaultColor());
        Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawable).mutate();
        androidx.core.graphics.drawable.a.o(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    private void Z() {
        TextView textView = this.s;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    private void a0() {
        if (h0()) {
            v.r0(this.f, this.E);
        }
    }

    private static void b0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean zO = v.O(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z2 = zO || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(zO);
        checkableImageButton.setPressable(zO);
        checkableImageButton.setLongClickable(z);
        v.x0(checkableImageButton, z2 ? 1 : 2);
    }

    private static void c0(CheckableImageButton checkableImageButton, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        b0(checkableImageButton, onLongClickListener);
    }

    private static void d0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        b0(checkableImageButton, onLongClickListener);
    }

    private boolean f0() {
        return (this.t0.getVisibility() == 0 || ((I() && K()) || this.z != null)) && this.f2186d.getMeasuredWidth() > 0;
    }

    private void g() {
        TextView textView = this.s;
        if (textView != null) {
            this.f2184b.addView(textView);
            this.s.setVisibility(0);
        }
    }

    private boolean g0() {
        return !(getStartIconDrawable() == null && this.x == null) && this.f2185c.getMeasuredWidth() > 0;
    }

    private com.google.android.material.textfield.e getEndIconDelegate() {
        com.google.android.material.textfield.e eVar = this.h0.get(this.g0);
        return eVar != null ? eVar : this.h0.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.t0.getVisibility() == 0) {
            return this.t0;
        }
        if (I() && K()) {
            return this.i0;
        }
        return null;
    }

    private void h() {
        if (this.f == null || this.J != 1) {
            return;
        }
        if (d.c.a.a.x.c.h(getContext())) {
            EditText editText = this.f;
            v.A0(editText, v.I(editText), getResources().getDimensionPixelSize(d.c.a.a.d.material_filled_edittext_font_2_0_padding_top), v.H(this.f), getResources().getDimensionPixelSize(d.c.a.a.d.material_filled_edittext_font_2_0_padding_bottom));
        } else if (d.c.a.a.x.c.g(getContext())) {
            EditText editText2 = this.f;
            v.A0(editText2, v.I(editText2), getResources().getDimensionPixelSize(d.c.a.a.d.material_filled_edittext_font_1_3_padding_top), v.H(this.f), getResources().getDimensionPixelSize(d.c.a.a.d.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    private boolean h0() {
        EditText editText = this.f;
        return (editText == null || this.E == null || editText.getBackground() != null || this.J == 0) ? false : true;
    }

    private void i0() {
        TextView textView = this.s;
        if (textView == null || !this.r) {
            return;
        }
        textView.setText(this.q);
        this.s.setVisibility(0);
        this.s.bringToFront();
    }

    private void j() {
        d.c.a.a.a0.g gVar = this.E;
        if (gVar == null) {
            return;
        }
        gVar.setShapeAppearanceModel(this.G);
        if (w()) {
            this.E.b0(this.L, this.O);
        }
        int iQ = q();
        this.P = iQ;
        this.E.W(ColorStateList.valueOf(iQ));
        if (this.g0 == 3) {
            this.f.getBackground().invalidateSelf();
        }
        k();
        invalidate();
    }

    private void j0(boolean z) {
        if (!z || getEndIconDrawable() == null) {
            m();
            return;
        }
        Drawable drawableMutate = androidx.core.graphics.drawable.a.r(getEndIconDrawable()).mutate();
        androidx.core.graphics.drawable.a.n(drawableMutate, this.j.o());
        this.i0.setImageDrawable(drawableMutate);
    }

    private void k() {
        if (this.F == null) {
            return;
        }
        if (x()) {
            this.F.W(ColorStateList.valueOf(this.O));
        }
        invalidate();
    }

    private void k0() {
        if (this.J == 1) {
            if (d.c.a.a.x.c.h(getContext())) {
                this.K = getResources().getDimensionPixelSize(d.c.a.a.d.material_font_2_0_box_collapsed_padding_top);
            } else if (d.c.a.a.x.c.g(getContext())) {
                this.K = getResources().getDimensionPixelSize(d.c.a.a.d.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    private void l(RectF rectF) {
        float f2 = rectF.left;
        int i = this.H;
        rectF.left = f2 - i;
        rectF.right += i;
    }

    private void l0(Rect rect) {
        d.c.a.a.a0.g gVar = this.F;
        if (gVar != null) {
            int i = rect.bottom;
            gVar.setBounds(rect.left, i - this.N, rect.right, i);
        }
    }

    private void m() {
        n(this.i0, this.l0, this.k0, this.n0, this.m0);
    }

    private void m0() {
        if (this.n != null) {
            EditText editText = this.f;
            n0(editText == null ? 0 : editText.getText().length());
        }
    }

    private void n(CheckableImageButton checkableImageButton, boolean z, ColorStateList colorStateList, boolean z2, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z || z2)) {
            drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
            if (z) {
                androidx.core.graphics.drawable.a.o(drawable, colorStateList);
            }
            if (z2) {
                androidx.core.graphics.drawable.a.p(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private void o() {
        n(this.U, this.W, this.V, this.b0, this.a0);
    }

    private static void o0(Context context, TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? d.c.a.a.i.character_counter_overflowed_content_description : d.c.a.a.i.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    private void p() {
        int i = this.J;
        if (i == 0) {
            this.E = null;
            this.F = null;
            return;
        }
        if (i == 1) {
            this.E = new d.c.a.a.a0.g(this.G);
            this.F = new d.c.a.a.a0.g();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(this.J + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.B || (this.E instanceof com.google.android.material.textfield.c)) {
                this.E = new d.c.a.a.a0.g(this.G);
            } else {
                this.E = new com.google.android.material.textfield.c(this.G);
            }
            this.F = null;
        }
    }

    private void p0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.n;
        if (textView != null) {
            e0(textView, this.m ? this.o : this.p);
            if (!this.m && (colorStateList2 = this.v) != null) {
                this.n.setTextColor(colorStateList2);
            }
            if (!this.m || (colorStateList = this.w) == null) {
                return;
            }
            this.n.setTextColor(colorStateList);
        }
    }

    private int q() {
        return this.J == 1 ? d.c.a.a.q.a.e(d.c.a.a.q.a.d(this, d.c.a.a.b.colorSurface, 0), this.P) : this.P;
    }

    private void q0() {
        if (!A() || this.G0 || this.I == this.L) {
            return;
        }
        y();
        T();
    }

    private Rect r(Rect rect) {
        if (this.f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.R;
        boolean z = v.C(this) == 1;
        rect2.bottom = rect.bottom;
        int i = this.J;
        if (i == 1) {
            rect2.left = G(rect.left, z);
            rect2.top = rect.top + this.K;
            rect2.right = H(rect.right, z);
            return rect2;
        }
        if (i != 2) {
            rect2.left = G(rect.left, z);
            rect2.top = getPaddingTop();
            rect2.right = H(rect.right, z);
            return rect2;
        }
        rect2.left = rect.left + this.f.getPaddingLeft();
        rect2.top = rect.top - v();
        rect2.right = rect.right - this.f.getPaddingRight();
        return rect2;
    }

    private boolean r0() {
        boolean z;
        if (this.f == null) {
            return false;
        }
        boolean z2 = true;
        if (g0()) {
            int measuredWidth = this.f2185c.getMeasuredWidth() - this.f.getPaddingLeft();
            if (this.c0 == null || this.d0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.c0 = colorDrawable;
                this.d0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrA = androidx.core.widget.i.a(this.f);
            Drawable drawable = drawableArrA[0];
            Drawable drawable2 = this.c0;
            if (drawable != drawable2) {
                androidx.core.widget.i.i(this.f, drawable2, drawableArrA[1], drawableArrA[2], drawableArrA[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.c0 != null) {
                Drawable[] drawableArrA2 = androidx.core.widget.i.a(this.f);
                androidx.core.widget.i.i(this.f, null, drawableArrA2[1], drawableArrA2[2], drawableArrA2[3]);
                this.c0 = null;
                z = true;
            }
            z = false;
        }
        if (f0()) {
            int measuredWidth2 = this.A.getMeasuredWidth() - this.f.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + androidx.core.view.h.b((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] drawableArrA3 = androidx.core.widget.i.a(this.f);
            Drawable drawable3 = this.o0;
            if (drawable3 == null || this.p0 == measuredWidth2) {
                if (this.o0 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.o0 = colorDrawable2;
                    this.p0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = drawableArrA3[2];
                Drawable drawable5 = this.o0;
                if (drawable4 != drawable5) {
                    this.q0 = drawableArrA3[2];
                    androidx.core.widget.i.i(this.f, drawableArrA3[0], drawableArrA3[1], drawable5, drawableArrA3[3]);
                } else {
                    z2 = z;
                }
            } else {
                this.p0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                androidx.core.widget.i.i(this.f, drawableArrA3[0], drawableArrA3[1], this.o0, drawableArrA3[3]);
            }
        } else {
            if (this.o0 == null) {
                return z;
            }
            Drawable[] drawableArrA4 = androidx.core.widget.i.a(this.f);
            if (drawableArrA4[2] == this.o0) {
                androidx.core.widget.i.i(this.f, drawableArrA4[0], drawableArrA4[1], this.q0, drawableArrA4[3]);
            } else {
                z2 = z;
            }
            this.o0 = null;
        }
        return z2;
    }

    private int s(Rect rect, Rect rect2, float f2) {
        return P() ? (int) (rect2.top + f2) : rect.bottom - this.f.getCompoundPaddingBottom();
    }

    private void setEditText(EditText editText) {
        if (this.f != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.g0 != 3) {
            boolean z = editText instanceof TextInputEditText;
        }
        this.f = editText;
        setMinWidth(this.h);
        setMaxWidth(this.i);
        S();
        setTextInputAccessibilityDelegate(new e(this));
        this.H0.g0(this.f.getTypeface());
        this.H0.Y(this.f.getTextSize());
        int gravity = this.f.getGravity();
        this.H0.Q((gravity & (-113)) | 48);
        this.H0.X(gravity);
        this.f.addTextChangedListener(new a());
        if (this.v0 == null) {
            this.v0 = this.f.getHintTextColors();
        }
        if (this.B) {
            if (TextUtils.isEmpty(this.C)) {
                CharSequence hint = this.f.getHint();
                this.g = hint;
                setHint(hint);
                this.f.setHint((CharSequence) null);
            }
            this.D = true;
        }
        if (this.n != null) {
            n0(this.f.getText().length());
        }
        s0();
        this.j.e();
        this.f2185c.bringToFront();
        this.f2186d.bringToFront();
        this.e.bringToFront();
        this.t0.bringToFront();
        B();
        A0();
        D0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        w0(false, true);
    }

    private void setErrorIconVisible(boolean z) {
        this.t0.setVisibility(z ? 0 : 8);
        this.e.setVisibility(z ? 8 : 0);
        D0();
        if (I()) {
            return;
        }
        r0();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.C)) {
            return;
        }
        this.C = charSequence;
        this.H0.e0(charSequence);
        if (this.G0) {
            return;
        }
        T();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.r == z) {
            return;
        }
        if (z) {
            x xVar = new x(getContext());
            this.s = xVar;
            xVar.setId(d.c.a.a.f.textinput_placeholder);
            v.q0(this.s, 1);
            setPlaceholderTextAppearance(this.u);
            setPlaceholderTextColor(this.t);
            g();
        } else {
            Z();
            this.s = null;
        }
        this.r = z;
    }

    private int t(Rect rect, float f2) {
        return P() ? (int) (rect.centerY() - (f2 / 2.0f)) : rect.top + this.f.getCompoundPaddingTop();
    }

    private boolean t0() {
        int iMax;
        if (this.f == null || this.f.getMeasuredHeight() >= (iMax = Math.max(this.f2186d.getMeasuredHeight(), this.f2185c.getMeasuredHeight()))) {
            return false;
        }
        this.f.setMinimumHeight(iMax);
        return true;
    }

    private Rect u(Rect rect) {
        if (this.f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.R;
        float fX = this.H0.x();
        rect2.left = rect.left + this.f.getCompoundPaddingLeft();
        rect2.top = t(rect, fX);
        rect2.right = rect.right - this.f.getCompoundPaddingRight();
        rect2.bottom = s(rect, rect2, fX);
        return rect2;
    }

    private void u0() {
        if (this.J != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f2184b.getLayoutParams();
            int iV = v();
            if (iV != layoutParams.topMargin) {
                layoutParams.topMargin = iV;
                this.f2184b.requestLayout();
            }
        }
    }

    private int v() {
        float fR;
        if (!this.B) {
            return 0;
        }
        int i = this.J;
        if (i == 0 || i == 1) {
            fR = this.H0.r();
        } else {
            if (i != 2) {
                return 0;
            }
            fR = this.H0.r() / 2.0f;
        }
        return (int) fR;
    }

    private boolean w() {
        return this.J == 2 && x();
    }

    private void w0(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean zK = this.j.k();
        ColorStateList colorStateList2 = this.v0;
        if (colorStateList2 != null) {
            this.H0.P(colorStateList2);
            this.H0.W(this.v0);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.v0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.F0) : this.F0;
            this.H0.P(ColorStateList.valueOf(colorForState));
            this.H0.W(ColorStateList.valueOf(colorForState));
        } else if (zK) {
            this.H0.P(this.j.p());
        } else if (this.m && (textView = this.n) != null) {
            this.H0.P(textView.getTextColors());
        } else if (z4 && (colorStateList = this.w0) != null) {
            this.H0.P(colorStateList);
        }
        if (z3 || !this.I0 || (isEnabled() && z4)) {
            if (z2 || this.G0) {
                z(z);
                return;
            }
            return;
        }
        if (z2 || !this.G0) {
            F(z);
        }
    }

    private boolean x() {
        return this.L > -1 && this.O != 0;
    }

    private void x0() {
        EditText editText;
        if (this.s == null || (editText = this.f) == null) {
            return;
        }
        this.s.setGravity(editText.getGravity());
        this.s.setPadding(this.f.getCompoundPaddingLeft(), this.f.getCompoundPaddingTop(), this.f.getCompoundPaddingRight(), this.f.getCompoundPaddingBottom());
    }

    private void y() {
        if (A()) {
            ((com.google.android.material.textfield.c) this.E).l0();
        }
    }

    private void y0() {
        EditText editText = this.f;
        z0(editText == null ? 0 : editText.getText().length());
    }

    private void z(boolean z) {
        ValueAnimator valueAnimator = this.K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.K0.cancel();
        }
        if (z && this.J0) {
            i(1.0f);
        } else {
            this.H0.a0(1.0f);
        }
        this.G0 = false;
        if (A()) {
            T();
        }
        y0();
        B0();
        E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z0(int i) {
        if (i != 0 || this.G0) {
            J();
        } else {
            i0();
        }
    }

    void F0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.E == null || this.J == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.f) != null && editText2.hasFocus());
        boolean z3 = isHovered() || ((editText = this.f) != null && editText.isHovered());
        if (!isEnabled()) {
            this.O = this.F0;
        } else if (this.j.k()) {
            if (this.A0 != null) {
                C0(z2, z3);
            } else {
                this.O = this.j.o();
            }
        } else if (!this.m || (textView = this.n) == null) {
            if (z2) {
                this.O = this.z0;
            } else if (z3) {
                this.O = this.y0;
            } else {
                this.O = this.x0;
            }
        } else if (this.A0 != null) {
            C0(z2, z3);
        } else {
            this.O = textView.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && this.j.x() && this.j.k()) {
            z = true;
        }
        setErrorIconVisible(z);
        W();
        Y();
        V();
        if (getEndIconDelegate().d()) {
            j0(this.j.k());
        }
        if (z2 && isEnabled()) {
            this.L = this.N;
        } else {
            this.L = this.M;
        }
        if (this.J == 2) {
            q0();
        }
        if (this.J == 1) {
            if (!isEnabled()) {
                this.P = this.C0;
            } else if (z3 && !z2) {
                this.P = this.E0;
            } else if (z2) {
                this.P = this.D0;
            } else {
                this.P = this.B0;
            }
        }
        j();
    }

    public boolean K() {
        return this.e.getVisibility() == 0 && this.i0.getVisibility() == 0;
    }

    public boolean M() {
        return this.j.y();
    }

    final boolean N() {
        return this.G0;
    }

    public boolean O() {
        return this.D;
    }

    public boolean Q() {
        return this.U.getVisibility() == 0;
    }

    public void V() {
        X(this.i0, this.k0);
    }

    public void W() {
        X(this.t0, this.u0);
    }

    public void Y() {
        X(this.U, this.V);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f2184b.addView(view, layoutParams2);
        this.f2184b.setLayoutParams(layoutParams);
        u0();
        setEditText((EditText) view);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.g != null) {
            boolean z = this.D;
            this.D = false;
            CharSequence hint = editText.getHint();
            this.f.setHint(this.g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f.setHint(hint);
                this.D = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f2184b.getChildCount());
        for (int i2 = 0; i2 < this.f2184b.getChildCount(); i2++) {
            View childAt = this.f2184b.getChildAt(i2);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i);
            if (childAt == this.f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.M0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.M0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        E(canvas);
        D(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.L0) {
            return;
        }
        this.L0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        com.google.android.material.internal.a aVar = this.H0;
        boolean zD0 = aVar != null ? aVar.d0(drawableState) | false : false;
        if (this.f != null) {
            v0(v.T(this) && isEnabled());
        }
        s0();
        F0();
        if (zD0) {
            invalidate();
        }
        this.L0 = false;
    }

    public void e(f fVar) {
        this.f0.add(fVar);
        if (this.f != null) {
            fVar.a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void e0(TextView textView, int i) {
        boolean z = true;
        try {
            androidx.core.widget.i.n(textView, i);
            if (Build.VERSION.SDK_INT >= 23) {
                if (textView.getTextColors().getDefaultColor() != -65281) {
                    z = false;
                }
            }
        } catch (Exception unused) {
        }
        if (z) {
            androidx.core.widget.i.n(textView, j.TextAppearance_AppCompat_Caption);
            textView.setTextColor(androidx.core.content.a.b(getContext(), d.c.a.a.c.design_error));
        }
    }

    public void f(g gVar) {
        this.j0.add(gVar);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f;
        return editText != null ? editText.getBaseline() + getPaddingTop() + v() : super.getBaseline();
    }

    d.c.a.a.a0.g getBoxBackground() {
        int i = this.J;
        if (i == 1 || i == 2) {
            return this.E;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.P;
    }

    public int getBoxBackgroundMode() {
        return this.J;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.E.s();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.E.t();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.E.G();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.E.F();
    }

    public int getBoxStrokeColor() {
        return this.z0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.A0;
    }

    public int getBoxStrokeWidth() {
        return this.M;
    }

    public int getBoxStrokeWidthFocused() {
        return this.N;
    }

    public int getCounterMaxLength() {
        return this.l;
    }

    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.k && this.m && (textView = this.n) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.v;
    }

    public ColorStateList getCounterTextColor() {
        return this.v;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.v0;
    }

    public EditText getEditText() {
        return this.f;
    }

    public CharSequence getEndIconContentDescription() {
        return this.i0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.i0.getDrawable();
    }

    public int getEndIconMode() {
        return this.g0;
    }

    CheckableImageButton getEndIconView() {
        return this.i0;
    }

    public CharSequence getError() {
        if (this.j.x()) {
            return this.j.n();
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.j.m();
    }

    public int getErrorCurrentTextColors() {
        return this.j.o();
    }

    public Drawable getErrorIconDrawable() {
        return this.t0.getDrawable();
    }

    final int getErrorTextCurrentColor() {
        return this.j.o();
    }

    public CharSequence getHelperText() {
        if (this.j.y()) {
            return this.j.q();
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.j.r();
    }

    public CharSequence getHint() {
        if (this.B) {
            return this.C;
        }
        return null;
    }

    final float getHintCollapsedTextHeight() {
        return this.H0.r();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.H0.u();
    }

    public ColorStateList getHintTextColor() {
        return this.w0;
    }

    public int getMaxWidth() {
        return this.i;
    }

    public int getMinWidth() {
        return this.h;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.i0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.i0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.r) {
            return this.q;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.u;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.t;
    }

    public CharSequence getPrefixText() {
        return this.x;
    }

    public ColorStateList getPrefixTextColor() {
        return this.y.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.y;
    }

    public CharSequence getStartIconContentDescription() {
        return this.U.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.U.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.z;
    }

    public ColorStateList getSuffixTextColor() {
        return this.A.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.A;
    }

    public Typeface getTypeface() {
        return this.T;
    }

    void i(float f2) {
        if (this.H0.y() == f2) {
            return;
        }
        if (this.K0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.K0 = valueAnimator;
            valueAnimator.setInterpolator(d.c.a.a.l.a.f2315b);
            this.K0.setDuration(167L);
            this.K0.addUpdateListener(new d());
        }
        this.K0.setFloatValues(this.H0.y(), f2);
        this.K0.start();
    }

    void n0(int i) {
        boolean z = this.m;
        int i2 = this.l;
        if (i2 == -1) {
            this.n.setText(String.valueOf(i));
            this.n.setContentDescription(null);
            this.m = false;
        } else {
            this.m = i > i2;
            o0(getContext(), this.n, i, this.l, this.m);
            if (z != this.m) {
                p0();
            }
            this.n.setText(c.g.i.a.c().j(getContext().getString(d.c.a.a.i.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.l))));
        }
        if (this.f == null || z == this.m) {
            return;
        }
        v0(false);
        F0();
        s0();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f;
        if (editText != null) {
            Rect rect = this.Q;
            com.google.android.material.internal.b.a(this, editText, rect);
            l0(rect);
            if (this.B) {
                this.H0.Y(this.f.getTextSize());
                int gravity = this.f.getGravity();
                this.H0.Q((gravity & (-113)) | 48);
                this.H0.X(gravity);
                this.H0.M(r(rect));
                this.H0.U(u(rect));
                this.H0.I();
                if (!A() || this.G0) {
                    return;
                }
                T();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean zT0 = t0();
        boolean zR0 = r0();
        if (zT0 || zR0) {
            this.f.post(new c());
        }
        x0();
        A0();
        D0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.j());
        setError(hVar.f2191d);
        if (hVar.e) {
            this.i0.post(new b());
        }
        setHint(hVar.f);
        setHelperText(hVar.g);
        setPlaceholderText(hVar.h);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        if (this.j.k()) {
            hVar.f2191d = getError();
        }
        hVar.e = I() && this.i0.isChecked();
        hVar.f = getHint();
        hVar.g = getHelperText();
        hVar.h = getPlaceholderText();
        return hVar;
    }

    void s0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f;
        if (editText == null || this.J != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (c0.a(background)) {
            background = background.mutate();
        }
        if (this.j.k()) {
            background.setColorFilter(androidx.appcompat.widget.i.e(this.j.o(), PorterDuff.Mode.SRC_IN));
        } else if (this.m && (textView = this.n) != null) {
            background.setColorFilter(androidx.appcompat.widget.i.e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            androidx.core.graphics.drawable.a.c(background);
            this.f.refreshDrawableState();
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.P != i) {
            this.P = i;
            this.B0 = i;
            this.D0 = i;
            this.E0 = i;
            j();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(androidx.core.content.a.b(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.B0 = defaultColor;
        this.P = defaultColor;
        this.C0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.D0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.E0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        j();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.J) {
            return;
        }
        this.J = i;
        if (this.f != null) {
            S();
        }
    }

    public void setBoxStrokeColor(int i) {
        if (this.z0 != i) {
            this.z0 = i;
            F0();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.x0 = colorStateList.getDefaultColor();
            this.F0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.y0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.z0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.z0 != colorStateList.getDefaultColor()) {
            this.z0 = colorStateList.getDefaultColor();
        }
        F0();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.A0 != colorStateList) {
            this.A0 = colorStateList;
            F0();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.M = i;
        F0();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.N = i;
        F0();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.k != z) {
            if (z) {
                x xVar = new x(getContext());
                this.n = xVar;
                xVar.setId(d.c.a.a.f.textinput_counter);
                Typeface typeface = this.T;
                if (typeface != null) {
                    this.n.setTypeface(typeface);
                }
                this.n.setMaxLines(1);
                this.j.d(this.n, 2);
                androidx.core.view.h.d((ViewGroup.MarginLayoutParams) this.n.getLayoutParams(), getResources().getDimensionPixelOffset(d.c.a.a.d.mtrl_textinput_counter_margin_start));
                p0();
                m0();
            } else {
                this.j.z(this.n, 2);
                this.n = null;
            }
            this.k = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.l != i) {
            if (i > 0) {
                this.l = i;
            } else {
                this.l = -1;
            }
            if (this.k) {
                m0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.o != i) {
            this.o = i;
            p0();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.w != colorStateList) {
            this.w = colorStateList;
            p0();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.p != i) {
            this.p = i;
            p0();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.v != colorStateList) {
            this.v = colorStateList;
            p0();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.v0 = colorStateList;
        this.w0 = colorStateList;
        if (this.f != null) {
            v0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        U(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.i0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.i0.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? c.a.k.a.a.d(getContext(), i) : null);
    }

    public void setEndIconMode(int i) {
        int i2 = this.g0;
        this.g0 = i;
        C(i2);
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().b(this.J)) {
            getEndIconDelegate().a();
            m();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.J + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        c0(this.i0, onClickListener, this.r0);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.r0 = onLongClickListener;
        d0(this.i0, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.k0 != colorStateList) {
            this.k0 = colorStateList;
            this.l0 = true;
            m();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.m0 != mode) {
            this.m0 = mode;
            this.n0 = true;
            m();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (K() != z) {
            this.i0.setVisibility(z ? 0 : 8);
            D0();
            r0();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.j.x()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.j.t();
        } else {
            this.j.M(charSequence);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        this.j.B(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        this.j.C(z);
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? c.a.k.a.a.d(getContext(), i) : null);
        W();
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        c0(this.t0, onClickListener, this.s0);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.s0 = onLongClickListener;
        d0(this.t0, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.u0 = colorStateList;
        Drawable drawable = this.t0.getDrawable();
        if (drawable != null) {
            drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
            androidx.core.graphics.drawable.a.o(drawable, colorStateList);
        }
        if (this.t0.getDrawable() != drawable) {
            this.t0.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.t0.getDrawable();
        if (drawable != null) {
            drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
            androidx.core.graphics.drawable.a.p(drawable, mode);
        }
        if (this.t0.getDrawable() != drawable) {
            this.t0.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(int i) {
        this.j.D(i);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.j.E(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.I0 != z) {
            this.I0 = z;
            v0(false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (M()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!M()) {
                setHelperTextEnabled(true);
            }
            this.j.N(charSequence);
        }
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.j.H(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.j.G(z);
    }

    public void setHelperTextTextAppearance(int i) {
        this.j.F(i);
    }

    public void setHint(CharSequence charSequence) {
        if (this.B) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.J0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.B) {
            this.B = z;
            if (z) {
                CharSequence hint = this.f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.C)) {
                        setHint(hint);
                    }
                    this.f.setHint((CharSequence) null);
                }
                this.D = true;
            } else {
                this.D = false;
                if (!TextUtils.isEmpty(this.C) && TextUtils.isEmpty(this.f.getHint())) {
                    this.f.setHint(this.C);
                }
                setHintInternal(null);
            }
            if (this.f != null) {
                u0();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        this.H0.N(i);
        this.w0 = this.H0.q();
        if (this.f != null) {
            v0(false);
            u0();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.w0 != colorStateList) {
            if (this.v0 == null) {
                this.H0.P(colorStateList);
            }
            this.w0 = colorStateList;
            if (this.f != null) {
                v0(false);
            }
        }
    }

    public void setMaxWidth(int i) {
        this.i = i;
        EditText editText = this.f;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinWidth(int i) {
        this.h = i;
        EditText editText = this.f;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMinWidth(i);
    }

    public void setMinWidthResource(int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i) {
        setPasswordVisibilityToggleContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i) {
        setPasswordVisibilityToggleDrawable(i != 0 ? c.a.k.a.a.d(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.g0 != 1) {
            setEndIconMode(1);
        } else {
            if (z) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        this.k0 = colorStateList;
        this.l0 = true;
        m();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.m0 = mode;
        this.n0 = true;
        m();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.r && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.r) {
                setPlaceholderTextEnabled(true);
            }
            this.q = charSequence;
        }
        y0();
    }

    public void setPlaceholderTextAppearance(int i) {
        this.u = i;
        TextView textView = this.s;
        if (textView != null) {
            androidx.core.widget.i.n(textView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.t != colorStateList) {
            this.t = colorStateList;
            TextView textView = this.s;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.x = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.y.setText(charSequence);
        B0();
    }

    public void setPrefixTextAppearance(int i) {
        androidx.core.widget.i.n(this.y, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.y.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.U.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? c.a.k.a.a.d(getContext(), i) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        c0(this.U, onClickListener, this.e0);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.e0 = onLongClickListener;
        d0(this.U, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.V != colorStateList) {
            this.V = colorStateList;
            this.W = true;
            o();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.a0 != mode) {
            this.a0 = mode;
            this.b0 = true;
            o();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (Q() != z) {
            this.U.setVisibility(z ? 0 : 8);
            A0();
            r0();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.z = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.A.setText(charSequence);
        E0();
    }

    public void setSuffixTextAppearance(int i) {
        androidx.core.widget.i.n(this.A, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.A.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(e eVar) {
        EditText editText = this.f;
        if (editText != null) {
            v.o0(editText, eVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.T) {
            this.T = typeface;
            this.H0.g0(typeface);
            this.j.J(typeface);
            TextView textView = this.n;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    void v0(boolean z) {
        w0(z, false);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        int i2;
        super(com.google.android.material.theme.a.a.c(context, attributeSet, i, N0), attributeSet, i);
        this.h = -1;
        this.i = -1;
        this.j = new com.google.android.material.textfield.f(this);
        this.Q = new Rect();
        this.R = new Rect();
        this.S = new RectF();
        this.f0 = new LinkedHashSet<>();
        this.g0 = 0;
        this.h0 = new SparseArray<>();
        this.j0 = new LinkedHashSet<>();
        this.H0 = new com.google.android.material.internal.a(this);
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f2184b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(this.f2184b);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f2185c = linearLayout;
        linearLayout.setOrientation(0);
        this.f2185c.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        this.f2184b.addView(this.f2185c);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f2186d = linearLayout2;
        linearLayout2.setOrientation(0);
        this.f2186d.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        this.f2184b.addView(this.f2186d);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.e = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        this.H0.f0(d.c.a.a.l.a.a);
        this.H0.c0(d.c.a.a.l.a.a);
        this.H0.Q(8388659);
        u0 u0VarI = com.google.android.material.internal.j.i(context2, attributeSet, d.c.a.a.k.TextInputLayout, i, N0, d.c.a.a.k.TextInputLayout_counterTextAppearance, d.c.a.a.k.TextInputLayout_counterOverflowTextAppearance, d.c.a.a.k.TextInputLayout_errorTextAppearance, d.c.a.a.k.TextInputLayout_helperTextTextAppearance, d.c.a.a.k.TextInputLayout_hintTextAppearance);
        this.B = u0VarI.a(d.c.a.a.k.TextInputLayout_hintEnabled, true);
        setHint(u0VarI.p(d.c.a.a.k.TextInputLayout_android_hint));
        this.J0 = u0VarI.a(d.c.a.a.k.TextInputLayout_hintAnimationEnabled, true);
        this.I0 = u0VarI.a(d.c.a.a.k.TextInputLayout_expandedHintEnabled, true);
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_android_minWidth)) {
            setMinWidth(u0VarI.f(d.c.a.a.k.TextInputLayout_android_minWidth, -1));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_android_maxWidth)) {
            setMaxWidth(u0VarI.f(d.c.a.a.k.TextInputLayout_android_maxWidth, -1));
        }
        this.G = k.e(context2, attributeSet, i, N0).m();
        this.H = context2.getResources().getDimensionPixelOffset(d.c.a.a.d.mtrl_textinput_box_label_cutout_padding);
        this.K = u0VarI.e(d.c.a.a.k.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.M = u0VarI.f(d.c.a.a.k.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(d.c.a.a.d.mtrl_textinput_box_stroke_width_default));
        this.N = u0VarI.f(d.c.a.a.k.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(d.c.a.a.d.mtrl_textinput_box_stroke_width_focused));
        this.L = this.M;
        float fD = u0VarI.d(d.c.a.a.k.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float fD2 = u0VarI.d(d.c.a.a.k.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float fD3 = u0VarI.d(d.c.a.a.k.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float fD4 = u0VarI.d(d.c.a.a.k.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        k.b bVarV = this.G.v();
        if (fD >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarV.A(fD);
        }
        if (fD2 >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarV.E(fD2);
        }
        if (fD3 >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarV.w(fD3);
        }
        if (fD4 >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarV.s(fD4);
        }
        this.G = bVarV.m();
        ColorStateList colorStateListB = d.c.a.a.x.c.b(context2, u0VarI, d.c.a.a.k.TextInputLayout_boxBackgroundColor);
        if (colorStateListB != null) {
            int defaultColor = colorStateListB.getDefaultColor();
            this.B0 = defaultColor;
            this.P = defaultColor;
            if (colorStateListB.isStateful()) {
                this.C0 = colorStateListB.getColorForState(new int[]{-16842910}, -1);
                this.D0 = colorStateListB.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.E0 = colorStateListB.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.D0 = this.B0;
                ColorStateList colorStateListC = c.a.k.a.a.c(context2, d.c.a.a.c.mtrl_filled_background_color);
                this.C0 = colorStateListC.getColorForState(new int[]{-16842910}, -1);
                this.E0 = colorStateListC.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.P = 0;
            this.B0 = 0;
            this.C0 = 0;
            this.D0 = 0;
            this.E0 = 0;
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateListC2 = u0VarI.c(d.c.a.a.k.TextInputLayout_android_textColorHint);
            this.w0 = colorStateListC2;
            this.v0 = colorStateListC2;
        }
        ColorStateList colorStateListB2 = d.c.a.a.x.c.b(context2, u0VarI, d.c.a.a.k.TextInputLayout_boxStrokeColor);
        this.z0 = u0VarI.b(d.c.a.a.k.TextInputLayout_boxStrokeColor, 0);
        this.x0 = androidx.core.content.a.b(context2, d.c.a.a.c.mtrl_textinput_default_box_stroke_color);
        this.F0 = androidx.core.content.a.b(context2, d.c.a.a.c.mtrl_textinput_disabled_color);
        this.y0 = androidx.core.content.a.b(context2, d.c.a.a.c.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListB2 != null) {
            setBoxStrokeColorStateList(colorStateListB2);
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_boxStrokeErrorColor)) {
            setBoxStrokeErrorColor(d.c.a.a.x.c.b(context2, u0VarI, d.c.a.a.k.TextInputLayout_boxStrokeErrorColor));
        }
        if (u0VarI.n(d.c.a.a.k.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(u0VarI.n(d.c.a.a.k.TextInputLayout_hintTextAppearance, 0));
        }
        int iN = u0VarI.n(d.c.a.a.k.TextInputLayout_errorTextAppearance, 0);
        CharSequence charSequenceP = u0VarI.p(d.c.a.a.k.TextInputLayout_errorContentDescription);
        boolean zA = u0VarI.a(d.c.a.a.k.TextInputLayout_errorEnabled, false);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(d.c.a.a.h.design_text_input_end_icon, (ViewGroup) this.f2186d, false);
        this.t0 = checkableImageButton;
        checkableImageButton.setId(d.c.a.a.f.text_input_error_icon);
        this.t0.setVisibility(8);
        if (d.c.a.a.x.c.g(context2)) {
            androidx.core.view.h.d((ViewGroup.MarginLayoutParams) this.t0.getLayoutParams(), 0);
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_errorIconDrawable)) {
            setErrorIconDrawable(u0VarI.g(d.c.a.a.k.TextInputLayout_errorIconDrawable));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_errorIconTint)) {
            setErrorIconTintList(d.c.a.a.x.c.b(context2, u0VarI, d.c.a.a.k.TextInputLayout_errorIconTint));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_errorIconTintMode)) {
            setErrorIconTintMode(l.e(u0VarI.k(d.c.a.a.k.TextInputLayout_errorIconTintMode, -1), null));
        }
        this.t0.setContentDescription(getResources().getText(d.c.a.a.i.error_icon_content_description));
        v.x0(this.t0, 2);
        this.t0.setClickable(false);
        this.t0.setPressable(false);
        this.t0.setFocusable(false);
        int iN2 = u0VarI.n(d.c.a.a.k.TextInputLayout_helperTextTextAppearance, 0);
        boolean zA2 = u0VarI.a(d.c.a.a.k.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceP2 = u0VarI.p(d.c.a.a.k.TextInputLayout_helperText);
        int iN3 = u0VarI.n(d.c.a.a.k.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceP3 = u0VarI.p(d.c.a.a.k.TextInputLayout_placeholderText);
        int iN4 = u0VarI.n(d.c.a.a.k.TextInputLayout_prefixTextAppearance, 0);
        CharSequence charSequenceP4 = u0VarI.p(d.c.a.a.k.TextInputLayout_prefixText);
        int iN5 = u0VarI.n(d.c.a.a.k.TextInputLayout_suffixTextAppearance, 0);
        CharSequence charSequenceP5 = u0VarI.p(d.c.a.a.k.TextInputLayout_suffixText);
        boolean zA3 = u0VarI.a(d.c.a.a.k.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(u0VarI.k(d.c.a.a.k.TextInputLayout_counterMaxLength, -1));
        this.p = u0VarI.n(d.c.a.a.k.TextInputLayout_counterTextAppearance, 0);
        this.o = u0VarI.n(d.c.a.a.k.TextInputLayout_counterOverflowTextAppearance, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(d.c.a.a.h.design_text_input_start_icon, (ViewGroup) this.f2185c, false);
        this.U = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (d.c.a.a.x.c.g(context2)) {
            androidx.core.view.h.c((ViewGroup.MarginLayoutParams) this.U.getLayoutParams(), 0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_startIconDrawable)) {
            setStartIconDrawable(u0VarI.g(d.c.a.a.k.TextInputLayout_startIconDrawable));
            if (u0VarI.s(d.c.a.a.k.TextInputLayout_startIconContentDescription)) {
                setStartIconContentDescription(u0VarI.p(d.c.a.a.k.TextInputLayout_startIconContentDescription));
            }
            setStartIconCheckable(u0VarI.a(d.c.a.a.k.TextInputLayout_startIconCheckable, true));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_startIconTint)) {
            setStartIconTintList(d.c.a.a.x.c.b(context2, u0VarI, d.c.a.a.k.TextInputLayout_startIconTint));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_startIconTintMode)) {
            setStartIconTintMode(l.e(u0VarI.k(d.c.a.a.k.TextInputLayout_startIconTintMode, -1), null));
        }
        setBoxBackgroundMode(u0VarI.k(d.c.a.a.k.TextInputLayout_boxBackgroundMode, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(d.c.a.a.h.design_text_input_end_icon, (ViewGroup) this.e, false);
        this.i0 = checkableImageButton3;
        this.e.addView(checkableImageButton3);
        this.i0.setVisibility(8);
        if (d.c.a.a.x.c.g(context2)) {
            i2 = 0;
            androidx.core.view.h.d((ViewGroup.MarginLayoutParams) this.i0.getLayoutParams(), 0);
        } else {
            i2 = 0;
        }
        this.h0.append(-1, new com.google.android.material.textfield.b(this));
        this.h0.append(i2, new com.google.android.material.textfield.h(this));
        this.h0.append(1, new i(this));
        this.h0.append(2, new com.google.android.material.textfield.a(this));
        this.h0.append(3, new com.google.android.material.textfield.d(this));
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_endIconMode)) {
            setEndIconMode(u0VarI.k(d.c.a.a.k.TextInputLayout_endIconMode, 0));
            if (u0VarI.s(d.c.a.a.k.TextInputLayout_endIconDrawable)) {
                setEndIconDrawable(u0VarI.g(d.c.a.a.k.TextInputLayout_endIconDrawable));
            }
            if (u0VarI.s(d.c.a.a.k.TextInputLayout_endIconContentDescription)) {
                setEndIconContentDescription(u0VarI.p(d.c.a.a.k.TextInputLayout_endIconContentDescription));
            }
            setEndIconCheckable(u0VarI.a(d.c.a.a.k.TextInputLayout_endIconCheckable, true));
        } else if (u0VarI.s(d.c.a.a.k.TextInputLayout_passwordToggleEnabled)) {
            setEndIconMode(u0VarI.a(d.c.a.a.k.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            setEndIconDrawable(u0VarI.g(d.c.a.a.k.TextInputLayout_passwordToggleDrawable));
            setEndIconContentDescription(u0VarI.p(d.c.a.a.k.TextInputLayout_passwordToggleContentDescription));
            if (u0VarI.s(d.c.a.a.k.TextInputLayout_passwordToggleTint)) {
                setEndIconTintList(d.c.a.a.x.c.b(context2, u0VarI, d.c.a.a.k.TextInputLayout_passwordToggleTint));
            }
            if (u0VarI.s(d.c.a.a.k.TextInputLayout_passwordToggleTintMode)) {
                setEndIconTintMode(l.e(u0VarI.k(d.c.a.a.k.TextInputLayout_passwordToggleTintMode, -1), null));
            }
        }
        if (!u0VarI.s(d.c.a.a.k.TextInputLayout_passwordToggleEnabled)) {
            if (u0VarI.s(d.c.a.a.k.TextInputLayout_endIconTint)) {
                setEndIconTintList(d.c.a.a.x.c.b(context2, u0VarI, d.c.a.a.k.TextInputLayout_endIconTint));
            }
            if (u0VarI.s(d.c.a.a.k.TextInputLayout_endIconTintMode)) {
                setEndIconTintMode(l.e(u0VarI.k(d.c.a.a.k.TextInputLayout_endIconTintMode, -1), null));
            }
        }
        x xVar = new x(context2);
        this.y = xVar;
        xVar.setId(d.c.a.a.f.textinput_prefix_text);
        this.y.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        v.q0(this.y, 1);
        this.f2185c.addView(this.U);
        this.f2185c.addView(this.y);
        x xVar2 = new x(context2);
        this.A = xVar2;
        xVar2.setId(d.c.a.a.f.textinput_suffix_text);
        this.A.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        v.q0(this.A, 1);
        this.f2186d.addView(this.A);
        this.f2186d.addView(this.t0);
        this.f2186d.addView(this.e);
        setHelperTextEnabled(zA2);
        setHelperText(charSequenceP2);
        setHelperTextTextAppearance(iN2);
        setErrorEnabled(zA);
        setErrorTextAppearance(iN);
        setErrorContentDescription(charSequenceP);
        setCounterTextAppearance(this.p);
        setCounterOverflowTextAppearance(this.o);
        setPlaceholderText(charSequenceP3);
        setPlaceholderTextAppearance(iN3);
        setPrefixText(charSequenceP4);
        setPrefixTextAppearance(iN4);
        setSuffixText(charSequenceP5);
        setSuffixTextAppearance(iN5);
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_errorTextColor)) {
            setErrorTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_errorTextColor));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_helperTextTextColor));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_hintTextColor)) {
            setHintTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_hintTextColor));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_counterTextColor)) {
            setCounterTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_counterTextColor));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_counterOverflowTextColor));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_placeholderTextColor)) {
            setPlaceholderTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_placeholderTextColor));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_prefixTextColor)) {
            setPrefixTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_prefixTextColor));
        }
        if (u0VarI.s(d.c.a.a.k.TextInputLayout_suffixTextColor)) {
            setSuffixTextColor(u0VarI.c(d.c.a.a.k.TextInputLayout_suffixTextColor));
        }
        setCounterEnabled(zA3);
        setEnabled(u0VarI.a(d.c.a.a.k.TextInputLayout_android_enabled, true));
        u0VarI.w();
        v.x0(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            v.y0(this, 1);
        }
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.i0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.i0.setImageDrawable(drawable);
        V();
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.U.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.U.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            Y();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.t0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.j.x());
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.i0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.i0.setImageDrawable(drawable);
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }
}
