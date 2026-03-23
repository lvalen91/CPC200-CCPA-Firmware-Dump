package androidx.recyclerview.widget;

import androidx.recyclerview.widget.C0468h;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
import p016c.p041g.p049j.C0624f;
import p016c.p041g.p049j.InterfaceC0623e;

/* JADX INFO: renamed from: androidx.recyclerview.widget.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0461a implements C0468h.a {

    /* JADX INFO: renamed from: a */
    private InterfaceC0623e<b> f2885a;

    /* JADX INFO: renamed from: b */
    final ArrayList<b> f2886b;

    /* JADX INFO: renamed from: c */
    final ArrayList<b> f2887c;

    /* JADX INFO: renamed from: d */
    final a f2888d;

    /* JADX INFO: renamed from: e */
    Runnable f2889e;

    /* JADX INFO: renamed from: f */
    final boolean f2890f;

    /* JADX INFO: renamed from: g */
    final C0468h f2891g;

    /* JADX INFO: renamed from: h */
    private int f2892h;

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$a */
    interface a {
        /* JADX INFO: renamed from: a */
        void mo3396a(int i, int i2);

        /* JADX INFO: renamed from: b */
        void mo3397b(b bVar);

        /* JADX INFO: renamed from: c */
        RecyclerView.AbstractC0431c0 mo3398c(int i);

        /* JADX INFO: renamed from: d */
        void mo3399d(int i, int i2);

        /* JADX INFO: renamed from: e */
        void mo3400e(int i, int i2);

        /* JADX INFO: renamed from: f */
        void mo3401f(b bVar);

        /* JADX INFO: renamed from: g */
        void mo3402g(int i, int i2);

        /* JADX INFO: renamed from: h */
        void mo3403h(int i, int i2, Object obj);
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.a$b */
    static class b {

        /* JADX INFO: renamed from: a */
        int f2893a;

        /* JADX INFO: renamed from: b */
        int f2894b;

        /* JADX INFO: renamed from: c */
        Object f2895c;

        /* JADX INFO: renamed from: d */
        int f2896d;

        b(int i, int i2, int i3, Object obj) {
            this.f2893a = i;
            this.f2894b = i2;
            this.f2896d = i3;
            this.f2895c = obj;
        }

        /* JADX INFO: renamed from: a */
        String m3798a() {
            int i = this.f2893a;
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
            int i = this.f2893a;
            if (i != bVar.f2893a) {
                return false;
            }
            if (i == 8 && Math.abs(this.f2896d - this.f2894b) == 1 && this.f2896d == bVar.f2894b && this.f2894b == bVar.f2896d) {
                return true;
            }
            if (this.f2896d != bVar.f2896d || this.f2894b != bVar.f2894b) {
                return false;
            }
            Object obj2 = this.f2895c;
            if (obj2 != null) {
                if (!obj2.equals(bVar.f2895c)) {
                    return false;
                }
            } else if (bVar.f2895c != null) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (((this.f2893a * 31) + this.f2894b) * 31) + this.f2896d;
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + m3798a() + ",s:" + this.f2894b + "c:" + this.f2896d + ",p:" + this.f2895c + "]";
        }
    }

    C0461a(a aVar) {
        this(aVar, false);
    }

    /* JADX INFO: renamed from: c */
    private void m3776c(b bVar) {
        m3782r(bVar);
    }

    /* JADX INFO: renamed from: d */
    private void m3777d(b bVar) {
        m3782r(bVar);
    }

    /* JADX INFO: renamed from: f */
    private void m3778f(b bVar) {
        boolean z;
        byte b2;
        int i = bVar.f2894b;
        int i2 = bVar.f2896d + i;
        byte b3 = -1;
        int i3 = i;
        int i4 = 0;
        while (i3 < i2) {
            if (this.f2888d.mo3398c(i3) != null || m3780h(i3)) {
                if (b3 == 0) {
                    m3781k(mo3785b(2, i, i4, null));
                    z = true;
                } else {
                    z = false;
                }
                b2 = 1;
            } else {
                if (b3 == 1) {
                    m3782r(mo3785b(2, i, i4, null));
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
        if (i4 != bVar.f2896d) {
            mo3784a(bVar);
            bVar = mo3785b(2, i, i4, null);
        }
        if (b3 == 0) {
            m3781k(bVar);
        } else {
            m3782r(bVar);
        }
    }

    /* JADX INFO: renamed from: g */
    private void m3779g(b bVar) {
        int i = bVar.f2894b;
        int i2 = bVar.f2896d + i;
        int i3 = i;
        byte b2 = -1;
        int i4 = 0;
        while (i < i2) {
            if (this.f2888d.mo3398c(i) != null || m3780h(i)) {
                if (b2 == 0) {
                    m3781k(mo3785b(4, i3, i4, bVar.f2895c));
                    i3 = i;
                    i4 = 0;
                }
                b2 = 1;
            } else {
                if (b2 == 1) {
                    m3782r(mo3785b(4, i3, i4, bVar.f2895c));
                    i3 = i;
                    i4 = 0;
                }
                b2 = 0;
            }
            i4++;
            i++;
        }
        if (i4 != bVar.f2896d) {
            Object obj = bVar.f2895c;
            mo3784a(bVar);
            bVar = mo3785b(4, i3, i4, obj);
        }
        if (b2 == 0) {
            m3781k(bVar);
        } else {
            m3782r(bVar);
        }
    }

    /* JADX INFO: renamed from: h */
    private boolean m3780h(int i) {
        int size = this.f2887c.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2887c.get(i2);
            int i3 = bVar.f2893a;
            if (i3 == 8) {
                if (m3791n(bVar.f2896d, i2 + 1) == i) {
                    return true;
                }
            } else if (i3 == 1) {
                int i4 = bVar.f2894b;
                int i5 = bVar.f2896d + i4;
                while (i4 < i5) {
                    if (m3791n(i4, i2 + 1) == i) {
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

    /* JADX INFO: renamed from: k */
    private void m3781k(b bVar) {
        int i;
        int i2 = bVar.f2893a;
        if (i2 == 1 || i2 == 8) {
            throw new IllegalArgumentException("should not dispatch add or move for pre layout");
        }
        int iM3783v = m3783v(bVar.f2894b, i2);
        int i3 = bVar.f2894b;
        int i4 = bVar.f2893a;
        if (i4 == 2) {
            i = 0;
        } else {
            if (i4 != 4) {
                throw new IllegalArgumentException("op should be remove or update." + bVar);
            }
            i = 1;
        }
        int i5 = 1;
        for (int i6 = 1; i6 < bVar.f2896d; i6++) {
            int iM3783v2 = m3783v(bVar.f2894b + (i * i6), bVar.f2893a);
            int i7 = bVar.f2893a;
            if (i7 == 2 ? iM3783v2 == iM3783v : i7 == 4 && iM3783v2 == iM3783v + 1) {
                i5++;
            } else {
                b bVarMo3785b = mo3785b(bVar.f2893a, iM3783v, i5, bVar.f2895c);
                m3789l(bVarMo3785b, i3);
                mo3784a(bVarMo3785b);
                if (bVar.f2893a == 4) {
                    i3 += i5;
                }
                iM3783v = iM3783v2;
                i5 = 1;
            }
        }
        Object obj = bVar.f2895c;
        mo3784a(bVar);
        if (i5 > 0) {
            b bVarMo3785b2 = mo3785b(bVar.f2893a, iM3783v, i5, obj);
            m3789l(bVarMo3785b2, i3);
            mo3784a(bVarMo3785b2);
        }
    }

    /* JADX INFO: renamed from: r */
    private void m3782r(b bVar) {
        this.f2887c.add(bVar);
        int i = bVar.f2893a;
        if (i == 1) {
            this.f2888d.mo3402g(bVar.f2894b, bVar.f2896d);
            return;
        }
        if (i == 2) {
            this.f2888d.mo3400e(bVar.f2894b, bVar.f2896d);
            return;
        }
        if (i == 4) {
            this.f2888d.mo3403h(bVar.f2894b, bVar.f2896d, bVar.f2895c);
        } else {
            if (i == 8) {
                this.f2888d.mo3396a(bVar.f2894b, bVar.f2896d);
                return;
            }
            throw new IllegalArgumentException("Unknown update op type for " + bVar);
        }
    }

    /* JADX INFO: renamed from: v */
    private int m3783v(int i, int i2) {
        for (int size = this.f2887c.size() - 1; size >= 0; size--) {
            b bVar = this.f2887c.get(size);
            int i3 = bVar.f2893a;
            if (i3 == 8) {
                int i4 = bVar.f2894b;
                int i5 = bVar.f2896d;
                if (i4 >= i5) {
                    i5 = i4;
                    i4 = i5;
                }
                if (i < i4 || i > i5) {
                    int i6 = bVar.f2894b;
                    if (i < i6) {
                        if (i2 == 1) {
                            bVar.f2894b = i6 + 1;
                            bVar.f2896d++;
                        } else if (i2 == 2) {
                            bVar.f2894b = i6 - 1;
                            bVar.f2896d--;
                        }
                    }
                } else {
                    int i7 = bVar.f2894b;
                    if (i4 == i7) {
                        if (i2 == 1) {
                            bVar.f2896d++;
                        } else if (i2 == 2) {
                            bVar.f2896d--;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            bVar.f2894b = i7 + 1;
                        } else if (i2 == 2) {
                            bVar.f2894b = i7 - 1;
                        }
                        i--;
                    }
                }
            } else {
                int i8 = bVar.f2894b;
                if (i8 <= i) {
                    if (i3 == 1) {
                        i -= bVar.f2896d;
                    } else if (i3 == 2) {
                        i += bVar.f2896d;
                    }
                } else if (i2 == 1) {
                    bVar.f2894b = i8 + 1;
                } else if (i2 == 2) {
                    bVar.f2894b = i8 - 1;
                }
            }
        }
        for (int size2 = this.f2887c.size() - 1; size2 >= 0; size2--) {
            b bVar2 = this.f2887c.get(size2);
            if (bVar2.f2893a == 8) {
                int i9 = bVar2.f2896d;
                if (i9 == bVar2.f2894b || i9 < 0) {
                    this.f2887c.remove(size2);
                    mo3784a(bVar2);
                }
            } else if (bVar2.f2896d <= 0) {
                this.f2887c.remove(size2);
                mo3784a(bVar2);
            }
        }
        return i;
    }

    @Override // androidx.recyclerview.widget.C0468h.a
    /* JADX INFO: renamed from: a */
    public void mo3784a(b bVar) {
        if (this.f2890f) {
            return;
        }
        bVar.f2895c = null;
        this.f2885a.mo4848a(bVar);
    }

    @Override // androidx.recyclerview.widget.C0468h.a
    /* JADX INFO: renamed from: b */
    public b mo3785b(int i, int i2, int i3, Object obj) {
        b bVarMo4849b = this.f2885a.mo4849b();
        if (bVarMo4849b == null) {
            return new b(i, i2, i3, obj);
        }
        bVarMo4849b.f2893a = i;
        bVarMo4849b.f2894b = i2;
        bVarMo4849b.f2896d = i3;
        bVarMo4849b.f2895c = obj;
        return bVarMo4849b;
    }

    /* JADX INFO: renamed from: e */
    public int m3786e(int i) {
        int size = this.f2886b.size();
        for (int i2 = 0; i2 < size; i2++) {
            b bVar = this.f2886b.get(i2);
            int i3 = bVar.f2893a;
            if (i3 != 1) {
                if (i3 == 2) {
                    int i4 = bVar.f2894b;
                    if (i4 <= i) {
                        int i5 = bVar.f2896d;
                        if (i4 + i5 > i) {
                            return -1;
                        }
                        i -= i5;
                    } else {
                        continue;
                    }
                } else if (i3 == 8) {
                    int i6 = bVar.f2894b;
                    if (i6 == i) {
                        i = bVar.f2896d;
                    } else {
                        if (i6 < i) {
                            i--;
                        }
                        if (bVar.f2896d <= i) {
                            i++;
                        }
                    }
                }
            } else if (bVar.f2894b <= i) {
                i += bVar.f2896d;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: i */
    void m3787i() {
        int size = this.f2887c.size();
        for (int i = 0; i < size; i++) {
            this.f2888d.mo3397b(this.f2887c.get(i));
        }
        m3796t(this.f2887c);
        this.f2892h = 0;
    }

    /* JADX INFO: renamed from: j */
    void m3788j() {
        m3787i();
        int size = this.f2886b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f2886b.get(i);
            int i2 = bVar.f2893a;
            if (i2 == 1) {
                this.f2888d.mo3397b(bVar);
                this.f2888d.mo3402g(bVar.f2894b, bVar.f2896d);
            } else if (i2 == 2) {
                this.f2888d.mo3397b(bVar);
                this.f2888d.mo3399d(bVar.f2894b, bVar.f2896d);
            } else if (i2 == 4) {
                this.f2888d.mo3397b(bVar);
                this.f2888d.mo3403h(bVar.f2894b, bVar.f2896d, bVar.f2895c);
            } else if (i2 == 8) {
                this.f2888d.mo3397b(bVar);
                this.f2888d.mo3396a(bVar.f2894b, bVar.f2896d);
            }
            Runnable runnable = this.f2889e;
            if (runnable != null) {
                runnable.run();
            }
        }
        m3796t(this.f2886b);
        this.f2892h = 0;
    }

    /* JADX INFO: renamed from: l */
    void m3789l(b bVar, int i) {
        this.f2888d.mo3401f(bVar);
        int i2 = bVar.f2893a;
        if (i2 == 2) {
            this.f2888d.mo3399d(i, bVar.f2896d);
        } else {
            if (i2 != 4) {
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
            }
            this.f2888d.mo3403h(i, bVar.f2896d, bVar.f2895c);
        }
    }

    /* JADX INFO: renamed from: m */
    int m3790m(int i) {
        return m3791n(i, 0);
    }

    /* JADX INFO: renamed from: n */
    int m3791n(int i, int i2) {
        int size = this.f2887c.size();
        while (i2 < size) {
            b bVar = this.f2887c.get(i2);
            int i3 = bVar.f2893a;
            if (i3 == 8) {
                int i4 = bVar.f2894b;
                if (i4 == i) {
                    i = bVar.f2896d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (bVar.f2896d <= i) {
                        i++;
                    }
                }
            } else {
                int i5 = bVar.f2894b;
                if (i5 > i) {
                    continue;
                } else if (i3 == 2) {
                    int i6 = bVar.f2896d;
                    if (i < i5 + i6) {
                        return -1;
                    }
                    i -= i6;
                } else if (i3 == 1) {
                    i += bVar.f2896d;
                }
            }
            i2++;
        }
        return i;
    }

    /* JADX INFO: renamed from: o */
    boolean m3792o(int i) {
        return (i & this.f2892h) != 0;
    }

    /* JADX INFO: renamed from: p */
    boolean m3793p() {
        return this.f2886b.size() > 0;
    }

    /* JADX INFO: renamed from: q */
    boolean m3794q() {
        return (this.f2887c.isEmpty() || this.f2886b.isEmpty()) ? false : true;
    }

    /* JADX INFO: renamed from: s */
    void m3795s() {
        this.f2891g.m3893b(this.f2886b);
        int size = this.f2886b.size();
        for (int i = 0; i < size; i++) {
            b bVar = this.f2886b.get(i);
            int i2 = bVar.f2893a;
            if (i2 == 1) {
                m3776c(bVar);
            } else if (i2 == 2) {
                m3778f(bVar);
            } else if (i2 == 4) {
                m3779g(bVar);
            } else if (i2 == 8) {
                m3777d(bVar);
            }
            Runnable runnable = this.f2889e;
            if (runnable != null) {
                runnable.run();
            }
        }
        this.f2886b.clear();
    }

    /* JADX INFO: renamed from: t */
    void m3796t(List<b> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            mo3784a(list.get(i));
        }
        list.clear();
    }

    /* JADX INFO: renamed from: u */
    void m3797u() {
        m3796t(this.f2886b);
        m3796t(this.f2887c);
        this.f2892h = 0;
    }

    C0461a(a aVar, boolean z) {
        this.f2885a = new C0624f(30);
        this.f2886b = new ArrayList<>();
        this.f2887c = new ArrayList<>();
        this.f2892h = 0;
        this.f2888d = aVar;
        this.f2890f = z;
        this.f2891g = new C0468h(this);
    }
}
