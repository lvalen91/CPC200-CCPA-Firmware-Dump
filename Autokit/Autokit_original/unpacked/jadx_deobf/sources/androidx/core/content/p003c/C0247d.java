package androidx.core.content.p003c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.LinearGradient;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.SweepGradient;
import android.util.AttributeSet;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p041g.C0587c;

/* JADX INFO: renamed from: androidx.core.content.c.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0247d {
    /* JADX INFO: renamed from: a */
    private static a m1743a(a aVar, int i, int i2, boolean z, int i3) {
        return aVar != null ? aVar : z ? new a(i, i3, i2) : new a(i, i2);
    }

    /* JADX INFO: renamed from: b */
    static Shader m1744b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0587c.GradientColor);
        float fM1768f = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "startX", C0587c.GradientColor_android_startX, CropImageView.DEFAULT_ASPECT_RATIO);
        float fM1768f2 = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "startY", C0587c.GradientColor_android_startY, CropImageView.DEFAULT_ASPECT_RATIO);
        float fM1768f3 = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "endX", C0587c.GradientColor_android_endX, CropImageView.DEFAULT_ASPECT_RATIO);
        float fM1768f4 = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "endY", C0587c.GradientColor_android_endY, CropImageView.DEFAULT_ASPECT_RATIO);
        float fM1768f5 = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "centerX", C0587c.GradientColor_android_centerX, CropImageView.DEFAULT_ASPECT_RATIO);
        float fM1768f6 = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "centerY", C0587c.GradientColor_android_centerY, CropImageView.DEFAULT_ASPECT_RATIO);
        int iM1769g = C0250g.m1769g(typedArrayM1773k, xmlPullParser, "type", C0587c.GradientColor_android_type, 0);
        int iM1764b = C0250g.m1764b(typedArrayM1773k, xmlPullParser, "startColor", C0587c.GradientColor_android_startColor, 0);
        boolean zM1772j = C0250g.m1772j(xmlPullParser, "centerColor");
        int iM1764b2 = C0250g.m1764b(typedArrayM1773k, xmlPullParser, "centerColor", C0587c.GradientColor_android_centerColor, 0);
        int iM1764b3 = C0250g.m1764b(typedArrayM1773k, xmlPullParser, "endColor", C0587c.GradientColor_android_endColor, 0);
        int iM1769g2 = C0250g.m1769g(typedArrayM1773k, xmlPullParser, "tileMode", C0587c.GradientColor_android_tileMode, 0);
        float fM1768f7 = C0250g.m1768f(typedArrayM1773k, xmlPullParser, "gradientRadius", C0587c.GradientColor_android_gradientRadius, CropImageView.DEFAULT_ASPECT_RATIO);
        typedArrayM1773k.recycle();
        a aVarM1743a = m1743a(m1745c(resources, xmlPullParser, attributeSet, theme), iM1764b, iM1764b3, zM1772j, iM1764b2);
        if (iM1769g != 1) {
            return iM1769g != 2 ? new LinearGradient(fM1768f, fM1768f2, fM1768f3, fM1768f4, aVarM1743a.f1768a, aVarM1743a.f1769b, m1746d(iM1769g2)) : new SweepGradient(fM1768f5, fM1768f6, aVarM1743a.f1768a, aVarM1743a.f1769b);
        }
        if (fM1768f7 > CropImageView.DEFAULT_ASPECT_RATIO) {
            return new RadialGradient(fM1768f5, fM1768f6, fM1768f7, aVarM1743a.f1768a, aVarM1743a.f1769b, m1746d(iM1769g2));
        }
        throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        if (r4.size() <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0090, code lost:
    
        return new androidx.core.content.p003c.C0247d.a(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0091, code lost:
    
        return null;
     */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static a m1745c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        int depth;
        int depth2 = xmlPullParser.getDepth() + 1;
        ArrayList arrayList = new ArrayList(20);
        ArrayList arrayList2 = new ArrayList(20);
        while (true) {
            int next = xmlPullParser.next();
            if (next == 1 || ((depth = xmlPullParser.getDepth()) < depth2 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth2 && xmlPullParser.getName().equals("item")) {
                TypedArray typedArrayM1773k = C0250g.m1773k(resources, theme, attributeSet, C0587c.GradientColorItem);
                boolean zHasValue = typedArrayM1773k.hasValue(C0587c.GradientColorItem_android_color);
                boolean zHasValue2 = typedArrayM1773k.hasValue(C0587c.GradientColorItem_android_offset);
                if (!zHasValue || !zHasValue2) {
                    break;
                }
                int color = typedArrayM1773k.getColor(C0587c.GradientColorItem_android_color, 0);
                float f = typedArrayM1773k.getFloat(C0587c.GradientColorItem_android_offset, CropImageView.DEFAULT_ASPECT_RATIO);
                typedArrayM1773k.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f));
            }
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
    }

    /* JADX INFO: renamed from: d */
    private static Shader.TileMode m1746d(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    /* JADX INFO: renamed from: androidx.core.content.c.d$a */
    static final class a {

        /* JADX INFO: renamed from: a */
        final int[] f1768a;

        /* JADX INFO: renamed from: b */
        final float[] f1769b;

        a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.f1768a = new int[size];
            this.f1769b = new float[size];
            for (int i = 0; i < size; i++) {
                this.f1768a[i] = list.get(i).intValue();
                this.f1769b[i] = list2.get(i).floatValue();
            }
        }

        a(int i, int i2) {
            this.f1768a = new int[]{i, i2};
            this.f1769b = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 1.0f};
        }

        a(int i, int i2, int i3) {
            this.f1768a = new int[]{i, i2, i3};
            this.f1769b = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f};
        }
    }
}
