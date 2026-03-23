package androidx.core.view;

import android.view.View;
import android.view.ViewParent;

/* JADX INFO: renamed from: androidx.core.view.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0282l {

    /* JADX INFO: renamed from: a */
    private ViewParent f1887a;

    /* JADX INFO: renamed from: b */
    private ViewParent f1888b;

    /* JADX INFO: renamed from: c */
    private final View f1889c;

    /* JADX INFO: renamed from: d */
    private boolean f1890d;

    /* JADX INFO: renamed from: e */
    private int[] f1891e;

    public C0282l(View view) {
        this.f1889c = view;
    }

    /* JADX INFO: renamed from: g */
    private boolean m2017g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent viewParentM2018h;
        int i6;
        int i7;
        int[] iArr3;
        if (!m2029l() || (viewParentM2018h = m2018h(i5)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        if (iArr != null) {
            this.f1889c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            int[] iArrM2019i = m2019i();
            iArrM2019i[0] = 0;
            iArrM2019i[1] = 0;
            iArr3 = iArrM2019i;
        } else {
            iArr3 = iArr2;
        }
        C0295y.m2173d(viewParentM2018h, this.f1889c, i, i2, i3, i4, i5, iArr3);
        if (iArr != null) {
            this.f1889c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    /* JADX INFO: renamed from: h */
    private ViewParent m2018h(int i) {
        if (i == 0) {
            return this.f1887a;
        }
        if (i != 1) {
            return null;
        }
        return this.f1888b;
    }

    /* JADX INFO: renamed from: i */
    private int[] m2019i() {
        if (this.f1891e == null) {
            this.f1891e = new int[2];
        }
        return this.f1891e;
    }

    /* JADX INFO: renamed from: n */
    private void m2020n(int i, ViewParent viewParent) {
        if (i == 0) {
            this.f1887a = viewParent;
        } else {
            if (i != 1) {
                return;
            }
            this.f1888b = viewParent;
        }
    }

    /* JADX INFO: renamed from: a */
    public boolean m2021a(float f, float f2, boolean z) {
        ViewParent viewParentM2018h;
        if (!m2029l() || (viewParentM2018h = m2018h(0)) == null) {
            return false;
        }
        return C0295y.m2170a(viewParentM2018h, this.f1889c, f, f2, z);
    }

    /* JADX INFO: renamed from: b */
    public boolean m2022b(float f, float f2) {
        ViewParent viewParentM2018h;
        if (!m2029l() || (viewParentM2018h = m2018h(0)) == null) {
            return false;
        }
        return C0295y.m2171b(viewParentM2018h, this.f1889c, f, f2);
    }

    /* JADX INFO: renamed from: c */
    public boolean m2023c(int i, int i2, int[] iArr, int[] iArr2) {
        return m2024d(i, i2, iArr, iArr2, 0);
    }

    /* JADX INFO: renamed from: d */
    public boolean m2024d(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent viewParentM2018h;
        int i4;
        int i5;
        if (!m2029l() || (viewParentM2018h = m2018h(i3)) == null) {
            return false;
        }
        if (i == 0 && i2 == 0) {
            if (iArr2 == null) {
                return false;
            }
            iArr2[0] = 0;
            iArr2[1] = 0;
            return false;
        }
        if (iArr2 != null) {
            this.f1889c.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            iArr = m2019i();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        C0295y.m2172c(viewParentM2018h, this.f1889c, i, i2, iArr, i3);
        if (iArr2 != null) {
            this.f1889c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    /* JADX INFO: renamed from: e */
    public void m2025e(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        m2017g(i, i2, i3, i4, iArr, i5, iArr2);
    }

    /* JADX INFO: renamed from: f */
    public boolean m2026f(int i, int i2, int i3, int i4, int[] iArr) {
        return m2017g(i, i2, i3, i4, iArr, 0, null);
    }

    /* JADX INFO: renamed from: j */
    public boolean m2027j() {
        return m2028k(0);
    }

    /* JADX INFO: renamed from: k */
    public boolean m2028k(int i) {
        return m2018h(i) != null;
    }

    /* JADX INFO: renamed from: l */
    public boolean m2029l() {
        return this.f1890d;
    }

    /* JADX INFO: renamed from: m */
    public void m2030m(boolean z) {
        if (this.f1890d) {
            C0292v.m2055G0(this.f1889c);
        }
        this.f1890d = z;
    }

    /* JADX INFO: renamed from: o */
    public boolean m2031o(int i) {
        return m2032p(i, 0);
    }

    /* JADX INFO: renamed from: p */
    public boolean m2032p(int i, int i2) {
        if (m2028k(i2)) {
            return true;
        }
        if (!m2029l()) {
            return false;
        }
        View view = this.f1889c;
        for (ViewParent parent = this.f1889c.getParent(); parent != null; parent = parent.getParent()) {
            if (C0295y.m2175f(parent, view, this.f1889c, i, i2)) {
                m2020n(i2, parent);
                C0295y.m2174e(parent, view, this.f1889c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: q */
    public void m2033q() {
        m2034r(0);
    }

    /* JADX INFO: renamed from: r */
    public void m2034r(int i) {
        ViewParent viewParentM2018h = m2018h(i);
        if (viewParentM2018h != null) {
            C0295y.m2176g(viewParentM2018h, this.f1889c, i);
            m2020n(i, null);
        }
    }
}
