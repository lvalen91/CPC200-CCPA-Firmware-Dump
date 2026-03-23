package p093d.p099c.p100a.p101a.p119z;

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
import p016c.p041g.p042d.C0588a;

/* JADX INFO: renamed from: d.c.a.a.z.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1263a {

    /* JADX INFO: renamed from: i */
    private static final int[] f7841i = new int[3];

    /* JADX INFO: renamed from: j */
    private static final float[] f7842j = {CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f};

    /* JADX INFO: renamed from: k */
    private static final int[] f7843k = new int[4];

    /* JADX INFO: renamed from: l */
    private static final float[] f7844l = {CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f};

    /* JADX INFO: renamed from: a */
    private final Paint f7845a;

    /* JADX INFO: renamed from: b */
    private final Paint f7846b;

    /* JADX INFO: renamed from: c */
    private final Paint f7847c;

    /* JADX INFO: renamed from: d */
    private int f7848d;

    /* JADX INFO: renamed from: e */
    private int f7849e;

    /* JADX INFO: renamed from: f */
    private int f7850f;

    /* JADX INFO: renamed from: g */
    private final Path f7851g;

    /* JADX INFO: renamed from: h */
    private Paint f7852h;

    public C1263a() {
        this(-16777216);
    }

    /* JADX INFO: renamed from: a */
    public void m9479a(Canvas canvas, Matrix matrix, RectF rectF, int i, float f, float f2) {
        boolean z = f2 < CropImageView.DEFAULT_ASPECT_RATIO;
        Path path = this.f7851g;
        if (z) {
            int[] iArr = f7843k;
            iArr[0] = 0;
            iArr[1] = this.f7850f;
            iArr[2] = this.f7849e;
            iArr[3] = this.f7848d;
        } else {
            path.rewind();
            path.moveTo(rectF.centerX(), rectF.centerY());
            path.arcTo(rectF, f, f2);
            path.close();
            float f3 = -i;
            rectF.inset(f3, f3);
            int[] iArr2 = f7843k;
            iArr2[0] = 0;
            iArr2[1] = this.f7848d;
            iArr2[2] = this.f7849e;
            iArr2[3] = this.f7850f;
        }
        float fWidth = rectF.width() / 2.0f;
        if (fWidth <= CropImageView.DEFAULT_ASPECT_RATIO) {
            return;
        }
        float f4 = 1.0f - (i / fWidth);
        float[] fArr = f7844l;
        fArr[1] = f4;
        fArr[2] = ((1.0f - f4) / 2.0f) + f4;
        this.f7846b.setShader(new RadialGradient(rectF.centerX(), rectF.centerY(), fWidth, f7843k, f7844l, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.scale(1.0f, rectF.height() / rectF.width());
        if (!z) {
            canvas.clipPath(path, Region.Op.DIFFERENCE);
            canvas.drawPath(path, this.f7852h);
        }
        canvas.drawArc(rectF, f, f2, true, this.f7846b);
        canvas.restore();
    }

    /* JADX INFO: renamed from: b */
    public void m9480b(Canvas canvas, Matrix matrix, RectF rectF, int i) {
        rectF.bottom += i;
        rectF.offset(CropImageView.DEFAULT_ASPECT_RATIO, -i);
        int[] iArr = f7841i;
        iArr[0] = this.f7850f;
        iArr[1] = this.f7849e;
        iArr[2] = this.f7848d;
        Paint paint = this.f7847c;
        float f = rectF.left;
        paint.setShader(new LinearGradient(f, rectF.top, f, rectF.bottom, f7841i, f7842j, Shader.TileMode.CLAMP));
        canvas.save();
        canvas.concat(matrix);
        canvas.drawRect(rectF, this.f7847c);
        canvas.restore();
    }

    /* JADX INFO: renamed from: c */
    public Paint m9481c() {
        return this.f7845a;
    }

    /* JADX INFO: renamed from: d */
    public void m9482d(int i) {
        this.f7848d = C0588a.m4671d(i, 68);
        this.f7849e = C0588a.m4671d(i, 20);
        this.f7850f = C0588a.m4671d(i, 0);
        this.f7845a.setColor(this.f7848d);
    }

    public C1263a(int i) {
        this.f7851g = new Path();
        this.f7852h = new Paint();
        this.f7845a = new Paint();
        m9482d(i);
        this.f7852h.setColor(0);
        Paint paint = new Paint(4);
        this.f7846b = paint;
        paint.setStyle(Paint.Style.FILL);
        this.f7847c = new Paint(this.f7846b);
    }
}
