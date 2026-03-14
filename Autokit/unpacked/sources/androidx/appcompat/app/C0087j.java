package androidx.appcompat.app;

import android.util.AttributeSet;
import java.lang.ref.WeakReference;
import java.util.ArrayDeque;
import java.util.Deque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: renamed from: androidx.appcompat.app.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0087j {

    /* JADX INFO: renamed from: a */
    private final Deque<WeakReference<XmlPullParser>> f447a = new ArrayDeque();

    C0087j() {
    }

    /* JADX INFO: renamed from: b */
    private static boolean m581b(XmlPullParser xmlPullParser) {
        if (xmlPullParser == null) {
            return true;
        }
        try {
            if (xmlPullParser.getEventType() != 3) {
                return xmlPullParser.getEventType() == 1;
            }
            return true;
        } catch (XmlPullParserException unused) {
            return true;
        }
    }

    /* JADX INFO: renamed from: c */
    private static XmlPullParser m582c(Deque<WeakReference<XmlPullParser>> deque) {
        while (!deque.isEmpty()) {
            XmlPullParser xmlPullParser = deque.peek().get();
            if (!m581b(xmlPullParser)) {
                return xmlPullParser;
            }
            deque.pop();
        }
        return null;
    }

    /* JADX INFO: renamed from: d */
    private static boolean m583d(XmlPullParser xmlPullParser, XmlPullParser xmlPullParser2) {
        if (xmlPullParser2 == null || xmlPullParser == xmlPullParser2) {
            return false;
        }
        try {
            if (xmlPullParser2.getEventType() == 2) {
                return "include".equals(xmlPullParser2.getName());
            }
            return false;
        } catch (XmlPullParserException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: a */
    boolean m584a(AttributeSet attributeSet) {
        if (!(attributeSet instanceof XmlPullParser)) {
            return false;
        }
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        if (xmlPullParser.getDepth() != 1) {
            return false;
        }
        XmlPullParser xmlPullParserM582c = m582c(this.f447a);
        this.f447a.push(new WeakReference<>(xmlPullParser));
        return m583d(xmlPullParser, xmlPullParserM582c);
    }
}
