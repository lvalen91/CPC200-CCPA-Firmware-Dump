package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import androidx.core.view.InterfaceC0291u;
import androidx.core.widget.C0308i;
import androidx.core.widget.InterfaceC0301b;
import androidx.core.widget.InterfaceC0311l;
import p016c.p017a.C0493a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AppCompatButton extends Button implements InterfaceC0291u, InterfaceC0301b, InterfaceC0311l {

    /* JADX INFO: renamed from: b */
    private final C0162e f829b;

    /* JADX INFO: renamed from: c */
    private final C0198w f830c;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.buttonStyle);
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f829b;
        if (c0162e != null) {
            c0162e.m1091b();
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1364b();
        }
    }

    @Override // android.widget.TextView
    public int getAutoSizeMaxTextSize() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeMaxTextSize();
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            return c0198w.m1366e();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeMinTextSize() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeMinTextSize();
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            return c0198w.m1367f();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int getAutoSizeStepGranularity() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeStepGranularity();
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            return c0198w.m1368g();
        }
        return -1;
    }

    @Override // android.widget.TextView
    public int[] getAutoSizeTextAvailableSizes() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeTextAvailableSizes();
        }
        C0198w c0198w = this.f830c;
        return c0198w != null ? c0198w.m1369h() : new int[0];
    }

    @Override // android.widget.TextView
    @SuppressLint({"WrongConstant"})
    public int getAutoSizeTextType() {
        if (InterfaceC0301b.f1991a) {
            return super.getAutoSizeTextType() == 1 ? 1 : 0;
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            return c0198w.m1370i();
        }
        return 0;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f829b;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f829b;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.f830c.m1371j();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.f830c.m1372k();
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1376o(z, i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        C0198w c0198w = this.f830c;
        if (c0198w == null || InterfaceC0301b.f1991a || !c0198w.m1373l()) {
            return;
        }
        this.f830c.m1365c();
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithConfiguration(int i, int i2, int i3, int i4) {
        if (InterfaceC0301b.f1991a) {
            super.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
            return;
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1381t(i, i2, i3, i4);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i) {
        if (InterfaceC0301b.f1991a) {
            super.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
            return;
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1382u(iArr, i);
        }
    }

    @Override // android.widget.TextView
    public void setAutoSizeTextTypeWithDefaults(int i) {
        if (InterfaceC0301b.f1991a) {
            super.setAutoSizeTextTypeWithDefaults(i);
            return;
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1383v(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f829b;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f829b;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(C0308i.m2291p(this, callback));
    }

    public void setSupportAllCaps(boolean z) {
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1380s(z);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f829b;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f829b;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    @Override // androidx.core.widget.InterfaceC0311l
    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        this.f830c.m1384w(colorStateList);
        this.f830c.m1364b();
    }

    @Override // androidx.core.widget.InterfaceC0311l
    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        this.f830c.m1385x(mode);
        this.f830c.m1364b();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1378q(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(int i, float f) {
        if (InterfaceC0301b.f1991a) {
            super.setTextSize(i, f);
            return;
        }
        C0198w c0198w = this.f830c;
        if (c0198w != null) {
            c0198w.m1363A(i, f);
        }
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(C0189r0.m1286b(context), attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0162e c0162e = new C0162e(this);
        this.f829b = c0162e;
        c0162e.m1094e(attributeSet, i);
        C0198w c0198w = new C0198w(this);
        this.f830c = c0198w;
        c0198w.m1374m(attributeSet, i);
        this.f830c.m1364b();
    }
}
