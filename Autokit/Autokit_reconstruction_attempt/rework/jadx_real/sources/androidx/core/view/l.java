package androidx.core.view;

import android.view.View;
import android.view.ViewParent;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class l {
    private ViewParent a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ViewParent f592b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final View f593c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f594d;
    private int[] e;

    public l(View view) {
        this.f593c = view;
    }

    private boolean g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        ViewParent viewParentH;
        int i6;
        int i7;
        int[] iArr3;
        if (!l() || (viewParentH = h(i5)) == null) {
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
            this.f593c.getLocationInWindow(iArr);
            i6 = iArr[0];
            i7 = iArr[1];
        } else {
            i6 = 0;
            i7 = 0;
        }
        if (iArr2 == null) {
            int[] iArrI = i();
            iArrI[0] = 0;
            iArrI[1] = 0;
            iArr3 = iArrI;
        } else {
            iArr3 = iArr2;
        }
        y.d(viewParentH, this.f593c, i, i2, i3, i4, i5, iArr3);
        if (iArr != null) {
            this.f593c.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i6;
            iArr[1] = iArr[1] - i7;
        }
        return true;
    }

    private ViewParent h(int i) {
        if (i == 0) {
            return this.a;
        }
        if (i != 1) {
            return null;
        }
        return this.f592b;
    }

    private int[] i() {
        if (this.e == null) {
            this.e = new int[2];
        }
        return this.e;
    }

    private void n(int i, ViewParent viewParent) {
        if (i == 0) {
            this.a = viewParent;
        } else {
            if (i != 1) {
                return;
            }
            this.f592b = viewParent;
        }
    }

    public boolean a(float f, float f2, boolean z) {
        ViewParent viewParentH;
        if (!l() || (viewParentH = h(0)) == null) {
            return false;
        }
        return y.a(viewParentH, this.f593c, f, f2, z);
    }

    public boolean b(float f, float f2) {
        ViewParent viewParentH;
        if (!l() || (viewParentH = h(0)) == null) {
            return false;
        }
        return y.b(viewParentH, this.f593c, f, f2);
    }

    public boolean c(int i, int i2, int[] iArr, int[] iArr2) {
        return d(i, i2, iArr, iArr2, 0);
    }

    public boolean d(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        ViewParent viewParentH;
        int i4;
        int i5;
        if (!l() || (viewParentH = h(i3)) == null) {
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
            this.f593c.getLocationInWindow(iArr2);
            i4 = iArr2[0];
            i5 = iArr2[1];
        } else {
            i4 = 0;
            i5 = 0;
        }
        if (iArr == null) {
            iArr = i();
        }
        iArr[0] = 0;
        iArr[1] = 0;
        y.c(viewParentH, this.f593c, i, i2, iArr, i3);
        if (iArr2 != null) {
            this.f593c.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i4;
            iArr2[1] = iArr2[1] - i5;
        }
        return (iArr[0] == 0 && iArr[1] == 0) ? false : true;
    }

    public void e(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        g(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public boolean f(int i, int i2, int i3, int i4, int[] iArr) {
        return g(i, i2, i3, i4, iArr, 0, null);
    }

    public boolean j() {
        return k(0);
    }

    public boolean k(int i) {
        return h(i) != null;
    }

    public boolean l() {
        return this.f594d;
    }

    public void m(boolean z) {
        if (this.f594d) {
            v.G0(this.f593c);
        }
        this.f594d = z;
    }

    public boolean o(int i) {
        return p(i, 0);
    }

    public boolean p(int i, int i2) {
        if (k(i2)) {
            return true;
        }
        if (!l()) {
            return false;
        }
        View view = this.f593c;
        for (ViewParent parent = this.f593c.getParent(); parent != null; parent = parent.getParent()) {
            if (y.f(parent, view, this.f593c, i, i2)) {
                n(i2, parent);
                y.e(parent, view, this.f593c, i, i2);
                return true;
            }
            if (parent instanceof View) {
                view = (View) parent;
            }
        }
        return false;
    }

    public void q() {
        r(0);
    }

    public void r(int i) {
        ViewParent viewParentH = h(i);
        if (viewParentH != null) {
            y.g(viewParentH, this.f593c, i);
            n(i, null);
        }
    }
}
