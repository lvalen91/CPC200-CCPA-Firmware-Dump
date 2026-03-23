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
import androidx.appcompat.widget.C0159c0;
import androidx.appcompat.widget.C0170i;
import androidx.appcompat.widget.C0195u0;
import androidx.appcompat.widget.C0200x;
import androidx.core.content.C0242a;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0258a;
import androidx.core.view.C0278h;
import androidx.core.view.C0292v;
import androidx.core.view.p004e0.C0269c;
import androidx.core.widget.C0308i;
import com.google.android.material.internal.C1112a;
import com.google.android.material.internal.C1113b;
import com.google.android.material.internal.C1121j;
import com.google.android.material.internal.C1123l;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.theme.p092a.C1147a;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p041g.p048i.C0613a;
import p016c.p052i.p053a.AbstractC0630a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1218c;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1223h;
import p093d.p099c.p100a.p101a.C1224i;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p104l.C1227a;
import p093d.p099c.p100a.p101a.p110q.C1247a;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class TextInputLayout extends LinearLayout {

    /* JADX INFO: renamed from: N0 */
    private static final int f7232N0 = C1225j.Widget_Design_TextInputLayout;

    /* JADX INFO: renamed from: A */
    private final TextView f7233A;

    /* JADX INFO: renamed from: A0 */
    private ColorStateList f7234A0;

    /* JADX INFO: renamed from: B */
    private boolean f7235B;

    /* JADX INFO: renamed from: B0 */
    private int f7236B0;

    /* JADX INFO: renamed from: C */
    private CharSequence f7237C;

    /* JADX INFO: renamed from: C0 */
    private int f7238C0;

    /* JADX INFO: renamed from: D */
    private boolean f7239D;

    /* JADX INFO: renamed from: D0 */
    private int f7240D0;

    /* JADX INFO: renamed from: E */
    private C1208g f7241E;

    /* JADX INFO: renamed from: E0 */
    private int f7242E0;

    /* JADX INFO: renamed from: F */
    private C1208g f7243F;

    /* JADX INFO: renamed from: F0 */
    private int f7244F0;

    /* JADX INFO: renamed from: G */
    private C1212k f7245G;

    /* JADX INFO: renamed from: G0 */
    private boolean f7246G0;

    /* JADX INFO: renamed from: H */
    private final int f7247H;

    /* JADX INFO: renamed from: H0 */
    final C1112a f7248H0;

    /* JADX INFO: renamed from: I */
    private int f7249I;

    /* JADX INFO: renamed from: I0 */
    private boolean f7250I0;

    /* JADX INFO: renamed from: J */
    private int f7251J;

    /* JADX INFO: renamed from: J0 */
    private boolean f7252J0;

    /* JADX INFO: renamed from: K */
    private int f7253K;

    /* JADX INFO: renamed from: K0 */
    private ValueAnimator f7254K0;

    /* JADX INFO: renamed from: L */
    private int f7255L;

    /* JADX INFO: renamed from: L0 */
    private boolean f7256L0;

    /* JADX INFO: renamed from: M */
    private int f7257M;

    /* JADX INFO: renamed from: M0 */
    private boolean f7258M0;

    /* JADX INFO: renamed from: N */
    private int f7259N;

    /* JADX INFO: renamed from: O */
    private int f7260O;

    /* JADX INFO: renamed from: P */
    private int f7261P;

    /* JADX INFO: renamed from: Q */
    private final Rect f7262Q;

    /* JADX INFO: renamed from: R */
    private final Rect f7263R;

    /* JADX INFO: renamed from: S */
    private final RectF f7264S;

    /* JADX INFO: renamed from: T */
    private Typeface f7265T;

    /* JADX INFO: renamed from: U */
    private final CheckableImageButton f7266U;

    /* JADX INFO: renamed from: V */
    private ColorStateList f7267V;

    /* JADX INFO: renamed from: W */
    private boolean f7268W;

    /* JADX INFO: renamed from: a0 */
    private PorterDuff.Mode f7269a0;

    /* JADX INFO: renamed from: b */
    private final FrameLayout f7270b;

    /* JADX INFO: renamed from: b0 */
    private boolean f7271b0;

    /* JADX INFO: renamed from: c */
    private final LinearLayout f7272c;

    /* JADX INFO: renamed from: c0 */
    private Drawable f7273c0;

    /* JADX INFO: renamed from: d */
    private final LinearLayout f7274d;

    /* JADX INFO: renamed from: d0 */
    private int f7275d0;

    /* JADX INFO: renamed from: e */
    private final FrameLayout f7276e;

    /* JADX INFO: renamed from: e0 */
    private View.OnLongClickListener f7277e0;

    /* JADX INFO: renamed from: f */
    EditText f7278f;

    /* JADX INFO: renamed from: f0 */
    private final LinkedHashSet<InterfaceC1135f> f7279f0;

    /* JADX INFO: renamed from: g */
    private CharSequence f7280g;

    /* JADX INFO: renamed from: g0 */
    private int f7281g0;

    /* JADX INFO: renamed from: h */
    private int f7282h;

    /* JADX INFO: renamed from: h0 */
    private final SparseArray<AbstractC1142e> f7283h0;

    /* JADX INFO: renamed from: i */
    private int f7284i;

    /* JADX INFO: renamed from: i0 */
    private final CheckableImageButton f7285i0;

    /* JADX INFO: renamed from: j */
    private final C1143f f7286j;

    /* JADX INFO: renamed from: j0 */
    private final LinkedHashSet<InterfaceC1136g> f7287j0;

    /* JADX INFO: renamed from: k */
    boolean f7288k;

    /* JADX INFO: renamed from: k0 */
    private ColorStateList f7289k0;

    /* JADX INFO: renamed from: l */
    private int f7290l;

    /* JADX INFO: renamed from: l0 */
    private boolean f7291l0;

    /* JADX INFO: renamed from: m */
    private boolean f7292m;

    /* JADX INFO: renamed from: m0 */
    private PorterDuff.Mode f7293m0;

    /* JADX INFO: renamed from: n */
    private TextView f7294n;

    /* JADX INFO: renamed from: n0 */
    private boolean f7295n0;

    /* JADX INFO: renamed from: o */
    private int f7296o;

    /* JADX INFO: renamed from: o0 */
    private Drawable f7297o0;

    /* JADX INFO: renamed from: p */
    private int f7298p;

    /* JADX INFO: renamed from: p0 */
    private int f7299p0;

    /* JADX INFO: renamed from: q */
    private CharSequence f7300q;

    /* JADX INFO: renamed from: q0 */
    private Drawable f7301q0;

    /* JADX INFO: renamed from: r */
    private boolean f7302r;

    /* JADX INFO: renamed from: r0 */
    private View.OnLongClickListener f7303r0;

    /* JADX INFO: renamed from: s */
    private TextView f7304s;

    /* JADX INFO: renamed from: s0 */
    private View.OnLongClickListener f7305s0;

    /* JADX INFO: renamed from: t */
    private ColorStateList f7306t;

    /* JADX INFO: renamed from: t0 */
    private final CheckableImageButton f7307t0;

    /* JADX INFO: renamed from: u */
    private int f7308u;

    /* JADX INFO: renamed from: u0 */
    private ColorStateList f7309u0;

    /* JADX INFO: renamed from: v */
    private ColorStateList f7310v;

    /* JADX INFO: renamed from: v0 */
    private ColorStateList f7311v0;

    /* JADX INFO: renamed from: w */
    private ColorStateList f7312w;

    /* JADX INFO: renamed from: w0 */
    private ColorStateList f7313w0;

    /* JADX INFO: renamed from: x */
    private CharSequence f7314x;

    /* JADX INFO: renamed from: x0 */
    private int f7315x0;

    /* JADX INFO: renamed from: y */
    private final TextView f7316y;

    /* JADX INFO: renamed from: y0 */
    private int f7317y0;

    /* JADX INFO: renamed from: z */
    private CharSequence f7318z;

    /* JADX INFO: renamed from: z0 */
    private int f7319z0;

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$a */
    class C1130a implements TextWatcher {
        C1130a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            TextInputLayout.this.m8837v0(!r0.f7258M0);
            TextInputLayout textInputLayout = TextInputLayout.this;
            if (textInputLayout.f7288k) {
                textInputLayout.m8835n0(editable.length());
            }
            if (TextInputLayout.this.f7302r) {
                TextInputLayout.this.m8821z0(editable.length());
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$b */
    class RunnableC1131b implements Runnable {
        RunnableC1131b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f7285i0.performClick();
            TextInputLayout.this.f7285i0.jumpDrawablesToCurrentState();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$c */
    class RunnableC1132c implements Runnable {
        RunnableC1132c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout.this.f7278f.requestLayout();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$d */
    class C1133d implements ValueAnimator.AnimatorUpdateListener {
        C1133d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            TextInputLayout.this.f7248H0.m8672a0(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$e */
    public static class C1134e extends C0258a {

        /* JADX INFO: renamed from: d */
        private final TextInputLayout f7324d;

        public C1134e(TextInputLayout textInputLayout) {
            this.f7324d = textInputLayout;
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            super.mo1813g(view, c0269c);
            EditText editText = this.f7324d.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f7324d.getHint();
            CharSequence error = this.f7324d.getError();
            CharSequence placeholderText = this.f7324d.getPlaceholderText();
            int counterMaxLength = this.f7324d.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f7324d.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !this.f7324d.m8825N();
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            String string = z2 ? hint.toString() : BuildConfig.FLAVOR;
            if (z) {
                c0269c.m1952r0(text);
            } else if (!TextUtils.isEmpty(string)) {
                c0269c.m1952r0(string);
                if (z3 && placeholderText != null) {
                    c0269c.m1952r0(string + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                c0269c.m1952r0(placeholderText);
            }
            if (!TextUtils.isEmpty(string)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    c0269c.m1933g0(string);
                } else {
                    if (z) {
                        string = ((Object) text) + ", " + string;
                    }
                    c0269c.m1952r0(string);
                }
                c0269c.m1947o0(!z);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            c0269c.m1935h0(counterMaxLength);
            if (z5) {
                if (!z4) {
                    error = counterOverflowDescription;
                }
                c0269c.m1928c0(error);
            }
            if (Build.VERSION.SDK_INT < 17 || editText == null) {
                return;
            }
            editText.setLabelFor(C1221f.textinput_helper_text);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$f */
    public interface InterfaceC1135f {
        /* JADX INFO: renamed from: a */
        void mo8838a(TextInputLayout textInputLayout);
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$g */
    public interface InterfaceC1136g {
        /* JADX INFO: renamed from: a */
        void mo8839a(TextInputLayout textInputLayout, int i);
    }

    /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$h */
    static class C1137h extends AbstractC0630a {
        public static final Parcelable.Creator<C1137h> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        CharSequence f7325d;

        /* JADX INFO: renamed from: e */
        boolean f7326e;

        /* JADX INFO: renamed from: f */
        CharSequence f7327f;

        /* JADX INFO: renamed from: g */
        CharSequence f7328g;

        /* JADX INFO: renamed from: h */
        CharSequence f7329h;

        /* JADX INFO: renamed from: com.google.android.material.textfield.TextInputLayout$h$a */
        static class a implements Parcelable.ClassLoaderCreator<C1137h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C1137h createFromParcel(Parcel parcel) {
                return new C1137h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C1137h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1137h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C1137h[] newArray(int i) {
                return new C1137h[i];
            }
        }

        C1137h(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f7325d) + " hint=" + ((Object) this.f7327f) + " helperText=" + ((Object) this.f7328g) + " placeholderText=" + ((Object) this.f7329h) + "}";
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f7325d, parcel, i);
            parcel.writeInt(this.f7326e ? 1 : 0);
            TextUtils.writeToParcel(this.f7327f, parcel, i);
            TextUtils.writeToParcel(this.f7328g, parcel, i);
            TextUtils.writeToParcel(this.f7329h, parcel, i);
        }

        C1137h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f7325d = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f7326e = parcel.readInt() == 1;
            this.f7327f = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f7328g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f7329h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        }
    }

    public TextInputLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.textInputStyle);
    }

    /* JADX INFO: renamed from: A */
    private boolean m8754A() {
        return this.f7235B && !TextUtils.isEmpty(this.f7237C) && (this.f7241E instanceof C1140c);
    }

    /* JADX INFO: renamed from: A0 */
    private void m8755A0() {
        if (this.f7278f == null) {
            return;
        }
        C0292v.m2043A0(this.f7316y, m8827Q() ? 0 : C0292v.m2058I(this.f7278f), this.f7278f.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(C1219d.material_input_text_to_prefix_suffix_padding), this.f7278f.getCompoundPaddingBottom());
    }

    /* JADX INFO: renamed from: B */
    private void m8756B() {
        Iterator<InterfaceC1135f> it = this.f7279f0.iterator();
        while (it.hasNext()) {
            it.next().mo8838a(this);
        }
    }

    /* JADX INFO: renamed from: B0 */
    private void m8757B0() {
        this.f7316y.setVisibility((this.f7314x == null || m8825N()) ? 8 : 0);
        m8807r0();
    }

    /* JADX INFO: renamed from: C */
    private void m8758C(int i) {
        Iterator<InterfaceC1136g> it = this.f7287j0.iterator();
        while (it.hasNext()) {
            it.next().mo8839a(this, i);
        }
    }

    /* JADX INFO: renamed from: C0 */
    private void m8759C0(boolean z, boolean z2) {
        int defaultColor = this.f7234A0.getDefaultColor();
        int colorForState = this.f7234A0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.f7234A0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.f7260O = colorForState2;
        } else if (z2) {
            this.f7260O = colorForState;
        } else {
            this.f7260O = defaultColor;
        }
    }

    /* JADX INFO: renamed from: D */
    private void m8760D(Canvas canvas) {
        C1208g c1208g = this.f7243F;
        if (c1208g != null) {
            Rect bounds = c1208g.getBounds();
            bounds.top = bounds.bottom - this.f7255L;
            this.f7243F.draw(canvas);
        }
    }

    /* JADX INFO: renamed from: D0 */
    private void m8761D0() {
        if (this.f7278f == null) {
            return;
        }
        C0292v.m2043A0(this.f7233A, getContext().getResources().getDimensionPixelSize(C1219d.material_input_text_to_prefix_suffix_padding), this.f7278f.getPaddingTop(), (m8823K() || m8769L()) ? 0 : C0292v.m2056H(this.f7278f), this.f7278f.getPaddingBottom());
    }

    /* JADX INFO: renamed from: E */
    private void m8762E(Canvas canvas) {
        if (this.f7235B) {
            this.f7248H0.m8679m(canvas);
        }
    }

    /* JADX INFO: renamed from: E0 */
    private void m8763E0() {
        int visibility = this.f7233A.getVisibility();
        boolean z = (this.f7318z == null || m8825N()) ? false : true;
        this.f7233A.setVisibility(z ? 0 : 8);
        if (visibility != this.f7233A.getVisibility()) {
            getEndIconDelegate().mo8853c(z);
        }
        m8807r0();
    }

    /* JADX INFO: renamed from: F */
    private void m8764F(boolean z) {
        ValueAnimator valueAnimator = this.f7254K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f7254K0.cancel();
        }
        if (z && this.f7252J0) {
            m8834i(CropImageView.DEFAULT_ASPECT_RATIO);
        } else {
            this.f7248H0.m8672a0(CropImageView.DEFAULT_ASPECT_RATIO);
        }
        if (m8754A() && ((C1140c) this.f7241E).m8859i0()) {
            m8818y();
        }
        this.f7246G0 = true;
        m8768J();
        m8757B0();
        m8763E0();
    }

    /* JADX INFO: renamed from: G */
    private int m8765G(int i, boolean z) {
        int compoundPaddingLeft = i + this.f7278f.getCompoundPaddingLeft();
        return (this.f7314x == null || z) ? compoundPaddingLeft : (compoundPaddingLeft - this.f7316y.getMeasuredWidth()) + this.f7316y.getPaddingLeft();
    }

    /* JADX INFO: renamed from: H */
    private int m8766H(int i, boolean z) {
        int compoundPaddingRight = i - this.f7278f.getCompoundPaddingRight();
        return (this.f7314x == null || !z) ? compoundPaddingRight : compoundPaddingRight + (this.f7316y.getMeasuredWidth() - this.f7316y.getPaddingRight());
    }

    /* JADX INFO: renamed from: I */
    private boolean m8767I() {
        return this.f7281g0 != 0;
    }

    /* JADX INFO: renamed from: J */
    private void m8768J() {
        TextView textView = this.f7304s;
        if (textView == null || !this.f7302r) {
            return;
        }
        textView.setText((CharSequence) null);
        this.f7304s.setVisibility(4);
    }

    /* JADX INFO: renamed from: L */
    private boolean m8769L() {
        return this.f7307t0.getVisibility() == 0;
    }

    /* JADX INFO: renamed from: P */
    private boolean m8770P() {
        return this.f7251J == 1 && (Build.VERSION.SDK_INT < 16 || this.f7278f.getMinLines() <= 1);
    }

    /* JADX INFO: renamed from: R */
    private int[] m8771R(CheckableImageButton checkableImageButton) {
        int[] drawableState = getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] iArrCopyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, iArrCopyOf, length, drawableState2.length);
        return iArrCopyOf;
    }

    /* JADX INFO: renamed from: S */
    private void m8772S() {
        m8802p();
        m8778a0();
        m8822F0();
        m8794k0();
        m8788h();
        if (this.f7251J != 0) {
            m8812u0();
        }
    }

    /* JADX INFO: renamed from: T */
    private void m8773T() {
        if (m8754A()) {
            RectF rectF = this.f7264S;
            this.f7248H0.m8680p(rectF, this.f7278f.getWidth(), this.f7278f.getGravity());
            m8795l(rectF);
            int i = this.f7255L;
            this.f7249I = i;
            rectF.top = CropImageView.DEFAULT_ASPECT_RATIO;
            rectF.bottom = i;
            rectF.offset(-getPaddingLeft(), CropImageView.DEFAULT_ASPECT_RATIO);
            ((C1140c) this.f7241E).m8862o0(rectF);
        }
    }

    /* JADX INFO: renamed from: U */
    private static void m8774U(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m8774U((ViewGroup) childAt, z);
            }
        }
    }

    /* JADX INFO: renamed from: X */
    private void m8775X(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(m8771R(checkableImageButton), colorStateList.getDefaultColor());
        Drawable drawableMutate = C0251a.m1797r(drawable).mutate();
        C0251a.m1794o(drawableMutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(drawableMutate);
    }

    /* JADX INFO: renamed from: Z */
    private void m8776Z() {
        TextView textView = this.f7304s;
        if (textView != null) {
            textView.setVisibility(8);
        }
    }

    /* JADX INFO: renamed from: a0 */
    private void m8778a0() {
        if (m8789h0()) {
            C0292v.m2111r0(this.f7278f, this.f7241E);
        }
    }

    /* JADX INFO: renamed from: b0 */
    private static void m8780b0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean zM2064O = C0292v.m2064O(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z2 = zM2064O || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(zM2064O);
        checkableImageButton.setPressable(zM2064O);
        checkableImageButton.setLongClickable(z);
        C0292v.m2123x0(checkableImageButton, z2 ? 1 : 2);
    }

    /* JADX INFO: renamed from: c0 */
    private static void m8782c0(CheckableImageButton checkableImageButton, View.OnClickListener onClickListener, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        m8780b0(checkableImageButton, onLongClickListener);
    }

    /* JADX INFO: renamed from: d0 */
    private static void m8784d0(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        m8780b0(checkableImageButton, onLongClickListener);
    }

    /* JADX INFO: renamed from: f0 */
    private boolean m8785f0() {
        return (this.f7307t0.getVisibility() == 0 || ((m8767I() && m8823K()) || this.f7318z != null)) && this.f7274d.getMeasuredWidth() > 0;
    }

    /* JADX INFO: renamed from: g */
    private void m8786g() {
        TextView textView = this.f7304s;
        if (textView != null) {
            this.f7270b.addView(textView);
            this.f7304s.setVisibility(0);
        }
    }

    /* JADX INFO: renamed from: g0 */
    private boolean m8787g0() {
        return !(getStartIconDrawable() == null && this.f7314x == null) && this.f7272c.getMeasuredWidth() > 0;
    }

    private AbstractC1142e getEndIconDelegate() {
        AbstractC1142e abstractC1142e = this.f7283h0.get(this.f7281g0);
        return abstractC1142e != null ? abstractC1142e : this.f7283h0.get(0);
    }

    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.f7307t0.getVisibility() == 0) {
            return this.f7307t0;
        }
        if (m8767I() && m8823K()) {
            return this.f7285i0;
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    private void m8788h() {
        if (this.f7278f == null || this.f7251J != 1) {
            return;
        }
        if (C1257c.m9461h(getContext())) {
            EditText editText = this.f7278f;
            C0292v.m2043A0(editText, C0292v.m2058I(editText), getResources().getDimensionPixelSize(C1219d.material_filled_edittext_font_2_0_padding_top), C0292v.m2056H(this.f7278f), getResources().getDimensionPixelSize(C1219d.material_filled_edittext_font_2_0_padding_bottom));
        } else if (C1257c.m9460g(getContext())) {
            EditText editText2 = this.f7278f;
            C0292v.m2043A0(editText2, C0292v.m2058I(editText2), getResources().getDimensionPixelSize(C1219d.material_filled_edittext_font_1_3_padding_top), C0292v.m2056H(this.f7278f), getResources().getDimensionPixelSize(C1219d.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    /* JADX INFO: renamed from: h0 */
    private boolean m8789h0() {
        EditText editText = this.f7278f;
        return (editText == null || this.f7241E == null || editText.getBackground() != null || this.f7251J == 0) ? false : true;
    }

    /* JADX INFO: renamed from: i0 */
    private void m8790i0() {
        TextView textView = this.f7304s;
        if (textView == null || !this.f7302r) {
            return;
        }
        textView.setText(this.f7300q);
        this.f7304s.setVisibility(0);
        this.f7304s.bringToFront();
    }

    /* JADX INFO: renamed from: j */
    private void m8791j() {
        C1208g c1208g = this.f7241E;
        if (c1208g == null) {
            return;
        }
        c1208g.setShapeAppearanceModel(this.f7245G);
        if (m8814w()) {
            this.f7241E.m9189b0(this.f7255L, this.f7260O);
        }
        int iM8804q = m8804q();
        this.f7261P = iM8804q;
        this.f7241E.m9184W(ColorStateList.valueOf(iM8804q));
        if (this.f7281g0 == 3) {
            this.f7278f.getBackground().invalidateSelf();
        }
        m8793k();
        invalidate();
    }

    /* JADX INFO: renamed from: j0 */
    private void m8792j0(boolean z) {
        if (!z || getEndIconDrawable() == null) {
            m8797m();
            return;
        }
        Drawable drawableMutate = C0251a.m1797r(getEndIconDrawable()).mutate();
        C0251a.m1793n(drawableMutate, this.f7286j.m8926o());
        this.f7285i0.setImageDrawable(drawableMutate);
    }

    /* JADX INFO: renamed from: k */
    private void m8793k() {
        if (this.f7243F == null) {
            return;
        }
        if (m8816x()) {
            this.f7243F.m9184W(ColorStateList.valueOf(this.f7260O));
        }
        invalidate();
    }

    /* JADX INFO: renamed from: k0 */
    private void m8794k0() {
        if (this.f7251J == 1) {
            if (C1257c.m9461h(getContext())) {
                this.f7253K = getResources().getDimensionPixelSize(C1219d.material_font_2_0_box_collapsed_padding_top);
            } else if (C1257c.m9460g(getContext())) {
                this.f7253K = getResources().getDimensionPixelSize(C1219d.material_font_1_3_box_collapsed_padding_top);
            }
        }
    }

    /* JADX INFO: renamed from: l */
    private void m8795l(RectF rectF) {
        float f = rectF.left;
        int i = this.f7247H;
        rectF.left = f - i;
        rectF.right += i;
    }

    /* JADX INFO: renamed from: l0 */
    private void m8796l0(Rect rect) {
        C1208g c1208g = this.f7243F;
        if (c1208g != null) {
            int i = rect.bottom;
            c1208g.setBounds(rect.left, i - this.f7259N, rect.right, i);
        }
    }

    /* JADX INFO: renamed from: m */
    private void m8797m() {
        m8799n(this.f7285i0, this.f7291l0, this.f7289k0, this.f7295n0, this.f7293m0);
    }

    /* JADX INFO: renamed from: m0 */
    private void m8798m0() {
        if (this.f7294n != null) {
            EditText editText = this.f7278f;
            m8835n0(editText == null ? 0 : editText.getText().length());
        }
    }

    /* JADX INFO: renamed from: n */
    private void m8799n(CheckableImageButton checkableImageButton, boolean z, ColorStateList colorStateList, boolean z2, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z || z2)) {
            drawable = C0251a.m1797r(drawable).mutate();
            if (z) {
                C0251a.m1794o(drawable, colorStateList);
            }
            if (z2) {
                C0251a.m1795p(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    /* JADX INFO: renamed from: o */
    private void m8800o() {
        m8799n(this.f7266U, this.f7268W, this.f7267V, this.f7271b0, this.f7269a0);
    }

    /* JADX INFO: renamed from: o0 */
    private static void m8801o0(Context context, TextView textView, int i, int i2, boolean z) {
        textView.setContentDescription(context.getString(z ? C1224i.character_counter_overflowed_content_description : C1224i.character_counter_content_description, Integer.valueOf(i), Integer.valueOf(i2)));
    }

    /* JADX INFO: renamed from: p */
    private void m8802p() {
        int i = this.f7251J;
        if (i == 0) {
            this.f7241E = null;
            this.f7243F = null;
            return;
        }
        if (i == 1) {
            this.f7241E = new C1208g(this.f7245G);
            this.f7243F = new C1208g();
        } else {
            if (i != 2) {
                throw new IllegalArgumentException(this.f7251J + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.f7235B || (this.f7241E instanceof C1140c)) {
                this.f7241E = new C1208g(this.f7245G);
            } else {
                this.f7241E = new C1140c(this.f7245G);
            }
            this.f7243F = null;
        }
    }

    /* JADX INFO: renamed from: p0 */
    private void m8803p0() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        TextView textView = this.f7294n;
        if (textView != null) {
            m8832e0(textView, this.f7292m ? this.f7296o : this.f7298p);
            if (!this.f7292m && (colorStateList2 = this.f7310v) != null) {
                this.f7294n.setTextColor(colorStateList2);
            }
            if (!this.f7292m || (colorStateList = this.f7312w) == null) {
                return;
            }
            this.f7294n.setTextColor(colorStateList);
        }
    }

    /* JADX INFO: renamed from: q */
    private int m8804q() {
        return this.f7251J == 1 ? C1247a.m9430e(C1247a.m9429d(this, C1216b.colorSurface, 0), this.f7261P) : this.f7261P;
    }

    /* JADX INFO: renamed from: q0 */
    private void m8805q0() {
        if (!m8754A() || this.f7246G0 || this.f7249I == this.f7255L) {
            return;
        }
        m8818y();
        m8773T();
    }

    /* JADX INFO: renamed from: r */
    private Rect m8806r(Rect rect) {
        if (this.f7278f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f7263R;
        boolean z = C0292v.m2046C(this) == 1;
        rect2.bottom = rect.bottom;
        int i = this.f7251J;
        if (i == 1) {
            rect2.left = m8765G(rect.left, z);
            rect2.top = rect.top + this.f7253K;
            rect2.right = m8766H(rect.right, z);
            return rect2;
        }
        if (i != 2) {
            rect2.left = m8765G(rect.left, z);
            rect2.top = getPaddingTop();
            rect2.right = m8766H(rect.right, z);
            return rect2;
        }
        rect2.left = rect.left + this.f7278f.getPaddingLeft();
        rect2.top = rect.top - m8813v();
        rect2.right = rect.right - this.f7278f.getPaddingRight();
        return rect2;
    }

    /* JADX INFO: renamed from: r0 */
    private boolean m8807r0() {
        boolean z;
        if (this.f7278f == null) {
            return false;
        }
        boolean z2 = true;
        if (m8787g0()) {
            int measuredWidth = this.f7272c.getMeasuredWidth() - this.f7278f.getPaddingLeft();
            if (this.f7273c0 == null || this.f7275d0 != measuredWidth) {
                ColorDrawable colorDrawable = new ColorDrawable();
                this.f7273c0 = colorDrawable;
                this.f7275d0 = measuredWidth;
                colorDrawable.setBounds(0, 0, measuredWidth, 1);
            }
            Drawable[] drawableArrM2276a = C0308i.m2276a(this.f7278f);
            Drawable drawable = drawableArrM2276a[0];
            Drawable drawable2 = this.f7273c0;
            if (drawable != drawable2) {
                C0308i.m2284i(this.f7278f, drawable2, drawableArrM2276a[1], drawableArrM2276a[2], drawableArrM2276a[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.f7273c0 != null) {
                Drawable[] drawableArrM2276a2 = C0308i.m2276a(this.f7278f);
                C0308i.m2284i(this.f7278f, null, drawableArrM2276a2[1], drawableArrM2276a2[2], drawableArrM2276a2[3]);
                this.f7273c0 = null;
                z = true;
            }
            z = false;
        }
        if (m8785f0()) {
            int measuredWidth2 = this.f7233A.getMeasuredWidth() - this.f7278f.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + C0278h.m2006b((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] drawableArrM2276a3 = C0308i.m2276a(this.f7278f);
            Drawable drawable3 = this.f7297o0;
            if (drawable3 == null || this.f7299p0 == measuredWidth2) {
                if (this.f7297o0 == null) {
                    ColorDrawable colorDrawable2 = new ColorDrawable();
                    this.f7297o0 = colorDrawable2;
                    this.f7299p0 = measuredWidth2;
                    colorDrawable2.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable4 = drawableArrM2276a3[2];
                Drawable drawable5 = this.f7297o0;
                if (drawable4 != drawable5) {
                    this.f7301q0 = drawableArrM2276a3[2];
                    C0308i.m2284i(this.f7278f, drawableArrM2276a3[0], drawableArrM2276a3[1], drawable5, drawableArrM2276a3[3]);
                } else {
                    z2 = z;
                }
            } else {
                this.f7299p0 = measuredWidth2;
                drawable3.setBounds(0, 0, measuredWidth2, 1);
                C0308i.m2284i(this.f7278f, drawableArrM2276a3[0], drawableArrM2276a3[1], this.f7297o0, drawableArrM2276a3[3]);
            }
        } else {
            if (this.f7297o0 == null) {
                return z;
            }
            Drawable[] drawableArrM2276a4 = C0308i.m2276a(this.f7278f);
            if (drawableArrM2276a4[2] == this.f7297o0) {
                C0308i.m2284i(this.f7278f, drawableArrM2276a4[0], drawableArrM2276a4[1], this.f7301q0, drawableArrM2276a4[3]);
            } else {
                z2 = z;
            }
            this.f7297o0 = null;
        }
        return z2;
    }

    /* JADX INFO: renamed from: s */
    private int m8808s(Rect rect, Rect rect2, float f) {
        return m8770P() ? (int) (rect2.top + f) : rect.bottom - this.f7278f.getCompoundPaddingBottom();
    }

    private void setEditText(EditText editText) {
        if (this.f7278f != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.f7281g0 != 3) {
            boolean z = editText instanceof TextInputEditText;
        }
        this.f7278f = editText;
        setMinWidth(this.f7282h);
        setMaxWidth(this.f7284i);
        m8772S();
        setTextInputAccessibilityDelegate(new C1134e(this));
        this.f7248H0.m8678g0(this.f7278f.getTypeface());
        this.f7248H0.m8671Y(this.f7278f.getTextSize());
        int gravity = this.f7278f.getGravity();
        this.f7248H0.m8665Q((gravity & (-113)) | 48);
        this.f7248H0.m8670X(gravity);
        this.f7278f.addTextChangedListener(new C1130a());
        if (this.f7311v0 == null) {
            this.f7311v0 = this.f7278f.getHintTextColors();
        }
        if (this.f7235B) {
            if (TextUtils.isEmpty(this.f7237C)) {
                CharSequence hint = this.f7278f.getHint();
                this.f7280g = hint;
                setHint(hint);
                this.f7278f.setHint((CharSequence) null);
            }
            this.f7239D = true;
        }
        if (this.f7294n != null) {
            m8835n0(this.f7278f.getText().length());
        }
        m8836s0();
        this.f7286j.m8921e();
        this.f7272c.bringToFront();
        this.f7274d.bringToFront();
        this.f7276e.bringToFront();
        this.f7307t0.bringToFront();
        m8756B();
        m8755A0();
        m8761D0();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        m8815w0(false, true);
    }

    private void setErrorIconVisible(boolean z) {
        this.f7307t0.setVisibility(z ? 0 : 8);
        this.f7276e.setVisibility(z ? 8 : 0);
        m8761D0();
        if (m8767I()) {
            return;
        }
        m8807r0();
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f7237C)) {
            return;
        }
        this.f7237C = charSequence;
        this.f7248H0.m8676e0(charSequence);
        if (this.f7246G0) {
            return;
        }
        m8773T();
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.f7302r == z) {
            return;
        }
        if (z) {
            C0200x c0200x = new C0200x(getContext());
            this.f7304s = c0200x;
            c0200x.setId(C1221f.textinput_placeholder);
            C0292v.m2109q0(this.f7304s, 1);
            setPlaceholderTextAppearance(this.f7308u);
            setPlaceholderTextColor(this.f7306t);
            m8786g();
        } else {
            m8776Z();
            this.f7304s = null;
        }
        this.f7302r = z;
    }

    /* JADX INFO: renamed from: t */
    private int m8809t(Rect rect, float f) {
        return m8770P() ? (int) (rect.centerY() - (f / 2.0f)) : rect.top + this.f7278f.getCompoundPaddingTop();
    }

    /* JADX INFO: renamed from: t0 */
    private boolean m8810t0() {
        int iMax;
        if (this.f7278f == null || this.f7278f.getMeasuredHeight() >= (iMax = Math.max(this.f7274d.getMeasuredHeight(), this.f7272c.getMeasuredHeight()))) {
            return false;
        }
        this.f7278f.setMinimumHeight(iMax);
        return true;
    }

    /* JADX INFO: renamed from: u */
    private Rect m8811u(Rect rect) {
        if (this.f7278f == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.f7263R;
        float fM8684x = this.f7248H0.m8684x();
        rect2.left = rect.left + this.f7278f.getCompoundPaddingLeft();
        rect2.top = m8809t(rect, fM8684x);
        rect2.right = rect.right - this.f7278f.getCompoundPaddingRight();
        rect2.bottom = m8808s(rect, rect2, fM8684x);
        return rect2;
    }

    /* JADX INFO: renamed from: u0 */
    private void m8812u0() {
        if (this.f7251J != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f7270b.getLayoutParams();
            int iM8813v = m8813v();
            if (iM8813v != layoutParams.topMargin) {
                layoutParams.topMargin = iM8813v;
                this.f7270b.requestLayout();
            }
        }
    }

    /* JADX INFO: renamed from: v */
    private int m8813v() {
        float fM8682r;
        if (!this.f7235B) {
            return 0;
        }
        int i = this.f7251J;
        if (i == 0 || i == 1) {
            fM8682r = this.f7248H0.m8682r();
        } else {
            if (i != 2) {
                return 0;
            }
            fM8682r = this.f7248H0.m8682r() / 2.0f;
        }
        return (int) fM8682r;
    }

    /* JADX INFO: renamed from: w */
    private boolean m8814w() {
        return this.f7251J == 2 && m8816x();
    }

    /* JADX INFO: renamed from: w0 */
    private void m8815w0(boolean z, boolean z2) {
        ColorStateList colorStateList;
        TextView textView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f7278f;
        boolean z3 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f7278f;
        boolean z4 = editText2 != null && editText2.hasFocus();
        boolean zM8923k = this.f7286j.m8923k();
        ColorStateList colorStateList2 = this.f7311v0;
        if (colorStateList2 != null) {
            this.f7248H0.m8664P(colorStateList2);
            this.f7248H0.m8669W(this.f7311v0);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.f7311v0;
            int colorForState = colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f7244F0) : this.f7244F0;
            this.f7248H0.m8664P(ColorStateList.valueOf(colorForState));
            this.f7248H0.m8669W(ColorStateList.valueOf(colorForState));
        } else if (zM8923k) {
            this.f7248H0.m8664P(this.f7286j.m8927p());
        } else if (this.f7292m && (textView = this.f7294n) != null) {
            this.f7248H0.m8664P(textView.getTextColors());
        } else if (z4 && (colorStateList = this.f7313w0) != null) {
            this.f7248H0.m8664P(colorStateList);
        }
        if (z3 || !this.f7250I0 || (isEnabled() && z4)) {
            if (z2 || this.f7246G0) {
                m8820z(z);
                return;
            }
            return;
        }
        if (z2 || !this.f7246G0) {
            m8764F(z);
        }
    }

    /* JADX INFO: renamed from: x */
    private boolean m8816x() {
        return this.f7255L > -1 && this.f7260O != 0;
    }

    /* JADX INFO: renamed from: x0 */
    private void m8817x0() {
        EditText editText;
        if (this.f7304s == null || (editText = this.f7278f) == null) {
            return;
        }
        this.f7304s.setGravity(editText.getGravity());
        this.f7304s.setPadding(this.f7278f.getCompoundPaddingLeft(), this.f7278f.getCompoundPaddingTop(), this.f7278f.getCompoundPaddingRight(), this.f7278f.getCompoundPaddingBottom());
    }

    /* JADX INFO: renamed from: y */
    private void m8818y() {
        if (m8754A()) {
            ((C1140c) this.f7241E).m8860l0();
        }
    }

    /* JADX INFO: renamed from: y0 */
    private void m8819y0() {
        EditText editText = this.f7278f;
        m8821z0(editText == null ? 0 : editText.getText().length());
    }

    /* JADX INFO: renamed from: z */
    private void m8820z(boolean z) {
        ValueAnimator valueAnimator = this.f7254K0;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.f7254K0.cancel();
        }
        if (z && this.f7252J0) {
            m8834i(1.0f);
        } else {
            this.f7248H0.m8672a0(1.0f);
        }
        this.f7246G0 = false;
        if (m8754A()) {
            m8773T();
        }
        m8819y0();
        m8757B0();
        m8763E0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: z0 */
    public void m8821z0(int i) {
        if (i != 0 || this.f7246G0) {
            m8768J();
        } else {
            m8790i0();
        }
    }

    /* JADX INFO: renamed from: F0 */
    void m8822F0() {
        TextView textView;
        EditText editText;
        EditText editText2;
        if (this.f7241E == null || this.f7251J == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || ((editText2 = this.f7278f) != null && editText2.hasFocus());
        boolean z3 = isHovered() || ((editText = this.f7278f) != null && editText.isHovered());
        if (!isEnabled()) {
            this.f7260O = this.f7244F0;
        } else if (this.f7286j.m8923k()) {
            if (this.f7234A0 != null) {
                m8759C0(z2, z3);
            } else {
                this.f7260O = this.f7286j.m8926o();
            }
        } else if (!this.f7292m || (textView = this.f7294n) == null) {
            if (z2) {
                this.f7260O = this.f7319z0;
            } else if (z3) {
                this.f7260O = this.f7317y0;
            } else {
                this.f7260O = this.f7315x0;
            }
        } else if (this.f7234A0 != null) {
            m8759C0(z2, z3);
        } else {
            this.f7260O = textView.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && this.f7286j.m8933x() && this.f7286j.m8923k()) {
            z = true;
        }
        setErrorIconVisible(z);
        m8829W();
        m8830Y();
        m8828V();
        if (getEndIconDelegate().mo8894d()) {
            m8792j0(this.f7286j.m8923k());
        }
        if (z2 && isEnabled()) {
            this.f7255L = this.f7259N;
        } else {
            this.f7255L = this.f7257M;
        }
        if (this.f7251J == 2) {
            m8805q0();
        }
        if (this.f7251J == 1) {
            if (!isEnabled()) {
                this.f7261P = this.f7238C0;
            } else if (z3 && !z2) {
                this.f7261P = this.f7242E0;
            } else if (z2) {
                this.f7261P = this.f7240D0;
            } else {
                this.f7261P = this.f7236B0;
            }
        }
        m8791j();
    }

    /* JADX INFO: renamed from: K */
    public boolean m8823K() {
        return this.f7276e.getVisibility() == 0 && this.f7285i0.getVisibility() == 0;
    }

    /* JADX INFO: renamed from: M */
    public boolean m8824M() {
        return this.f7286j.m8934y();
    }

    /* JADX INFO: renamed from: N */
    final boolean m8825N() {
        return this.f7246G0;
    }

    /* JADX INFO: renamed from: O */
    public boolean m8826O() {
        return this.f7239D;
    }

    /* JADX INFO: renamed from: Q */
    public boolean m8827Q() {
        return this.f7266U.getVisibility() == 0;
    }

    /* JADX INFO: renamed from: V */
    public void m8828V() {
        m8775X(this.f7285i0, this.f7289k0);
    }

    /* JADX INFO: renamed from: W */
    public void m8829W() {
        m8775X(this.f7307t0, this.f7309u0);
    }

    /* JADX INFO: renamed from: Y */
    public void m8830Y() {
        m8775X(this.f7266U, this.f7267V);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof EditText)) {
            super.addView(view, i, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        this.f7270b.addView(view, layoutParams2);
        this.f7270b.setLayoutParams(layoutParams);
        m8812u0();
        setEditText((EditText) view);
    }

    @Override // android.view.ViewGroup, android.view.View
    @TargetApi(26)
    public void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.f7278f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.f7280g != null) {
            boolean z = this.f7239D;
            this.f7239D = false;
            CharSequence hint = editText.getHint();
            this.f7278f.setHint(this.f7280g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.f7278f.setHint(hint);
                this.f7239D = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        viewStructure.setChildCount(this.f7270b.getChildCount());
        for (int i2 = 0; i2 < this.f7270b.getChildCount(); i2++) {
            View childAt = this.f7270b.getChildAt(i2);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i);
            if (childAt == this.f7278f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        this.f7258M0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f7258M0 = false;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        m8762E(canvas);
        m8760D(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.f7256L0) {
            return;
        }
        this.f7256L0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        C1112a c1112a = this.f7248H0;
        boolean zM8675d0 = c1112a != null ? c1112a.m8675d0(drawableState) | false : false;
        if (this.f7278f != null) {
            m8837v0(C0292v.m2069T(this) && isEnabled());
        }
        m8836s0();
        m8822F0();
        if (zM8675d0) {
            invalidate();
        }
        this.f7256L0 = false;
    }

    /* JADX INFO: renamed from: e */
    public void m8831e(InterfaceC1135f interfaceC1135f) {
        this.f7279f0.add(interfaceC1135f);
        if (this.f7278f != null) {
            interfaceC1135f.mo8838a(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /* JADX INFO: renamed from: e0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m8832e0(TextView textView, int i) {
        boolean z = true;
        try {
            C0308i.m2289n(textView, i);
            if (Build.VERSION.SDK_INT >= 23) {
                if (textView.getTextColors().getDefaultColor() != -65281) {
                    z = false;
                }
            }
        } catch (Exception unused) {
        }
        if (z) {
            C0308i.m2289n(textView, C1225j.TextAppearance_AppCompat_Caption);
            textView.setTextColor(C0242a.m1697b(getContext(), C1218c.design_error));
        }
    }

    /* JADX INFO: renamed from: f */
    public void m8833f(InterfaceC1136g interfaceC1136g) {
        this.f7287j0.add(interfaceC1136g);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f7278f;
        return editText != null ? editText.getBaseline() + getPaddingTop() + m8813v() : super.getBaseline();
    }

    C1208g getBoxBackground() {
        int i = this.f7251J;
        if (i == 1 || i == 2) {
            return this.f7241E;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f7261P;
    }

    public int getBoxBackgroundMode() {
        return this.f7251J;
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.f7241E.m9196s();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.f7241E.m9197t();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.f7241E.m9175G();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.f7241E.m9174F();
    }

    public int getBoxStrokeColor() {
        return this.f7319z0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.f7234A0;
    }

    public int getBoxStrokeWidth() {
        return this.f7257M;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f7259N;
    }

    public int getCounterMaxLength() {
        return this.f7290l;
    }

    CharSequence getCounterOverflowDescription() {
        TextView textView;
        if (this.f7288k && this.f7292m && (textView = this.f7294n) != null) {
            return textView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f7310v;
    }

    public ColorStateList getCounterTextColor() {
        return this.f7310v;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.f7311v0;
    }

    public EditText getEditText() {
        return this.f7278f;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f7285i0.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f7285i0.getDrawable();
    }

    public int getEndIconMode() {
        return this.f7281g0;
    }

    CheckableImageButton getEndIconView() {
        return this.f7285i0;
    }

    public CharSequence getError() {
        if (this.f7286j.m8933x()) {
            return this.f7286j.m8925n();
        }
        return null;
    }

    public CharSequence getErrorContentDescription() {
        return this.f7286j.m8924m();
    }

    public int getErrorCurrentTextColors() {
        return this.f7286j.m8926o();
    }

    public Drawable getErrorIconDrawable() {
        return this.f7307t0.getDrawable();
    }

    final int getErrorTextCurrentColor() {
        return this.f7286j.m8926o();
    }

    public CharSequence getHelperText() {
        if (this.f7286j.m8934y()) {
            return this.f7286j.m8928q();
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        return this.f7286j.m8929r();
    }

    public CharSequence getHint() {
        if (this.f7235B) {
            return this.f7237C;
        }
        return null;
    }

    final float getHintCollapsedTextHeight() {
        return this.f7248H0.m8682r();
    }

    final int getHintCurrentCollapsedTextColor() {
        return this.f7248H0.m8683u();
    }

    public ColorStateList getHintTextColor() {
        return this.f7313w0;
    }

    public int getMaxWidth() {
        return this.f7284i;
    }

    public int getMinWidth() {
        return this.f7282h;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f7285i0.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f7285i0.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f7302r) {
            return this.f7300q;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f7308u;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f7306t;
    }

    public CharSequence getPrefixText() {
        return this.f7314x;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f7316y.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f7316y;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f7266U.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f7266U.getDrawable();
    }

    public CharSequence getSuffixText() {
        return this.f7318z;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f7233A.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f7233A;
    }

    public Typeface getTypeface() {
        return this.f7265T;
    }

    /* JADX INFO: renamed from: i */
    void m8834i(float f) {
        if (this.f7248H0.m8685y() == f) {
            return;
        }
        if (this.f7254K0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.f7254K0 = valueAnimator;
            valueAnimator.setInterpolator(C1227a.f7755b);
            this.f7254K0.setDuration(167L);
            this.f7254K0.addUpdateListener(new C1133d());
        }
        this.f7254K0.setFloatValues(this.f7248H0.m8685y(), f);
        this.f7254K0.start();
    }

    /* JADX INFO: renamed from: n0 */
    void m8835n0(int i) {
        boolean z = this.f7292m;
        int i2 = this.f7290l;
        if (i2 == -1) {
            this.f7294n.setText(String.valueOf(i));
            this.f7294n.setContentDescription(null);
            this.f7292m = false;
        } else {
            this.f7292m = i > i2;
            m8801o0(getContext(), this.f7294n, i, this.f7290l, this.f7292m);
            if (z != this.f7292m) {
                m8803p0();
            }
            this.f7294n.setText(C0613a.m4802c().m4809j(getContext().getString(C1224i.character_counter_pattern, Integer.valueOf(i), Integer.valueOf(this.f7290l))));
        }
        if (this.f7278f == null || z == this.f7292m) {
            return;
        }
        m8837v0(false);
        m8822F0();
        m8836s0();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.f7278f;
        if (editText != null) {
            Rect rect = this.f7262Q;
            C1113b.m8687a(this, editText, rect);
            m8796l0(rect);
            if (this.f7235B) {
                this.f7248H0.m8671Y(this.f7278f.getTextSize());
                int gravity = this.f7278f.getGravity();
                this.f7248H0.m8665Q((gravity & (-113)) | 48);
                this.f7248H0.m8670X(gravity);
                this.f7248H0.m8662M(m8806r(rect));
                this.f7248H0.m8668U(m8811u(rect));
                this.f7248H0.m8659I();
                if (!m8754A() || this.f7246G0) {
                    return;
                }
                m8773T();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        boolean zM8810t0 = m8810t0();
        boolean zM8807r0 = m8807r0();
        if (zM8810t0 || zM8807r0) {
            this.f7278f.post(new RunnableC1132c());
        }
        m8817x0();
        m8755A0();
        m8761D0();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1137h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1137h c1137h = (C1137h) parcelable;
        super.onRestoreInstanceState(c1137h.m4862j());
        setError(c1137h.f7325d);
        if (c1137h.f7326e) {
            this.f7285i0.post(new RunnableC1131b());
        }
        setHint(c1137h.f7327f);
        setHelperText(c1137h.f7328g);
        setPlaceholderText(c1137h.f7329h);
        requestLayout();
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        C1137h c1137h = new C1137h(super.onSaveInstanceState());
        if (this.f7286j.m8923k()) {
            c1137h.f7325d = getError();
        }
        c1137h.f7326e = m8767I() && this.f7285i0.isChecked();
        c1137h.f7327f = getHint();
        c1137h.f7328g = getHelperText();
        c1137h.f7329h = getPlaceholderText();
        return c1137h;
    }

    /* JADX INFO: renamed from: s0 */
    void m8836s0() {
        Drawable background;
        TextView textView;
        EditText editText = this.f7278f;
        if (editText == null || this.f7251J != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        if (C0159c0.m1070a(background)) {
            background = background.mutate();
        }
        if (this.f7286j.m8923k()) {
            background.setColorFilter(C0170i.m1169e(this.f7286j.m8926o(), PorterDuff.Mode.SRC_IN));
        } else if (this.f7292m && (textView = this.f7294n) != null) {
            background.setColorFilter(C0170i.m1169e(textView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            C0251a.m1782c(background);
            this.f7278f.refreshDrawableState();
        }
    }

    public void setBoxBackgroundColor(int i) {
        if (this.f7261P != i) {
            this.f7261P = i;
            this.f7236B0 = i;
            this.f7240D0 = i;
            this.f7242E0 = i;
            m8791j();
        }
    }

    public void setBoxBackgroundColorResource(int i) {
        setBoxBackgroundColor(C0242a.m1697b(getContext(), i));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.f7236B0 = defaultColor;
        this.f7261P = defaultColor;
        this.f7238C0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.f7240D0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f7242E0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        m8791j();
    }

    public void setBoxBackgroundMode(int i) {
        if (i == this.f7251J) {
            return;
        }
        this.f7251J = i;
        if (this.f7278f != null) {
            m8772S();
        }
    }

    public void setBoxStrokeColor(int i) {
        if (this.f7319z0 != i) {
            this.f7319z0 = i;
            m8822F0();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.f7315x0 = colorStateList.getDefaultColor();
            this.f7244F0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f7317y0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.f7319z0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.f7319z0 != colorStateList.getDefaultColor()) {
            this.f7319z0 = colorStateList.getDefaultColor();
        }
        m8822F0();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) {
        if (this.f7234A0 != colorStateList) {
            this.f7234A0 = colorStateList;
            m8822F0();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.f7257M = i;
        m8822F0();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.f7259N = i;
        m8822F0();
    }

    public void setBoxStrokeWidthFocusedResource(int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.f7288k != z) {
            if (z) {
                C0200x c0200x = new C0200x(getContext());
                this.f7294n = c0200x;
                c0200x.setId(C1221f.textinput_counter);
                Typeface typeface = this.f7265T;
                if (typeface != null) {
                    this.f7294n.setTypeface(typeface);
                }
                this.f7294n.setMaxLines(1);
                this.f7286j.m8920d(this.f7294n, 2);
                C0278h.m2008d((ViewGroup.MarginLayoutParams) this.f7294n.getLayoutParams(), getResources().getDimensionPixelOffset(C1219d.mtrl_textinput_counter_margin_start));
                m8803p0();
                m8798m0();
            } else {
                this.f7286j.m8935z(this.f7294n, 2);
                this.f7294n = null;
            }
            this.f7288k = z;
        }
    }

    public void setCounterMaxLength(int i) {
        if (this.f7290l != i) {
            if (i > 0) {
                this.f7290l = i;
            } else {
                this.f7290l = -1;
            }
            if (this.f7288k) {
                m8798m0();
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.f7296o != i) {
            this.f7296o = i;
            m8803p0();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f7312w != colorStateList) {
            this.f7312w = colorStateList;
            m8803p0();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.f7298p != i) {
            this.f7298p = i;
            m8803p0();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f7310v != colorStateList) {
            this.f7310v = colorStateList;
            m8803p0();
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.f7311v0 = colorStateList;
        this.f7313w0 = colorStateList;
        if (this.f7278f != null) {
            m8837v0(false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m8774U(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.f7285i0.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.f7285i0.setCheckable(z);
    }

    public void setEndIconContentDescription(int i) {
        setEndIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setEndIconDrawable(int i) {
        setEndIconDrawable(i != 0 ? C0503a.m4047d(getContext(), i) : null);
    }

    public void setEndIconMode(int i) {
        int i2 = this.f7281g0;
        this.f7281g0 = i;
        m8758C(i2);
        setEndIconVisible(i != 0);
        if (getEndIconDelegate().mo8893b(this.f7251J)) {
            getEndIconDelegate().mo8852a();
            m8797m();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.f7251J + " is not supported by the end icon mode " + i);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        m8782c0(this.f7285i0, onClickListener, this.f7303r0);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f7303r0 = onLongClickListener;
        m8784d0(this.f7285i0, onLongClickListener);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        if (this.f7289k0 != colorStateList) {
            this.f7289k0 = colorStateList;
            this.f7291l0 = true;
            m8797m();
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        if (this.f7293m0 != mode) {
            this.f7293m0 = mode;
            this.f7295n0 = true;
            m8797m();
        }
    }

    public void setEndIconVisible(boolean z) {
        if (m8823K() != z) {
            this.f7285i0.setVisibility(z ? 0 : 8);
            m8761D0();
            m8807r0();
        }
    }

    public void setError(CharSequence charSequence) {
        if (!this.f7286j.m8933x()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            this.f7286j.m8930t();
        } else {
            this.f7286j.m8918M(charSequence);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        this.f7286j.m8910B(charSequence);
    }

    public void setErrorEnabled(boolean z) {
        this.f7286j.m8911C(z);
    }

    public void setErrorIconDrawable(int i) {
        setErrorIconDrawable(i != 0 ? C0503a.m4047d(getContext(), i) : null);
        m8829W();
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        m8782c0(this.f7307t0, onClickListener, this.f7305s0);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f7305s0 = onLongClickListener;
        m8784d0(this.f7307t0, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        this.f7309u0 = colorStateList;
        Drawable drawable = this.f7307t0.getDrawable();
        if (drawable != null) {
            drawable = C0251a.m1797r(drawable).mutate();
            C0251a.m1794o(drawable, colorStateList);
        }
        if (this.f7307t0.getDrawable() != drawable) {
            this.f7307t0.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.f7307t0.getDrawable();
        if (drawable != null) {
            drawable = C0251a.m1797r(drawable).mutate();
            C0251a.m1795p(drawable, mode);
        }
        if (this.f7307t0.getDrawable() != drawable) {
            this.f7307t0.setImageDrawable(drawable);
        }
    }

    public void setErrorTextAppearance(int i) {
        this.f7286j.m8912D(i);
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        this.f7286j.m8913E(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.f7250I0 != z) {
            this.f7250I0 = z;
            m8837v0(false);
        }
    }

    public void setHelperText(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (m8824M()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!m8824M()) {
                setHelperTextEnabled(true);
            }
            this.f7286j.m8919N(charSequence);
        }
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        this.f7286j.m8916H(colorStateList);
    }

    public void setHelperTextEnabled(boolean z) {
        this.f7286j.m8915G(z);
    }

    public void setHelperTextTextAppearance(int i) {
        this.f7286j.m8914F(i);
    }

    public void setHint(CharSequence charSequence) {
        if (this.f7235B) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.f7252J0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.f7235B) {
            this.f7235B = z;
            if (z) {
                CharSequence hint = this.f7278f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f7237C)) {
                        setHint(hint);
                    }
                    this.f7278f.setHint((CharSequence) null);
                }
                this.f7239D = true;
            } else {
                this.f7239D = false;
                if (!TextUtils.isEmpty(this.f7237C) && TextUtils.isEmpty(this.f7278f.getHint())) {
                    this.f7278f.setHint(this.f7237C);
                }
                setHintInternal(null);
            }
            if (this.f7278f != null) {
                m8812u0();
            }
        }
    }

    public void setHintTextAppearance(int i) {
        this.f7248H0.m8663N(i);
        this.f7313w0 = this.f7248H0.m8681q();
        if (this.f7278f != null) {
            m8837v0(false);
            m8812u0();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.f7313w0 != colorStateList) {
            if (this.f7311v0 == null) {
                this.f7248H0.m8664P(colorStateList);
            }
            this.f7313w0 = colorStateList;
            if (this.f7278f != null) {
                m8837v0(false);
            }
        }
    }

    public void setMaxWidth(int i) {
        this.f7284i = i;
        EditText editText = this.f7278f;
        if (editText == null || i == -1) {
            return;
        }
        editText.setMaxWidth(i);
    }

    public void setMaxWidthResource(int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinWidth(int i) {
        this.f7282h = i;
        EditText editText = this.f7278f;
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
        setPasswordVisibilityToggleDrawable(i != 0 ? C0503a.m4047d(getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.f7281g0 != 1) {
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
        this.f7289k0 = colorStateList;
        this.f7291l0 = true;
        m8797m();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        this.f7293m0 = mode;
        this.f7295n0 = true;
        m8797m();
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f7302r && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f7302r) {
                setPlaceholderTextEnabled(true);
            }
            this.f7300q = charSequence;
        }
        m8819y0();
    }

    public void setPlaceholderTextAppearance(int i) {
        this.f7308u = i;
        TextView textView = this.f7304s;
        if (textView != null) {
            C0308i.m2289n(textView, i);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f7306t != colorStateList) {
            this.f7306t = colorStateList;
            TextView textView = this.f7304s;
            if (textView == null || colorStateList == null) {
                return;
            }
            textView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        this.f7314x = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f7316y.setText(charSequence);
        m8757B0();
    }

    public void setPrefixTextAppearance(int i) {
        C0308i.m2289n(this.f7316y, i);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f7316y.setTextColor(colorStateList);
    }

    public void setStartIconCheckable(boolean z) {
        this.f7266U.setCheckable(z);
    }

    public void setStartIconContentDescription(int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(int i) {
        setStartIconDrawable(i != 0 ? C0503a.m4047d(getContext(), i) : null);
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        m8782c0(this.f7266U, onClickListener, this.f7277e0);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f7277e0 = onLongClickListener;
        m8784d0(this.f7266U, onLongClickListener);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        if (this.f7267V != colorStateList) {
            this.f7267V = colorStateList;
            this.f7268W = true;
            m8800o();
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        if (this.f7269a0 != mode) {
            this.f7269a0 = mode;
            this.f7271b0 = true;
            m8800o();
        }
    }

    public void setStartIconVisible(boolean z) {
        if (m8827Q() != z) {
            this.f7266U.setVisibility(z ? 0 : 8);
            m8755A0();
            m8807r0();
        }
    }

    public void setSuffixText(CharSequence charSequence) {
        this.f7318z = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.f7233A.setText(charSequence);
        m8763E0();
    }

    public void setSuffixTextAppearance(int i) {
        C0308i.m2289n(this.f7233A, i);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f7233A.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(C1134e c1134e) {
        EditText editText = this.f7278f;
        if (editText != null) {
            C0292v.m2105o0(editText, c1134e);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f7265T) {
            this.f7265T = typeface;
            this.f7248H0.m8678g0(typeface);
            this.f7286j.m8917J(typeface);
            TextView textView = this.f7294n;
            if (textView != null) {
                textView.setTypeface(typeface);
            }
        }
    }

    /* JADX INFO: renamed from: v0 */
    void m8837v0(boolean z) {
        m8815w0(z, false);
    }

    public TextInputLayout(Context context, AttributeSet attributeSet, int i) {
        int i2;
        super(C1147a.m8952c(context, attributeSet, i, f7232N0), attributeSet, i);
        this.f7282h = -1;
        this.f7284i = -1;
        this.f7286j = new C1143f(this);
        this.f7262Q = new Rect();
        this.f7263R = new Rect();
        this.f7264S = new RectF();
        this.f7279f0 = new LinkedHashSet<>();
        this.f7281g0 = 0;
        this.f7283h0 = new SparseArray<>();
        this.f7287j0 = new LinkedHashSet<>();
        this.f7248H0 = new C1112a(this);
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f7270b = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        addView(this.f7270b);
        LinearLayout linearLayout = new LinearLayout(context2);
        this.f7272c = linearLayout;
        linearLayout.setOrientation(0);
        this.f7272c.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        this.f7270b.addView(this.f7272c);
        LinearLayout linearLayout2 = new LinearLayout(context2);
        this.f7274d = linearLayout2;
        linearLayout2.setOrientation(0);
        this.f7274d.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        this.f7270b.addView(this.f7274d);
        FrameLayout frameLayout2 = new FrameLayout(context2);
        this.f7276e = frameLayout2;
        frameLayout2.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        this.f7248H0.m8677f0(C1227a.f7754a);
        this.f7248H0.m8674c0(C1227a.f7754a);
        this.f7248H0.m8665Q(8388659);
        C0195u0 c0195u0M8727i = C1121j.m8727i(context2, attributeSet, C1226k.TextInputLayout, i, f7232N0, C1226k.TextInputLayout_counterTextAppearance, C1226k.TextInputLayout_counterOverflowTextAppearance, C1226k.TextInputLayout_errorTextAppearance, C1226k.TextInputLayout_helperTextTextAppearance, C1226k.TextInputLayout_hintTextAppearance);
        this.f7235B = c0195u0M8727i.m1322a(C1226k.TextInputLayout_hintEnabled, true);
        setHint(c0195u0M8727i.m1337p(C1226k.TextInputLayout_android_hint));
        this.f7252J0 = c0195u0M8727i.m1322a(C1226k.TextInputLayout_hintAnimationEnabled, true);
        this.f7250I0 = c0195u0M8727i.m1322a(C1226k.TextInputLayout_expandedHintEnabled, true);
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_android_minWidth)) {
            setMinWidth(c0195u0M8727i.m1327f(C1226k.TextInputLayout_android_minWidth, -1));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_android_maxWidth)) {
            setMaxWidth(c0195u0M8727i.m1327f(C1226k.TextInputLayout_android_maxWidth, -1));
        }
        this.f7245G = C1212k.m9216e(context2, attributeSet, i, f7232N0).m9256m();
        this.f7247H = context2.getResources().getDimensionPixelOffset(C1219d.mtrl_textinput_box_label_cutout_padding);
        this.f7253K = c0195u0M8727i.m1326e(C1226k.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.f7257M = c0195u0M8727i.m1327f(C1226k.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(C1219d.mtrl_textinput_box_stroke_width_default));
        this.f7259N = c0195u0M8727i.m1327f(C1226k.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(C1219d.mtrl_textinput_box_stroke_width_focused));
        this.f7255L = this.f7257M;
        float fM1325d = c0195u0M8727i.m1325d(C1226k.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float fM1325d2 = c0195u0M8727i.m1325d(C1226k.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float fM1325d3 = c0195u0M8727i.m1325d(C1226k.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float fM1325d4 = c0195u0M8727i.m1325d(C1226k.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        C1212k.b bVarM9233v = this.f7245G.m9233v();
        if (fM1325d >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarM9233v.m9250A(fM1325d);
        }
        if (fM1325d2 >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarM9233v.m9254E(fM1325d2);
        }
        if (fM1325d3 >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarM9233v.m9265w(fM1325d3);
        }
        if (fM1325d4 >= CropImageView.DEFAULT_ASPECT_RATIO) {
            bVarM9233v.m9261s(fM1325d4);
        }
        this.f7245G = bVarM9233v.m9256m();
        ColorStateList colorStateListM9455b = C1257c.m9455b(context2, c0195u0M8727i, C1226k.TextInputLayout_boxBackgroundColor);
        if (colorStateListM9455b != null) {
            int defaultColor = colorStateListM9455b.getDefaultColor();
            this.f7236B0 = defaultColor;
            this.f7261P = defaultColor;
            if (colorStateListM9455b.isStateful()) {
                this.f7238C0 = colorStateListM9455b.getColorForState(new int[]{-16842910}, -1);
                this.f7240D0 = colorStateListM9455b.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f7242E0 = colorStateListM9455b.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.f7240D0 = this.f7236B0;
                ColorStateList colorStateListM4046c = C0503a.m4046c(context2, C1218c.mtrl_filled_background_color);
                this.f7238C0 = colorStateListM4046c.getColorForState(new int[]{-16842910}, -1);
                this.f7242E0 = colorStateListM4046c.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f7261P = 0;
            this.f7236B0 = 0;
            this.f7238C0 = 0;
            this.f7240D0 = 0;
            this.f7242E0 = 0;
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_android_textColorHint)) {
            ColorStateList colorStateListM1324c = c0195u0M8727i.m1324c(C1226k.TextInputLayout_android_textColorHint);
            this.f7313w0 = colorStateListM1324c;
            this.f7311v0 = colorStateListM1324c;
        }
        ColorStateList colorStateListM9455b2 = C1257c.m9455b(context2, c0195u0M8727i, C1226k.TextInputLayout_boxStrokeColor);
        this.f7319z0 = c0195u0M8727i.m1323b(C1226k.TextInputLayout_boxStrokeColor, 0);
        this.f7315x0 = C0242a.m1697b(context2, C1218c.mtrl_textinput_default_box_stroke_color);
        this.f7244F0 = C0242a.m1697b(context2, C1218c.mtrl_textinput_disabled_color);
        this.f7317y0 = C0242a.m1697b(context2, C1218c.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListM9455b2 != null) {
            setBoxStrokeColorStateList(colorStateListM9455b2);
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_boxStrokeErrorColor)) {
            setBoxStrokeErrorColor(C1257c.m9455b(context2, c0195u0M8727i, C1226k.TextInputLayout_boxStrokeErrorColor));
        }
        if (c0195u0M8727i.m1335n(C1226k.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(c0195u0M8727i.m1335n(C1226k.TextInputLayout_hintTextAppearance, 0));
        }
        int iM1335n = c0195u0M8727i.m1335n(C1226k.TextInputLayout_errorTextAppearance, 0);
        CharSequence charSequenceM1337p = c0195u0M8727i.m1337p(C1226k.TextInputLayout_errorContentDescription);
        boolean zM1322a = c0195u0M8727i.m1322a(C1226k.TextInputLayout_errorEnabled, false);
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C1223h.design_text_input_end_icon, (ViewGroup) this.f7274d, false);
        this.f7307t0 = checkableImageButton;
        checkableImageButton.setId(C1221f.text_input_error_icon);
        this.f7307t0.setVisibility(8);
        if (C1257c.m9460g(context2)) {
            C0278h.m2008d((ViewGroup.MarginLayoutParams) this.f7307t0.getLayoutParams(), 0);
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_errorIconDrawable)) {
            setErrorIconDrawable(c0195u0M8727i.m1328g(C1226k.TextInputLayout_errorIconDrawable));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_errorIconTint)) {
            setErrorIconTintList(C1257c.m9455b(context2, c0195u0M8727i, C1226k.TextInputLayout_errorIconTint));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_errorIconTintMode)) {
            setErrorIconTintMode(C1123l.m8735e(c0195u0M8727i.m1332k(C1226k.TextInputLayout_errorIconTintMode, -1), null));
        }
        this.f7307t0.setContentDescription(getResources().getText(C1224i.error_icon_content_description));
        C0292v.m2123x0(this.f7307t0, 2);
        this.f7307t0.setClickable(false);
        this.f7307t0.setPressable(false);
        this.f7307t0.setFocusable(false);
        int iM1335n2 = c0195u0M8727i.m1335n(C1226k.TextInputLayout_helperTextTextAppearance, 0);
        boolean zM1322a2 = c0195u0M8727i.m1322a(C1226k.TextInputLayout_helperTextEnabled, false);
        CharSequence charSequenceM1337p2 = c0195u0M8727i.m1337p(C1226k.TextInputLayout_helperText);
        int iM1335n3 = c0195u0M8727i.m1335n(C1226k.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence charSequenceM1337p3 = c0195u0M8727i.m1337p(C1226k.TextInputLayout_placeholderText);
        int iM1335n4 = c0195u0M8727i.m1335n(C1226k.TextInputLayout_prefixTextAppearance, 0);
        CharSequence charSequenceM1337p4 = c0195u0M8727i.m1337p(C1226k.TextInputLayout_prefixText);
        int iM1335n5 = c0195u0M8727i.m1335n(C1226k.TextInputLayout_suffixTextAppearance, 0);
        CharSequence charSequenceM1337p5 = c0195u0M8727i.m1337p(C1226k.TextInputLayout_suffixText);
        boolean zM1322a3 = c0195u0M8727i.m1322a(C1226k.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(c0195u0M8727i.m1332k(C1226k.TextInputLayout_counterMaxLength, -1));
        this.f7298p = c0195u0M8727i.m1335n(C1226k.TextInputLayout_counterTextAppearance, 0);
        this.f7296o = c0195u0M8727i.m1335n(C1226k.TextInputLayout_counterOverflowTextAppearance, 0);
        CheckableImageButton checkableImageButton2 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C1223h.design_text_input_start_icon, (ViewGroup) this.f7272c, false);
        this.f7266U = checkableImageButton2;
        checkableImageButton2.setVisibility(8);
        if (C1257c.m9460g(context2)) {
            C0278h.m2007c((ViewGroup.MarginLayoutParams) this.f7266U.getLayoutParams(), 0);
        }
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_startIconDrawable)) {
            setStartIconDrawable(c0195u0M8727i.m1328g(C1226k.TextInputLayout_startIconDrawable));
            if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_startIconContentDescription)) {
                setStartIconContentDescription(c0195u0M8727i.m1337p(C1226k.TextInputLayout_startIconContentDescription));
            }
            setStartIconCheckable(c0195u0M8727i.m1322a(C1226k.TextInputLayout_startIconCheckable, true));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_startIconTint)) {
            setStartIconTintList(C1257c.m9455b(context2, c0195u0M8727i, C1226k.TextInputLayout_startIconTint));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_startIconTintMode)) {
            setStartIconTintMode(C1123l.m8735e(c0195u0M8727i.m1332k(C1226k.TextInputLayout_startIconTintMode, -1), null));
        }
        setBoxBackgroundMode(c0195u0M8727i.m1332k(C1226k.TextInputLayout_boxBackgroundMode, 0));
        CheckableImageButton checkableImageButton3 = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(C1223h.design_text_input_end_icon, (ViewGroup) this.f7276e, false);
        this.f7285i0 = checkableImageButton3;
        this.f7276e.addView(checkableImageButton3);
        this.f7285i0.setVisibility(8);
        if (C1257c.m9460g(context2)) {
            i2 = 0;
            C0278h.m2008d((ViewGroup.MarginLayoutParams) this.f7285i0.getLayoutParams(), 0);
        } else {
            i2 = 0;
        }
        this.f7283h0.append(-1, new C1139b(this));
        this.f7283h0.append(i2, new C1145h(this));
        this.f7283h0.append(1, new C1146i(this));
        this.f7283h0.append(2, new C1138a(this));
        this.f7283h0.append(3, new C1141d(this));
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_endIconMode)) {
            setEndIconMode(c0195u0M8727i.m1332k(C1226k.TextInputLayout_endIconMode, 0));
            if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_endIconDrawable)) {
                setEndIconDrawable(c0195u0M8727i.m1328g(C1226k.TextInputLayout_endIconDrawable));
            }
            if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_endIconContentDescription)) {
                setEndIconContentDescription(c0195u0M8727i.m1337p(C1226k.TextInputLayout_endIconContentDescription));
            }
            setEndIconCheckable(c0195u0M8727i.m1322a(C1226k.TextInputLayout_endIconCheckable, true));
        } else if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_passwordToggleEnabled)) {
            setEndIconMode(c0195u0M8727i.m1322a(C1226k.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            setEndIconDrawable(c0195u0M8727i.m1328g(C1226k.TextInputLayout_passwordToggleDrawable));
            setEndIconContentDescription(c0195u0M8727i.m1337p(C1226k.TextInputLayout_passwordToggleContentDescription));
            if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_passwordToggleTint)) {
                setEndIconTintList(C1257c.m9455b(context2, c0195u0M8727i, C1226k.TextInputLayout_passwordToggleTint));
            }
            if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_passwordToggleTintMode)) {
                setEndIconTintMode(C1123l.m8735e(c0195u0M8727i.m1332k(C1226k.TextInputLayout_passwordToggleTintMode, -1), null));
            }
        }
        if (!c0195u0M8727i.m1340s(C1226k.TextInputLayout_passwordToggleEnabled)) {
            if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_endIconTint)) {
                setEndIconTintList(C1257c.m9455b(context2, c0195u0M8727i, C1226k.TextInputLayout_endIconTint));
            }
            if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_endIconTintMode)) {
                setEndIconTintMode(C1123l.m8735e(c0195u0M8727i.m1332k(C1226k.TextInputLayout_endIconTintMode, -1), null));
            }
        }
        C0200x c0200x = new C0200x(context2);
        this.f7316y = c0200x;
        c0200x.setId(C1221f.textinput_prefix_text);
        this.f7316y.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        C0292v.m2109q0(this.f7316y, 1);
        this.f7272c.addView(this.f7266U);
        this.f7272c.addView(this.f7316y);
        C0200x c0200x2 = new C0200x(context2);
        this.f7233A = c0200x2;
        c0200x2.setId(C1221f.textinput_suffix_text);
        this.f7233A.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        C0292v.m2109q0(this.f7233A, 1);
        this.f7274d.addView(this.f7233A);
        this.f7274d.addView(this.f7307t0);
        this.f7274d.addView(this.f7276e);
        setHelperTextEnabled(zM1322a2);
        setHelperText(charSequenceM1337p2);
        setHelperTextTextAppearance(iM1335n2);
        setErrorEnabled(zM1322a);
        setErrorTextAppearance(iM1335n);
        setErrorContentDescription(charSequenceM1337p);
        setCounterTextAppearance(this.f7298p);
        setCounterOverflowTextAppearance(this.f7296o);
        setPlaceholderText(charSequenceM1337p3);
        setPlaceholderTextAppearance(iM1335n3);
        setPrefixText(charSequenceM1337p4);
        setPrefixTextAppearance(iM1335n4);
        setSuffixText(charSequenceM1337p5);
        setSuffixTextAppearance(iM1335n5);
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_errorTextColor)) {
            setErrorTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_errorTextColor));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_helperTextTextColor));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_hintTextColor)) {
            setHintTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_hintTextColor));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_counterTextColor)) {
            setCounterTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_counterTextColor));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_counterOverflowTextColor));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_placeholderTextColor)) {
            setPlaceholderTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_placeholderTextColor));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_prefixTextColor)) {
            setPrefixTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_prefixTextColor));
        }
        if (c0195u0M8727i.m1340s(C1226k.TextInputLayout_suffixTextColor)) {
            setSuffixTextColor(c0195u0M8727i.m1324c(C1226k.TextInputLayout_suffixTextColor));
        }
        setCounterEnabled(zM1322a3);
        setEnabled(c0195u0M8727i.m1322a(C1226k.TextInputLayout_android_enabled, true));
        c0195u0M8727i.m1341w();
        C0292v.m2123x0(this, 2);
        if (Build.VERSION.SDK_INT >= 26) {
            C0292v.m2125y0(this, 1);
        }
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.f7285i0.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        this.f7285i0.setImageDrawable(drawable);
        m8828V();
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.f7266U.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f7266U.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            m8830Y();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f7307t0.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.f7286j.m8933x());
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f7285i0.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f7285i0.setImageDrawable(drawable);
    }

    public void setHint(int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }
}
