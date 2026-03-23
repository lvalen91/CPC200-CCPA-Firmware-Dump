package p016c.p066q.p067a.p068a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.animation.Interpolator;
import androidx.core.content.p003c.C0250g;
import com.yalantis.ucrop.view.CropImageView;
import org.xmlpull.v1.XmlPullParser;
import p016c.p041g.p042d.C0590c;

/* JADX INFO: renamed from: c.q.a.a.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class InterpolatorC0696f implements Interpolator {

    /* JADX INFO: renamed from: a */
    private float[] f4100a;

    /* JADX INFO: renamed from: b */
    private float[] f4101b;

    public InterpolatorC0696f(Context context, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        this(context.getResources(), context.getTheme(), attributeSet, xmlPullParser);
    }

    /* JADX INFO: renamed from: a */
    private void m5220a(float f, float f2, float f3, float f4) {
        Path path = new Path();
        path.moveTo(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        path.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        m5221b(path);
    }

    /* JADX INFO: renamed from: b */
    private void m5221b(Path path) {
        int i = 0;
        PathMeasure pathMeasure = new PathMeasure(path, false);
        float length = pathMeasure.getLength();
        int iMin = Math.min(3000, ((int) (length / 0.002f)) + 1);
        if (iMin <= 0) {
            throw new IllegalArgumentException("The Path has a invalid length " + length);
        }
        this.f4100a = new float[iMin];
        this.f4101b = new float[iMin];
        float[] fArr = new float[2];
        for (int i2 = 0; i2 < iMin; i2++) {
            pathMeasure.getPosTan((i2 * length) / (iMin - 1), fArr, null);
            this.f4100a[i2] = fArr[0];
            this.f4101b[i2] = fArr[1];
        }
        if (Math.abs(this.f4100a[0]) <= 1.0E-5d && Math.abs(this.f4101b[0]) <= 1.0E-5d) {
            int i3 = iMin - 1;
            if (Math.abs(this.f4100a[i3] - 1.0f) <= 1.0E-5d && Math.abs(this.f4101b[i3] - 1.0f) <= 1.0E-5d) {
                float f = CropImageView.DEFAULT_ASPECT_RATIO;
                int i4 = 0;
                while (i < iMin) {
                    float[] fArr2 = this.f4100a;
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
        sb.append(this.f4100a[0]);
        sb.append(",");
        sb.append(this.f4101b[0]);
        sb.append(" end:");
        int i6 = iMin - 1;
        sb.append(this.f4100a[i6]);
        sb.append(",");
        sb.append(this.f4101b[i6]);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: renamed from: c */
    private void m5222c(float f, float f2) {
        Path path = new Path();
        path.moveTo(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        path.quadTo(f, f2, 1.0f, 1.0f);
        m5221b(path);
    }

    /* JADX INFO: renamed from: d */
    private void m5223d(TypedArray typedArray, XmlPullParser xmlPullParser) {
        if (C0250g.m1772j(xmlPullParser, "pathData")) {
            String strM1771i = C0250g.m1771i(typedArray, xmlPullParser, "pathData", 4);
            Path pathM4681e = C0590c.m4681e(strM1771i);
            if (pathM4681e != null) {
                m5221b(pathM4681e);
                return;
            }
            throw new InflateException("The path is null, which is created from " + strM1771i);
        }
        if (!C0250g.m1772j(xmlPullParser, "controlX1")) {
            throw new InflateException("pathInterpolator requires the controlX1 attribute");
        }
        if (!C0250g.m1772j(xmlPullParser, "controlY1")) {
            throw new InflateException("pathInterpolator requires the controlY1 attribute");
        }
        float fM1768f = C0250g.m1768f(typedArray, xmlPullParser, "controlX1", 0, CropImageView.DEFAULT_ASPECT_RATIO);
        float fM1768f2 = C0250g.m1768f(typedArray, xmlPullParser, "controlY1", 1, CropImageView.DEFAULT_ASPECT_RATIO);
        boolean zM1772j = C0250g.m1772j(xmlPullParser, "controlX2");
        if (zM1772j != C0250g.m1772j(xmlPullParser, "controlY2")) {
            throw new InflateException("pathInterpolator requires both controlX2 and controlY2 for cubic Beziers.");
        }
        if (zM1772j) {
            m5220a(fM1768f, fM1768f2, C0250g.m1768f(typedArray, xmlPullParser, "controlX2", 2, CropImageView.DEFAULT_ASPECT_RATIO), C0250g.m1768f(typedArray, xmlPullParser, "controlY2", 3, CropImageView.DEFAULT_ASPECT_RATIO));
        } else {
            m5222c(fM1768f, fM1768f2);
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
        int length = this.f4100a.length - 1;
        while (length - i > 1) {
            int i2 = (i + length) / 2;
            if (f < this.f4100a[i2]) {
                length = i2;
            } else {
                i = i2;
            }
        }
        float[] fArr = this.f4100a;
        float f2 = fArr[length] - fArr[i];
        if (f2 == CropImageView.DEFAULT_ASPECT_RATIO) {
            return this.f4101b[i];
        }
        float f3 = (f - fArr[i]) / f2;
        float[] fArr2 = this.f4101b;
        float f4 = fArr2[i];
        return f4 + (f3 * (fArr2[length] - f4));
    }

    public InterpolatorC0696f(Resources resources, Resources.Theme theme, AttributeSet attributeSet, XmlPullParser xmlPullParser) {
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0691a.f4086l);
        m5223d(typedArrayM1773k, xmlPullParser);
        typedArrayM1773k.recycle();
    }
}
