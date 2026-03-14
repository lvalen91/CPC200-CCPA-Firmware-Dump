package androidx.core.content.p003c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: renamed from: androidx.core.content.c.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0250g {
    /* JADX INFO: renamed from: a */
    public static boolean m1763a(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, boolean z) {
        return !m1772j(xmlPullParser, str) ? z : typedArray.getBoolean(i, z);
    }

    /* JADX INFO: renamed from: b */
    public static int m1764b(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m1772j(xmlPullParser, str) ? i2 : typedArray.getColor(i, i2);
    }

    /* JADX INFO: renamed from: c */
    public static ColorStateList m1765c(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i) {
        if (!m1772j(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        int i2 = typedValue.type;
        if (i2 != 2) {
            return (i2 < 28 || i2 > 31) ? C0244a.m1708c(typedArray.getResources(), typedArray.getResourceId(i, 0), theme) : m1766d(typedValue);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i + ": " + typedValue);
    }

    /* JADX INFO: renamed from: d */
    private static ColorStateList m1766d(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    /* JADX INFO: renamed from: e */
    public static C0245b m1767e(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i, int i2) {
        if (m1772j(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i, typedValue);
            int i3 = typedValue.type;
            if (i3 >= 28 && i3 <= 31) {
                return C0245b.m1713b(typedValue.data);
            }
            C0245b c0245bM1716g = C0245b.m1716g(typedArray.getResources(), typedArray.getResourceId(i, 0), theme);
            if (c0245bM1716g != null) {
                return c0245bM1716g;
            }
        }
        return C0245b.m1713b(i2);
    }

    /* JADX INFO: renamed from: f */
    public static float m1768f(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, float f) {
        return !m1772j(xmlPullParser, str) ? f : typedArray.getFloat(i, f);
    }

    /* JADX INFO: renamed from: g */
    public static int m1769g(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m1772j(xmlPullParser, str) ? i2 : typedArray.getInt(i, i2);
    }

    /* JADX INFO: renamed from: h */
    public static int m1770h(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i, int i2) {
        return !m1772j(xmlPullParser, str) ? i2 : typedArray.getResourceId(i, i2);
    }

    /* JADX INFO: renamed from: i */
    public static String m1771i(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (m1772j(xmlPullParser, str)) {
            return typedArray.getString(i);
        }
        return null;
    }

    /* JADX INFO: renamed from: j */
    public static boolean m1772j(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", str) != null;
    }

    /* JADX INFO: renamed from: k */
    public static TypedArray m1773k(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    /* JADX INFO: renamed from: l */
    public static TypedValue m1774l(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i) {
        if (m1772j(xmlPullParser, str)) {
            return typedArray.peekValue(i);
        }
        return null;
    }
}
