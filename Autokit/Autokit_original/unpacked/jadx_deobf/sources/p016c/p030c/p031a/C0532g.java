package p016c.p030c.p031a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: c.c.a.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0532g extends Drawable {

    /* JADX INFO: renamed from: a */
    private float f3258a;

    /* JADX INFO: renamed from: b */
    private final Paint f3259b;

    /* JADX INFO: renamed from: c */
    private final RectF f3260c;

    /* JADX INFO: renamed from: d */
    private final Rect f3261d;

    /* JADX INFO: renamed from: e */
    private float f3262e;

    /* JADX INFO: renamed from: f */
    private boolean f3263f;

    /* JADX INFO: renamed from: g */
    private boolean f3264g;

    /* JADX INFO: renamed from: h */
    private ColorStateList f3265h;

    /* JADX INFO: renamed from: i */
    private PorterDuffColorFilter f3266i;

    /* JADX INFO: renamed from: j */
    private ColorStateList f3267j;

    /* JADX INFO: renamed from: k */
    private PorterDuff.Mode f3268k;

    /* JADX INFO: renamed from: a */
    private PorterDuffColorFilter m4200a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    /* JADX INFO: renamed from: e */
    private void m4201e(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f3265h = colorStateList;
        this.f3259b.setColor(colorStateList.getColorForState(getState(), this.f3265h.getDefaultColor()));
    }

    /* JADX INFO: renamed from: i */
    private void m4202i(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        this.f3260c.set(rect.left, rect.top, rect.right, rect.bottom);
        this.f3261d.set(rect);
        if (this.f3263f) {
            this.f3261d.inset((int) Math.ceil(C0533h.m4211c(this.f3262e, this.f3258a, this.f3264g)), (int) Math.ceil(C0533h.m4212d(this.f3262e, this.f3258a, this.f3264g)));
            this.f3260c.set(this.f3261d);
        }
    }

    /* JADX INFO: renamed from: b */
    public ColorStateList m4203b() {
        return this.f3265h;
    }

    /* JADX INFO: renamed from: c */
    float m4204c() {
        return this.f3262e;
    }

    /* JADX INFO: renamed from: d */
    public float m4205d() {
        return this.f3258a;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z;
        Paint paint = this.f3259b;
        if (this.f3266i == null || paint.getColorFilter() != null) {
            z = false;
        } else {
            paint.setColorFilter(this.f3266i);
            z = true;
        }
        RectF rectF = this.f3260c;
        float f = this.f3258a;
        canvas.drawRoundRect(rectF, f, f, paint);
        if (z) {
            paint.setColorFilter(null);
        }
    }

    /* JADX INFO: renamed from: f */
    public void m4206f(ColorStateList colorStateList) {
        m4201e(colorStateList);
        invalidateSelf();
    }

    /* JADX INFO: renamed from: g */
    void m4207g(float f, boolean z, boolean z2) {
        if (f == this.f3262e && this.f3263f == z && this.f3264g == z2) {
            return;
        }
        this.f3262e = f;
        this.f3263f = z;
        this.f3264g = z2;
        m4202i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f3261d, this.f3258a);
    }

    /* JADX INFO: renamed from: h */
    void m4208h(float f) {
        if (f == this.f3258a) {
            return;
        }
        this.f3258a = f;
        m4202i(null);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.f3267j;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f3265h) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        m4202i(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f3265h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        boolean z = colorForState != this.f3259b.getColor();
        if (z) {
            this.f3259b.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f3267j;
        if (colorStateList2 == null || (mode = this.f3268k) == null) {
            return z;
        }
        this.f3266i = m4200a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3259b.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3259b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3267j = colorStateList;
        this.f3266i = m4200a(colorStateList, this.f3268k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f3268k = mode;
        this.f3266i = m4200a(this.f3267j, mode);
        invalidateSelf();
    }
}
