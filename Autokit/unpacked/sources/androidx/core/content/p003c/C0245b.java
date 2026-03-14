package androidx.core.content.p003c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: renamed from: androidx.core.content.c.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0245b {

    /* JADX INFO: renamed from: a */
    private final Shader f1754a;

    /* JADX INFO: renamed from: b */
    private final ColorStateList f1755b;

    /* JADX INFO: renamed from: c */
    private int f1756c;

    private C0245b(Shader shader, ColorStateList colorStateList, int i) {
        this.f1754a = shader;
        this.f1755b = colorStateList;
        this.f1756c = i;
    }

    /* JADX INFO: renamed from: a */
    private static C0245b m1712a(Resources resources, int i, Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        XmlResourceParser xml = resources.getXml(i);
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            next = xml.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        byte b2 = -1;
        int iHashCode = name.hashCode();
        if (iHashCode != 89650992) {
            if (iHashCode == 1191572447 && name.equals("selector")) {
                b2 = 0;
            }
        } else if (name.equals("gradient")) {
            b2 = 1;
        }
        if (b2 == 0) {
            return m1714c(C0244a.m1707b(resources, xml, attributeSetAsAttributeSet, theme));
        }
        if (b2 == 1) {
            return m1715d(C0247d.m1744b(resources, xml, attributeSetAsAttributeSet, theme));
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
    }

    /* JADX INFO: renamed from: b */
    static C0245b m1713b(int i) {
        return new C0245b(null, null, i);
    }

    /* JADX INFO: renamed from: c */
    static C0245b m1714c(ColorStateList colorStateList) {
        return new C0245b(null, colorStateList, colorStateList.getDefaultColor());
    }

    /* JADX INFO: renamed from: d */
    static C0245b m1715d(Shader shader) {
        return new C0245b(shader, null, 0);
    }

    /* JADX INFO: renamed from: g */
    public static C0245b m1716g(Resources resources, int i, Resources.Theme theme) {
        try {
            return m1712a(resources, i, theme);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: e */
    public int m1717e() {
        return this.f1756c;
    }

    /* JADX INFO: renamed from: f */
    public Shader m1718f() {
        return this.f1754a;
    }

    /* JADX INFO: renamed from: h */
    public boolean m1719h() {
        return this.f1754a != null;
    }

    /* JADX INFO: renamed from: i */
    public boolean m1720i() {
        ColorStateList colorStateList;
        return this.f1754a == null && (colorStateList = this.f1755b) != null && colorStateList.isStateful();
    }

    /* JADX INFO: renamed from: j */
    public boolean m1721j(int[] iArr) {
        if (m1720i()) {
            ColorStateList colorStateList = this.f1755b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f1756c) {
                this.f1756c = colorForState;
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: k */
    public void m1722k(int i) {
        this.f1756c = i;
    }

    /* JADX INFO: renamed from: l */
    public boolean m1723l() {
        return m1719h() || this.f1756c != 0;
    }
}
