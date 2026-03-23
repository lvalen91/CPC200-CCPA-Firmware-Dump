package c.c.a;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class h extends Drawable {
    private static final double q = Math.cos(Math.toRadians(45.0d));
    static a r;
    private final int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f1067b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f1068c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Paint f1069d;
    private final RectF e;
    private float f;
    private Path g;
    private float h;
    private float i;
    private float j;
    private ColorStateList k;
    private boolean l;
    private final int m;
    private final int n;
    private boolean o;
    private boolean p;

    interface a {
        void a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    private void a(Rect rect) {
        float f = this.h;
        float f2 = 1.5f * f;
        this.e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        b();
    }

    private void b() {
        float f = this.f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.i;
        rectF2.inset(-f2, -f2);
        Path path = this.g;
        if (path == null) {
            this.g = new Path();
        } else {
            path.reset();
        }
        this.g.setFillType(Path.FillType.EVEN_ODD);
        this.g.moveTo(-this.f, CropImageView.DEFAULT_ASPECT_RATIO);
        this.g.rLineTo(-this.i, CropImageView.DEFAULT_ASPECT_RATIO);
        this.g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.g.arcTo(rectF, 270.0f, -90.0f, false);
        this.g.close();
        float f3 = this.f;
        float f4 = f3 / (this.i + f3);
        Paint paint = this.f1068c;
        float f5 = this.f + this.i;
        int i = this.m;
        paint.setShader(new RadialGradient(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f5, new int[]{i, i, this.n}, new float[]{CropImageView.DEFAULT_ASPECT_RATIO, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f1069d;
        float f6 = this.f;
        float f7 = this.i;
        int i2 = this.m;
        paint2.setShader(new LinearGradient(CropImageView.DEFAULT_ASPECT_RATIO, (-f6) + f7, CropImageView.DEFAULT_ASPECT_RATIO, (-f6) - f7, new int[]{i2, i2, this.n}, new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f1069d.setAntiAlias(false);
    }

    static float c(float f, float f2, boolean z) {
        if (!z) {
            return f;
        }
        double d2 = f;
        double d3 = 1.0d - q;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    static float d(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        double d2 = f * 1.5f;
        double d3 = 1.0d - q;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    private void e(Canvas canvas) {
        float f = this.f;
        float f2 = (-f) - this.i;
        float f3 = f + this.a + (this.j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.e.width() - f4 > CropImageView.DEFAULT_ASPECT_RATIO;
        boolean z2 = this.e.height() - f4 > CropImageView.DEFAULT_ASPECT_RATIO;
        int iSave = canvas.save();
        RectF rectF = this.e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.g, this.f1068c);
        if (z) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.e.width() - f4, -this.f, this.f1069d);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        RectF rectF2 = this.e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.g, this.f1068c);
        if (z) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.e.width() - f4, (-this.f) + this.i, this.f1069d);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = this.e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.g, this.f1068c);
        if (z2) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.e.height() - f4, -this.f, this.f1069d);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = this.e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.g, this.f1068c);
        if (z2) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.e.height() - f4, -this.f, this.f1069d);
        }
        canvas.restoreToCount(iSave4);
    }

    private void n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.k = colorStateList;
        this.f1067b.setColor(colorStateList.getColorForState(getState(), this.k.getDefaultColor()));
    }

    private void s(float f, float f2) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float fT = t(f);
        float fT2 = t(f2);
        if (fT > fT2) {
            if (!this.p) {
                this.p = true;
            }
            fT = fT2;
        }
        if (this.j == fT && this.h == fT2) {
            return;
        }
        this.j = fT;
        this.h = fT2;
        this.i = (int) ((fT * 1.5f) + this.a + 0.5f);
        this.l = true;
        invalidateSelf();
    }

    private int t(float f) {
        int i = (int) (f + 0.5f);
        return i % 2 == 1 ? i - 1 : i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.l) {
            a(getBounds());
            this.l = false;
        }
        canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, this.j / 2.0f);
        e(canvas);
        canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, (-this.j) / 2.0f);
        r.a(canvas, this.e, this.f, this.f1067b);
    }

    ColorStateList f() {
        return this.k;
    }

    float g() {
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(d(this.h, this.f, this.o));
        int iCeil2 = (int) Math.ceil(c(this.h, this.f, this.o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    void h(Rect rect) {
        getPadding(rect);
    }

    float i() {
        return this.h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    float j() {
        float f = this.h;
        return (Math.max(f, this.f + this.a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.h * 1.5f) + this.a) * 2.0f);
    }

    float k() {
        float f = this.h;
        return (Math.max(f, this.f + this.a + (f / 2.0f)) * 2.0f) + ((this.h + this.a) * 2.0f);
    }

    float l() {
        return this.j;
    }

    void m(boolean z) {
        this.o = z;
        invalidateSelf();
    }

    void o(ColorStateList colorStateList) {
        n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f1067b.getColor() == colorForState) {
            return false;
        }
        this.f1067b.setColor(colorForState);
        this.l = true;
        invalidateSelf();
        return true;
    }

    void p(float f) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.f == f2) {
            return;
        }
        this.f = f2;
        this.l = true;
        invalidateSelf();
    }

    void q(float f) {
        s(this.j, f);
    }

    void r(float f) {
        s(f, this.h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1067b.setAlpha(i);
        this.f1068c.setAlpha(i);
        this.f1069d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1067b.setColorFilter(colorFilter);
    }
}
