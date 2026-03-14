package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import p000.C0000a;
import p016c.p041g.p042d.C0589b;
import p016c.p041g.p049j.C0621c;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.core.view.d0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0265d0 {

    /* JADX INFO: renamed from: b */
    public static final C0265d0 f1821b;

    /* JADX INFO: renamed from: a */
    private final l f1822a;

    /* JADX INFO: renamed from: androidx.core.view.d0$a */
    static class a {

        /* JADX INFO: renamed from: a */
        private static Field f1823a;

        /* JADX INFO: renamed from: b */
        private static Field f1824b;

        /* JADX INFO: renamed from: c */
        private static Field f1825c;

        /* JADX INFO: renamed from: d */
        private static boolean f1826d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f1823a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f1824b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f1825c = declaredField3;
                declaredField3.setAccessible(true);
                f1826d = true;
            } catch (ReflectiveOperationException e) {
                String str = "Failed to get visible insets from AttachInfo " + e.getMessage();
            }
        }

        /* JADX INFO: renamed from: a */
        public static C0265d0 m1851a(View view) {
            if (f1826d && view.isAttachedToWindow()) {
                try {
                    Object obj = f1823a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) f1824b.get(obj);
                        Rect rect2 = (Rect) f1825c.get(obj);
                        if (rect != null && rect2 != null) {
                            b bVar = new b();
                            bVar.m1853b(C0589b.m4674c(rect));
                            bVar.m1854c(C0589b.m4674c(rect2));
                            C0265d0 c0265d0M1852a = bVar.m1852a();
                            c0265d0M1852a.m1848p(c0265d0M1852a);
                            c0265d0M1852a.m1837d(view.getRootView());
                            return c0265d0M1852a;
                        }
                    }
                } catch (IllegalAccessException e) {
                    String str = "Failed to get insets from AttachInfo. " + e.getMessage();
                }
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$e */
    private static class e extends d {
        e() {
        }

        e(C0265d0 c0265d0) {
            super(c0265d0);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$f */
    private static class f {

        /* JADX INFO: renamed from: a */
        private final C0265d0 f1835a;

        /* JADX INFO: renamed from: b */
        C0589b[] f1836b;

        f() {
            this(new C0265d0((C0265d0) null));
        }

        /* JADX INFO: renamed from: a */
        protected final void m1862a() {
            C0589b[] c0589bArr = this.f1836b;
            if (c0589bArr != null) {
                C0589b c0589b = c0589bArr[m.m1881a(1)];
                C0589b c0589b2 = this.f1836b[m.m1881a(2)];
                if (c0589b != null && c0589b2 != null) {
                    mo1858f(C0589b.m4672a(c0589b, c0589b2));
                } else if (c0589b != null) {
                    mo1858f(c0589b);
                } else if (c0589b2 != null) {
                    mo1858f(c0589b2);
                }
                C0589b c0589b3 = this.f1836b[m.m1881a(16)];
                if (c0589b3 != null) {
                    mo1860e(c0589b3);
                }
                C0589b c0589b4 = this.f1836b[m.m1881a(32)];
                if (c0589b4 != null) {
                    mo1859c(c0589b4);
                }
                C0589b c0589b5 = this.f1836b[m.m1881a(64)];
                if (c0589b5 != null) {
                    mo1861g(c0589b5);
                }
            }
        }

        /* JADX INFO: renamed from: b */
        C0265d0 mo1856b() {
            m1862a();
            return this.f1835a;
        }

        /* JADX INFO: renamed from: c */
        void mo1859c(C0589b c0589b) {
        }

        /* JADX INFO: renamed from: d */
        void mo1857d(C0589b c0589b) {
        }

        /* JADX INFO: renamed from: e */
        void mo1860e(C0589b c0589b) {
        }

        /* JADX INFO: renamed from: f */
        void mo1858f(C0589b c0589b) {
        }

        /* JADX INFO: renamed from: g */
        void mo1861g(C0589b c0589b) {
        }

        f(C0265d0 c0265d0) {
            this.f1835a = c0265d0;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$i */
    private static class i extends h {
        i(C0265d0 c0265d0, WindowInsets windowInsets) {
            super(c0265d0, windowInsets);
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: a */
        C0265d0 mo1878a() {
            return C0265d0.m1832s(this.f1843c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.C0265d0.g, androidx.core.view.C0265d0.l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return C0000a.m0a(this.f1843c, iVar.f1843c) && C0000a.m0a(this.f1846f, iVar.f1846f);
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: f */
        C0264d mo1879f() {
            return C0264d.m1830a(this.f1843c.getDisplayCutout());
        }

        @Override // androidx.core.view.C0265d0.l
        public int hashCode() {
            return this.f1843c.hashCode();
        }

        i(C0265d0 c0265d0, i iVar) {
            super(c0265d0, iVar);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$k */
    private static class k extends j {

        /* JADX INFO: renamed from: o */
        static final C0265d0 f1849o = C0265d0.m1832s(WindowInsets.CONSUMED);

        k(C0265d0 c0265d0, WindowInsets windowInsets) {
            super(c0265d0, windowInsets);
        }

        @Override // androidx.core.view.C0265d0.g, androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: d */
        final void mo1865d(View view) {
        }

        k(C0265d0 c0265d0, k kVar) {
            super(c0265d0, kVar);
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$l */
    private static class l {

        /* JADX INFO: renamed from: b */
        static final C0265d0 f1850b = new b().m1852a().m1834a().m1835b().m1836c();

        /* JADX INFO: renamed from: a */
        final C0265d0 f1851a;

        l(C0265d0 c0265d0) {
            this.f1851a = c0265d0;
        }

        /* JADX INFO: renamed from: a */
        C0265d0 mo1878a() {
            return this.f1851a;
        }

        /* JADX INFO: renamed from: b */
        C0265d0 mo1873b() {
            return this.f1851a;
        }

        /* JADX INFO: renamed from: c */
        C0265d0 mo1874c() {
            return this.f1851a;
        }

        /* JADX INFO: renamed from: d */
        void mo1865d(View view) {
        }

        /* JADX INFO: renamed from: e */
        void mo1866e(C0265d0 c0265d0) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return mo1869l() == lVar.mo1869l() && mo1876k() == lVar.mo1876k() && C0621c.m4846a(mo1867i(), lVar.mo1867i()) && C0621c.m4846a(mo1875h(), lVar.mo1875h()) && C0621c.m4846a(mo1879f(), lVar.mo1879f());
        }

        /* JADX INFO: renamed from: f */
        C0264d mo1879f() {
            return null;
        }

        /* JADX INFO: renamed from: g */
        C0589b mo1880g() {
            return mo1867i();
        }

        /* JADX INFO: renamed from: h */
        C0589b mo1875h() {
            return C0589b.f3694e;
        }

        public int hashCode() {
            return C0621c.m4847b(Boolean.valueOf(mo1869l()), Boolean.valueOf(mo1876k()), mo1867i(), mo1875h(), mo1879f());
        }

        /* JADX INFO: renamed from: i */
        C0589b mo1867i() {
            return C0589b.f3694e;
        }

        /* JADX INFO: renamed from: j */
        C0265d0 mo1868j(int i, int i2, int i3, int i4) {
            return f1850b;
        }

        /* JADX INFO: renamed from: k */
        boolean mo1876k() {
            return false;
        }

        /* JADX INFO: renamed from: l */
        boolean mo1869l() {
            return false;
        }

        /* JADX INFO: renamed from: m */
        public void mo1870m(C0589b[] c0589bArr) {
        }

        /* JADX INFO: renamed from: n */
        void mo1871n(C0589b c0589b) {
        }

        /* JADX INFO: renamed from: o */
        void mo1872o(C0265d0 c0265d0) {
        }

        /* JADX INFO: renamed from: p */
        public void mo1877p(C0589b c0589b) {
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$m */
    public static final class m {
        /* JADX INFO: renamed from: a */
        static int m1881a(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i == 256) {
                return 8;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f1821b = k.f1849o;
        } else {
            f1821b = l.f1850b;
        }
    }

    private C0265d0(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.f1822a = new k(this, windowInsets);
            return;
        }
        if (i2 >= 29) {
            this.f1822a = new j(this, windowInsets);
            return;
        }
        if (i2 >= 28) {
            this.f1822a = new i(this, windowInsets);
            return;
        }
        if (i2 >= 21) {
            this.f1822a = new h(this, windowInsets);
        } else if (i2 >= 20) {
            this.f1822a = new g(this, windowInsets);
        } else {
            this.f1822a = new l(this);
        }
    }

    /* JADX INFO: renamed from: k */
    static C0589b m1831k(C0589b c0589b, int i2, int i3, int i4, int i5) {
        int iMax = Math.max(0, c0589b.f3695a - i2);
        int iMax2 = Math.max(0, c0589b.f3696b - i3);
        int iMax3 = Math.max(0, c0589b.f3697c - i4);
        int iMax4 = Math.max(0, c0589b.f3698d - i5);
        return (iMax == i2 && iMax2 == i3 && iMax3 == i4 && iMax4 == i5) ? c0589b : C0589b.m4673b(iMax, iMax2, iMax3, iMax4);
    }

    /* JADX INFO: renamed from: s */
    public static C0265d0 m1832s(WindowInsets windowInsets) {
        return m1833t(windowInsets, null);
    }

    /* JADX INFO: renamed from: t */
    public static C0265d0 m1833t(WindowInsets windowInsets, View view) {
        C0626h.m4855e(windowInsets);
        C0265d0 c0265d0 = new C0265d0(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            c0265d0.m1848p(C0292v.m2059J(view));
            c0265d0.m1837d(view.getRootView());
        }
        return c0265d0;
    }

    @Deprecated
    /* JADX INFO: renamed from: a */
    public C0265d0 m1834a() {
        return this.f1822a.mo1878a();
    }

    @Deprecated
    /* JADX INFO: renamed from: b */
    public C0265d0 m1835b() {
        return this.f1822a.mo1873b();
    }

    @Deprecated
    /* JADX INFO: renamed from: c */
    public C0265d0 m1836c() {
        return this.f1822a.mo1874c();
    }

    /* JADX INFO: renamed from: d */
    void m1837d(View view) {
        this.f1822a.mo1865d(view);
    }

    @Deprecated
    /* JADX INFO: renamed from: e */
    public C0589b m1838e() {
        return this.f1822a.mo1880g();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0265d0) {
            return C0621c.m4846a(this.f1822a, ((C0265d0) obj).f1822a);
        }
        return false;
    }

    @Deprecated
    /* JADX INFO: renamed from: f */
    public int m1839f() {
        return this.f1822a.mo1867i().f3698d;
    }

    @Deprecated
    /* JADX INFO: renamed from: g */
    public int m1840g() {
        return this.f1822a.mo1867i().f3695a;
    }

    @Deprecated
    /* JADX INFO: renamed from: h */
    public int m1841h() {
        return this.f1822a.mo1867i().f3697c;
    }

    public int hashCode() {
        l lVar = this.f1822a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    @Deprecated
    /* JADX INFO: renamed from: i */
    public int m1842i() {
        return this.f1822a.mo1867i().f3696b;
    }

    /* JADX INFO: renamed from: j */
    public C0265d0 m1843j(int i2, int i3, int i4, int i5) {
        return this.f1822a.mo1868j(i2, i3, i4, i5);
    }

    /* JADX INFO: renamed from: l */
    public boolean m1844l() {
        return this.f1822a.mo1876k();
    }

    @Deprecated
    /* JADX INFO: renamed from: m */
    public C0265d0 m1845m(int i2, int i3, int i4, int i5) {
        b bVar = new b(this);
        bVar.m1854c(C0589b.m4673b(i2, i3, i4, i5));
        return bVar.m1852a();
    }

    /* JADX INFO: renamed from: n */
    void m1846n(C0589b[] c0589bArr) {
        this.f1822a.mo1870m(c0589bArr);
    }

    /* JADX INFO: renamed from: o */
    void m1847o(C0589b c0589b) {
        this.f1822a.mo1871n(c0589b);
    }

    /* JADX INFO: renamed from: p */
    void m1848p(C0265d0 c0265d0) {
        this.f1822a.mo1872o(c0265d0);
    }

    /* JADX INFO: renamed from: q */
    void m1849q(C0589b c0589b) {
        this.f1822a.mo1877p(c0589b);
    }

    /* JADX INFO: renamed from: r */
    public WindowInsets m1850r() {
        l lVar = this.f1822a;
        if (lVar instanceof g) {
            return ((g) lVar).f1843c;
        }
        return null;
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$c */
    private static class c extends f {

        /* JADX INFO: renamed from: e */
        private static Field f1828e;

        /* JADX INFO: renamed from: f */
        private static boolean f1829f;

        /* JADX INFO: renamed from: g */
        private static Constructor<WindowInsets> f1830g;

        /* JADX INFO: renamed from: h */
        private static boolean f1831h;

        /* JADX INFO: renamed from: c */
        private WindowInsets f1832c;

        /* JADX INFO: renamed from: d */
        private C0589b f1833d;

        c() {
            this.f1832c = m1855h();
        }

        /* JADX INFO: renamed from: h */
        private static WindowInsets m1855h() {
            if (!f1829f) {
                try {
                    f1828e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f1829f = true;
            }
            Field field = f1828e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!f1831h) {
                try {
                    f1830g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                f1831h = true;
            }
            Constructor<WindowInsets> constructor = f1830g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: b */
        C0265d0 mo1856b() {
            m1862a();
            C0265d0 c0265d0M1832s = C0265d0.m1832s(this.f1832c);
            c0265d0M1832s.m1846n(this.f1836b);
            c0265d0M1832s.m1849q(this.f1833d);
            return c0265d0M1832s;
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: d */
        void mo1857d(C0589b c0589b) {
            this.f1833d = c0589b;
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: f */
        void mo1858f(C0589b c0589b) {
            WindowInsets windowInsets = this.f1832c;
            if (windowInsets != null) {
                this.f1832c = windowInsets.replaceSystemWindowInsets(c0589b.f3695a, c0589b.f3696b, c0589b.f3697c, c0589b.f3698d);
            }
        }

        c(C0265d0 c0265d0) {
            this.f1832c = c0265d0.m1850r();
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$d */
    private static class d extends f {

        /* JADX INFO: renamed from: c */
        final WindowInsets.Builder f1834c;

        d() {
            this.f1834c = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: b */
        C0265d0 mo1856b() {
            m1862a();
            C0265d0 c0265d0M1832s = C0265d0.m1832s(this.f1834c.build());
            c0265d0M1832s.m1846n(this.f1836b);
            return c0265d0M1832s;
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: c */
        void mo1859c(C0589b c0589b) {
            this.f1834c.setMandatorySystemGestureInsets(c0589b.m4676e());
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: d */
        void mo1857d(C0589b c0589b) {
            this.f1834c.setStableInsets(c0589b.m4676e());
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: e */
        void mo1860e(C0589b c0589b) {
            this.f1834c.setSystemGestureInsets(c0589b.m4676e());
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: f */
        void mo1858f(C0589b c0589b) {
            this.f1834c.setSystemWindowInsets(c0589b.m4676e());
        }

        @Override // androidx.core.view.C0265d0.f
        /* JADX INFO: renamed from: g */
        void mo1861g(C0589b c0589b) {
            this.f1834c.setTappableElementInsets(c0589b.m4676e());
        }

        d(C0265d0 c0265d0) {
            WindowInsets.Builder builder;
            WindowInsets windowInsetsM1850r = c0265d0.m1850r();
            if (windowInsetsM1850r != null) {
                builder = new WindowInsets.Builder(windowInsetsM1850r);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f1834c = builder;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$h */
    private static class h extends g {

        /* JADX INFO: renamed from: m */
        private C0589b f1847m;

        h(C0265d0 c0265d0, WindowInsets windowInsets) {
            super(c0265d0, windowInsets);
            this.f1847m = null;
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: b */
        C0265d0 mo1873b() {
            return C0265d0.m1832s(this.f1843c.consumeStableInsets());
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: c */
        C0265d0 mo1874c() {
            return C0265d0.m1832s(this.f1843c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: h */
        final C0589b mo1875h() {
            if (this.f1847m == null) {
                this.f1847m = C0589b.m4673b(this.f1843c.getStableInsetLeft(), this.f1843c.getStableInsetTop(), this.f1843c.getStableInsetRight(), this.f1843c.getStableInsetBottom());
            }
            return this.f1847m;
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: k */
        boolean mo1876k() {
            return this.f1843c.isConsumed();
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: p */
        public void mo1877p(C0589b c0589b) {
            this.f1847m = c0589b;
        }

        h(C0265d0 c0265d0, h hVar) {
            super(c0265d0, hVar);
            this.f1847m = null;
            this.f1847m = hVar.f1847m;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$j */
    private static class j extends i {

        /* JADX INFO: renamed from: n */
        private C0589b f1848n;

        j(C0265d0 c0265d0, WindowInsets windowInsets) {
            super(c0265d0, windowInsets);
            this.f1848n = null;
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: g */
        C0589b mo1880g() {
            if (this.f1848n == null) {
                this.f1848n = C0589b.m4675d(this.f1843c.getMandatorySystemGestureInsets());
            }
            return this.f1848n;
        }

        @Override // androidx.core.view.C0265d0.g, androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: j */
        C0265d0 mo1868j(int i, int i2, int i3, int i4) {
            return C0265d0.m1832s(this.f1843c.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.C0265d0.h, androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: p */
        public void mo1877p(C0589b c0589b) {
        }

        j(C0265d0 c0265d0, j jVar) {
            super(c0265d0, jVar);
            this.f1848n = null;
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$g */
    private static class g extends l {

        /* JADX INFO: renamed from: g */
        private static boolean f1837g;

        /* JADX INFO: renamed from: h */
        private static Method f1838h;

        /* JADX INFO: renamed from: i */
        private static Class<?> f1839i;

        /* JADX INFO: renamed from: j */
        private static Class<?> f1840j;

        /* JADX INFO: renamed from: k */
        private static Field f1841k;

        /* JADX INFO: renamed from: l */
        private static Field f1842l;

        /* JADX INFO: renamed from: c */
        final WindowInsets f1843c;

        /* JADX INFO: renamed from: d */
        private C0589b f1844d;

        /* JADX INFO: renamed from: e */
        private C0265d0 f1845e;

        /* JADX INFO: renamed from: f */
        C0589b f1846f;

        g(C0265d0 c0265d0, WindowInsets windowInsets) {
            super(c0265d0);
            this.f1844d = null;
            this.f1843c = windowInsets;
        }

        /* JADX INFO: renamed from: q */
        private C0589b m1863q(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f1837g) {
                m1864r();
            }
            Method method = f1838h;
            if (method != null && f1840j != null && f1841k != null) {
                try {
                    Object objInvoke = method.invoke(view, new Object[0]);
                    if (objInvoke == null) {
                        new NullPointerException();
                        return null;
                    }
                    Rect rect = (Rect) f1841k.get(f1842l.get(objInvoke));
                    if (rect != null) {
                        return C0589b.m4674c(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e) {
                    String str = "Failed to get visible insets. (Reflection error). " + e.getMessage();
                }
            }
            return null;
        }

        @SuppressLint({"PrivateApi"})
        /* JADX INFO: renamed from: r */
        private static void m1864r() {
            try {
                f1838h = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                f1839i = Class.forName("android.view.ViewRootImpl");
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f1840j = cls;
                f1841k = cls.getDeclaredField("mVisibleInsets");
                f1842l = f1839i.getDeclaredField("mAttachInfo");
                f1841k.setAccessible(true);
                f1842l.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                String str = "Failed to get visible insets. (Reflection error). " + e.getMessage();
            }
            f1837g = true;
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: d */
        void mo1865d(View view) {
            C0589b c0589bM1863q = m1863q(view);
            if (c0589bM1863q == null) {
                c0589bM1863q = C0589b.f3694e;
            }
            mo1871n(c0589bM1863q);
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: e */
        void mo1866e(C0265d0 c0265d0) {
            c0265d0.m1848p(this.f1845e);
            c0265d0.m1847o(this.f1846f);
        }

        @Override // androidx.core.view.C0265d0.l
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return C0000a.m0a(this.f1846f, ((g) obj).f1846f);
            }
            return false;
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: i */
        final C0589b mo1867i() {
            if (this.f1844d == null) {
                this.f1844d = C0589b.m4673b(this.f1843c.getSystemWindowInsetLeft(), this.f1843c.getSystemWindowInsetTop(), this.f1843c.getSystemWindowInsetRight(), this.f1843c.getSystemWindowInsetBottom());
            }
            return this.f1844d;
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: j */
        C0265d0 mo1868j(int i, int i2, int i3, int i4) {
            b bVar = new b(C0265d0.m1832s(this.f1843c));
            bVar.m1854c(C0265d0.m1831k(mo1867i(), i, i2, i3, i4));
            bVar.m1853b(C0265d0.m1831k(mo1875h(), i, i2, i3, i4));
            return bVar.m1852a();
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: l */
        boolean mo1869l() {
            return this.f1843c.isRound();
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: m */
        public void mo1870m(C0589b[] c0589bArr) {
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: n */
        void mo1871n(C0589b c0589b) {
            this.f1846f = c0589b;
        }

        @Override // androidx.core.view.C0265d0.l
        /* JADX INFO: renamed from: o */
        void mo1872o(C0265d0 c0265d0) {
            this.f1845e = c0265d0;
        }

        g(C0265d0 c0265d0, g gVar) {
            this(c0265d0, new WindowInsets(gVar.f1843c));
        }
    }

    /* JADX INFO: renamed from: androidx.core.view.d0$b */
    public static final class b {

        /* JADX INFO: renamed from: a */
        private final f f1827a;

        public b() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f1827a = new e();
                return;
            }
            if (i >= 29) {
                this.f1827a = new d();
            } else if (i >= 20) {
                this.f1827a = new c();
            } else {
                this.f1827a = new f();
            }
        }

        /* JADX INFO: renamed from: a */
        public C0265d0 m1852a() {
            return this.f1827a.mo1856b();
        }

        @Deprecated
        /* JADX INFO: renamed from: b */
        public b m1853b(C0589b c0589b) {
            this.f1827a.mo1857d(c0589b);
            return this;
        }

        @Deprecated
        /* JADX INFO: renamed from: c */
        public b m1854c(C0589b c0589b) {
            this.f1827a.mo1858f(c0589b);
            return this;
        }

        public b(C0265d0 c0265d0) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.f1827a = new e(c0265d0);
                return;
            }
            if (i >= 29) {
                this.f1827a = new d(c0265d0);
            } else if (i >= 20) {
                this.f1827a = new c(c0265d0);
            } else {
                this.f1827a = new f(c0265d0);
            }
        }
    }

    public C0265d0(C0265d0 c0265d0) {
        if (c0265d0 != null) {
            l lVar = c0265d0.f1822a;
            if (Build.VERSION.SDK_INT >= 30 && (lVar instanceof k)) {
                this.f1822a = new k(this, (k) lVar);
            } else if (Build.VERSION.SDK_INT >= 29 && (lVar instanceof j)) {
                this.f1822a = new j(this, (j) lVar);
            } else if (Build.VERSION.SDK_INT >= 28 && (lVar instanceof i)) {
                this.f1822a = new i(this, (i) lVar);
            } else if (Build.VERSION.SDK_INT >= 21 && (lVar instanceof h)) {
                this.f1822a = new h(this, (h) lVar);
            } else if (Build.VERSION.SDK_INT >= 20 && (lVar instanceof g)) {
                this.f1822a = new g(this, (g) lVar);
            } else {
                this.f1822a = new l(this);
            }
            lVar.mo1866e(this);
            return;
        }
        this.f1822a = new l(this);
    }
}
