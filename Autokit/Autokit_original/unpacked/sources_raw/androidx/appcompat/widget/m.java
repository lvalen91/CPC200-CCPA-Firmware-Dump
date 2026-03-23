package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class m {
    private final ImageView a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private s0 f351b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s0 f352c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s0 f353d;

    public m(ImageView imageView) {
        this.a = imageView;
    }

    private boolean a(Drawable drawable) {
        if (this.f353d == null) {
            this.f353d = new s0();
        }
        s0 s0Var = this.f353d;
        s0Var.a();
        ColorStateList colorStateListA = androidx.core.widget.e.a(this.a);
        if (colorStateListA != null) {
            s0Var.f388d = true;
            s0Var.a = colorStateListA;
        }
        PorterDuff.Mode modeB = androidx.core.widget.e.b(this.a);
        if (modeB != null) {
            s0Var.f387c = true;
            s0Var.f386b = modeB;
        }
        if (!s0Var.f388d && !s0Var.f387c) {
            return false;
        }
        i.i(drawable, s0Var, this.a.getDrawableState());
        return true;
    }

    private boolean j() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f351b != null : i == 21;
    }

    void b() {
        Drawable drawable = this.a.getDrawable();
        if (drawable != null) {
            c0.b(drawable);
        }
        if (drawable != null) {
            if (j() && a(drawable)) {
                return;
            }
            s0 s0Var = this.f352c;
            if (s0Var != null) {
                i.i(drawable, s0Var, this.a.getDrawableState());
                return;
            }
            s0 s0Var2 = this.f351b;
            if (s0Var2 != null) {
                i.i(drawable, s0Var2, this.a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        s0 s0Var = this.f352c;
        if (s0Var != null) {
            return s0Var.a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        s0 s0Var = this.f352c;
        if (s0Var != null) {
            return s0Var.f386b;
        }
        return null;
    }

    boolean e() {
        return Build.VERSION.SDK_INT < 21 || !(this.a.getBackground() instanceof RippleDrawable);
    }

    public void f(AttributeSet attributeSet, int i) {
        int iN;
        u0 u0VarV = u0.v(this.a.getContext(), attributeSet, c.a.j.AppCompatImageView, i, 0);
        ImageView imageView = this.a;
        androidx.core.view.v.m0(imageView, imageView.getContext(), c.a.j.AppCompatImageView, attributeSet, u0VarV.r(), i, 0);
        try {
            Drawable drawable = this.a.getDrawable();
            if (drawable == null && (iN = u0VarV.n(c.a.j.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = c.a.k.a.a.d(this.a.getContext(), iN)) != null) {
                this.a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                c0.b(drawable);
            }
            if (u0VarV.s(c.a.j.AppCompatImageView_tint)) {
                androidx.core.widget.e.c(this.a, u0VarV.c(c.a.j.AppCompatImageView_tint));
            }
            if (u0VarV.s(c.a.j.AppCompatImageView_tintMode)) {
                androidx.core.widget.e.d(this.a, c0.e(u0VarV.k(c.a.j.AppCompatImageView_tintMode, -1), null));
            }
        } finally {
            u0VarV.w();
        }
    }

    public void g(int i) {
        if (i != 0) {
            Drawable drawableD = c.a.k.a.a.d(this.a.getContext(), i);
            if (drawableD != null) {
                c0.b(drawableD);
            }
            this.a.setImageDrawable(drawableD);
        } else {
            this.a.setImageDrawable(null);
        }
        b();
    }

    void h(ColorStateList colorStateList) {
        if (this.f352c == null) {
            this.f352c = new s0();
        }
        s0 s0Var = this.f352c;
        s0Var.a = colorStateList;
        s0Var.f388d = true;
        b();
    }

    void i(PorterDuff.Mode mode) {
        if (this.f352c == null) {
            this.f352c = new s0();
        }
        s0 s0Var = this.f352c;
        s0Var.f386b = mode;
        s0Var.f387c = true;
        b();
    }
}
