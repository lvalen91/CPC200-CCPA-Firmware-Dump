package c.i.b;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.e0.d;
import androidx.core.view.e0.e;
import androidx.core.view.v;
import androidx.core.view.y;
import c.d.h;
import c.i.b.b;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a extends androidx.core.view.a {
    private static final Rect n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);
    private static final b.a<androidx.core.view.e0.c> o = new C0058a();
    private static final b.InterfaceC0059b<h<androidx.core.view.e0.c>, androidx.core.view.e0.c> p = new b();
    private final AccessibilityManager h;
    private final View i;
    private c j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f1245d = new Rect();
    private final Rect e = new Rect();
    private final Rect f = new Rect();
    private final int[] g = new int[2];
    int k = Integer.MIN_VALUE;
    int l = Integer.MIN_VALUE;
    private int m = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c.i.b.a$a, reason: collision with other inner class name */
    static class C0058a implements b.a<androidx.core.view.e0.c> {
        C0058a() {
        }

        @Override // c.i.b.b.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.core.view.e0.c cVar, Rect rect) {
            cVar.l(rect);
        }
    }

    static class b implements b.InterfaceC0059b<h<androidx.core.view.e0.c>, androidx.core.view.e0.c> {
        b() {
        }

        @Override // c.i.b.b.InterfaceC0059b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public androidx.core.view.e0.c b(h<androidx.core.view.e0.c> hVar, int i) {
            return hVar.k(i);
        }

        @Override // c.i.b.b.InterfaceC0059b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int a(h<androidx.core.view.e0.c> hVar) {
            return hVar.j();
        }
    }

    private class c extends d {
        c() {
        }

        @Override // androidx.core.view.e0.d
        public androidx.core.view.e0.c b(int i) {
            return androidx.core.view.e0.c.M(a.this.H(i));
        }

        @Override // androidx.core.view.e0.d
        public androidx.core.view.e0.c d(int i) {
            int i2 = i == 2 ? a.this.k : a.this.l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i2);
        }

        @Override // androidx.core.view.e0.d
        public boolean f(int i, int i2, Bundle bundle) {
            return a.this.P(i, i2, bundle);
        }
    }

    public a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.i = view;
        this.h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (v.A(view) == 0) {
            v.x0(view, 1);
        }
    }

    private static Rect D(View view, int i, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i == 17) {
            rect.set(width, 0, width, height);
        } else if (i == 33) {
            rect.set(0, height, width, height);
        } else if (i == 66) {
            rect.set(-1, 0, -1, height);
        } else {
            if (i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    private boolean E(Rect rect) {
        if (rect == null || rect.isEmpty() || this.i.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.i.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= CropImageView.DEFAULT_ASPECT_RATIO || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int F(int i) {
        if (i == 19) {
            return 33;
        }
        if (i != 21) {
            return i != 22 ? 130 : 66;
        }
        return 17;
    }

    private boolean G(int i, Rect rect) {
        androidx.core.view.e0.c cVar;
        h<androidx.core.view.e0.c> hVarY = y();
        int i2 = this.l;
        androidx.core.view.e0.c cVarE = i2 == Integer.MIN_VALUE ? null : hVarY.e(i2);
        if (i == 1 || i == 2) {
            cVar = (androidx.core.view.e0.c) c.i.b.b.d(hVarY, p, o, cVarE, i, v.C(this.i) == 1, false);
        } else {
            if (i != 17 && i != 33 && i != 66 && i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i3 = this.l;
            if (i3 != Integer.MIN_VALUE) {
                z(i3, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                D(this.i, i, rect2);
            }
            cVar = (androidx.core.view.e0.c) c.i.b.b.c(hVarY, p, o, cVarE, rect2, i);
        }
        return T(cVar != null ? hVarY.h(hVarY.g(cVar)) : Integer.MIN_VALUE);
    }

    private boolean Q(int i, int i2, Bundle bundle) {
        return i2 != 1 ? i2 != 2 ? i2 != 64 ? i2 != 128 ? J(i, i2, bundle) : n(i) : S(i) : o(i) : T(i);
    }

    private boolean R(int i, Bundle bundle) {
        return v.d0(this.i, i, bundle);
    }

    private boolean S(int i) {
        int i2;
        if (!this.h.isEnabled() || !this.h.isTouchExplorationEnabled() || (i2 = this.k) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            n(i2);
        }
        this.k = i;
        this.i.invalidate();
        U(i, 32768);
        return true;
    }

    private void V(int i) {
        int i2 = this.m;
        if (i2 == i) {
            return;
        }
        this.m = i;
        U(i, 128);
        U(i2, 256);
    }

    private boolean n(int i) {
        if (this.k != i) {
            return false;
        }
        this.k = Integer.MIN_VALUE;
        this.i.invalidate();
        U(i, 65536);
        return true;
    }

    private boolean p() {
        int i = this.l;
        return i != Integer.MIN_VALUE && J(i, 16, null);
    }

    private AccessibilityEvent q(int i, int i2) {
        return i != -1 ? r(i, i2) : s(i2);
    }

    private AccessibilityEvent r(int i, int i2) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
        androidx.core.view.e0.c cVarH = H(i);
        accessibilityEventObtain.getText().add(cVarH.v());
        accessibilityEventObtain.setContentDescription(cVarH.q());
        accessibilityEventObtain.setScrollable(cVarH.H());
        accessibilityEventObtain.setPassword(cVarH.G());
        accessibilityEventObtain.setEnabled(cVarH.C());
        accessibilityEventObtain.setChecked(cVarH.A());
        L(i, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setClassName(cVarH.o());
        e.c(accessibilityEventObtain, this.i, i);
        accessibilityEventObtain.setPackageName(this.i.getContext().getPackageName());
        return accessibilityEventObtain;
    }

    private AccessibilityEvent s(int i) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i);
        this.i.onInitializeAccessibilityEvent(accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    private androidx.core.view.e0.c t(int i) {
        androidx.core.view.e0.c cVarK = androidx.core.view.e0.c.K();
        cVarK.b0(true);
        cVarK.d0(true);
        cVarK.W("android.view.View");
        cVarK.S(n);
        cVarK.T(n);
        cVarK.k0(this.i);
        N(i, cVarK);
        if (cVarK.v() == null && cVarK.q() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        cVarK.l(this.e);
        if (this.e.equals(n)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int iJ = cVarK.j();
        if ((iJ & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((iJ & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        cVarK.i0(this.i.getContext().getPackageName());
        cVarK.p0(this.i, i);
        if (this.k == i) {
            cVarK.Q(true);
            cVarK.a(128);
        } else {
            cVarK.Q(false);
            cVarK.a(64);
        }
        boolean z = this.l == i;
        if (z) {
            cVarK.a(2);
        } else if (cVarK.D()) {
            cVarK.a(1);
        }
        cVarK.e0(z);
        this.i.getLocationOnScreen(this.g);
        cVarK.m(this.f1245d);
        if (this.f1245d.equals(n)) {
            cVarK.l(this.f1245d);
            if (cVarK.f582b != -1) {
                androidx.core.view.e0.c cVarK2 = androidx.core.view.e0.c.K();
                for (int i2 = cVarK.f582b; i2 != -1; i2 = cVarK2.f582b) {
                    cVarK2.l0(this.i, -1);
                    cVarK2.S(n);
                    N(i2, cVarK2);
                    cVarK2.l(this.e);
                    Rect rect = this.f1245d;
                    Rect rect2 = this.e;
                    rect.offset(rect2.left, rect2.top);
                }
                cVarK2.O();
            }
            this.f1245d.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
        }
        if (this.i.getLocalVisibleRect(this.f)) {
            this.f.offset(this.g[0] - this.i.getScrollX(), this.g[1] - this.i.getScrollY());
            if (this.f1245d.intersect(this.f)) {
                cVarK.T(this.f1245d);
                if (E(this.f1245d)) {
                    cVarK.t0(true);
                }
            }
        }
        return cVarK;
    }

    private androidx.core.view.e0.c u() {
        androidx.core.view.e0.c cVarL = androidx.core.view.e0.c.L(this.i);
        v.b0(this.i, cVarL);
        ArrayList arrayList = new ArrayList();
        C(arrayList);
        if (cVarL.n() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            cVarL.c(this.i, ((Integer) arrayList.get(i)).intValue());
        }
        return cVarL;
    }

    private h<androidx.core.view.e0.c> y() {
        ArrayList arrayList = new ArrayList();
        C(arrayList);
        h<androidx.core.view.e0.c> hVar = new h<>();
        for (int i = 0; i < arrayList.size(); i++) {
            hVar.i(i, t(i));
        }
        return hVar;
    }

    private void z(int i, Rect rect) {
        H(i).l(rect);
    }

    public final int A() {
        return this.l;
    }

    protected abstract int B(float f, float f2);

    protected abstract void C(List<Integer> list);

    androidx.core.view.e0.c H(int i) {
        return i == -1 ? u() : t(i);
    }

    public final void I(boolean z, int i, Rect rect) {
        int i2 = this.l;
        if (i2 != Integer.MIN_VALUE) {
            o(i2);
        }
        if (z) {
            G(i, rect);
        }
    }

    protected abstract boolean J(int i, int i2, Bundle bundle);

    protected void K(AccessibilityEvent accessibilityEvent) {
    }

    protected void L(int i, AccessibilityEvent accessibilityEvent) {
    }

    protected void M(androidx.core.view.e0.c cVar) {
    }

    protected abstract void N(int i, androidx.core.view.e0.c cVar);

    protected void O(int i, boolean z) {
    }

    boolean P(int i, int i2, Bundle bundle) {
        return i != -1 ? Q(i, i2, bundle) : R(i2, bundle);
    }

    public final boolean T(int i) {
        int i2;
        if ((!this.i.isFocused() && !this.i.requestFocus()) || (i2 = this.l) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            o(i2);
        }
        this.l = i;
        O(i, true);
        U(i, 8);
        return true;
    }

    public final boolean U(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.h.isEnabled() || (parent = this.i.getParent()) == null) {
            return false;
        }
        return y.h(parent, this.i, q(i, i2));
    }

    @Override // androidx.core.view.a
    public d b(View view) {
        if (this.j == null) {
            this.j = new c();
        }
        return this.j;
    }

    @Override // androidx.core.view.a
    public void f(View view, AccessibilityEvent accessibilityEvent) {
        super.f(view, accessibilityEvent);
        K(accessibilityEvent);
    }

    @Override // androidx.core.view.a
    public void g(View view, androidx.core.view.e0.c cVar) {
        super.g(view, cVar);
        M(cVar);
    }

    public final boolean o(int i) {
        if (this.l != i) {
            return false;
        }
        this.l = Integer.MIN_VALUE;
        O(i, false);
        U(i, 8);
        return true;
    }

    public final boolean v(MotionEvent motionEvent) {
        if (!this.h.isEnabled() || !this.h.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iB = B(motionEvent.getX(), motionEvent.getY());
            V(iB);
            return iB != Integer.MIN_VALUE;
        }
        if (action != 10 || this.m == Integer.MIN_VALUE) {
            return false;
        }
        V(Integer.MIN_VALUE);
        return true;
    }

    public final boolean w(KeyEvent keyEvent) {
        int i = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return G(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return G(1, null);
            }
            return false;
        }
        if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (!keyEvent.hasNoModifiers()) {
                        return false;
                    }
                    int iF = F(keyCode);
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z = false;
                    while (i < repeatCount && G(iF, null)) {
                        i++;
                        z = true;
                    }
                    return z;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        p();
        return true;
    }

    public final int x() {
        return this.k;
    }
}
