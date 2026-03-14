package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ToggleButton;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class z extends ToggleButton implements androidx.core.view.u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final e f438b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final w f439c;

    public z(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyleToggle);
    }

    @Override // android.widget.ToggleButton, android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f438b;
        if (eVar != null) {
            eVar.b();
        }
        w wVar = this.f439c;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f438b;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f438b;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // android.widget.ToggleButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f438b;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f438b;
        if (eVar != null) {
            eVar.g(i);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f438b;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f438b;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    public z(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p0.a(this, getContext());
        e eVar = new e(this);
        this.f438b = eVar;
        eVar.e(attributeSet, i);
        w wVar = new w(this);
        this.f439c = wVar;
        wVar.m(attributeSet, i);
    }
}
