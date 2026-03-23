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

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c {
    private SparseArray<a> a = new SparseArray<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SparseArray<d> f459b = new SparseArray<>();

    static class a {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<b> f460b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f461c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        d f462d;

        public a(Context context, XmlPullParser xmlPullParser) {
            this.f461c = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), i.State);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == i.State_android_id) {
                    this.a = typedArrayObtainStyledAttributes.getResourceId(index, this.a);
                } else if (index == i.State_constraints) {
                    this.f461c = typedArrayObtainStyledAttributes.getResourceId(index, this.f461c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f461c);
                    context.getResources().getResourceName(this.f461c);
                    if ("layout".equals(resourceTypeName)) {
                        d dVar = new d();
                        this.f462d = dVar;
                        dVar.f(context, this.f461c);
                    }
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        void a(b bVar) {
            this.f460b.add(bVar);
        }
    }

    static class b {
        float a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f463b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f464c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f465d;
        int e;
        d f;

        public b(Context context, XmlPullParser xmlPullParser) {
            this.a = Float.NaN;
            this.f463b = Float.NaN;
            this.f464c = Float.NaN;
            this.f465d = Float.NaN;
            this.e = -1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), i.Variant);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i);
                if (index == i.Variant_constraints) {
                    this.e = typedArrayObtainStyledAttributes.getResourceId(index, this.e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.e);
                    context.getResources().getResourceName(this.e);
                    if ("layout".equals(resourceTypeName)) {
                        d dVar = new d();
                        this.f = dVar;
                        dVar.f(context, this.e);
                    }
                } else if (index == i.Variant_region_heightLessThan) {
                    this.f465d = typedArrayObtainStyledAttributes.getDimension(index, this.f465d);
                } else if (index == i.Variant_region_heightMoreThan) {
                    this.f463b = typedArrayObtainStyledAttributes.getDimension(index, this.f463b);
                } else if (index == i.Variant_region_widthLessThan) {
                    this.f464c = typedArrayObtainStyledAttributes.getDimension(index, this.f464c);
                } else if (index == i.Variant_region_widthMoreThan) {
                    this.a = typedArrayObtainStyledAttributes.getDimension(index, this.a);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    c(Context context, ConstraintLayout constraintLayout, int i) {
        a(context, i);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private void a(Context context, int i) {
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
                            this.a.put(aVar.a, aVar);
                        } else if (b2 == 3) {
                            b bVar = new b(context, xml);
                            if (aVar != null) {
                                aVar.a(bVar);
                            }
                        } else if (b2 != 4) {
                            String str = "unknown tag " + name;
                        } else {
                            b(context, xml);
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

    private void b(Context context, XmlPullParser xmlPullParser) {
        d dVar = new d();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                if (identifier == -1 && attributeValue != null && attributeValue.length() > 1) {
                    identifier = Integer.parseInt(attributeValue.substring(1));
                }
                dVar.n(context, xmlPullParser);
                this.f459b.put(identifier, dVar);
                return;
            }
        }
    }

    public void c(f fVar) {
    }
}
