package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final d0 f567b;
    private final l a;

    static class a {
        private static Field a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Field f568b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Field f569c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f570d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f568b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f569c = declaredField3;
                declaredField3.setAccessible(true);
                f570d = true;
            } catch (ReflectiveOperationException e) {
                String str = "Failed to get visible insets from AttachInfo " + e.getMessage();
            }
        }

        public static d0 a(View view) {
            if (f570d && view.isAttachedToWindow()) {
                try {
                    Object obj = a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) f568b.get(obj);
                        Rect rect2 = (Rect) f569c.get(obj);
                        if (rect != null && rect2 != null) {
                            b bVar = new b();
                            bVar.b(c.g.d.b.c(rect));
                            bVar.c(c.g.d.b.c(rect2));
                            d0 d0VarA = bVar.a();
                            d0VarA.p(d0VarA);
                            d0VarA.d(view.getRootView());
                            return d0VarA;
                        }
                    }
                } catch (IllegalAccessException e) {
                    String str = "Failed to get insets from AttachInfo. " + e.getMessage();
                }
            }
            return null;
        }
    }

    private static class e extends d {
        e() {
        }

        e(d0 d0Var) {
            super(d0Var);
        }
    }

    private static class f {
        private final d0 a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c.g.d.b[] f574b;

        f() {
            this(new d0((d0) null));
        }

        protected final void a() {
            c.g.d.b[] bVarArr = this.f574b;
            if (bVarArr != null) {
                c.g.d.b bVar = bVarArr[m.a(1)];
                c.g.d.b bVar2 = this.f574b[m.a(2)];
                if (bVar != null && bVar2 != null) {
                    f(c.g.d.b.a(bVar, bVar2));
                } else if (bVar != null) {
                    f(bVar);
                } else if (bVar2 != null) {
                    f(bVar2);
                }
                c.g.d.b bVar3 = this.f574b[m.a(16)];
                if (bVar3 != null) {
                    e(bVar3);
                }
                c.g.d.b bVar4 = this.f574b[m.a(32)];
                if (bVar4 != null) {
                    c(bVar4);
                }
                c.g.d.b bVar5 = this.f574b[m.a(64)];
                if (bVar5 != null) {
                    g(bVar5);
                }
            }
        }

        d0 b() {
            a();
            return this.a;
        }

        void c(c.g.d.b bVar) {
        }

        void d(c.g.d.b bVar) {
        }

        void e(c.g.d.b bVar) {
        }

        void f(c.g.d.b bVar) {
        }

        void g(c.g.d.b bVar) {
        }

        f(d0 d0Var) {
            this.a = d0Var;
        }
    }

    private static class i extends h {
        i(d0 d0Var, WindowInsets windowInsets) {
            super(d0Var, windowInsets);
        }

        @Override // androidx.core.view.d0.l
        d0 a() {
            return d0.s(this.f575c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.d0.g, androidx.core.view.d0.l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return defpackage.a.a(this.f575c, iVar.f575c) && defpackage.a.a(this.f, iVar.f);
        }

        @Override // androidx.core.view.d0.l
        androidx.core.view.d f() {
            return androidx.core.view.d.a(this.f575c.getDisplayCutout());
        }

        @Override // androidx.core.view.d0.l
        public int hashCode() {
            return this.f575c.hashCode();
        }

        i(d0 d0Var, i iVar) {
            super(d0Var, iVar);
        }
    }

    private static class k extends j {
        static final d0 o = d0.s(WindowInsets.CONSUMED);

        k(d0 d0Var, WindowInsets windowInsets) {
            super(d0Var, windowInsets);
        }

        @Override // androidx.core.view.d0.g, androidx.core.view.d0.l
        final void d(View view) {
        }

        k(d0 d0Var, k kVar) {
            super(d0Var, kVar);
        }
    }

    private static class l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final d0 f577b = new b().a().a().b().c();
        final d0 a;

        l(d0 d0Var) {
            this.a = d0Var;
        }

        d0 a() {
            return this.a;
        }

        d0 b() {
            return this.a;
        }

        d0 c() {
            return this.a;
        }

        void d(View view) {
        }

        void e(d0 d0Var) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return l() == lVar.l() && k() == lVar.k() && c.g.j.c.a(i(), lVar.i()) && c.g.j.c.a(h(), lVar.h()) && c.g.j.c.a(f(), lVar.f());
        }

        androidx.core.view.d f() {
            return null;
        }

        c.g.d.b g() {
            return i();
        }

        c.g.d.b h() {
            return c.g.d.b.e;
        }

        public int hashCode() {
            return c.g.j.c.b(Boolean.valueOf(l()), Boolean.valueOf(k()), i(), h(), f());
        }

        c.g.d.b i() {
            return c.g.d.b.e;
        }

        d0 j(int i, int i2, int i3, int i4) {
            return f577b;
        }

        boolean k() {
            return false;
        }

        boolean l() {
            return false;
        }

        public void m(c.g.d.b[] bVarArr) {
        }

        void n(c.g.d.b bVar) {
        }

        void o(d0 d0Var) {
        }

        public void p(c.g.d.b bVar) {
        }
    }

    public static final class m {
        static int a(int i) {
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
            f567b = k.o;
        } else {
            f567b = l.f577b;
        }
    }

    private d0(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.a = new k(this, windowInsets);
            return;
        }
        if (i2 >= 29) {
            this.a = new j(this, windowInsets);
            return;
        }
        if (i2 >= 28) {
            this.a = new i(this, windowInsets);
            return;
        }
        if (i2 >= 21) {
            this.a = new h(this, windowInsets);
        } else if (i2 >= 20) {
            this.a = new g(this, windowInsets);
        } else {
            this.a = new l(this);
        }
    }

    static c.g.d.b k(c.g.d.b bVar, int i2, int i3, int i4, int i5) {
        int iMax = Math.max(0, bVar.a - i2);
        int iMax2 = Math.max(0, bVar.f1169b - i3);
        int iMax3 = Math.max(0, bVar.f1170c - i4);
        int iMax4 = Math.max(0, bVar.f1171d - i5);
        return (iMax == i2 && iMax2 == i3 && iMax3 == i4 && iMax4 == i5) ? bVar : c.g.d.b.b(iMax, iMax2, iMax3, iMax4);
    }

    public static d0 s(WindowInsets windowInsets) {
        return t(windowInsets, null);
    }

    public static d0 t(WindowInsets windowInsets, View view) {
        c.g.j.h.e(windowInsets);
        d0 d0Var = new d0(windowInsets);
        if (view != null && view.isAttachedToWindow()) {
            d0Var.p(v.J(view));
            d0Var.d(view.getRootView());
        }
        return d0Var;
    }

    @Deprecated
    public d0 a() {
        return this.a.a();
    }

    @Deprecated
    public d0 b() {
        return this.a.b();
    }

    @Deprecated
    public d0 c() {
        return this.a.c();
    }

    void d(View view) {
        this.a.d(view);
    }

    @Deprecated
    public c.g.d.b e() {
        return this.a.g();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d0) {
            return c.g.j.c.a(this.a, ((d0) obj).a);
        }
        return false;
    }

    @Deprecated
    public int f() {
        return this.a.i().f1171d;
    }

    @Deprecated
    public int g() {
        return this.a.i().a;
    }

    @Deprecated
    public int h() {
        return this.a.i().f1170c;
    }

    public int hashCode() {
        l lVar = this.a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    @Deprecated
    public int i() {
        return this.a.i().f1169b;
    }

    public d0 j(int i2, int i3, int i4, int i5) {
        return this.a.j(i2, i3, i4, i5);
    }

    public boolean l() {
        return this.a.k();
    }

    @Deprecated
    public d0 m(int i2, int i3, int i4, int i5) {
        b bVar = new b(this);
        bVar.c(c.g.d.b.b(i2, i3, i4, i5));
        return bVar.a();
    }

    void n(c.g.d.b[] bVarArr) {
        this.a.m(bVarArr);
    }

    void o(c.g.d.b bVar) {
        this.a.n(bVar);
    }

    void p(d0 d0Var) {
        this.a.o(d0Var);
    }

    void q(c.g.d.b bVar) {
        this.a.p(bVar);
    }

    public WindowInsets r() {
        l lVar = this.a;
        if (lVar instanceof g) {
            return ((g) lVar).f575c;
        }
        return null;
    }

    private static class c extends f {
        private static Field e;
        private static boolean f;
        private static Constructor<WindowInsets> g;
        private static boolean h;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WindowInsets f571c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c.g.d.b f572d;

        c() {
            this.f571c = h();
        }

        private static WindowInsets h() {
            if (!f) {
                try {
                    e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f = true;
            }
            Field field = e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!h) {
                try {
                    g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                h = true;
            }
            Constructor<WindowInsets> constructor = g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override // androidx.core.view.d0.f
        d0 b() {
            a();
            d0 d0VarS = d0.s(this.f571c);
            d0VarS.n(this.f574b);
            d0VarS.q(this.f572d);
            return d0VarS;
        }

        @Override // androidx.core.view.d0.f
        void d(c.g.d.b bVar) {
            this.f572d = bVar;
        }

        @Override // androidx.core.view.d0.f
        void f(c.g.d.b bVar) {
            WindowInsets windowInsets = this.f571c;
            if (windowInsets != null) {
                this.f571c = windowInsets.replaceSystemWindowInsets(bVar.a, bVar.f1169b, bVar.f1170c, bVar.f1171d);
            }
        }

        c(d0 d0Var) {
            this.f571c = d0Var.r();
        }
    }

    private static class d extends f {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets.Builder f573c;

        d() {
            this.f573c = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.d0.f
        d0 b() {
            a();
            d0 d0VarS = d0.s(this.f573c.build());
            d0VarS.n(this.f574b);
            return d0VarS;
        }

        @Override // androidx.core.view.d0.f
        void c(c.g.d.b bVar) {
            this.f573c.setMandatorySystemGestureInsets(bVar.e());
        }

        @Override // androidx.core.view.d0.f
        void d(c.g.d.b bVar) {
            this.f573c.setStableInsets(bVar.e());
        }

        @Override // androidx.core.view.d0.f
        void e(c.g.d.b bVar) {
            this.f573c.setSystemGestureInsets(bVar.e());
        }

        @Override // androidx.core.view.d0.f
        void f(c.g.d.b bVar) {
            this.f573c.setSystemWindowInsets(bVar.e());
        }

        @Override // androidx.core.view.d0.f
        void g(c.g.d.b bVar) {
            this.f573c.setTappableElementInsets(bVar.e());
        }

        d(d0 d0Var) {
            WindowInsets.Builder builder;
            WindowInsets windowInsetsR = d0Var.r();
            if (windowInsetsR != null) {
                builder = new WindowInsets.Builder(windowInsetsR);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f573c = builder;
        }
    }

    private static class h extends g {
        private c.g.d.b m;

        h(d0 d0Var, WindowInsets windowInsets) {
            super(d0Var, windowInsets);
            this.m = null;
        }

        @Override // androidx.core.view.d0.l
        d0 b() {
            return d0.s(this.f575c.consumeStableInsets());
        }

        @Override // androidx.core.view.d0.l
        d0 c() {
            return d0.s(this.f575c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.d0.l
        final c.g.d.b h() {
            if (this.m == null) {
                this.m = c.g.d.b.b(this.f575c.getStableInsetLeft(), this.f575c.getStableInsetTop(), this.f575c.getStableInsetRight(), this.f575c.getStableInsetBottom());
            }
            return this.m;
        }

        @Override // androidx.core.view.d0.l
        boolean k() {
            return this.f575c.isConsumed();
        }

        @Override // androidx.core.view.d0.l
        public void p(c.g.d.b bVar) {
            this.m = bVar;
        }

        h(d0 d0Var, h hVar) {
            super(d0Var, hVar);
            this.m = null;
            this.m = hVar.m;
        }
    }

    private static class j extends i {
        private c.g.d.b n;

        j(d0 d0Var, WindowInsets windowInsets) {
            super(d0Var, windowInsets);
            this.n = null;
        }

        @Override // androidx.core.view.d0.l
        c.g.d.b g() {
            if (this.n == null) {
                this.n = c.g.d.b.d(this.f575c.getMandatorySystemGestureInsets());
            }
            return this.n;
        }

        @Override // androidx.core.view.d0.g, androidx.core.view.d0.l
        d0 j(int i, int i2, int i3, int i4) {
            return d0.s(this.f575c.inset(i, i2, i3, i4));
        }

        @Override // androidx.core.view.d0.h, androidx.core.view.d0.l
        public void p(c.g.d.b bVar) {
        }

        j(d0 d0Var, j jVar) {
            super(d0Var, jVar);
            this.n = null;
        }
    }

    private static class g extends l {
        private static boolean g;
        private static Method h;
        private static Class<?> i;
        private static Class<?> j;
        private static Field k;
        private static Field l;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets f575c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c.g.d.b f576d;
        private d0 e;
        c.g.d.b f;

        g(d0 d0Var, WindowInsets windowInsets) {
            super(d0Var);
            this.f576d = null;
            this.f575c = windowInsets;
        }

        private c.g.d.b q(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!g) {
                r();
            }
            Method method = h;
            if (method != null && j != null && k != null) {
                try {
                    Object objInvoke = method.invoke(view, new Object[0]);
                    if (objInvoke == null) {
                        new NullPointerException();
                        return null;
                    }
                    Rect rect = (Rect) k.get(l.get(objInvoke));
                    if (rect != null) {
                        return c.g.d.b.c(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e) {
                    String str = "Failed to get visible insets. (Reflection error). " + e.getMessage();
                }
            }
            return null;
        }

        @SuppressLint({"PrivateApi"})
        private static void r() {
            try {
                h = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                i = Class.forName("android.view.ViewRootImpl");
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                j = cls;
                k = cls.getDeclaredField("mVisibleInsets");
                l = i.getDeclaredField("mAttachInfo");
                k.setAccessible(true);
                l.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                String str = "Failed to get visible insets. (Reflection error). " + e.getMessage();
            }
            g = true;
        }

        @Override // androidx.core.view.d0.l
        void d(View view) {
            c.g.d.b bVarQ = q(view);
            if (bVarQ == null) {
                bVarQ = c.g.d.b.e;
            }
            n(bVarQ);
        }

        @Override // androidx.core.view.d0.l
        void e(d0 d0Var) {
            d0Var.p(this.e);
            d0Var.o(this.f);
        }

        @Override // androidx.core.view.d0.l
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return defpackage.a.a(this.f, ((g) obj).f);
            }
            return false;
        }

        @Override // androidx.core.view.d0.l
        final c.g.d.b i() {
            if (this.f576d == null) {
                this.f576d = c.g.d.b.b(this.f575c.getSystemWindowInsetLeft(), this.f575c.getSystemWindowInsetTop(), this.f575c.getSystemWindowInsetRight(), this.f575c.getSystemWindowInsetBottom());
            }
            return this.f576d;
        }

        @Override // androidx.core.view.d0.l
        d0 j(int i2, int i3, int i4, int i5) {
            b bVar = new b(d0.s(this.f575c));
            bVar.c(d0.k(i(), i2, i3, i4, i5));
            bVar.b(d0.k(h(), i2, i3, i4, i5));
            return bVar.a();
        }

        @Override // androidx.core.view.d0.l
        boolean l() {
            return this.f575c.isRound();
        }

        @Override // androidx.core.view.d0.l
        public void m(c.g.d.b[] bVarArr) {
        }

        @Override // androidx.core.view.d0.l
        void n(c.g.d.b bVar) {
            this.f = bVar;
        }

        @Override // androidx.core.view.d0.l
        void o(d0 d0Var) {
            this.e = d0Var;
        }

        g(d0 d0Var, g gVar) {
            this(d0Var, new WindowInsets(gVar.f575c));
        }
    }

    public static final class b {
        private final f a;

        public b() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.a = new e();
                return;
            }
            if (i >= 29) {
                this.a = new d();
            } else if (i >= 20) {
                this.a = new c();
            } else {
                this.a = new f();
            }
        }

        public d0 a() {
            return this.a.b();
        }

        @Deprecated
        public b b(c.g.d.b bVar) {
            this.a.d(bVar);
            return this;
        }

        @Deprecated
        public b c(c.g.d.b bVar) {
            this.a.f(bVar);
            return this;
        }

        public b(d0 d0Var) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.a = new e(d0Var);
                return;
            }
            if (i >= 29) {
                this.a = new d(d0Var);
            } else if (i >= 20) {
                this.a = new c(d0Var);
            } else {
                this.a = new f(d0Var);
            }
        }
    }

    public d0(d0 d0Var) {
        if (d0Var != null) {
            l lVar = d0Var.a;
            if (Build.VERSION.SDK_INT >= 30 && (lVar instanceof k)) {
                this.a = new k(this, (k) lVar);
            } else if (Build.VERSION.SDK_INT >= 29 && (lVar instanceof j)) {
                this.a = new j(this, (j) lVar);
            } else if (Build.VERSION.SDK_INT >= 28 && (lVar instanceof i)) {
                this.a = new i(this, (i) lVar);
            } else if (Build.VERSION.SDK_INT >= 21 && (lVar instanceof h)) {
                this.a = new h(this, (h) lVar);
            } else if (Build.VERSION.SDK_INT >= 20 && (lVar instanceof g)) {
                this.a = new g(this, (g) lVar);
            } else {
                this.a = new l(this);
            }
            lVar.e(this);
            return;
        }
        this.a = new l(this);
    }
}
