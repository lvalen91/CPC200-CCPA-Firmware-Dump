package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.view.v;
import com.google.android.material.internal.l;
import d.c.a.a.a0.g;
import d.c.a.a.a0.k;
import d.c.a.a.a0.n;
import d.c.a.a.b;
import d.c.a.a.x.c;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class a {
    private static final boolean t;
    private final MaterialButton a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k f2065b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2066c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2067d;
    private int e;
    private int f;
    private int g;
    private int h;
    private PorterDuff.Mode i;
    private ColorStateList j;
    private ColorStateList k;
    private ColorStateList l;
    private Drawable m;
    private boolean n = false;
    private boolean o = false;
    private boolean p = false;
    private boolean q;
    private LayerDrawable r;
    private int s;

    static {
        t = Build.VERSION.SDK_INT >= 21;
    }

    a(MaterialButton materialButton, k kVar) {
        this.a = materialButton;
        this.f2065b = kVar;
    }

    private void E(int i, int i2) {
        int I = v.I(this.a);
        int paddingTop = this.a.getPaddingTop();
        int iH = v.H(this.a);
        int paddingBottom = this.a.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f;
        this.f = i2;
        this.e = i;
        if (!this.o) {
            F();
        }
        v.A0(this.a, I, (paddingTop + i) - i3, iH, (paddingBottom + i2) - i4);
    }

    private void F() {
        this.a.setInternalBackground(a());
        g gVarF = f();
        if (gVarF != null) {
            gVarF.V(this.s);
        }
    }

    private void G(k kVar) {
        if (f() != null) {
            f().setShapeAppearanceModel(kVar);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(kVar);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(kVar);
        }
    }

    private void I() {
        g gVarF = f();
        g gVarN = n();
        if (gVarF != null) {
            gVarF.c0(this.h, this.k);
            if (gVarN != null) {
                gVarN.b0(this.h, this.n ? d.c.a.a.q.a.c(this.a, b.colorSurface) : 0);
            }
        }
    }

    private InsetDrawable J(Drawable drawable) {
        return new InsetDrawable(drawable, this.f2066c, this.e, this.f2067d, this.f);
    }

    private Drawable a() {
        g gVar = new g(this.f2065b);
        gVar.M(this.a.getContext());
        androidx.core.graphics.drawable.a.o(gVar, this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            androidx.core.graphics.drawable.a.p(gVar, mode);
        }
        gVar.c0(this.h, this.k);
        g gVar2 = new g(this.f2065b);
        gVar2.setTint(0);
        gVar2.b0(this.h, this.n ? d.c.a.a.q.a.c(this.a, b.colorSurface) : 0);
        if (t) {
            g gVar3 = new g(this.f2065b);
            this.m = gVar3;
            androidx.core.graphics.drawable.a.n(gVar3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(d.c.a.a.y.b.a(this.l), J(new LayerDrawable(new Drawable[]{gVar2, gVar})), this.m);
            this.r = rippleDrawable;
            return rippleDrawable;
        }
        d.c.a.a.y.a aVar = new d.c.a.a.y.a(this.f2065b);
        this.m = aVar;
        androidx.core.graphics.drawable.a.o(aVar, d.c.a.a.y.b.a(this.l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{gVar2, gVar, this.m});
        this.r = layerDrawable;
        return J(layerDrawable);
    }

    private g g(boolean z) {
        LayerDrawable layerDrawable = this.r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return t ? (g) ((LayerDrawable) ((InsetDrawable) this.r.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (g) this.r.getDrawable(!z ? 1 : 0);
    }

    private g n() {
        return g(true);
    }

    void A(ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            I();
        }
    }

    void B(int i) {
        if (this.h != i) {
            this.h = i;
            I();
        }
    }

    void C(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            if (f() != null) {
                androidx.core.graphics.drawable.a.o(f(), this.j);
            }
        }
    }

    void D(PorterDuff.Mode mode) {
        if (this.i != mode) {
            this.i = mode;
            if (f() == null || this.i == null) {
                return;
            }
            androidx.core.graphics.drawable.a.p(f(), this.i);
        }
    }

    void H(int i, int i2) {
        Drawable drawable = this.m;
        if (drawable != null) {
            drawable.setBounds(this.f2066c, this.e, i2 - this.f2067d, i - this.f);
        }
    }

    int b() {
        return this.g;
    }

    public int c() {
        return this.f;
    }

    public int d() {
        return this.e;
    }

    public n e() {
        LayerDrawable layerDrawable = this.r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.r.getNumberOfLayers() > 2 ? (n) this.r.getDrawable(2) : (n) this.r.getDrawable(1);
    }

    g f() {
        return g(false);
    }

    ColorStateList h() {
        return this.l;
    }

    k i() {
        return this.f2065b;
    }

    ColorStateList j() {
        return this.k;
    }

    int k() {
        return this.h;
    }

    ColorStateList l() {
        return this.j;
    }

    PorterDuff.Mode m() {
        return this.i;
    }

    boolean o() {
        return this.o;
    }

    boolean p() {
        return this.q;
    }

    void q(TypedArray typedArray) {
        this.f2066c = typedArray.getDimensionPixelOffset(d.c.a.a.k.MaterialButton_android_insetLeft, 0);
        this.f2067d = typedArray.getDimensionPixelOffset(d.c.a.a.k.MaterialButton_android_insetRight, 0);
        this.e = typedArray.getDimensionPixelOffset(d.c.a.a.k.MaterialButton_android_insetTop, 0);
        this.f = typedArray.getDimensionPixelOffset(d.c.a.a.k.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(d.c.a.a.k.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(d.c.a.a.k.MaterialButton_cornerRadius, -1);
            this.g = dimensionPixelSize;
            y(this.f2065b.w(dimensionPixelSize));
            this.p = true;
        }
        this.h = typedArray.getDimensionPixelSize(d.c.a.a.k.MaterialButton_strokeWidth, 0);
        this.i = l.e(typedArray.getInt(d.c.a.a.k.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.j = c.a(this.a.getContext(), typedArray, d.c.a.a.k.MaterialButton_backgroundTint);
        this.k = c.a(this.a.getContext(), typedArray, d.c.a.a.k.MaterialButton_strokeColor);
        this.l = c.a(this.a.getContext(), typedArray, d.c.a.a.k.MaterialButton_rippleColor);
        this.q = typedArray.getBoolean(d.c.a.a.k.MaterialButton_android_checkable, false);
        this.s = typedArray.getDimensionPixelSize(d.c.a.a.k.MaterialButton_elevation, 0);
        int I = v.I(this.a);
        int paddingTop = this.a.getPaddingTop();
        int iH = v.H(this.a);
        int paddingBottom = this.a.getPaddingBottom();
        if (typedArray.hasValue(d.c.a.a.k.MaterialButton_android_background)) {
            s();
        } else {
            F();
        }
        v.A0(this.a, I + this.f2066c, paddingTop + this.e, iH + this.f2067d, paddingBottom + this.f);
    }

    void r(int i) {
        if (f() != null) {
            f().setTint(i);
        }
    }

    void s() {
        this.o = true;
        this.a.setSupportBackgroundTintList(this.j);
        this.a.setSupportBackgroundTintMode(this.i);
    }

    void t(boolean z) {
        this.q = z;
    }

    void u(int i) {
        if (this.p && this.g == i) {
            return;
        }
        this.g = i;
        this.p = true;
        y(this.f2065b.w(i));
    }

    public void v(int i) {
        E(this.e, i);
    }

    public void w(int i) {
        E(i, this.f);
    }

    void x(ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            if (t && (this.a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.a.getBackground()).setColor(d.c.a.a.y.b.a(colorStateList));
            } else {
                if (t || !(this.a.getBackground() instanceof d.c.a.a.y.a)) {
                    return;
                }
                ((d.c.a.a.y.a) this.a.getBackground()).setTintList(d.c.a.a.y.b.a(colorStateList));
            }
        }
    }

    void y(k kVar) {
        this.f2065b = kVar;
        G(kVar);
    }

    void z(boolean z) {
        this.n = z;
        I();
    }
}
