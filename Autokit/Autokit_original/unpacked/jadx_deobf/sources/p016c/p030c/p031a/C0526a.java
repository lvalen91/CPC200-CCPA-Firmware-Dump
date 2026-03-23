package p016c.p030c.p031a;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.widget.FrameLayout;

/* JADX INFO: renamed from: c.c.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0526a extends FrameLayout {

    /* JADX INFO: renamed from: f */
    private static final InterfaceC0531f f3251f;

    /* JADX INFO: renamed from: b */
    private boolean f3252b;

    /* JADX INFO: renamed from: c */
    private boolean f3253c;

    /* JADX INFO: renamed from: d */
    final Rect f3254d;

    /* JADX INFO: renamed from: e */
    private final InterfaceC0530e f3255e;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f3251f = new C0528c();
        } else if (i >= 17) {
            f3251f = new C0527b();
        } else {
            f3251f = new C0529d();
        }
        f3251f.mo4176m();
    }

    public ColorStateList getCardBackgroundColor() {
        return f3251f.mo4184f(this.f3255e);
    }

    public float getCardElevation() {
        return f3251f.mo4189k(this.f3255e);
    }

    public int getContentPaddingBottom() {
        return this.f3254d.bottom;
    }

    public int getContentPaddingLeft() {
        return this.f3254d.left;
    }

    public int getContentPaddingRight() {
        return this.f3254d.right;
    }

    public int getContentPaddingTop() {
        return this.f3254d.top;
    }

    public float getMaxCardElevation() {
        return f3251f.mo4179a(this.f3255e);
    }

    public boolean getPreventCornerOverlap() {
        return this.f3253c;
    }

    public float getRadius() {
        return f3251f.mo4180b(this.f3255e);
    }

    public boolean getUseCompatPadding() {
        return this.f3252b;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (f3251f instanceof C0528c) {
            super.onMeasure(i, i2);
            return;
        }
        int mode = View.MeasureSpec.getMode(i);
        if (mode == Integer.MIN_VALUE || mode == 1073741824) {
            i = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f3251f.mo4182d(this.f3255e)), View.MeasureSpec.getSize(i)), mode);
        }
        int mode2 = View.MeasureSpec.getMode(i2);
        if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.max((int) Math.ceil(f3251f.mo4181c(this.f3255e)), View.MeasureSpec.getSize(i2)), mode2);
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f3251f.mo4188j(this.f3255e, ColorStateList.valueOf(i));
    }

    public void setCardElevation(float f) {
        f3251f.mo4185g(this.f3255e, f);
    }

    public void setMaxCardElevation(float f) {
        f3251f.mo4190l(this.f3255e, f);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.f3253c) {
            this.f3253c = z;
            f3251f.mo4187i(this.f3255e);
        }
    }

    public void setRadius(float f) {
        f3251f.mo4186h(this.f3255e, f);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f3252b != z) {
            this.f3252b = z;
            f3251f.mo4183e(this.f3255e);
        }
    }

    public void setCardBackgroundColor(ColorStateList colorStateList) {
        f3251f.mo4188j(this.f3255e, colorStateList);
    }
}
