package androidx.recyclerview.widget;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class b {
    final InterfaceC0037b a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final a f928b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final List<View> f929c = new ArrayList();

    static class a {
        long a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        a f930b;

        a() {
        }

        private void c() {
            if (this.f930b == null) {
                this.f930b = new a();
            }
        }

        void a(int i) {
            if (i < 64) {
                this.a &= (1 << i) ^ (-1);
                return;
            }
            a aVar = this.f930b;
            if (aVar != null) {
                aVar.a(i - 64);
            }
        }

        int b(int i) {
            a aVar = this.f930b;
            return aVar == null ? i >= 64 ? Long.bitCount(this.a) : Long.bitCount(this.a & ((1 << i) - 1)) : i < 64 ? Long.bitCount(this.a & ((1 << i) - 1)) : aVar.b(i - 64) + Long.bitCount(this.a);
        }

        boolean d(int i) {
            if (i < 64) {
                return (this.a & (1 << i)) != 0;
            }
            c();
            return this.f930b.d(i - 64);
        }

        void e(int i, boolean z) {
            if (i >= 64) {
                c();
                this.f930b.e(i - 64, z);
                return;
            }
            boolean z2 = (this.a & Long.MIN_VALUE) != 0;
            long j = (1 << i) - 1;
            long j2 = this.a;
            this.a = ((j2 & (j ^ (-1))) << 1) | (j2 & j);
            if (z) {
                h(i);
            } else {
                a(i);
            }
            if (z2 || this.f930b != null) {
                c();
                this.f930b.e(0, z2);
            }
        }

        boolean f(int i) {
            if (i >= 64) {
                c();
                return this.f930b.f(i - 64);
            }
            long j = 1 << i;
            boolean z = (this.a & j) != 0;
            long j2 = this.a & (j ^ (-1));
            this.a = j2;
            long j3 = j - 1;
            this.a = (j2 & j3) | Long.rotateRight((j3 ^ (-1)) & j2, 1);
            a aVar = this.f930b;
            if (aVar != null) {
                if (aVar.d(0)) {
                    h(63);
                }
                this.f930b.f(0);
            }
            return z;
        }

        void g() {
            this.a = 0L;
            a aVar = this.f930b;
            if (aVar != null) {
                aVar.g();
            }
        }

        void h(int i) {
            if (i < 64) {
                this.a |= 1 << i;
            } else {
                c();
                this.f930b.h(i - 64);
            }
        }

        public String toString() {
            if (this.f930b == null) {
                return Long.toBinaryString(this.a);
            }
            return this.f930b.toString() + "xx" + Long.toBinaryString(this.a);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.b$b, reason: collision with other inner class name */
    interface InterfaceC0037b {
        View a(int i);

        void b(View view);

        void c(int i);

        void d();

        RecyclerView.c0 e(View view);

        void f(int i);

        void g(View view);

        void h(View view, int i, ViewGroup.LayoutParams layoutParams);

        void i(View view, int i);

        int j(View view);

        int k();
    }

    b(InterfaceC0037b interfaceC0037b) {
        this.a = interfaceC0037b;
    }

    private int h(int i) {
        if (i < 0) {
            return -1;
        }
        int iK = this.a.k();
        int i2 = i;
        while (i2 < iK) {
            int iB = i - (i2 - this.f928b.b(i2));
            if (iB == 0) {
                while (this.f928b.d(i2)) {
                    i2++;
                }
                return i2;
            }
            i2 += iB;
        }
        return -1;
    }

    private void l(View view) {
        this.f929c.add(view);
        this.a.b(view);
    }

    private boolean t(View view) {
        if (!this.f929c.remove(view)) {
            return false;
        }
        this.a.g(view);
        return true;
    }

    void a(View view, int i, boolean z) {
        int iK = i < 0 ? this.a.k() : h(i);
        this.f928b.e(iK, z);
        if (z) {
            l(view);
        }
        this.a.i(view, iK);
    }

    void b(View view, boolean z) {
        a(view, -1, z);
    }

    void c(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int iK = i < 0 ? this.a.k() : h(i);
        this.f928b.e(iK, z);
        if (z) {
            l(view);
        }
        this.a.h(view, iK, layoutParams);
    }

    void d(int i) {
        int iH = h(i);
        this.f928b.f(iH);
        this.a.f(iH);
    }

    View e(int i) {
        int size = this.f929c.size();
        for (int i2 = 0; i2 < size; i2++) {
            View view = this.f929c.get(i2);
            RecyclerView.c0 c0VarE = this.a.e(view);
            if (c0VarE.m() == i && !c0VarE.t() && !c0VarE.v()) {
                return view;
            }
        }
        return null;
    }

    View f(int i) {
        return this.a.a(h(i));
    }

    int g() {
        return this.a.k() - this.f929c.size();
    }

    View i(int i) {
        return this.a.a(i);
    }

    int j() {
        return this.a.k();
    }

    void k(View view) {
        int iJ = this.a.j(view);
        if (iJ >= 0) {
            this.f928b.h(iJ);
            l(view);
        } else {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
    }

    int m(View view) {
        int iJ = this.a.j(view);
        if (iJ == -1 || this.f928b.d(iJ)) {
            return -1;
        }
        return iJ - this.f928b.b(iJ);
    }

    boolean n(View view) {
        return this.f929c.contains(view);
    }

    void o() {
        this.f928b.g();
        for (int size = this.f929c.size() - 1; size >= 0; size--) {
            this.a.g(this.f929c.get(size));
            this.f929c.remove(size);
        }
        this.a.d();
    }

    void p(View view) {
        int iJ = this.a.j(view);
        if (iJ < 0) {
            return;
        }
        if (this.f928b.f(iJ)) {
            t(view);
        }
        this.a.c(iJ);
    }

    void q(int i) {
        int iH = h(i);
        View viewA = this.a.a(iH);
        if (viewA == null) {
            return;
        }
        if (this.f928b.f(iH)) {
            t(viewA);
        }
        this.a.c(iH);
    }

    boolean r(View view) {
        int iJ = this.a.j(view);
        if (iJ == -1) {
            t(view);
            return true;
        }
        if (!this.f928b.d(iJ)) {
            return false;
        }
        this.f928b.f(iJ);
        t(view);
        this.a.c(iJ);
        return true;
    }

    void s(View view) {
        int iJ = this.a.j(view);
        if (iJ < 0) {
            throw new IllegalArgumentException("view is not a child, cannot hide " + view);
        }
        if (this.f928b.d(iJ)) {
            this.f928b.a(iJ);
            t(view);
        } else {
            throw new RuntimeException("trying to unhide a view that was not hidden" + view);
        }
    }

    public String toString() {
        return this.f928b.toString() + ", hidden list:" + this.f929c.size();
    }
}
