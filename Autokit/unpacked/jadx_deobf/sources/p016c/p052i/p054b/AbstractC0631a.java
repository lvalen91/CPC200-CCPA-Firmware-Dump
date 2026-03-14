package p016c.p052i.p054b;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.C0258a;
import androidx.core.view.C0292v;
import androidx.core.view.C0295y;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.C0270d;
import androidx.core.view.p004e0.C0271e;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.List;
import p016c.p032d.C0541h;
import p016c.p052i.p054b.C0632b;

/* JADX INFO: renamed from: c.i.b.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0631a extends C0258a {

    /* JADX INFO: renamed from: n */
    private static final Rect f3833n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* JADX INFO: renamed from: o */
    private static final C0632b.a<C0269c> f3834o = new a();

    /* JADX INFO: renamed from: p */
    private static final C0632b.b<C0541h<C0269c>, C0269c> f3835p = new b();

    /* JADX INFO: renamed from: h */
    private final AccessibilityManager f3840h;

    /* JADX INFO: renamed from: i */
    private final View f3841i;

    /* JADX INFO: renamed from: j */
    private c f3842j;

    /* JADX INFO: renamed from: d */
    private final Rect f3836d = new Rect();

    /* JADX INFO: renamed from: e */
    private final Rect f3837e = new Rect();

    /* JADX INFO: renamed from: f */
    private final Rect f3838f = new Rect();

    /* JADX INFO: renamed from: g */
    private final int[] f3839g = new int[2];

    /* JADX INFO: renamed from: k */
    int f3843k = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: l */
    int f3844l = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: m */
    private int f3845m = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c.i.b.a$a */
    static class a implements C0632b.a<C0269c> {
        a() {
        }

        @Override // p016c.p052i.p054b.C0632b.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo4901a(C0269c c0269c, Rect rect) {
            c0269c.m1940l(rect);
        }
    }

    /* JADX INFO: renamed from: c.i.b.a$b */
    static class b implements C0632b.b<C0541h<C0269c>, C0269c> {
        b() {
        }

        @Override // p016c.p052i.p054b.C0632b.b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public C0269c mo4904b(C0541h<C0269c> c0541h, int i) {
            return c0541h.m4308k(i);
        }

        @Override // p016c.p052i.p054b.C0632b.b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int mo4903a(C0541h<C0269c> c0541h) {
            return c0541h.m4307j();
        }
    }

    /* JADX INFO: renamed from: c.i.b.a$c */
    private class c extends C0270d {
        c() {
        }

        @Override // androidx.core.view.p004e0.C0270d
        /* JADX INFO: renamed from: b */
        public C0269c mo1967b(int i) {
            return C0269c.m1888M(AbstractC0631a.this.m4886H(i));
        }

        @Override // androidx.core.view.p004e0.C0270d
        /* JADX INFO: renamed from: d */
        public C0269c mo1969d(int i) {
            int i2 = i == 2 ? AbstractC0631a.this.f3843k : AbstractC0631a.this.f3844l;
            if (i2 == Integer.MIN_VALUE) {
                return null;
            }
            return mo1967b(i2);
        }

        @Override // androidx.core.view.p004e0.C0270d
        /* JADX INFO: renamed from: f */
        public boolean mo1971f(int i, int i2, Bundle bundle) {
            return AbstractC0631a.this.m4894P(i, i2, bundle);
        }
    }

    public AbstractC0631a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f3841i = view;
        this.f3840h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (C0292v.m2042A(view) == 0) {
            C0292v.m2123x0(view, 1);
        }
    }

    /* JADX INFO: renamed from: D */
    private static Rect m4866D(View view, int i, Rect rect) {
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

    /* JADX INFO: renamed from: E */
    private boolean m4867E(Rect rect) {
        if (rect == null || rect.isEmpty() || this.f3841i.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.f3841i.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= CropImageView.DEFAULT_ASPECT_RATIO || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    /* JADX INFO: renamed from: F */
    private static int m4868F(int i) {
        if (i == 19) {
            return 33;
        }
        if (i != 21) {
            return i != 22 ? 130 : 66;
        }
        return 17;
    }

    /* JADX INFO: renamed from: G */
    private boolean m4869G(int i, Rect rect) {
        C0269c c0269c;
        C0541h<C0269c> c0541hM4881y = m4881y();
        int i2 = this.f3844l;
        C0269c c0269cM4302e = i2 == Integer.MIN_VALUE ? null : c0541hM4881y.m4302e(i2);
        if (i == 1 || i == 2) {
            c0269c = (C0269c) C0632b.m4910d(c0541hM4881y, f3835p, f3834o, c0269cM4302e, i, C0292v.m2046C(this.f3841i) == 1, false);
        } else {
            if (i != 17 && i != 33 && i != 66 && i != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i3 = this.f3844l;
            if (i3 != Integer.MIN_VALUE) {
                m4882z(i3, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                m4866D(this.f3841i, i, rect2);
            }
            c0269c = (C0269c) C0632b.m4909c(c0541hM4881y, f3835p, f3834o, c0269cM4302e, rect2, i);
        }
        return m4895T(c0269c != null ? c0541hM4881y.m4305h(c0541hM4881y.m4304g(c0269c)) : Integer.MIN_VALUE);
    }

    /* JADX INFO: renamed from: Q */
    private boolean m4870Q(int i, int i2, Bundle bundle) {
        return i2 != 1 ? i2 != 2 ? i2 != 64 ? i2 != 128 ? mo4888J(i, i2, bundle) : m4874n(i) : m4872S(i) : m4897o(i) : m4895T(i);
    }

    /* JADX INFO: renamed from: R */
    private boolean m4871R(int i, Bundle bundle) {
        return C0292v.m2083d0(this.f3841i, i, bundle);
    }

    /* JADX INFO: renamed from: S */
    private boolean m4872S(int i) {
        int i2;
        if (!this.f3840h.isEnabled() || !this.f3840h.isTouchExplorationEnabled() || (i2 = this.f3843k) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m4874n(i2);
        }
        this.f3843k = i;
        this.f3841i.invalidate();
        m4896U(i, 32768);
        return true;
    }

    /* JADX INFO: renamed from: V */
    private void m4873V(int i) {
        int i2 = this.f3845m;
        if (i2 == i) {
            return;
        }
        this.f3845m = i;
        m4896U(i, 128);
        m4896U(i2, 256);
    }

    /* JADX INFO: renamed from: n */
    private boolean m4874n(int i) {
        if (this.f3843k != i) {
            return false;
        }
        this.f3843k = Integer.MIN_VALUE;
        this.f3841i.invalidate();
        m4896U(i, 65536);
        return true;
    }

    /* JADX INFO: renamed from: p */
    private boolean m4875p() {
        int i = this.f3844l;
        return i != Integer.MIN_VALUE && mo4888J(i, 16, null);
    }

    /* JADX INFO: renamed from: q */
    private AccessibilityEvent m4876q(int i, int i2) {
        return i != -1 ? m4877r(i, i2) : m4878s(i2);
    }

    /* JADX INFO: renamed from: r */
    private AccessibilityEvent m4877r(int i, int i2) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i2);
        C0269c c0269cM4886H = m4886H(i);
        accessibilityEventObtain.getText().add(c0269cM4886H.m1957v());
        accessibilityEventObtain.setContentDescription(c0269cM4886H.m1949q());
        accessibilityEventObtain.setScrollable(c0269cM4886H.m1909H());
        accessibilityEventObtain.setPassword(c0269cM4886H.m1908G());
        accessibilityEventObtain.setEnabled(c0269cM4886H.m1904C());
        accessibilityEventObtain.setChecked(c0269cM4886H.m1902A());
        m4890L(i, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setClassName(c0269cM4886H.m1946o());
        C0271e.m1974c(accessibilityEventObtain, this.f3841i, i);
        accessibilityEventObtain.setPackageName(this.f3841i.getContext().getPackageName());
        return accessibilityEventObtain;
    }

    /* JADX INFO: renamed from: s */
    private AccessibilityEvent m4878s(int i) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i);
        this.f3841i.onInitializeAccessibilityEvent(accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    /* JADX INFO: renamed from: t */
    private C0269c m4879t(int i) {
        C0269c c0269cM1886K = C0269c.m1886K();
        c0269cM1886K.m1926b0(true);
        c0269cM1886K.m1929d0(true);
        c0269cM1886K.m1919W("android.view.View");
        c0269cM1886K.m1915S(f3833n);
        c0269cM1886K.m1916T(f3833n);
        c0269cM1886K.m1939k0(this.f3841i);
        mo4892N(i, c0269cM1886K);
        if (c0269cM1886K.m1957v() == null && c0269cM1886K.m1949q() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        c0269cM1886K.m1940l(this.f3837e);
        if (this.f3837e.equals(f3833n)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int iM1937j = c0269cM1886K.m1937j();
        if ((iM1937j & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((iM1937j & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        c0269cM1886K.m1936i0(this.f3841i.getContext().getPackageName());
        c0269cM1886K.m1948p0(this.f3841i, i);
        if (this.f3843k == i) {
            c0269cM1886K.m1914Q(true);
            c0269cM1886K.m1923a(128);
        } else {
            c0269cM1886K.m1914Q(false);
            c0269cM1886K.m1923a(64);
        }
        boolean z = this.f3844l == i;
        if (z) {
            c0269cM1886K.m1923a(2);
        } else if (c0269cM1886K.m1905D()) {
            c0269cM1886K.m1923a(1);
        }
        c0269cM1886K.m1931e0(z);
        this.f3841i.getLocationOnScreen(this.f3839g);
        c0269cM1886K.m1942m(this.f3836d);
        if (this.f3836d.equals(f3833n)) {
            c0269cM1886K.m1940l(this.f3836d);
            if (c0269cM1886K.f1857b != -1) {
                C0269c c0269cM1886K2 = C0269c.m1886K();
                for (int i2 = c0269cM1886K.f1857b; i2 != -1; i2 = c0269cM1886K2.f1857b) {
                    c0269cM1886K2.m1941l0(this.f3841i, -1);
                    c0269cM1886K2.m1915S(f3833n);
                    mo4892N(i2, c0269cM1886K2);
                    c0269cM1886K2.m1940l(this.f3837e);
                    Rect rect = this.f3836d;
                    Rect rect2 = this.f3837e;
                    rect.offset(rect2.left, rect2.top);
                }
                c0269cM1886K2.m1913O();
            }
            this.f3836d.offset(this.f3839g[0] - this.f3841i.getScrollX(), this.f3839g[1] - this.f3841i.getScrollY());
        }
        if (this.f3841i.getLocalVisibleRect(this.f3838f)) {
            this.f3838f.offset(this.f3839g[0] - this.f3841i.getScrollX(), this.f3839g[1] - this.f3841i.getScrollY());
            if (this.f3836d.intersect(this.f3838f)) {
                c0269cM1886K.m1916T(this.f3836d);
                if (m4867E(this.f3836d)) {
                    c0269cM1886K.m1955t0(true);
                }
            }
        }
        return c0269cM1886K;
    }

    /* JADX INFO: renamed from: u */
    private C0269c m4880u() {
        C0269c c0269cM1887L = C0269c.m1887L(this.f3841i);
        C0292v.m2079b0(this.f3841i, c0269cM1887L);
        ArrayList arrayList = new ArrayList();
        mo4885C(arrayList);
        if (c0269cM1887L.m1944n() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            c0269cM1887L.m1927c(this.f3841i, ((Integer) arrayList.get(i)).intValue());
        }
        return c0269cM1887L;
    }

    /* JADX INFO: renamed from: y */
    private C0541h<C0269c> m4881y() {
        ArrayList arrayList = new ArrayList();
        mo4885C(arrayList);
        C0541h<C0269c> c0541h = new C0541h<>();
        for (int i = 0; i < arrayList.size(); i++) {
            c0541h.m4306i(i, m4879t(i));
        }
        return c0541h;
    }

    /* JADX INFO: renamed from: z */
    private void m4882z(int i, Rect rect) {
        m4886H(i).m1940l(rect);
    }

    /* JADX INFO: renamed from: A */
    public final int m4883A() {
        return this.f3844l;
    }

    /* JADX INFO: renamed from: B */
    protected abstract int mo4884B(float f, float f2);

    /* JADX INFO: renamed from: C */
    protected abstract void mo4885C(List<Integer> list);

    /* JADX INFO: renamed from: H */
    C0269c m4886H(int i) {
        return i == -1 ? m4880u() : m4879t(i);
    }

    /* JADX INFO: renamed from: I */
    public final void m4887I(boolean z, int i, Rect rect) {
        int i2 = this.f3844l;
        if (i2 != Integer.MIN_VALUE) {
            m4897o(i2);
        }
        if (z) {
            m4869G(i, rect);
        }
    }

    /* JADX INFO: renamed from: J */
    protected abstract boolean mo4888J(int i, int i2, Bundle bundle);

    /* JADX INFO: renamed from: K */
    protected void m4889K(AccessibilityEvent accessibilityEvent) {
    }

    /* JADX INFO: renamed from: L */
    protected void m4890L(int i, AccessibilityEvent accessibilityEvent) {
    }

    /* JADX INFO: renamed from: M */
    protected void mo4891M(C0269c c0269c) {
    }

    /* JADX INFO: renamed from: N */
    protected abstract void mo4892N(int i, C0269c c0269c);

    /* JADX INFO: renamed from: O */
    protected void mo4893O(int i, boolean z) {
    }

    /* JADX INFO: renamed from: P */
    boolean m4894P(int i, int i2, Bundle bundle) {
        return i != -1 ? m4870Q(i, i2, bundle) : m4871R(i2, bundle);
    }

    /* JADX INFO: renamed from: T */
    public final boolean m4895T(int i) {
        int i2;
        if ((!this.f3841i.isFocused() && !this.f3841i.requestFocus()) || (i2 = this.f3844l) == i) {
            return false;
        }
        if (i2 != Integer.MIN_VALUE) {
            m4897o(i2);
        }
        this.f3844l = i;
        mo4893O(i, true);
        m4896U(i, 8);
        return true;
    }

    /* JADX INFO: renamed from: U */
    public final boolean m4896U(int i, int i2) {
        ViewParent parent;
        if (i == Integer.MIN_VALUE || !this.f3840h.isEnabled() || (parent = this.f3841i.getParent()) == null) {
            return false;
        }
        return C0295y.m2177h(parent, this.f3841i, m4876q(i, i2));
    }

    @Override // androidx.core.view.C0258a
    /* JADX INFO: renamed from: b */
    public C0270d mo1810b(View view) {
        if (this.f3842j == null) {
            this.f3842j = new c();
        }
        return this.f3842j;
    }

    @Override // androidx.core.view.C0258a
    /* JADX INFO: renamed from: f */
    public void mo1812f(View view, AccessibilityEvent accessibilityEvent) {
        super.mo1812f(view, accessibilityEvent);
        m4889K(accessibilityEvent);
    }

    @Override // androidx.core.view.C0258a
    /* JADX INFO: renamed from: g */
    public void mo1813g(View view, C0269c c0269c) {
        super.mo1813g(view, c0269c);
        mo4891M(c0269c);
    }

    /* JADX INFO: renamed from: o */
    public final boolean m4897o(int i) {
        if (this.f3844l != i) {
            return false;
        }
        this.f3844l = Integer.MIN_VALUE;
        mo4893O(i, false);
        m4896U(i, 8);
        return true;
    }

    /* JADX INFO: renamed from: v */
    public final boolean m4898v(MotionEvent motionEvent) {
        if (!this.f3840h.isEnabled() || !this.f3840h.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iMo4884B = mo4884B(motionEvent.getX(), motionEvent.getY());
            m4873V(iMo4884B);
            return iMo4884B != Integer.MIN_VALUE;
        }
        if (action != 10 || this.f3845m == Integer.MIN_VALUE) {
            return false;
        }
        m4873V(Integer.MIN_VALUE);
        return true;
    }

    /* JADX INFO: renamed from: w */
    public final boolean m4899w(KeyEvent keyEvent) {
        int i = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return m4869G(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return m4869G(1, null);
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
                    int iM4868F = m4868F(keyCode);
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z = false;
                    while (i < repeatCount && m4869G(iM4868F, null)) {
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
        m4875p();
        return true;
    }

    /* JADX INFO: renamed from: x */
    public final int m4900x() {
        return this.f3843k;
    }
}
