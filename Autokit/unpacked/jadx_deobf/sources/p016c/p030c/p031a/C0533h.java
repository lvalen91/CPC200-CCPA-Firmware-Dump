package p016c.p030c.p031a;

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

/* JADX INFO: renamed from: c.c.a.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0533h extends Drawable {

    /* JADX INFO: renamed from: q */
    private static final double f3269q = Math.cos(Math.toRadians(45.0d));

    /* JADX INFO: renamed from: r */
    static a f3270r;

    /* JADX INFO: renamed from: a */
    private final int f3271a;

    /* JADX INFO: renamed from: b */
    private Paint f3272b;

    /* JADX INFO: renamed from: c */
    private Paint f3273c;

    /* JADX INFO: renamed from: d */
    private Paint f3274d;

    /* JADX INFO: renamed from: e */
    private final RectF f3275e;

    /* JADX INFO: renamed from: f */
    private float f3276f;

    /* JADX INFO: renamed from: g */
    private Path f3277g;

    /* JADX INFO: renamed from: h */
    private float f3278h;

    /* JADX INFO: renamed from: i */
    private float f3279i;

    /* JADX INFO: renamed from: j */
    private float f3280j;

    /* JADX INFO: renamed from: k */
    private ColorStateList f3281k;

    /* JADX INFO: renamed from: l */
    private boolean f3282l;

    /* JADX INFO: renamed from: m */
    private final int f3283m;

    /* JADX INFO: renamed from: n */
    private final int f3284n;

    /* JADX INFO: renamed from: o */
    private boolean f3285o;

    /* JADX INFO: renamed from: p */
    private boolean f3286p;

    /* JADX INFO: renamed from: c.c.a.h$a */
    interface a {
        /* JADX INFO: renamed from: a */
        void mo4177a(Canvas canvas, RectF rectF, float f, Paint paint);
    }

    /* JADX INFO: renamed from: a */
    private void m4209a(Rect rect) {
        float f = this.f3278h;
        float f2 = 1.5f * f;
        this.f3275e.set(rect.left + f, rect.top + f2, rect.right - f, rect.bottom - f2);
        m4210b();
    }

    /* JADX INFO: renamed from: b */
    private void m4210b() {
        float f = this.f3276f;
        RectF rectF = new RectF(-f, -f, f, f);
        RectF rectF2 = new RectF(rectF);
        float f2 = this.f3279i;
        rectF2.inset(-f2, -f2);
        Path path = this.f3277g;
        if (path == null) {
            this.f3277g = new Path();
        } else {
            path.reset();
        }
        this.f3277g.setFillType(Path.FillType.EVEN_ODD);
        this.f3277g.moveTo(-this.f3276f, CropImageView.DEFAULT_ASPECT_RATIO);
        this.f3277g.rLineTo(-this.f3279i, CropImageView.DEFAULT_ASPECT_RATIO);
        this.f3277g.arcTo(rectF2, 180.0f, 90.0f, false);
        this.f3277g.arcTo(rectF, 270.0f, -90.0f, false);
        this.f3277g.close();
        float f3 = this.f3276f;
        float f4 = f3 / (this.f3279i + f3);
        Paint paint = this.f3273c;
        float f5 = this.f3276f + this.f3279i;
        int i = this.f3283m;
        paint.setShader(new RadialGradient(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f5, new int[]{i, i, this.f3284n}, new float[]{CropImageView.DEFAULT_ASPECT_RATIO, f4, 1.0f}, Shader.TileMode.CLAMP));
        Paint paint2 = this.f3274d;
        float f6 = this.f3276f;
        float f7 = this.f3279i;
        int i2 = this.f3283m;
        paint2.setShader(new LinearGradient(CropImageView.DEFAULT_ASPECT_RATIO, (-f6) + f7, CropImageView.DEFAULT_ASPECT_RATIO, (-f6) - f7, new int[]{i2, i2, this.f3284n}, new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f}, Shader.TileMode.CLAMP));
        this.f3274d.setAntiAlias(false);
    }

    /* JADX INFO: renamed from: c */
    static float m4211c(float f, float f2, boolean z) {
        if (!z) {
            return f;
        }
        double d2 = f;
        double d3 = 1.0d - f3269q;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    /* JADX INFO: renamed from: d */
    static float m4212d(float f, float f2, boolean z) {
        if (!z) {
            return f * 1.5f;
        }
        double d2 = f * 1.5f;
        double d3 = 1.0d - f3269q;
        double d4 = f2;
        Double.isNaN(d4);
        Double.isNaN(d2);
        return (float) (d2 + (d3 * d4));
    }

    /* JADX INFO: renamed from: e */
    private void m4213e(Canvas canvas) {
        float f = this.f3276f;
        float f2 = (-f) - this.f3279i;
        float f3 = f + this.f3271a + (this.f3280j / 2.0f);
        float f4 = f3 * 2.0f;
        boolean z = this.f3275e.width() - f4 > CropImageView.DEFAULT_ASPECT_RATIO;
        boolean z2 = this.f3275e.height() - f4 > CropImageView.DEFAULT_ASPECT_RATIO;
        int iSave = canvas.save();
        RectF rectF = this.f3275e;
        canvas.translate(rectF.left + f3, rectF.top + f3);
        canvas.drawPath(this.f3277g, this.f3273c);
        if (z) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.f3275e.width() - f4, -this.f3276f, this.f3274d);
        }
        canvas.restoreToCount(iSave);
        int iSave2 = canvas.save();
        RectF rectF2 = this.f3275e;
        canvas.translate(rectF2.right - f3, rectF2.bottom - f3);
        canvas.rotate(180.0f);
        canvas.drawPath(this.f3277g, this.f3273c);
        if (z) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.f3275e.width() - f4, (-this.f3276f) + this.f3279i, this.f3274d);
        }
        canvas.restoreToCount(iSave2);
        int iSave3 = canvas.save();
        RectF rectF3 = this.f3275e;
        canvas.translate(rectF3.left + f3, rectF3.bottom - f3);
        canvas.rotate(270.0f);
        canvas.drawPath(this.f3277g, this.f3273c);
        if (z2) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.f3275e.height() - f4, -this.f3276f, this.f3274d);
        }
        canvas.restoreToCount(iSave3);
        int iSave4 = canvas.save();
        RectF rectF4 = this.f3275e;
        canvas.translate(rectF4.right - f3, rectF4.top + f3);
        canvas.rotate(90.0f);
        canvas.drawPath(this.f3277g, this.f3273c);
        if (z2) {
            canvas.drawRect(CropImageView.DEFAULT_ASPECT_RATIO, f2, this.f3275e.height() - f4, -this.f3276f, this.f3274d);
        }
        canvas.restoreToCount(iSave4);
    }

    /* JADX INFO: renamed from: n */
    private void m4214n(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f3281k = colorStateList;
        this.f3272b.setColor(colorStateList.getColorForState(getState(), this.f3281k.getDefaultColor()));
    }

    /* JADX INFO: renamed from: s */
    private void m4215s(float f, float f2) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("Invalid shadow size " + f + ". Must be >= 0");
        }
        if (f2 < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("Invalid max shadow size " + f2 + ". Must be >= 0");
        }
        float fM4216t = m4216t(f);
        float fM4216t2 = m4216t(f2);
        if (fM4216t > fM4216t2) {
            if (!this.f3286p) {
                this.f3286p = true;
            }
            fM4216t = fM4216t2;
        }
        if (this.f3280j == fM4216t && this.f3278h == fM4216t2) {
            return;
        }
        this.f3280j = fM4216t;
        this.f3278h = fM4216t2;
        this.f3279i = (int) ((fM4216t * 1.5f) + this.f3271a + 0.5f);
        this.f3282l = true;
        invalidateSelf();
    }

    /* JADX INFO: renamed from: t */
    private int m4216t(float f) {
        int i = (int) (f + 0.5f);
        return i % 2 == 1 ? i - 1 : i;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f3282l) {
            m4209a(getBounds());
            this.f3282l = false;
        }
        canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, this.f3280j / 2.0f);
        m4213e(canvas);
        canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, (-this.f3280j) / 2.0f);
        f3270r.mo4177a(canvas, this.f3275e, this.f3276f, this.f3272b);
    }

    /* JADX INFO: renamed from: f */
    ColorStateList m4217f() {
        return this.f3281k;
    }

    /* JADX INFO: renamed from: g */
    float m4218g() {
        return this.f3276f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        int iCeil = (int) Math.ceil(m4212d(this.f3278h, this.f3276f, this.f3285o));
        int iCeil2 = (int) Math.ceil(m4211c(this.f3278h, this.f3276f, this.f3285o));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    /* JADX INFO: renamed from: h */
    void m4219h(Rect rect) {
        getPadding(rect);
    }

    /* JADX INFO: renamed from: i */
    float m4220i() {
        return this.f3278h;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f3281k;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    /* JADX INFO: renamed from: j */
    float m4221j() {
        float f = this.f3278h;
        return (Math.max(f, this.f3276f + this.f3271a + ((f * 1.5f) / 2.0f)) * 2.0f) + (((this.f3278h * 1.5f) + this.f3271a) * 2.0f);
    }

    /* JADX INFO: renamed from: k */
    float m4222k() {
        float f = this.f3278h;
        return (Math.max(f, this.f3276f + this.f3271a + (f / 2.0f)) * 2.0f) + ((this.f3278h + this.f3271a) * 2.0f);
    }

    /* JADX INFO: renamed from: l */
    float m4223l() {
        return this.f3280j;
    }

    /* JADX INFO: renamed from: m */
    void m4224m(boolean z) {
        this.f3285o = z;
        invalidateSelf();
    }

    /* JADX INFO: renamed from: o */
    void m4225o(ColorStateList colorStateList) {
        m4214n(colorStateList);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3282l = true;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        ColorStateList colorStateList = this.f3281k;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        if (this.f3272b.getColor() == colorForState) {
            return false;
        }
        this.f3272b.setColor(colorForState);
        this.f3282l = true;
        invalidateSelf();
        return true;
    }

    /* JADX INFO: renamed from: p */
    void m4226p(float f) {
        if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("Invalid radius " + f + ". Must be >= 0");
        }
        float f2 = (int) (f + 0.5f);
        if (this.f3276f == f2) {
            return;
        }
        this.f3276f = f2;
        this.f3282l = true;
        invalidateSelf();
    }

    /* JADX INFO: renamed from: q */
    void m4227q(float f) {
        m4215s(this.f3280j, f);
    }

    /* JADX INFO: renamed from: r */
    void m4228r(float f) {
        m4215s(f, this.f3278h);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3272b.setAlpha(i);
        this.f3273c.setAlpha(i);
        this.f3274d.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3272b.setColorFilter(colorFilter);
    }
}
