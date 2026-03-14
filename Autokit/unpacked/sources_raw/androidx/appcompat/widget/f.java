package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CheckBox;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f extends CheckBox implements androidx.core.widget.k, androidx.core.view.u {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e f316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final w f317d;

    public f(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.checkboxStyle);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        e eVar = this.f316c;
        if (eVar != null) {
            eVar.b();
        }
        w wVar = this.f317d;
        if (wVar != null) {
            wVar.b();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        h hVar = this.f315b;
        return hVar != null ? hVar.b(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // androidx.core.view.u
    public ColorStateList getSupportBackgroundTintList() {
        e eVar = this.f316c;
        if (eVar != null) {
            return eVar.c();
        }
        return null;
    }

    @Override // androidx.core.view.u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        e eVar = this.f316c;
        if (eVar != null) {
            return eVar.d();
        }
        return null;
    }

    @Override // androidx.core.widget.k
    public ColorStateList getSupportButtonTintList() {
        h hVar = this.f315b;
        if (hVar != null) {
            return hVar.c();
        }
        return null;
    }

    public PorterDuff.Mode getSupportButtonTintMode() {
        h hVar = this.f315b;
        if (hVar != null) {
            return hVar.d();
        }
        return null;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        e eVar = this.f316c;
        if (eVar != null) {
            eVar.f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        e eVar = this.f316c;
        if (eVar != null) {
            eVar.g(i);
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        h hVar = this.f315b;
        if (hVar != null) {
            hVar.f();
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        e eVar = this.f316c;
        if (eVar != null) {
            eVar.i(colorStateList);
        }
    }

    @Override // androidx.core.view.u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        e eVar = this.f316c;
        if (eVar != null) {
            eVar.j(mode);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        h hVar = this.f315b;
        if (hVar != null) {
            hVar.g(colorStateList);
        }
    }

    @Override // androidx.core.widget.k
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        h hVar = this.f315b;
        if (hVar != null) {
            hVar.h(mode);
        }
    }

    public f(Context context, AttributeSet attributeSet, int i) {
        super(r0.b(context), attributeSet, i);
        p0.a(this, getContext());
        h hVar = new h(this);
        this.f315b = hVar;
        hVar.e(attributeSet, i);
        e eVar = new e(this);
        this.f316c = eVar;
        eVar.e(attributeSet, i);
        w wVar = new w(this);
        this.f317d = wVar;
        wVar.m(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(c.a.k.a.a.d(getContext(), i));
    }
}
