package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;
import p016c.p032d.C0537d;
import p016c.p032d.C0540g;
import p016c.p041g.p049j.C0624f;
import p016c.p041g.p049j.InterfaceC0623e;

/* JADX INFO: renamed from: androidx.recyclerview.widget.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0476p {

    /* JADX INFO: renamed from: a */
    final C0540g<RecyclerView.AbstractC0431c0, a> f3044a = new C0540g<>();

    /* JADX INFO: renamed from: b */
    final C0537d<RecyclerView.AbstractC0431c0> f3045b = new C0537d<>();

    /* JADX INFO: renamed from: androidx.recyclerview.widget.p$a */
    static class a {

        /* JADX INFO: renamed from: d */
        static InterfaceC0623e<a> f3046d = new C0624f(20);

        /* JADX INFO: renamed from: a */
        int f3047a;

        /* JADX INFO: renamed from: b */
        RecyclerView.AbstractC0439k.c f3048b;

        /* JADX INFO: renamed from: c */
        RecyclerView.AbstractC0439k.c f3049c;

        private a() {
        }

        /* JADX INFO: renamed from: a */
        static void m3979a() {
            while (f3046d.mo4849b() != null) {
            }
        }

        /* JADX INFO: renamed from: b */
        static a m3980b() {
            a aVarMo4849b = f3046d.mo4849b();
            return aVarMo4849b == null ? new a() : aVarMo4849b;
        }

        /* JADX INFO: renamed from: c */
        static void m3981c(a aVar) {
            aVar.f3047a = 0;
            aVar.f3048b = null;
            aVar.f3049c = null;
            f3046d.mo4848a(aVar);
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.p$b */
    interface b {
        /* JADX INFO: renamed from: a */
        void mo3343a(RecyclerView.AbstractC0431c0 abstractC0431c0);

        /* JADX INFO: renamed from: b */
        void mo3344b(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar, RecyclerView.AbstractC0439k.c cVar2);

        /* JADX INFO: renamed from: c */
        void mo3345c(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar, RecyclerView.AbstractC0439k.c cVar2);

        /* JADX INFO: renamed from: d */
        void mo3346d(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar, RecyclerView.AbstractC0439k.c cVar2);
    }

    C0476p() {
    }

    /* JADX INFO: renamed from: l */
    private RecyclerView.AbstractC0439k.c m3962l(RecyclerView.AbstractC0431c0 abstractC0431c0, int i) {
        a aVarM4297m;
        RecyclerView.AbstractC0439k.c cVar;
        int iM4290f = this.f3044a.m4290f(abstractC0431c0);
        if (iM4290f >= 0 && (aVarM4297m = this.f3044a.m4297m(iM4290f)) != null) {
            int i2 = aVarM4297m.f3047a;
            if ((i2 & i) != 0) {
                aVarM4297m.f3047a = (i ^ (-1)) & i2;
                if (i == 4) {
                    cVar = aVarM4297m.f3048b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarM4297m.f3049c;
                }
                if ((aVarM4297m.f3047a & 12) == 0) {
                    this.f3044a.m4295k(iM4290f);
                    a.m3981c(aVarM4297m);
                }
                return cVar;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: a */
    void m3963a(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar) {
        a aVarM3980b = this.f3044a.get(abstractC0431c0);
        if (aVarM3980b == null) {
            aVarM3980b = a.m3980b();
            this.f3044a.put(abstractC0431c0, aVarM3980b);
        }
        aVarM3980b.f3047a |= 2;
        aVarM3980b.f3048b = cVar;
    }

    /* JADX INFO: renamed from: b */
    void m3964b(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        a aVarM3980b = this.f3044a.get(abstractC0431c0);
        if (aVarM3980b == null) {
            aVarM3980b = a.m3980b();
            this.f3044a.put(abstractC0431c0, aVarM3980b);
        }
        aVarM3980b.f3047a |= 1;
    }

    /* JADX INFO: renamed from: c */
    void m3965c(long j, RecyclerView.AbstractC0431c0 abstractC0431c0) {
        this.f3045b.m4262i(j, abstractC0431c0);
    }

    /* JADX INFO: renamed from: d */
    void m3966d(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar) {
        a aVarM3980b = this.f3044a.get(abstractC0431c0);
        if (aVarM3980b == null) {
            aVarM3980b = a.m3980b();
            this.f3044a.put(abstractC0431c0, aVarM3980b);
        }
        aVarM3980b.f3049c = cVar;
        aVarM3980b.f3047a |= 8;
    }

    /* JADX INFO: renamed from: e */
    void m3967e(RecyclerView.AbstractC0431c0 abstractC0431c0, RecyclerView.AbstractC0439k.c cVar) {
        a aVarM3980b = this.f3044a.get(abstractC0431c0);
        if (aVarM3980b == null) {
            aVarM3980b = a.m3980b();
            this.f3044a.put(abstractC0431c0, aVarM3980b);
        }
        aVarM3980b.f3048b = cVar;
        aVarM3980b.f3047a |= 4;
    }

    /* JADX INFO: renamed from: f */
    void m3968f() {
        this.f3044a.clear();
        this.f3045b.m4256b();
    }

    /* JADX INFO: renamed from: g */
    RecyclerView.AbstractC0431c0 m3969g(long j) {
        return this.f3045b.m4258e(j);
    }

    /* JADX INFO: renamed from: h */
    boolean m3970h(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        a aVar = this.f3044a.get(abstractC0431c0);
        return (aVar == null || (aVar.f3047a & 1) == 0) ? false : true;
    }

    /* JADX INFO: renamed from: i */
    boolean m3971i(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        a aVar = this.f3044a.get(abstractC0431c0);
        return (aVar == null || (aVar.f3047a & 4) == 0) ? false : true;
    }

    /* JADX INFO: renamed from: j */
    void m3972j() {
        a.m3979a();
    }

    /* JADX INFO: renamed from: k */
    public void m3973k(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        m3977p(abstractC0431c0);
    }

    /* JADX INFO: renamed from: m */
    RecyclerView.AbstractC0439k.c m3974m(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        return m3962l(abstractC0431c0, 8);
    }

    /* JADX INFO: renamed from: n */
    RecyclerView.AbstractC0439k.c m3975n(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        return m3962l(abstractC0431c0, 4);
    }

    /* JADX INFO: renamed from: o */
    void m3976o(b bVar) {
        for (int size = this.f3044a.size() - 1; size >= 0; size--) {
            RecyclerView.AbstractC0431c0 abstractC0431c0M4293i = this.f3044a.m4293i(size);
            a aVarM4295k = this.f3044a.m4295k(size);
            int i = aVarM4295k.f3047a;
            if ((i & 3) == 3) {
                bVar.mo3343a(abstractC0431c0M4293i);
            } else if ((i & 1) != 0) {
                RecyclerView.AbstractC0439k.c cVar = aVarM4295k.f3048b;
                if (cVar == null) {
                    bVar.mo3343a(abstractC0431c0M4293i);
                } else {
                    bVar.mo3345c(abstractC0431c0M4293i, cVar, aVarM4295k.f3049c);
                }
            } else if ((i & 14) == 14) {
                bVar.mo3344b(abstractC0431c0M4293i, aVarM4295k.f3048b, aVarM4295k.f3049c);
            } else if ((i & 12) == 12) {
                bVar.mo3346d(abstractC0431c0M4293i, aVarM4295k.f3048b, aVarM4295k.f3049c);
            } else if ((i & 4) != 0) {
                bVar.mo3345c(abstractC0431c0M4293i, aVarM4295k.f3048b, null);
            } else if ((i & 8) != 0) {
                bVar.mo3344b(abstractC0431c0M4293i, aVarM4295k.f3048b, aVarM4295k.f3049c);
            }
            a.m3981c(aVarM4295k);
        }
    }

    /* JADX INFO: renamed from: p */
    void m3977p(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        a aVar = this.f3044a.get(abstractC0431c0);
        if (aVar == null) {
            return;
        }
        aVar.f3047a &= -2;
    }

    /* JADX INFO: renamed from: q */
    void m3978q(RecyclerView.AbstractC0431c0 abstractC0431c0) {
        int iM4265l = this.f3045b.m4265l() - 1;
        while (true) {
            if (iM4265l < 0) {
                break;
            }
            if (abstractC0431c0 == this.f3045b.m4266m(iM4265l)) {
                this.f3045b.m4264k(iM4265l);
                break;
            }
            iM4265l--;
        }
        a aVarRemove = this.f3044a.remove(abstractC0431c0);
        if (aVarRemove != null) {
            a.m3981c(aVarRemove);
        }
    }
}
