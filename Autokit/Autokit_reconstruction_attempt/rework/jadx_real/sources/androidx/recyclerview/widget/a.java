package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.h;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class a implements h.a {
    private c.g.j.e<b> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final ArrayList<b> f922b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<b> f923c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final InterfaceC0036a f924d;
    Runnable e;
    final boolean f;
    final h g;
    private int h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a, reason: collision with other inner class name */
    interface InterfaceC0036a {
        void a(int i, int i2);

        void b(b bVar);

        RecyclerView.c0 c(int i);

        void d(int i, int i2);

        void e(int i, int i2);

        void f(b bVar);

        void g(int i, int i2);

        void h(int i, int i2, Object obj);
    }

    static class b {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f925b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        Object f926c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f927d;

        b(int i, int i2, int i3, Object obj) {
            this.a = i;
            this.f925b = i2;
            this.f927d = i3;
            this.f926c = obj;
        }

        String a() {
            int i = this.a;
            return i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add";
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || b.class != obj.getClass()) {
                return false;
            }
            b bVar = (b) obj;
            int i = this.a;
            if (i != bVar.a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f927d - this.f925b) == 1 && this.f927d == bVar.f925b && this.f925b == bVar.f927d) {
                return true;
            }
            if (this.f927d != bVar.f927d || this.f925b != bVar.f925b) {
                return false;
            }
            Object obj2 = this.f926c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f926c)) {
                    return false;
                }
            } else if (bVar.f926c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.a * 31) + this.f925b) * 31) + this.f927d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + a() + ",s:" + this.f925b + "c:" + this.f927d + ",p:" + this.f926c + "]";
        }
    }

    a(InterfaceC0036a interfaceC0036a) {
        this(interfaceC0036a, false);
    }

    private void c(b bVar) {
        r(bVar);
    }

    private void d(b bVar) {
        r(bVar);
    }

    private void f(b bVar) {
        boolean z;
        byte b2;
        int i = bVar.f925b;
        int i2 = bVar.f927d + i;
        byte b3 = -1;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (this.f924d.c(i3) != null || h(i3)) {
                if (b3 == 0) {
                    k(b(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 1;
            } else {
                if (b3 == 1) {
                    r(b(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 0;
            }
            if (z) {
                i3 -= i4;
                i2 -= i4;
                i4 = 1;
            } else {
                i4++;
            }
            i3++;
            b3 = b2;
        }
        if (i4 != bVar.f927d) {
            a(bVar);
            bVar = b(2, i, i4, null);
        }
        if (b3 == 0) {
            k(bVar);
        } else {
            r(bVar);
        }
    }

    private void g(b bVar) {
        int i = bVar.f925b;
        int i2 = bVar.f927d + i;
        int i3 = i;
        byte b2 = -1;
        int i4 = 0;
        while (i < i2) {
            if (this.f924d.c(i) != null || h(i)) {
                if (b2 == 0) {
                    k(b(4, i3, i4, bVar.f926c));
                    i3 = i;
                    i4 = 0;
                }
                b2 = 1;
            } else {
                if (b2 == 1) {
                    r(b(4, i3, i4, bVar.f926c));
                    i3 = i;
                    i4 = 0;
                }
                b2 = 0;
            }
            i4++;
            i++;
        }
        if (i4 != bVar.f927d) {
            Object obj = bVar.f926c;
            a(bVar);
            bVar = b(4, i3, i4, obj);
        }
        if (b2 == 0) {
            k(bVar);
        } else {
            r(bVar);
        }
    }

    private boolean h(int i) {
        int size = this.f923c.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f923c.get(i2);
            int i3 = bVar.a;
            if (i3 == 8) {
                if (n(bVar.f927d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = bVar.f925b;
                int i5 = bVar.f927d + i4;
                while (i4 < i5) {
                    if (n(i4, i2 + 1) == i) {
                        return true;
                    }
                    i4++;
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void k(b bVar) {
        int i;
        int i2 = bVar.a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iV = v(bVar.f925b, i2);
        int i3 = bVar.f925b;
        int i4 = bVar.a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < bVar.f927d; i6++) {
            int iV2 = v(bVar.f925b + (i * i6), bVar.a);
            int i7 = bVar.a;
            if (i7 == 2 ? iV2 == iV : i7 == 4 && iV2 == iV + 1) {
                i5++;
            } else {
                b bVarB = b(bVar.a, iV, i5, bVar.f926c);
                l(bVarB, i3);
                a(bVarB);
                if (bVar.a == 4) {
                    i3 += i5;
                }
                iV = iV2;
                i5 = 1;
            }
        }
        Object obj = bVar.f926c;
        a(bVar);
        if (i5 > 0) {
            b bVarB2 = b(bVar.a, iV, i5, obj);
            l(bVarB2, i3);
            a(bVarB2);
        }
    }

    private void r(b bVar) {
        this.f923c.add(bVar);
        int i = bVar.a;
        if (i == 1) {
            this.f924d.g(bVar.f925b, bVar.f927d);
            return;
        }
        if (i == 2) {
            this.f924d.e(bVar.f925b, bVar.f927d);
            return;
        }
        if (i == 4) {
            this.f924d.h(bVar.f925b, bVar.f927d, bVar.f926c);
        } else {
            if (i == 8) {
                this.f924d.a(bVar.f925b, bVar.f927d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    private int v(int i, int i2) {
        for (int size = this.f923c.size() - 1; size >= 0; size--) {
            b bVar = this.f923c.get(size);
            int i3 = bVar.a;
            if (i3 == 8) {
                int i4 = bVar.f925b;
                int i5 = bVar.f927d;
                if (i4 >= i5) {
                    i5 = i4;
                    i4 = i5;
                }
                if (i < i4 || i > i5) {
                    int i6 = bVar.f925b;
                    if (i < i6) {
                        if (i2 == 1) {
                            bVar.f925b = i6 + 1;
                            bVar.f927d++;
                        } else if (i2 == 2) {
                            bVar.f925b = i6 - 1;
                            bVar.f927d--;
                        }
                    }
                } else {
                    int i7 = bVar.f925b;
                    if (i4 == i7) {
                        if (i2 == 1) {
                            bVar.f927d++;
                        } else if (i2 == 2) {
                            bVar.f927d--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            bVar.f925b = i7 + 1;
                        } else if (i2 == 2) {
                            bVar.f925b = i7 - 1;
                        }
                        i--;
                    }
                }
            } else {
                int i8 = bVar.f925b;
                if (i8 <= i) {
                    if (i3 == 1) {
                        i -= bVar.f927d;
                    } else if (i3 == 2) {
                        i += bVar.f927d;
                    }
                } else if (i2 == 1) {
                    bVar.f925b = i8 + 1;
                } else if (i2 == 2) {
                    bVar.f925b = i8 - 1;
                }
            }
        }
        for (int size2 = this.f923c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f923c.get(size2);
            if (bVar2.a == 8) {
                int i9 = bVar2.f927d;
                if (i9 == bVar2.f925b || i9 < 0) {
                    this.f923c.remove(size2);
                    a(bVar2);
                }
            } else if (bVar2.f927d <= 0) {
                this.f923c.remove(size2);
                a(bVar2);
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.h.a
    public void a(b bVar) {
        if (this.f) {
            return;
        }
        bVar.f926c = null;
        this.a.a(bVar);
    }

    @Override // androidx.recyclerview.widget.h.a
    public b b(int i, int i2, int i3, Object obj) {
        b bVarB = this.a.b();
        if (bVarB == null) {
            return new b(i, i2, i3, obj);
        }
        bVarB.a = i;
        bVarB.f925b = i2;
        bVarB.f927d = i3;
        bVarB.f926c = obj;
        return bVarB;
    }

    public int e(int i) {
        int size = this.f922b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f922b.get(i2);
            int i3 = bVar.a;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = bVar.f925b;
                    if (i4 <= i) {
                        int i5 = bVar.f927d;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = bVar.f925b;
                    if (i6 == i) {
                        i = bVar.f927d;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (bVar.f927d <= i) {
                            i++;
                        }
                    }
                }
            } else if (bVar.f925b <= i) {
                i += bVar.f927d;
            }
        }
        return i;
    }

    void i() {
        int size = this.f923c.size();
        for (int i = 0; i < size; i++) {
            this.f924d.b(this.f923c.get(i));
        }
        t(this.f923c);
        this.h = 0;
    }

    void j() {
        i();
        int size = this.f922b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f922b.get(i);
            int i2 = bVar.a;
            if (i2 == 1) {
                this.f924d.b(bVar);
                this.f924d.g(bVar.f925b, bVar.f927d);
            } else if (i2 == 2) {
                this.f924d.b(bVar);
                this.f924d.d(bVar.f925b, bVar.f927d);
            } else if (i2 == 4) {
                this.f924d.b(bVar);
                this.f924d.h(bVar.f925b, bVar.f927d, bVar.f926c);
            } else if (i2 == 8) {
                this.f924d.b(bVar);
                this.f924d.a(bVar.f925b, bVar.f927d);
            }
            Runnable runnable = this.e;
            if (runnable != null) {
                runnable.run();
            }
        }
        t(this.f922b);
        this.h = 0;
    }

    void l(b bVar, int i) {
        this.f924d.f(bVar);
        int i2 = bVar.a;
        if (i2 == 2) {
            this.f924d.d(i, bVar.f927d);
        } else {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f924d.h(i, bVar.f927d, bVar.f926c);
        }
    }

    int m(int i) {
        return n(i, 0);
    }

    int n(int i, int i2) {
        int size = this.f923c.size();
        while (i2 < size) {
            b bVar = this.f923c.get(i2);
            int i3 = bVar.a;
            if (i3 == 8) {
                int i4 = bVar.f925b;
                if (i4 == i) {
                    i = bVar.f927d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (bVar.f927d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = bVar.f925b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = bVar.f927d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += bVar.f927d;
                }
            }
            i2++;
        }
        return i;
    }

    boolean o(int i) {
        return (i & this.h) != 0;
    }

    boolean p() {
        return this.f922b.size() > 0;
    }

    boolean q() {
        return (this.f923c.isEmpty() || this.f922b.isEmpty()) ? false : true;
    }

    void s() {
        this.g.b(this.f922b);
        int size = this.f922b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f922b.get(i);
            int i2 = bVar.a;
            if (i2 == 1) {
                c(bVar);
            } else if (i2 == 2) {
                f(bVar);
            } else if (i2 == 4) {
                g(bVar);
            } else if (i2 == 8) {
                d(bVar);
            }
            Runnable runnable = this.e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f922b.clear();
    }

    void t(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(list.get(i));
        }
        list.clear();
    }

    void u() {
        t(this.f922b);
        t(this.f923c);
        this.h = 0;
    }

    a(InterfaceC0036a interfaceC0036a, boolean z) {
        this.a = new c.g.j.f(30);
        this.f922b = new ArrayList<>();
        this.f923c = new ArrayList<>();
        this.h = 0;
        this.f924d = interfaceC0036a;
        this.f = z;
        this.g = new h(this);
    }
}
