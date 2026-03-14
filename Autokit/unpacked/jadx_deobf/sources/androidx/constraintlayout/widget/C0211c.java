package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: renamed from: androidx.constraintlayout.widget.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0211c {

    /* JADX INFO: renamed from: a */
    private SparseArray<a> f1523a = new SparseArray<>();

    /* JADX INFO: renamed from: b */
    private SparseArray<C0212d> f1524b = new SparseArray<>();

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.c$a */
    static class a {

        /* JADX INFO: renamed from: a */
        int f1525a;

        /* JADX INFO: renamed from: b */
        ArrayList<b> f1526b = new ArrayList<>();

        /* JADX INFO: renamed from: c */
        int f1527c;

        /* JADX INFO: renamed from: d */
        C0212d f1528d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f1527c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0217i.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == C0217i.State_android_id) {
                    this.f1525a = typedArrayObtainStyledAttributes.getResourceId(index, this.f1525a);
                } else if (index == C0217i.State_constraints) {
                    this.f1527c = typedArrayObtainStyledAttributes.getResourceId(index, this.f1527c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1527c);
                    context.getResources().getResourceName(this.f1527c);
                    if ("layout".equals(resourceTypeName)) {
                        C0212d c0212d = new C0212d();
                        this.f1528d = c0212d;
                        c0212d.m1498f(context, this.f1527c);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        /* JADX INFO: renamed from: a */
        void m1487a(b bVar) {
            this.f1526b.add(bVar);
        }
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.widget.c$b */
    static class b {

        /* JADX INFO: renamed from: a */
        float f1529a;

        /* JADX INFO: renamed from: b */
        float f1530b;

        /* JADX INFO: renamed from: c */
        float f1531c;

        /* JADX INFO: renamed from: d */
        float f1532d;

        /* JADX INFO: renamed from: e */
        int f1533e;

        /* JADX INFO: renamed from: f */
        C0212d f1534f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.f1529a = Float.NaN;
            this.f1530b = Float.NaN;
            this.f1531c = Float.NaN;
            this.f1532d = Float.NaN;
            this.f1533e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0217i.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == C0217i.Variant_constraints) {
                    this.f1533e = typedArrayObtainStyledAttributes.getResourceId(index, this.f1533e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f1533e);
                    context.getResources().getResourceName(this.f1533e);
                    if ("layout".equals(resourceTypeName)) {
                        C0212d c0212d = new C0212d();
                        this.f1534f = c0212d;
                        c0212d.m1498f(context, this.f1533e);
                    }
                } else if (index == C0217i.Variant_region_heightLessThan) {
                    this.f1532d = typedArrayObtainStyledAttributes.getDimension(index, this.f1532d);
                } else if (index == C0217i.Variant_region_heightMoreThan) {
                    this.f1530b = typedArrayObtainStyledAttributes.getDimension(index, this.f1530b);
                } else if (index == C0217i.Variant_region_widthLessThan) {
                    this.f1531c = typedArrayObtainStyledAttributes.getDimension(index, this.f1531c);
                } else if (index == C0217i.Variant_region_widthMoreThan) {
                    this.f1529a = typedArrayObtainStyledAttributes.getDimension(index, this.f1529a);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    C0211c(Context context, ConstraintLayout constraintLayout, int i) {
        m1484a(context, i);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: a */
    private void m1484a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        a aVar = null;
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    byte b2 = -1;
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                b2 = 4;
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                b2 = 2;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                b2 = 1;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                b2 = 0;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                b2 = 3;
                            }
                            break;
                    }
                    if (b2 != 0 && b2 != 1) {
                        if (b2 == 2) {
                            aVar = new a(context, xml);
                            this.f1523a.put(aVar.f1525a, aVar);
                        } else if (b2 == 3) {
                            b bVar = new b(context, xml);
                            if (aVar != null) {
                                aVar.m1487a(bVar);
                            }
                        } else if (b2 != 4) {
                            String str = "unknown tag " + name;
                        } else {
                            m1485b(context, xml);
                        }
                    }
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: renamed from: b */
    private void m1485b(Context context, XmlPullParser xmlPullParser) {
        C0212d c0212d = new C0212d();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1 && attributeValue != null && attributeValue.length() > 1) {
                    identifier = Integer.parseInt(attributeValue.substring(1));
                }
                c0212d.m1503n(context, xmlPullParser);
                this.f1524b.put(identifier, c0212d);
                return;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public void m1486c(AbstractC0214f abstractC0214f) {
    }
}
