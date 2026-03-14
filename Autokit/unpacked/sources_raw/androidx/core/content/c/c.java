package androidx.core.content.c;

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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c {

    public interface a {
    }

    public static final class b implements a {
        private final C0019c[] a;

        public b(C0019c[] c0019cArr) {
            this.a = c0019cArr;
        }

        public C0019c[] a() {
            return this.a;
        }
    }

    /* JADX INFO: renamed from: androidx.core.content.c.c$c, reason: collision with other inner class name */
    public static final class C0019c {
        private final String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f533b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f534c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f535d;
        private int e;
        private int f;

        public C0019c(String str, int i, boolean z, String str2, int i2, int i3) {
            this.a = str;
            this.f533b = i;
            this.f534c = z;
            this.f535d = str2;
            this.e = i2;
            this.f = i3;
        }

        public String a() {
            return this.a;
        }

        public int b() {
            return this.f;
        }

        public int c() {
            return this.e;
        }

        public String d() {
            return this.f535d;
        }

        public int e() {
            return this.f533b;
        }

        public boolean f() {
            return this.f534c;
        }
    }

    public static final class d implements a {
        private final c.g.h.d a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f536b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f537c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f538d;

        public d(c.g.h.d dVar, int i, int i2, String str) {
            this.a = dVar;
            this.f537c = i;
            this.f536b = i2;
            this.f538d = str;
        }

        public int a() {
            return this.f537c;
        }

        public c.g.h.d b() {
            return this.a;
        }

        public String c() {
            return this.f538d;
        }

        public int d() {
            return this.f536b;
        }
    }

    private static int a(TypedArray typedArray, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return typedArray.getType(i);
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i, typedValue);
        return typedValue.type;
    }

    public static a b(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            return d(xmlPullParser, resources);
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List<List<byte[]>> c(Resources resources, int i) {
        if (i == 0) {
            return Collections.emptyList();
        }
        TypedArray typedArrayObtainTypedArray = resources.obtainTypedArray(i);
        try {
            if (typedArrayObtainTypedArray.length() == 0) {
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            if (a(typedArrayObtainTypedArray, 0) == 1) {
                for (int i2 = 0; i2 < typedArrayObtainTypedArray.length(); i2++) {
                    int resourceId = typedArrayObtainTypedArray.getResourceId(i2, 0);
                    if (resourceId != 0) {
                        arrayList.add(h(resources.getStringArray(resourceId)));
                    }
                }
            } else {
                arrayList.add(h(resources.getStringArray(i)));
            }
            return arrayList;
        } finally {
            typedArrayObtainTypedArray.recycle();
        }
    }

    private static a d(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        xmlPullParser.require(2, null, "font-family");
        if (xmlPullParser.getName().equals("font-family")) {
            return e(xmlPullParser, resources);
        }
        g(xmlPullParser);
        return null;
    }

    private static a e(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), c.g.c.FontFamily);
        String string = typedArrayObtainAttributes.getString(c.g.c.FontFamily_fontProviderAuthority);
        String string2 = typedArrayObtainAttributes.getString(c.g.c.FontFamily_fontProviderPackage);
        String string3 = typedArrayObtainAttributes.getString(c.g.c.FontFamily_fontProviderQuery);
        int resourceId = typedArrayObtainAttributes.getResourceId(c.g.c.FontFamily_fontProviderCerts, 0);
        int integer = typedArrayObtainAttributes.getInteger(c.g.c.FontFamily_fontProviderFetchStrategy, 1);
        int integer2 = typedArrayObtainAttributes.getInteger(c.g.c.FontFamily_fontProviderFetchTimeout, CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION);
        String string4 = typedArrayObtainAttributes.getString(c.g.c.FontFamily_fontProviderSystemFontFamily);
        typedArrayObtainAttributes.recycle();
        if (string != null && string2 != null && string3 != null) {
            while (xmlPullParser.next() != 3) {
                g(xmlPullParser);
            }
            return new d(new c.g.h.d(string, string2, string3, c(resources, resourceId)), integer, integer2, string4);
        }
        ArrayList arrayList = new ArrayList();
        while (xmlPullParser.next() != 3) {
            if (xmlPullParser.getEventType() == 2) {
                if (xmlPullParser.getName().equals("font")) {
                    arrayList.add(f(xmlPullParser, resources));
                } else {
                    g(xmlPullParser);
                }
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new b((C0019c[]) arrayList.toArray(new C0019c[arrayList.size()]));
    }

    private static C0019c f(XmlPullParser xmlPullParser, Resources resources) throws XmlPullParserException, IOException {
        TypedArray typedArrayObtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlPullParser), c.g.c.FontFamilyFont);
        int i = typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(c.g.c.FontFamilyFont_fontWeight) ? c.g.c.FontFamilyFont_fontWeight : c.g.c.FontFamilyFont_android_fontWeight, 400);
        boolean z = 1 == typedArrayObtainAttributes.getInt(typedArrayObtainAttributes.hasValue(c.g.c.FontFamilyFont_fontStyle) ? c.g.c.FontFamilyFont_fontStyle : c.g.c.FontFamilyFont_android_fontStyle, 0);
        int i2 = typedArrayObtainAttributes.hasValue(c.g.c.FontFamilyFont_ttcIndex) ? c.g.c.FontFamilyFont_ttcIndex : c.g.c.FontFamilyFont_android_ttcIndex;
        String string = typedArrayObtainAttributes.getString(typedArrayObtainAttributes.hasValue(c.g.c.FontFamilyFont_fontVariationSettings) ? c.g.c.FontFamilyFont_fontVariationSettings : c.g.c.FontFamilyFont_android_fontVariationSettings);
        int i3 = typedArrayObtainAttributes.getInt(i2, 0);
        int i4 = typedArrayObtainAttributes.hasValue(c.g.c.FontFamilyFont_font) ? c.g.c.FontFamilyFont_font : c.g.c.FontFamilyFont_android_font;
        int resourceId = typedArrayObtainAttributes.getResourceId(i4, 0);
        String string2 = typedArrayObtainAttributes.getString(i4);
        typedArrayObtainAttributes.recycle();
        while (xmlPullParser.next() != 3) {
            g(xmlPullParser);
        }
        return new C0019c(string2, i, z, string, i3, resourceId);
    }

    private static void g(XmlPullParser xmlPullParser) throws XmlPullParserException, IOException {
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

    private static List<byte[]> h(String[] strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            arrayList.add(Base64.decode(str, 0));
        }
        return arrayList;
    }
}
