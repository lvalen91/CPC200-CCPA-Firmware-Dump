package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;
import androidx.core.view.InterfaceC0291u;
import androidx.core.widget.InterfaceC0310k;
import p016c.p017a.C0493a;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: androidx.appcompat.widget.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0164f extends CheckBox implements InterfaceC0310k, InterfaceC0291u {

    /* JADX INFO: renamed from: b */
    private final C0168h f1089b;

    /* JADX INFO: renamed from: c */
    private final C0162e f1090c;

    /* JADX INFO: renamed from: d */
    private final C0198w f1091d;

    public C0164f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.checkboxStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f1090c;
        if (c0162e != null) {
            c0162e.m1091b();
        }
        C0198w c0198w = this.f1091d;
        if (c0198w != null) {
            c0198w.m1364b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        C0168h c0168h = this.f1089b;
        return c0168h != null ? c0168h.m1126b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f1090c;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f1090c;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    @Override // androidx.core.widget.InterfaceC0310k
    public ColorStateList getSupportButtonTintList() {
        C0168h c0168h = this.f1089b;
        if (c0168h != null) {
            return c0168h.m1127c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        C0168h c0168h = this.f1089b;
        if (c0168h != null) {
            return c0168h.m1128d();
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f1090c;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f1090c;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        C0168h c0168h = this.f1089b;
        if (c0168h != null) {
            c0168h.m1130f();
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f1090c;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f1090c;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    @Override // androidx.core.widget.InterfaceC0310k
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        C0168h c0168h = this.f1089b;
        if (c0168h != null) {
            c0168h.m1131g(colorStateList);
        }
    }

    @Override // androidx.core.widget.InterfaceC0310k
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        C0168h c0168h = this.f1089b;
        if (c0168h != null) {
            c0168h.m1132h(mode);
        }
    }

    public C0164f(Context context, AttributeSet attributeSet, int i) {
        super(C0189r0.m1286b(context), attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0168h c0168h = new C0168h(this);
        this.f1089b = c0168h;
        c0168h.m1129e(attributeSet, i);
        C0162e c0162e = new C0162e(this);
        this.f1090c = c0162e;
        c0162e.m1094e(attributeSet, i);
        C0198w c0198w = new C0198w(this);
        this.f1091d = c0198w;
        c0198w.m1374m(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(C0503a.m4047d(getContext(), i));
    }
}
