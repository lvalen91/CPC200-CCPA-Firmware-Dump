package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.core.view.InterfaceC0291u;
import androidx.core.widget.InterfaceC0312m;
import p016c.p017a.C0493a;

/* JADX INFO: renamed from: androidx.appcompat.widget.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0176l extends ImageButton implements InterfaceC0291u, InterfaceC0312m {

    /* JADX INFO: renamed from: b */
    private final C0162e f1195b;

    /* JADX INFO: renamed from: c */
    private final C0178m f1196c;

    public C0176l(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.imageButtonStyle);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        C0162e c0162e = this.f1195b;
        if (c0162e != null) {
            c0162e.m1091b();
        }
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            c0178m.m1225b();
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        C0162e c0162e = this.f1195b;
        if (c0162e != null) {
            return c0162e.m1092c();
        }
        return null;
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        C0162e c0162e = this.f1195b;
        if (c0162e != null) {
            return c0162e.m1093d();
        }
        return null;
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public ColorStateList getSupportImageTintList() {
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            return c0178m.m1226c();
        }
        return null;
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public PorterDuff.Mode getSupportImageTintMode() {
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            return c0178m.m1227d();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.f1196c.m1228e() && super.hasOverlappingRendering();
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        C0162e c0162e = this.f1195b;
        if (c0162e != null) {
            c0162e.m1095f(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        C0162e c0162e = this.f1195b;
        if (c0162e != null) {
            c0162e.m1096g(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            c0178m.m1225b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            c0178m.m1225b();
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f1196c.m1230g(i);
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            c0178m.m1225b();
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        C0162e c0162e = this.f1195b;
        if (c0162e != null) {
            c0162e.m1098i(colorStateList);
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        C0162e c0162e = this.f1195b;
        if (c0162e != null) {
            c0162e.m1099j(mode);
        }
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public void setSupportImageTintList(ColorStateList colorStateList) {
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            c0178m.m1231h(colorStateList);
        }
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        C0178m c0178m = this.f1196c;
        if (c0178m != null) {
            c0178m.m1232i(mode);
        }
    }

    public C0176l(Context context, AttributeSet attributeSet, int i) {
        super(C0189r0.m1286b(context), attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0162e c0162e = new C0162e(this);
        this.f1195b = c0162e;
        c0162e.m1094e(attributeSet, i);
        C0178m c0178m = new C0178m(this);
        this.f1196c = c0178m;
        c0178m.m1229f(attributeSet, i);
    }
}
