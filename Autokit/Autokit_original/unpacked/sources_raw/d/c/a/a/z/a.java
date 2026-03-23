package d.c.a.a.z;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.Shader;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    private static final int[] i = new int[3];
    private static final float[] j = {CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f};
    private static final int[] k = new int[4];
    private static final float[] l = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f};
    private final Paint a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Paint f2349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Paint f2350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2351d;
    private int e;
    private int f;
    private final Path g;
    private Paint h;

    public a() {
        this(-16777216);
    }

    public void a(Canvas canvas, Matrix matrix, RectF rectF, int i2, float f, float f2) {
        boolean z = f2 < CropImageView.DEFAULT_ASPECT_RATIO;
        Path path = this.g;
        if (z) {
            int[] iArr = k;
            iArr[0] = 0;
            iArr[1] = this.f;
            iArr[2] = this.e;
            iArr[3] = this.f2351d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i2;
            rectF.inset(f3, f3);
            int[] iArr2 = k;
            iArr2[0] = 0;
            iArr2[1] = this.f2351d;
            iArr2[2] = this.e;
            iArr2[3] = this.f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= CropImageView.DEFAULT_ASPECT_RATIO) {
            return;
        }
        float f4 = 1.0f - (i2 / fWidth);
        float[] fArr = l;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        this.f2349b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, k, l, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.h);
        }
        canvas.drawArc(rectF, f, f2, true, this.f2349b);
        canvas.restore();
    }

    public void b(Canvas canvas, Matrix matrix, RectF rectF, int i2) {
        rectF.bottom += i2;
        rectF.offset(CropImageView.DEFAULT_ASPECT_RATIO, -i2);
        int[] iArr = i;
        iArr[0] = this.f;
        iArr[1] = this.e;
        iArr[2] = this.f2351d;
        Paint paint = this.f2350c;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, i, j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f2350c);
        canvas.restore();
    }

    public Paint c() {
        return this.a;
    }

    public void d(int i2) {
        this.f2351d = c.g.d.a.d(i2, 68);
        this.e = c.g.d.a.d(i2, 20);
        this.f = c.g.d.a.d(i2, 0);
        this.a.setColor(this.f2351d);
    }

    public a(int i2) {
        this.g = new Path();
        this.h = new Paint();
        this.a = new Paint();
        d(i2);
        this.h.setColor(0);
        Paint paint = new Paint(4);
        this.f2349b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f2350c = new Paint(this.f2349b);
    }
}
