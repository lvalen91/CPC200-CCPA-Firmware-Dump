package androidx.core.content.c;

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

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class d {
    private static a a(a aVar, int i, int i2, boolean z, int i3) {
        return aVar != null ? aVar : z ? new a(i, i3, i2) : new a(i, i2);
    }

    static Shader b(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException {
        String name = xmlPullParser.getName();
        if (!name.equals("gradient")) {
            throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid gradient color tag " + name);
        }
        TypedArray typedArrayK = g.k(resources, theme, attributeSet, c.g.c.GradientColor);
        float f = g.f(typedArrayK, xmlPullParser, "startX", c.g.c.GradientColor_android_startX, CropImageView.DEFAULT_ASPECT_RATIO);
        float f2 = g.f(typedArrayK, xmlPullParser, "startY", c.g.c.GradientColor_android_startY, CropImageView.DEFAULT_ASPECT_RATIO);
        float f3 = g.f(typedArrayK, xmlPullParser, "endX", c.g.c.GradientColor_android_endX, CropImageView.DEFAULT_ASPECT_RATIO);
        float f4 = g.f(typedArrayK, xmlPullParser, "endY", c.g.c.GradientColor_android_endY, CropImageView.DEFAULT_ASPECT_RATIO);
        float f5 = g.f(typedArrayK, xmlPullParser, "centerX", c.g.c.GradientColor_android_centerX, CropImageView.DEFAULT_ASPECT_RATIO);
        float f6 = g.f(typedArrayK, xmlPullParser, "centerY", c.g.c.GradientColor_android_centerY, CropImageView.DEFAULT_ASPECT_RATIO);
        int iG = g.g(typedArrayK, xmlPullParser, "type", c.g.c.GradientColor_android_type, 0);
        int iB = g.b(typedArrayK, xmlPullParser, "startColor", c.g.c.GradientColor_android_startColor, 0);
        boolean zJ = g.j(xmlPullParser, "centerColor");
        int iB2 = g.b(typedArrayK, xmlPullParser, "centerColor", c.g.c.GradientColor_android_centerColor, 0);
        int iB3 = g.b(typedArrayK, xmlPullParser, "endColor", c.g.c.GradientColor_android_endColor, 0);
        int iG2 = g.g(typedArrayK, xmlPullParser, "tileMode", c.g.c.GradientColor_android_tileMode, 0);
        float f7 = g.f(typedArrayK, xmlPullParser, "gradientRadius", c.g.c.GradientColor_android_gradientRadius, CropImageView.DEFAULT_ASPECT_RATIO);
        typedArrayK.recycle();
        a aVarA = a(c(resources, xmlPullParser, attributeSet, theme), iB, iB3, zJ, iB2);
        if (iG != 1) {
            return iG != 2 ? new LinearGradient(f, f2, f3, f4, aVarA.a, aVarA.f539b, d(iG2)) : new SweepGradient(f5, f6, aVarA.a, aVarA.f539b);
        }
        if (f7 > CropImageView.DEFAULT_ASPECT_RATIO) {
            return new RadialGradient(f5, f6, f7, aVarA.a, aVarA.f539b, d(iG2));
        }
        throw new XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0089, code lost:
    
        if (r4.size() <= 0) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0090, code lost:
    
        return new androidx.core.content.c.d.a(r4, r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0091, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static a c(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
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
                TypedArray typedArrayK = g.k(resources, theme, attributeSet, c.g.c.GradientColorItem);
                boolean zHasValue = typedArrayK.hasValue(c.g.c.GradientColorItem_android_color);
                boolean zHasValue2 = typedArrayK.hasValue(c.g.c.GradientColorItem_android_offset);
                if (!zHasValue || !zHasValue2) {
                    break;
                }
                int color = typedArrayK.getColor(c.g.c.GradientColorItem_android_color, 0);
                float f = typedArrayK.getFloat(c.g.c.GradientColorItem_android_offset, CropImageView.DEFAULT_ASPECT_RATIO);
                typedArrayK.recycle();
                arrayList2.add(Integer.valueOf(color));
                arrayList.add(Float.valueOf(f));
            }
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": <item> tag requires a 'color' attribute and a 'offset' attribute!");
    }

    private static Shader.TileMode d(int i) {
        return i != 1 ? i != 2 ? Shader.TileMode.CLAMP : Shader.TileMode.MIRROR : Shader.TileMode.REPEAT;
    }

    static final class a {
        final int[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final float[] f539b;

        a(List<Integer> list, List<Float> list2) {
            int size = list.size();
            this.a = new int[size];
            this.f539b = new float[size];
            for (int i = 0; i < size; i++) {
                this.a[i] = list.get(i).intValue();
                this.f539b[i] = list2.get(i).floatValue();
            }
        }

        a(int i, int i2) {
            this.a = new int[]{i, i2};
            this.f539b = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 1.0f};
        }

        a(int i, int i2, int i3) {
            this.a = new int[]{i, i2, i3};
            this.f539b = new float[]{CropImageView.DEFAULT_ASPECT_RATIO, 0.5f, 1.0f};
        }
    }
}
