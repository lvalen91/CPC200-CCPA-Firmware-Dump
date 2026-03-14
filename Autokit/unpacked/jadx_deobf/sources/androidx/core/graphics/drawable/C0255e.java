package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: androidx.core.graphics.drawable.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0255e extends C0254d {

    /* JADX INFO: renamed from: i */
    private static Method f1799i;

    C0255e(Drawable drawable) {
        super(drawable);
        m1804g();
    }

    /* JADX INFO: renamed from: g */
    private void m1804g() {
        if (f1799i == null) {
            try {
                f1799i = Drawable.class.getDeclaredMethod("isProjected", new Class[0]);
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.core.graphics.drawable.C0254d
    /* JADX INFO: renamed from: c */
    protected boolean mo1803c() {
        if (Build.VERSION.SDK_INT != 21) {
            return false;
        }
        Drawable drawable = this.f1798g;
        return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable) || (drawable instanceof RippleDrawable);
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.f1798g.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.f1798g.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isProjected() {
        Method method;
        Drawable drawable = this.f1798g;
        if (drawable != null && (method = f1799i) != null) {
            try {
                return ((Boolean) method.invoke(drawable, new Object[0])).booleanValue();
            } catch (Exception unused) {
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.f1798g.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f1798g.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // androidx.core.graphics.drawable.C0254d, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // androidx.core.graphics.drawable.C0254d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTint(int i) {
        if (mo1803c()) {
            super.setTint(i);
        } else {
            this.f1798g.setTint(i);
        }
    }

    @Override // androidx.core.graphics.drawable.C0254d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintList(ColorStateList colorStateList) {
        if (mo1803c()) {
            super.setTintList(colorStateList);
        } else {
            this.f1798g.setTintList(colorStateList);
        }
    }

    @Override // androidx.core.graphics.drawable.C0254d, android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintMode(PorterDuff.Mode mode) {
        if (mo1803c()) {
            super.setTintMode(mode);
        } else {
            this.f1798g.setTintMode(mode);
        }
    }

    C0255e(C0256f c0256f, Resources resources) {
        super(c0256f, resources);
        m1804g();
    }
}
