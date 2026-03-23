package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class h {
    private final CompoundButton a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ColorStateList f328b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private PorterDuff.Mode f329c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f330d = false;
    private boolean e = false;
    private boolean f;

    h(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    void a() {
        Drawable drawableA = androidx.core.widget.c.a(this.a);
        if (drawableA != null) {
            if (this.f330d || this.e) {
                Drawable drawableMutate = androidx.core.graphics.drawable.a.r(drawableA).mutate();
                if (this.f330d) {
                    androidx.core.graphics.drawable.a.o(drawableMutate, this.f328b);
                }
                if (this.e) {
                    androidx.core.graphics.drawable.a.p(drawableMutate, this.f329c);
                }
                if (drawableMutate.isStateful()) {
                    drawableMutate.setState(this.a.getDrawableState());
                }
                this.a.setButtonDrawable(drawableMutate);
            }
        }
    }

    int b(int i) {
        Drawable drawableA;
        return (Build.VERSION.SDK_INT >= 17 || (drawableA = androidx.core.widget.c.a(this.a)) == null) ? i : i + drawableA.getIntrinsicWidth();
    }

    ColorStateList c() {
        return this.f328b;
    }

    PorterDuff.Mode d() {
        return this.f329c;
    }

    void e(AttributeSet attributeSet, int i) {
        boolean z;
        int iN;
        int iN2;
        u0 u0VarV = u0.v(this.a.getContext(), attributeSet, c.a.j.CompoundButton, i, 0);
        CompoundButton compoundButton = this.a;
        androidx.core.view.v.m0(compoundButton, compoundButton.getContext(), c.a.j.CompoundButton, attributeSet, u0VarV.r(), i, 0);
        try {
            if (!u0VarV.s(c.a.j.CompoundButton_buttonCompat) || (iN2 = u0VarV.n(c.a.j.CompoundButton_buttonCompat, 0)) == 0) {
                z = false;
            } else {
                try {
                    this.a.setButtonDrawable(c.a.k.a.a.d(this.a.getContext(), iN2));
                    z = true;
                } catch (Resources.NotFoundException unused) {
                    z = false;
                }
            }
            if (!z && u0VarV.s(c.a.j.CompoundButton_android_button) && (iN = u0VarV.n(c.a.j.CompoundButton_android_button, 0)) != 0) {
                this.a.setButtonDrawable(c.a.k.a.a.d(this.a.getContext(), iN));
            }
            if (u0VarV.s(c.a.j.CompoundButton_buttonTint)) {
                androidx.core.widget.c.c(this.a, u0VarV.c(c.a.j.CompoundButton_buttonTint));
            }
            if (u0VarV.s(c.a.j.CompoundButton_buttonTintMode)) {
                androidx.core.widget.c.d(this.a, c0.e(u0VarV.k(c.a.j.CompoundButton_buttonTintMode, -1), null));
            }
        } finally {
            u0VarV.w();
        }
    }

    void f() {
        if (this.f) {
            this.f = false;
        } else {
            this.f = true;
            a();
        }
    }

    void g(ColorStateList colorStateList) {
        this.f328b = colorStateList;
        this.f330d = true;
        a();
    }

    void h(PorterDuff.Mode mode) {
        this.f329c = mode;
        this.e = true;
        a();
    }
}
