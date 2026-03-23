package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import com.google.android.material.internal.C1123l;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n;
import p093d.p099c.p100a.p101a.p110q.C1247a;
import p093d.p099c.p100a.p101a.p117x.C1257c;
import p093d.p099c.p100a.p101a.p118y.C1261a;
import p093d.p099c.p100a.p101a.p118y.C1262b;

/* JADX INFO: renamed from: com.google.android.material.button.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1064a {

    /* JADX INFO: renamed from: t */
    private static final boolean f6730t;

    /* JADX INFO: renamed from: a */
    private final MaterialButton f6731a;

    /* JADX INFO: renamed from: b */
    private C1212k f6732b;

    /* JADX INFO: renamed from: c */
    private int f6733c;

    /* JADX INFO: renamed from: d */
    private int f6734d;

    /* JADX INFO: renamed from: e */
    private int f6735e;

    /* JADX INFO: renamed from: f */
    private int f6736f;

    /* JADX INFO: renamed from: g */
    private int f6737g;

    /* JADX INFO: renamed from: h */
    private int f6738h;

    /* JADX INFO: renamed from: i */
    private PorterDuff.Mode f6739i;

    /* JADX INFO: renamed from: j */
    private ColorStateList f6740j;

    /* JADX INFO: renamed from: k */
    private ColorStateList f6741k;

    /* JADX INFO: renamed from: l */
    private ColorStateList f6742l;

    /* JADX INFO: renamed from: m */
    private Drawable f6743m;

    /* JADX INFO: renamed from: n */
    private boolean f6744n = false;

    /* JADX INFO: renamed from: o */
    private boolean f6745o = false;

    /* JADX INFO: renamed from: p */
    private boolean f6746p = false;

    /* JADX INFO: renamed from: q */
    private boolean f6747q;

    /* JADX INFO: renamed from: r */
    private LayerDrawable f6748r;

    /* JADX INFO: renamed from: s */
    private int f6749s;

    static {
        f6730t = Build.VERSION.SDK_INT >= 21;
    }

    C1064a(MaterialButton materialButton, C1212k c1212k) {
        this.f6731a = materialButton;
        this.f6732b = c1212k;
    }

    /* JADX INFO: renamed from: E */
    private void m8119E(int i, int i2) {
        int iM2058I = C0292v.m2058I(this.f6731a);
        int paddingTop = this.f6731a.getPaddingTop();
        int iM2056H = C0292v.m2056H(this.f6731a);
        int paddingBottom = this.f6731a.getPaddingBottom();
        int i3 = this.f6735e;
        int i4 = this.f6736f;
        this.f6736f = i2;
        this.f6735e = i;
        if (!this.f6745o) {
            m8120F();
        }
        C0292v.m2043A0(this.f6731a, iM2058I, (paddingTop + i) - i3, iM2056H, (paddingBottom + i2) - i4);
    }

    /* JADX INFO: renamed from: F */
    private void m8120F() {
        this.f6731a.setInternalBackground(m8124a());
        C1208g c1208gM8136f = m8136f();
        if (c1208gM8136f != null) {
            c1208gM8136f.m9183V(this.f6749s);
        }
    }

    /* JADX INFO: renamed from: G */
    private void m8121G(C1212k c1212k) {
        if (m8136f() != null) {
            m8136f().setShapeAppearanceModel(c1212k);
        }
        if (m8126n() != null) {
            m8126n().setShapeAppearanceModel(c1212k);
        }
        if (m8135e() != null) {
            m8135e().setShapeAppearanceModel(c1212k);
        }
    }

    /* JADX INFO: renamed from: I */
    private void m8122I() {
        C1208g c1208gM8136f = m8136f();
        C1208g c1208gM8126n = m8126n();
        if (c1208gM8136f != null) {
            c1208gM8136f.m9190c0(this.f6738h, this.f6741k);
            if (c1208gM8126n != null) {
                c1208gM8126n.m9189b0(this.f6738h, this.f6744n ? C1247a.m9428c(this.f6731a, C1216b.colorSurface) : 0);
            }
        }
    }

    /* JADX INFO: renamed from: J */
    private InsetDrawable m8123J(Drawable drawable) {
        return new InsetDrawable(drawable, this.f6733c, this.f6735e, this.f6734d, this.f6736f);
    }

    /* JADX INFO: renamed from: a */
    private Drawable m8124a() {
        C1208g c1208g = new C1208g(this.f6732b);
        c1208g.m9178M(this.f6731a.getContext());
        C0251a.m1794o(c1208g, this.f6740j);
        PorterDuff.Mode mode = this.f6739i;
        if (mode != null) {
            C0251a.m1795p(c1208g, mode);
        }
        c1208g.m9190c0(this.f6738h, this.f6741k);
        C1208g c1208g2 = new C1208g(this.f6732b);
        c1208g2.setTint(0);
        c1208g2.m9189b0(this.f6738h, this.f6744n ? C1247a.m9428c(this.f6731a, C1216b.colorSurface) : 0);
        if (f6730t) {
            C1208g c1208g3 = new C1208g(this.f6732b);
            this.f6743m = c1208g3;
            C0251a.m1793n(c1208g3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(C1262b.m9477a(this.f6742l), m8123J(new LayerDrawable(new Drawable[]{c1208g2, c1208g})), this.f6743m);
            this.f6748r = rippleDrawable;
            return rippleDrawable;
        }
        C1261a c1261a = new C1261a(this.f6732b);
        this.f6743m = c1261a;
        C0251a.m1794o(c1261a, C1262b.m9477a(this.f6742l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{c1208g2, c1208g, this.f6743m});
        this.f6748r = layerDrawable;
        return m8123J(layerDrawable);
    }

    /* JADX INFO: renamed from: g */
    private C1208g m8125g(boolean z) {
        LayerDrawable layerDrawable = this.f6748r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return f6730t ? (C1208g) ((LayerDrawable) ((InsetDrawable) this.f6748r.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (C1208g) this.f6748r.getDrawable(!z ? 1 : 0);
    }

    /* JADX INFO: renamed from: n */
    private C1208g m8126n() {
        return m8125g(true);
    }

    /* JADX INFO: renamed from: A */
    void m8127A(ColorStateList colorStateList) {
        if (this.f6741k != colorStateList) {
            this.f6741k = colorStateList;
            m8122I();
        }
    }

    /* JADX INFO: renamed from: B */
    void m8128B(int i) {
        if (this.f6738h != i) {
            this.f6738h = i;
            m8122I();
        }
    }

    /* JADX INFO: renamed from: C */
    void m8129C(ColorStateList colorStateList) {
        if (this.f6740j != colorStateList) {
            this.f6740j = colorStateList;
            if (m8136f() != null) {
                C0251a.m1794o(m8136f(), this.f6740j);
            }
        }
    }

    /* JADX INFO: renamed from: D */
    void m8130D(PorterDuff.Mode mode) {
        if (this.f6739i != mode) {
            this.f6739i = mode;
            if (m8136f() == null || this.f6739i == null) {
                return;
            }
            C0251a.m1795p(m8136f(), this.f6739i);
        }
    }

    /* JADX INFO: renamed from: H */
    void m8131H(int i, int i2) {
        Drawable drawable = this.f6743m;
        if (drawable != null) {
            drawable.setBounds(this.f6733c, this.f6735e, i2 - this.f6734d, i - this.f6736f);
        }
    }

    /* JADX INFO: renamed from: b */
    int m8132b() {
        return this.f6737g;
    }

    /* JADX INFO: renamed from: c */
    public int m8133c() {
        return this.f6736f;
    }

    /* JADX INFO: renamed from: d */
    public int m8134d() {
        return this.f6735e;
    }

    /* JADX INFO: renamed from: e */
    public InterfaceC1215n m8135e() {
        LayerDrawable layerDrawable = this.f6748r;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f6748r.getNumberOfLayers() > 2 ? (InterfaceC1215n) this.f6748r.getDrawable(2) : (InterfaceC1215n) this.f6748r.getDrawable(1);
    }

    /* JADX INFO: renamed from: f */
    C1208g m8136f() {
        return m8125g(false);
    }

    /* JADX INFO: renamed from: h */
    ColorStateList m8137h() {
        return this.f6742l;
    }

    /* JADX INFO: renamed from: i */
    C1212k m8138i() {
        return this.f6732b;
    }

    /* JADX INFO: renamed from: j */
    ColorStateList m8139j() {
        return this.f6741k;
    }

    /* JADX INFO: renamed from: k */
    int m8140k() {
        return this.f6738h;
    }

    /* JADX INFO: renamed from: l */
    ColorStateList m8141l() {
        return this.f6740j;
    }

    /* JADX INFO: renamed from: m */
    PorterDuff.Mode m8142m() {
        return this.f6739i;
    }

    /* JADX INFO: renamed from: o */
    boolean m8143o() {
        return this.f6745o;
    }

    /* JADX INFO: renamed from: p */
    boolean m8144p() {
        return this.f6747q;
    }

    /* JADX INFO: renamed from: q */
    void m8145q(TypedArray typedArray) {
        this.f6733c = typedArray.getDimensionPixelOffset(C1226k.MaterialButton_android_insetLeft, 0);
        this.f6734d = typedArray.getDimensionPixelOffset(C1226k.MaterialButton_android_insetRight, 0);
        this.f6735e = typedArray.getDimensionPixelOffset(C1226k.MaterialButton_android_insetTop, 0);
        this.f6736f = typedArray.getDimensionPixelOffset(C1226k.MaterialButton_android_insetBottom, 0);
        if (typedArray.hasValue(C1226k.MaterialButton_cornerRadius)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(C1226k.MaterialButton_cornerRadius, -1);
            this.f6737g = dimensionPixelSize;
            m8153y(this.f6732b.m9234w(dimensionPixelSize));
            this.f6746p = true;
        }
        this.f6738h = typedArray.getDimensionPixelSize(C1226k.MaterialButton_strokeWidth, 0);
        this.f6739i = C1123l.m8735e(typedArray.getInt(C1226k.MaterialButton_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN);
        this.f6740j = C1257c.m9454a(this.f6731a.getContext(), typedArray, C1226k.MaterialButton_backgroundTint);
        this.f6741k = C1257c.m9454a(this.f6731a.getContext(), typedArray, C1226k.MaterialButton_strokeColor);
        this.f6742l = C1257c.m9454a(this.f6731a.getContext(), typedArray, C1226k.MaterialButton_rippleColor);
        this.f6747q = typedArray.getBoolean(C1226k.MaterialButton_android_checkable, false);
        this.f6749s = typedArray.getDimensionPixelSize(C1226k.MaterialButton_elevation, 0);
        int iM2058I = C0292v.m2058I(this.f6731a);
        int paddingTop = this.f6731a.getPaddingTop();
        int iM2056H = C0292v.m2056H(this.f6731a);
        int paddingBottom = this.f6731a.getPaddingBottom();
        if (typedArray.hasValue(C1226k.MaterialButton_android_background)) {
            m8147s();
        } else {
            m8120F();
        }
        C0292v.m2043A0(this.f6731a, iM2058I + this.f6733c, paddingTop + this.f6735e, iM2056H + this.f6734d, paddingBottom + this.f6736f);
    }

    /* JADX INFO: renamed from: r */
    void m8146r(int i) {
        if (m8136f() != null) {
            m8136f().setTint(i);
        }
    }

    /* JADX INFO: renamed from: s */
    void m8147s() {
        this.f6745o = true;
        this.f6731a.setSupportBackgroundTintList(this.f6740j);
        this.f6731a.setSupportBackgroundTintMode(this.f6739i);
    }

    /* JADX INFO: renamed from: t */
    void m8148t(boolean z) {
        this.f6747q = z;
    }

    /* JADX INFO: renamed from: u */
    void m8149u(int i) {
        if (this.f6746p && this.f6737g == i) {
            return;
        }
        this.f6737g = i;
        this.f6746p = true;
        m8153y(this.f6732b.m9234w(i));
    }

    /* JADX INFO: renamed from: v */
    public void m8150v(int i) {
        m8119E(this.f6735e, i);
    }

    /* JADX INFO: renamed from: w */
    public void m8151w(int i) {
        m8119E(i, this.f6736f);
    }

    /* JADX INFO: renamed from: x */
    void m8152x(ColorStateList colorStateList) {
        if (this.f6742l != colorStateList) {
            this.f6742l = colorStateList;
            if (f6730t && (this.f6731a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.f6731a.getBackground()).setColor(C1262b.m9477a(colorStateList));
            } else {
                if (f6730t || !(this.f6731a.getBackground() instanceof C1261a)) {
                    return;
                }
                ((C1261a) this.f6731a.getBackground()).setTintList(C1262b.m9477a(colorStateList));
            }
        }
    }

    /* JADX INFO: renamed from: y */
    void m8153y(C1212k c1212k) {
        this.f6732b = c1212k;
        m8121G(c1212k);
    }

    /* JADX INFO: renamed from: z */
    void m8154z(boolean z) {
        this.f6744n = z;
        m8122I();
    }
}
