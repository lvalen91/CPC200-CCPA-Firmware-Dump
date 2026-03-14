package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;
import androidx.core.view.InterfaceC0291u;

/* JADX INFO: renamed from: androidx.appcompat.widget.z */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0204z extends ToggleButton implements InterfaceC0291u {

    /* JADX INFO: renamed from: b */
    private final C0162e f1397b;

    /* JADX INFO: renamed from: c */
    private final C0198w f1398c;

    public C0204z(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f1397b;
        if (c0162e != null) {
            c0162e.m1091b();
        }
        C0198w c0198w = this.f1398c;
        if (c0198w != null) {
            c0198w.m1364b();
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f1397b;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f1397b;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f1397b;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f1397b;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f1397b;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f1397b;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    public C0204z(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0162e c0162e = new C0162e(this);
        this.f1397b = c0162e;
        c0162e.m1094e(attributeSet, i);
        C0198w c0198w = new C0198w(this);
        this.f1398c = c0198w;
        c0198w.m1374m(attributeSet, i);
    }
}
