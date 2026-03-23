package c.q.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import com.yalantis.ucrop.view.CropImageView;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f implements Interpolator {
    private float[] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f1336b;

    public f(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    private void a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        b(path);
    }

    private void b(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.a = new float[iMin];
        this.f1336b = new float[iMin];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < iMin; i2++) {
            pathMeasure.getPosTan((i2 * length) / (iMin - 1), fArr, null);
            this.a[i2] = fArr[0];
            this.f1336b[i2] = fArr[1];
        }
        if (Math.abs(this.a[0]) <= 1.0E-5d && Math.abs(this.f1336b[0]) <= 1.0E-5d) {
            int i3 = iMin - 1;
            if (Math.abs(this.a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f1336b[i3] - 1.0f) <= 1.0E-5d) {
                float f = CropImageView.DEFAULT_ASPECT_RATIO;
                int i4 = 0;
                while (i < iMin) {
                    float[] fArr2 = this.a;
                    int i5 = i4 + 1;
                    float f2 = fArr2[i4];
                    if (f2 < f) {
                        throw new IllegalArgumentException("The Path cannot loop back on itself, x :" + f2);
                    }
                    fArr2[i] = f2;
                    i++;
                    f = f2;
                    i4 = i5;
                }
                if (pathMeasure.nextContour()) {
                    throw new IllegalArgumentException("The Path should be continuous, can't have 2+ contours");
                }
                return;
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("The Path must start at (0,0) and end at (1,1) start: ");
        sb.append(this.a[0]);
        sb.append(",");
        sb.append(this.f1336b[0]);
        sb.append(" end:");
        int i6 = iMin - 1;
        sb.append(this.a[i6]);
        sb.append(",");
        sb.append(this.f1336b[i6]);
        throw new IllegalArgumentException(sb.toString());
    }

    private void c(float f, float f2) {
        Path path = new Path();
        path.moveTo(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        path.quadTo(f, f2, 1.0f, 1.0f);
        b(path);
    }

    private void d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (androidx.core.content.c.g.j(xmlPullParser, "pathData")) {
            String strI = androidx.core.content.c.g.i(typedArray, xmlPullParser, "pathData", 4);
            Path pathE = c.g.d.c.e(strI);
            if (pathE != null) {
                b(pathE);
                return;
            }
            throw new InflateException("The path is null, which is created from " + strI);
        }
        if (!androidx.core.content.c.g.j(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!androidx.core.content.c.g.j(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float f = androidx.core.content.c.g.f(typedArray, xmlPullParser, "controlX1", 0, CropImageView.DEFAULT_ASPECT_RATIO);
        float f2 = androidx.core.content.c.g.f(typedArray, xmlPullParser, "controlY1", 1, CropImageView.DEFAULT_ASPECT_RATIO);
        boolean zJ = androidx.core.content.c.g.j(xmlPullParser, "controlX2");
        if (zJ != androidx.core.content.c.g.j(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zJ) {
            a(f, f2, androidx.core.content.c.g.f(typedArray, xmlPullParser, "controlX2", 2, CropImageView.DEFAULT_ASPECT_RATIO), androidx.core.content.c.g.f(typedArray, xmlPullParser, "controlY2", 3, CropImageView.DEFAULT_ASPECT_RATIO));
        } else {
            c(f, f2);
        }
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i = 0;
        int length = this.a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == CropImageView.DEFAULT_ASPECT_RATIO) {
            return this.f1336b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f1336b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }

    public f(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayK = androidx.core.content.c.g.k(resources, theme, attributeSet, a.l);
        d(typedArrayK, xmlPullParser);
        typedArrayK.recycle();
    }
}
