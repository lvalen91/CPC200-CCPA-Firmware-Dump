package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class e {
    private final View a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s0 f314d;
    private s0 e;
    private s0 f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f313c = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final i f312b = i.b();

    e(View view) {
        this.a = view;
    }

    private boolean a(Drawable drawable) {
        if (this.f == null) {
            this.f = new s0();
        }
        s0 s0Var = this.f;
        s0Var.a();
        ColorStateList colorStateListS = androidx.core.view.v.s(this.a);
        if (colorStateListS != null) {
            s0Var.f388d = true;
            s0Var.a = colorStateListS;
        }
        PorterDuff.Mode modeT = androidx.core.view.v.t(this.a);
        if (modeT != null) {
            s0Var.f387c = true;
            s0Var.f386b = modeT;
        }
        if (!s0Var.f388d && !s0Var.f387c) {
            return false;
        }
        i.i(drawable, s0Var, this.a.getDrawableState());
        return true;
    }

    private boolean k() {
        int i = Build.VERSION.SDK_INT;
        return i > 21 ? this.f314d != null : i == 21;
    }

    void b() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            s0 s0Var = this.e;
            if (s0Var != null) {
                i.i(background, s0Var, this.a.getDrawableState());
                return;
            }
            s0 s0Var2 = this.f314d;
            if (s0Var2 != null) {
                i.i(background, s0Var2, this.a.getDrawableState());
            }
        }
    }

    ColorStateList c() {
        s0 s0Var = this.e;
        if (s0Var != null) {
            return s0Var.a;
        }
        return null;
    }

    PorterDuff.Mode d() {
        s0 s0Var = this.e;
        if (s0Var != null) {
            return s0Var.f386b;
        }
        return null;
    }

    void e(AttributeSet attributeSet, int i) {
        u0 u0VarV = u0.v(this.a.getContext(), attributeSet, c.a.j.ViewBackgroundHelper, i, 0);
        View view = this.a;
        androidx.core.view.v.m0(view, view.getContext(), c.a.j.ViewBackgroundHelper, attributeSet, u0VarV.r(), i, 0);
        try {
            if (u0VarV.s(c.a.j.ViewBackgroundHelper_android_background)) {
                this.f313c = u0VarV.n(c.a.j.ViewBackgroundHelper_android_background, -1);
                ColorStateList colorStateListF = this.f312b.f(this.a.getContext(), this.f313c);
                if (colorStateListF != null) {
                    h(colorStateListF);
                }
            }
            if (u0VarV.s(c.a.j.ViewBackgroundHelper_backgroundTint)) {
                androidx.core.view.v.s0(this.a, u0VarV.c(c.a.j.ViewBackgroundHelper_backgroundTint));
            }
            if (u0VarV.s(c.a.j.ViewBackgroundHelper_backgroundTintMode)) {
                androidx.core.view.v.t0(this.a, c0.e(u0VarV.k(c.a.j.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
        } finally {
            u0VarV.w();
        }
    }

    void f(Drawable drawable) {
        this.f313c = -1;
        h(null);
        b();
    }

    void g(int i) {
        this.f313c = i;
        i iVar = this.f312b;
        h(iVar != null ? iVar.f(this.a.getContext(), i) : null);
        b();
    }

    void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f314d == null) {
                this.f314d = new s0();
            }
            s0 s0Var = this.f314d;
            s0Var.a = colorStateList;
            s0Var.f388d = true;
        } else {
            this.f314d = null;
        }
        b();
    }

    void i(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new s0();
        }
        s0 s0Var = this.e;
        s0Var.a = colorStateList;
        s0Var.f388d = true;
        b();
    }

    void j(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new s0();
        }
        s0 s0Var = this.e;
        s0Var.f386b = mode;
        s0Var.f387c = true;
        b();
    }
}
