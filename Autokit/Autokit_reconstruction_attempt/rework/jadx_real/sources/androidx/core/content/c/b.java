package androidx.core.content.c;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b {
    private final Shader a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f532c;

    private b(Shader shader, ColorStateList colorStateList, int i) {
        this.a = shader;
        this.f531b = colorStateList;
        this.f532c = i;
    }

    private static b a(Resources resources, int i, Resources.Theme theme) throws XmlPullParserException, IOException {
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
            return c(a.b(resources, xml, attributeSetAsAttributeSet, theme));
        }
        if (b2 == 1) {
            return d(d.b(resources, xml, attributeSetAsAttributeSet, theme));
        }
        throw new XmlPullParserException(xml.getPositionDescription() + ": unsupported complex color tag " + name);
    }

    static b b(int i) {
        return new b(null, null, i);
    }

    static b c(ColorStateList colorStateList) {
        return new b(null, colorStateList, colorStateList.getDefaultColor());
    }

    static b d(Shader shader) {
        return new b(shader, null, 0);
    }

    public static b g(Resources resources, int i, Resources.Theme theme) {
        try {
            return a(resources, i, theme);
        } catch (Exception unused) {
            return null;
        }
    }

    public int e() {
        return this.f532c;
    }

    public Shader f() {
        return this.a;
    }

    public boolean h() {
        return this.a != null;
    }

    public boolean i() {
        ColorStateList colorStateList;
        return this.a == null && (colorStateList = this.f531b) != null && colorStateList.isStateful();
    }

    public boolean j(int[] iArr) {
        if (i()) {
            ColorStateList colorStateList = this.f531b;
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (colorForState != this.f532c) {
                this.f532c = colorForState;
                return true;
            }
        }
        return false;
    }

    public void k(int i) {
        this.f532c = i;
    }

    public boolean l() {
        return h() || this.f532c != 0;
    }
}
