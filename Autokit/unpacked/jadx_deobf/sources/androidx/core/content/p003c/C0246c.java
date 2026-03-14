package androidx.core.content.p003c;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.Base64;
import android.util.TypedValue;
import android.util.Xml;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p041g.C0587c;
import p016c.p041g.p047h.C0609d;

/* JADX INFO: renamed from: androidx.core.content.c.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0246c {

    /* JADX INFO: renamed from: androidx.core.content.c.c$a */
    public interface a {
    }

    /* JADX INFO: renamed from: androidx.core.content.c.c$b */
    public static final class b implements a {

        /* JADX INFO: renamed from: a */
        private final c[] f1757a;

        public b(c[] cVarArr) {
            this.f1757a = cVarArr;
        }

        /* JADX INFO: renamed from: a */
        public c[] m1732a() {
            return this.f1757a;
        }
    }

    /* JADX INFO: renamed from: androidx.core.content.c.c$c */
    public static final class c {

        /* JADX INFO: renamed from: a */
        private final String f1758a;

        /* JADX INFO: renamed from: b */
        private int f1759b;

        /* JADX INFO: renamed from: c */
        private boolean f1760c;

        /* JADX INFO: renamed from: d */
        private String f1761d;

        /* JADX INFO: renamed from: e */
        private int f1762e;

        /* JADX INFO: renamed from: f */
        private int f1763f;

        public c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.f1758a = str;
            this.f1759b = i;
            this.f1760c = z;
            this.f1761d = str2;
            this.f1762e = i2;
            this.f1763f = i3;
        }

        /* JADX INFO: renamed from: a */
        public String m1733a() {
            return this.f1758a;
        }

        /* JADX INFO: renamed from: b */
        public int m1734b() {
            return this.f1763f;
        }

        /* JADX INFO: renamed from: c */
        public int m1735c() {
            return this.f1762e;
        }

        /* JADX INFO: renamed from: d */
        public String m1736d() {
            return this.f1761d;
        }

        /* JADX INFO: renamed from: e */
        public int m1737e() {
            return this.f1759b;
        }

        /* JADX INFO: renamed from: f */
        public boolean m1738f() {
            return this.f1760c;
        }
    }

    /* JADX INFO: renamed from: androidx.core.content.c.c$d */
    public static final class d implements a {

        /* JADX INFO: renamed from: a */
        private final C0609d f1764a;

        /* JADX INFO: renamed from: b */
        private final int f1765b;

        /* JADX INFO: renamed from: c */
        private final int f1766c;

        /* JADX INFO: renamed from: d */
        private final String f1767d;

        public d(C0609d c0609d, int i, int i2, String str) {
            this.f1764a = c0609d;
            this.f1766c = i;
            this.f1765b = i2;
            this.f1767d = str;
        }

        /* JADX INFO: renamed from: a */
        public int m1739a() {
            return this.f1766c;
        }

        /* JADX INFO: renamed from: b */
        public C0609d m1740b() {
            return this.f1764a;
        }

        /* JADX INFO: renamed from: c */
        public String m1741c() {
            return this.f1767d;
        }

        /* JADX INFO: renamed from: d */
        public int m1742d() {
            return this.f1765b;
        }
    }

    /* JADX INFO: renamed from: a */
    private static int m1724a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    /* JADX INFO: renamed from: b */
    public static a m1725b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return m1727d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    /* JADX INFO: renamed from: c */
    public static List<List<byte[]>> m1726c(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (m1724a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(m1731h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(m1731h(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    /* JADX INFO: renamed from: d */
    private static a m1727d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return m1728e(xmlPullParser, resources);
        }
        m1730g(xmlPullParser);
        return null;
    }

    /* JADX INFO: renamed from: e */
    private static a m1728e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0587c.FontFamily);
        String string = typedArrayObtainAttributes.getString(C0587c.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(C0587c.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(C0587c.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(C0587c.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(C0587c.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(C0587c.FontFamily_fontProviderFetchTimeout, CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
        String string4 = typedArrayObtainAttributes.getString(C0587c.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                m1730g(xmlPullParser);
            }
            return new d(new C0609d(string, string2, string3, m1726c(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(m1729f(xmlPullParser, resources));
                } else {
                    m1730g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((c[]) arrayList.toArray(new c[arrayList.size()]));
    }

    /* JADX INFO: renamed from: f */
    private static c m1729f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), C0587c.FontFamilyFont);
        int i = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(C0587c.FontFamilyFont_fontWeight) ? C0587c.FontFamilyFont_fontWeight : C0587c.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(C0587c.FontFamilyFont_fontStyle) ? C0587c.FontFamilyFont_fontStyle : C0587c.FontFamilyFont_android_fontStyle, 0);
        int i2 = typedArrayObtainAttributes.hasValue(C0587c.FontFamilyFont_ttcIndex) ? C0587c.FontFamilyFont_ttcIndex : C0587c.FontFamilyFont_android_ttcIndex;
        String string = typedArrayObtainAttributes.getString(typedArrayObtainAttributes.hasValue(C0587c.FontFamilyFont_fontVariationSettings) ? C0587c.FontFamilyFont_fontVariationSettings : C0587c.FontFamilyFont_android_fontVariationSettings);
        int i3 = typedArrayObtainAttributes.getInt(i2, 0);
        int i4 = typedArrayObtainAttributes.hasValue(C0587c.FontFamilyFont_font) ? C0587c.FontFamilyFont_font : C0587c.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i4, 0);
        String string2 = typedArrayObtainAttributes.getString(i4);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            m1730g(xmlPullParser);
        }
        return new c(string2, i, z, string, i3, resourceId);
    }

    /* JADX INFO: renamed from: g */
    private static void m1730g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
        int i = 1;
        while (i > 0) {
            int next = xmlPullParser.next();
            if (next == 2) {
                i++;
            } else if (next == 3) {
                i--;
            }
        }
    }

    /* JADX INFO: renamed from: h */
    private static List<byte[]> m1731h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
