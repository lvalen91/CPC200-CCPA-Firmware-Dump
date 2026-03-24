package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.content.c.f;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class w {
    private final TextView a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s0 f415b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s0 f416c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s0 f417d;
    private s0 e;
    private s0 f;
    private s0 g;
    private s0 h;
    private final y i;
    private int j = 0;
    private int k = -1;
    private Typeface l;
    private boolean m;

    class a extends f.a {
        final /* synthetic */ int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f418b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ WeakReference f419c;

        a(int i, int i2, WeakReference weakReference) {
            this.a = i;
            this.f418b = i2;
            this.f419c = weakReference;
        }

        @Override // androidx.core.content.c.f.a
        public void d(int i) {
        }

        @Override // androidx.core.content.c.f.a
        public void e(Typeface typeface) {
            int i;
            if (Build.VERSION.SDK_INT >= 28 && (i = this.a) != -1) {
                typeface = Typeface.create(typeface, i, (this.f418b & 2) != 0);
            }
            w.this.n(this.f419c, typeface);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f421b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Typeface f422c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f423d;

        b(w wVar, TextView textView, Typeface typeface, int i) {
            this.f421b = textView;
            this.f422c = typeface;
            this.f423d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f421b.setTypeface(this.f422c, this.f423d);
        }
    }

    w(TextView textView) {
        this.a = textView;
        this.i = new y(this.a);
    }

    private void B(int i, float f) {
        this.i.y(i, f);
    }

    private void C(Context context, u0 u0Var) {
        String strO;
        this.j = u0Var.k(c.a.j.TextAppearance_android_textStyle, this.j);
        if (Build.VERSION.SDK_INT >= 28) {
            int iK = u0Var.k(c.a.j.TextAppearance_android_textFontWeight, -1);
            this.k = iK;
            if (iK != -1) {
                this.j = (this.j & 2) | 0;
            }
        }
        if (!u0Var.s(c.a.j.TextAppearance_android_fontFamily) && !u0Var.s(c.a.j.TextAppearance_fontFamily)) {
            if (u0Var.s(c.a.j.TextAppearance_android_typeface)) {
                this.m = false;
                int iK2 = u0Var.k(c.a.j.TextAppearance_android_typeface, 1);
                if (iK2 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (iK2 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (iK2 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i = u0Var.s(c.a.j.TextAppearance_fontFamily) ? c.a.j.TextAppearance_fontFamily : c.a.j.TextAppearance_android_fontFamily;
        int i2 = this.k;
        int i3 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceJ = u0Var.j(i, this.j, new a(i2, i3, new WeakReference(this.a)));
                if (typefaceJ != null) {
                    if (Build.VERSION.SDK_INT < 28 || this.k == -1) {
                        this.l = typefaceJ;
                    } else {
                        this.l = Typeface.create(Typeface.create(typefaceJ, 0), this.k, (this.j & 2) != 0);
                    }
                }
                this.m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (strO = u0Var.o(i)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.k == -1) {
            this.l = Typeface.create(strO, this.j);
        } else {
            this.l = Typeface.create(Typeface.create(strO, 0), this.k, (this.j & 2) != 0);
        }
    }

    private void a(Drawable drawable, s0 s0Var) {
        if (drawable == null || s0Var == null) {
            return;
        }
        i.i(drawable, s0Var, this.a.getDrawableState());
    }

    private static s0 d(Context context, i iVar, int i) {
        ColorStateList colorStateListF = iVar.f(context, i);
        if (colorStateListF == null) {
            return null;
        }
        s0 s0Var = new s0();
        s0Var.f388d = true;
        s0Var.a = colorStateListF;
        return s0Var;
    }

    private void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            TextView textView = this.a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative2 = this.a.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                TextView textView2 = this.a;
                Drawable drawable7 = compoundDrawablesRelative2[0];
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative2[1];
                }
                Drawable drawable8 = compoundDrawablesRelative2[2];
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative2[3];
                }
                textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                return;
            }
        }
        Drawable[] compoundDrawables = this.a.getCompoundDrawables();
        TextView textView3 = this.a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    private void z() {
        s0 s0Var = this.h;
        this.f415b = s0Var;
        this.f416c = s0Var;
        this.f417d = s0Var;
        this.e = s0Var;
        this.f = s0Var;
        this.g = s0Var;
    }

    void A(int i, float f) {
        if (androidx.core.widget.b.a || l()) {
            return;
        }
        B(i, f);
    }

    void b() {
        if (this.f415b != null || this.f416c != null || this.f417d != null || this.e != null) {
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            a(compoundDrawables[0], this.f415b);
            a(compoundDrawables[1], this.f416c);
            a(compoundDrawables[2], this.f417d);
            a(compoundDrawables[3], this.e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f == null && this.g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.f);
            a(compoundDrawablesRelative[2], this.g);
        }
    }

    void c() {
        this.i.b();
    }

    int e() {
        return this.i.j();
    }

    int f() {
        return this.i.k();
    }

    int g() {
        return this.i.l();
    }

    int[] h() {
        return this.i.m();
    }

    int i() {
        return this.i.n();
    }

    ColorStateList j() {
        s0 s0Var = this.h;
        if (s0Var != null) {
            return s0Var.a;
        }
        return null;
    }

    PorterDuff.Mode k() {
        s0 s0Var = this.h;
        if (s0Var != null) {
            return s0Var.f386b;
        }
        return null;
    }

    boolean l() {
        return this.i.s();
    }

    @SuppressLint({"NewApi"})
    void m(AttributeSet attributeSet, int i) {
        ColorStateList colorStateListC;
        String strO;
        boolean zA;
        boolean z;
        ColorStateList colorStateListC2;
        String strO2;
        ColorStateList colorStateListC3;
        boolean z2;
        int i2;
        Context context = this.a.getContext();
        i iVarB = i.b();
        u0 u0VarV = u0.v(context, attributeSet, c.a.j.AppCompatTextHelper, i, 0);
        TextView textView = this.a;
        androidx.core.view.v.m0(textView, textView.getContext(), c.a.j.AppCompatTextHelper, attributeSet, u0VarV.r(), i, 0);
        int iN = u0VarV.n(c.a.j.AppCompatTextHelper_android_textAppearance, -1);
        if (u0VarV.s(c.a.j.AppCompatTextHelper_android_drawableLeft)) {
            this.f415b = d(context, iVarB, u0VarV.n(c.a.j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (u0VarV.s(c.a.j.AppCompatTextHelper_android_drawableTop)) {
            this.f416c = d(context, iVarB, u0VarV.n(c.a.j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (u0VarV.s(c.a.j.AppCompatTextHelper_android_drawableRight)) {
            this.f417d = d(context, iVarB, u0VarV.n(c.a.j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (u0VarV.s(c.a.j.AppCompatTextHelper_android_drawableBottom)) {
            this.e = d(context, iVarB, u0VarV.n(c.a.j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (u0VarV.s(c.a.j.AppCompatTextHelper_android_drawableStart)) {
                this.f = d(context, iVarB, u0VarV.n(c.a.j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (u0VarV.s(c.a.j.AppCompatTextHelper_android_drawableEnd)) {
                this.g = d(context, iVarB, u0VarV.n(c.a.j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        u0VarV.w();
        boolean z3 = this.a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (iN != -1) {
            u0 u0VarT = u0.t(context, iN, c.a.j.TextAppearance);
            if (z3 || !u0VarT.s(c.a.j.TextAppearance_textAllCaps)) {
                zA = false;
                z = false;
            } else {
                zA = u0VarT.a(c.a.j.TextAppearance_textAllCaps, false);
                z = true;
            }
            C(context, u0VarT);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateListC3 = u0VarT.s(c.a.j.TextAppearance_android_textColor) ? u0VarT.c(c.a.j.TextAppearance_android_textColor) : null;
                colorStateListC = u0VarT.s(c.a.j.TextAppearance_android_textColorHint) ? u0VarT.c(c.a.j.TextAppearance_android_textColorHint) : null;
                colorStateListC2 = u0VarT.s(c.a.j.TextAppearance_android_textColorLink) ? u0VarT.c(c.a.j.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateListC = null;
                colorStateListC2 = null;
                colorStateListC3 = null;
            }
            strO2 = u0VarT.s(c.a.j.TextAppearance_textLocale) ? u0VarT.o(c.a.j.TextAppearance_textLocale) : null;
            strO = (Build.VERSION.SDK_INT < 26 || !u0VarT.s(c.a.j.TextAppearance_fontVariationSettings)) ? null : u0VarT.o(c.a.j.TextAppearance_fontVariationSettings);
            u0VarT.w();
        } else {
            colorStateListC = null;
            strO = null;
            zA = false;
            z = false;
            colorStateListC2 = null;
            strO2 = null;
            colorStateListC3 = null;
        }
        u0 u0VarV2 = u0.v(context, attributeSet, c.a.j.TextAppearance, i, 0);
        if (z3 || !u0VarV2.s(c.a.j.TextAppearance_textAllCaps)) {
            z2 = z;
        } else {
            zA = u0VarV2.a(c.a.j.TextAppearance_textAllCaps, false);
            z2 = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (u0VarV2.s(c.a.j.TextAppearance_android_textColor)) {
                colorStateListC3 = u0VarV2.c(c.a.j.TextAppearance_android_textColor);
            }
            if (u0VarV2.s(c.a.j.TextAppearance_android_textColorHint)) {
                colorStateListC = u0VarV2.c(c.a.j.TextAppearance_android_textColorHint);
            }
            if (u0VarV2.s(c.a.j.TextAppearance_android_textColorLink)) {
                colorStateListC2 = u0VarV2.c(c.a.j.TextAppearance_android_textColorLink);
            }
        }
        if (u0VarV2.s(c.a.j.TextAppearance_textLocale)) {
            strO2 = u0VarV2.o(c.a.j.TextAppearance_textLocale);
        }
        if (Build.VERSION.SDK_INT >= 26 && u0VarV2.s(c.a.j.TextAppearance_fontVariationSettings)) {
            strO = u0VarV2.o(c.a.j.TextAppearance_fontVariationSettings);
        }
        if (Build.VERSION.SDK_INT >= 28 && u0VarV2.s(c.a.j.TextAppearance_android_textSize) && u0VarV2.f(c.a.j.TextAppearance_android_textSize, -1) == 0) {
            this.a.setTextSize(0, CropImageView.DEFAULT_ASPECT_RATIO);
        }
        C(context, u0VarV2);
        u0VarV2.w();
        if (colorStateListC3 != null) {
            this.a.setTextColor(colorStateListC3);
        }
        if (colorStateListC != null) {
            this.a.setHintTextColor(colorStateListC);
        }
        if (colorStateListC2 != null) {
            this.a.setLinkTextColor(colorStateListC2);
        }
        if (!z3 && z2) {
            s(zA);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.k == -1) {
                this.a.setTypeface(typeface, this.j);
            } else {
                this.a.setTypeface(typeface);
            }
        }
        if (strO != null) {
            this.a.setFontVariationSettings(strO);
        }
        if (strO2 != null) {
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 24) {
                this.a.setTextLocales(LocaleList.forLanguageTags(strO2));
            } else if (i3 >= 21) {
                this.a.setTextLocale(Locale.forLanguageTag(strO2.substring(0, strO2.indexOf(44))));
            }
        }
        this.i.t(attributeSet, i);
        if (androidx.core.widget.b.a && this.i.n() != 0) {
            int[] iArrM = this.i.m();
            if (iArrM.length > 0) {
                if (this.a.getAutoSizeStepGranularity() != -1.0f) {
                    this.a.setAutoSizeTextTypeUniformWithConfiguration(this.i.k(), this.i.j(), this.i.l(), 0);
                } else {
                    this.a.setAutoSizeTextTypeUniformWithPresetSizes(iArrM, 0);
                }
            }
        }
        u0 u0VarU = u0.u(context, attributeSet, c.a.j.AppCompatTextView);
        int iN2 = u0VarU.n(c.a.j.AppCompatTextView_drawableLeftCompat, -1);
        Drawable drawableC = iN2 != -1 ? iVarB.c(context, iN2) : null;
        int iN3 = u0VarU.n(c.a.j.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawableC2 = iN3 != -1 ? iVarB.c(context, iN3) : null;
        int iN4 = u0VarU.n(c.a.j.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawableC3 = iN4 != -1 ? iVarB.c(context, iN4) : null;
        int iN5 = u0VarU.n(c.a.j.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawableC4 = iN5 != -1 ? iVarB.c(context, iN5) : null;
        int iN6 = u0VarU.n(c.a.j.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawableC5 = iN6 != -1 ? iVarB.c(context, iN6) : null;
        int iN7 = u0VarU.n(c.a.j.AppCompatTextView_drawableEndCompat, -1);
        y(drawableC, drawableC2, drawableC3, drawableC4, drawableC5, iN7 != -1 ? iVarB.c(context, iN7) : null);
        if (u0VarU.s(c.a.j.AppCompatTextView_drawableTint)) {
            androidx.core.widget.i.g(this.a, u0VarU.c(c.a.j.AppCompatTextView_drawableTint));
        }
        if (u0VarU.s(c.a.j.AppCompatTextView_drawableTintMode)) {
            i2 = -1;
            androidx.core.widget.i.h(this.a, c0.e(u0VarU.k(c.a.j.AppCompatTextView_drawableTintMode, -1), null));
        } else {
            i2 = -1;
        }
        int iF = u0VarU.f(c.a.j.AppCompatTextView_firstBaselineToTopHeight, i2);
        int iF2 = u0VarU.f(c.a.j.AppCompatTextView_lastBaselineToBottomHeight, i2);
        int iF3 = u0VarU.f(c.a.j.AppCompatTextView_lineHeight, i2);
        u0VarU.w();
        if (iF != i2) {
            androidx.core.widget.i.j(this.a, iF);
        }
        if (iF2 != i2) {
            androidx.core.widget.i.k(this.a, iF2);
        }
        if (iF3 != i2) {
            androidx.core.widget.i.l(this.a, iF3);
        }
    }

    void n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.m) {
            this.l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                if (androidx.core.view.v.S(textView)) {
                    textView.post(new b(this, textView, typeface, this.j));
                } else {
                    textView.setTypeface(typeface, this.j);
                }
            }
        }
    }

    void o(boolean z, int i, int i2, int i3, int i4) {
        if (androidx.core.widget.b.a) {
            return;
        }
        c();
    }

    void p() {
        b();
    }

    void q(Context context, int i) {
        String strO;
        ColorStateList colorStateListC;
        ColorStateList colorStateListC2;
        ColorStateList colorStateListC3;
        u0 u0VarT = u0.t(context, i, c.a.j.TextAppearance);
        if (u0VarT.s(c.a.j.TextAppearance_textAllCaps)) {
            s(u0VarT.a(c.a.j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (u0VarT.s(c.a.j.TextAppearance_android_textColor) && (colorStateListC3 = u0VarT.c(c.a.j.TextAppearance_android_textColor)) != null) {
                this.a.setTextColor(colorStateListC3);
            }
            if (u0VarT.s(c.a.j.TextAppearance_android_textColorLink) && (colorStateListC2 = u0VarT.c(c.a.j.TextAppearance_android_textColorLink)) != null) {
                this.a.setLinkTextColor(colorStateListC2);
            }
            if (u0VarT.s(c.a.j.TextAppearance_android_textColorHint) && (colorStateListC = u0VarT.c(c.a.j.TextAppearance_android_textColorHint)) != null) {
                this.a.setHintTextColor(colorStateListC);
            }
        }
        if (u0VarT.s(c.a.j.TextAppearance_android_textSize) && u0VarT.f(c.a.j.TextAppearance_android_textSize, -1) == 0) {
            this.a.setTextSize(0, CropImageView.DEFAULT_ASPECT_RATIO);
        }
        C(context, u0VarT);
        if (Build.VERSION.SDK_INT >= 26 && u0VarT.s(c.a.j.TextAppearance_fontVariationSettings) && (strO = u0VarT.o(c.a.j.TextAppearance_fontVariationSettings)) != null) {
            this.a.setFontVariationSettings(strO);
        }
        u0VarT.w();
        Typeface typeface = this.l;
        if (typeface != null) {
            this.a.setTypeface(typeface, this.j);
        }
    }

    void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        androidx.core.view.f0.a.f(editorInfo, textView.getText());
    }

    void s(boolean z) {
        this.a.setAllCaps(z);
    }

    void t(int i, int i2, int i3, int i4) {
        this.i.u(i, i2, i3, i4);
    }

    void u(int[] iArr, int i) {
        this.i.v(iArr, i);
    }

    void v(int i) {
        this.i.w(i);
    }

    void w(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new s0();
        }
        s0 s0Var = this.h;
        s0Var.a = colorStateList;
        s0Var.f388d = colorStateList != null;
        z();
    }

    void x(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new s0();
        }
        s0 s0Var = this.h;
        s0Var.f386b = mode;
        s0Var.f387c = mode != null;
        z();
    }
}
