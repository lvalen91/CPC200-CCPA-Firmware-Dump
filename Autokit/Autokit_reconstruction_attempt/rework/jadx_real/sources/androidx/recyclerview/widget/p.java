package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class p {
    final c.d.g<RecyclerView.c0, a> a = new c.d.g<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final c.d.d<RecyclerView.c0> f987b = new c.d.d<>();

    static class a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        static c.g.j.e<a> f988d = new c.g.j.f(20);
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView.k.c f989b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        RecyclerView.k.c f990c;

        private a() {
        }

        static void a() {
            while (f988d.b() != null) {
            }
        }

        static a b() {
            a aVarB = f988d.b();
            return aVarB == null ? new a() : aVarB;
        }

        static void c(a aVar) {
            aVar.a = 0;
            aVar.f989b = null;
            aVar.f990c = null;
            f988d.a(aVar);
        }
    }

    interface b {
        void a(RecyclerView.c0 c0Var);

        void b(RecyclerView.c0 c0Var, RecyclerView.k.c cVar, RecyclerView.k.c cVar2);

        void c(RecyclerView.c0 c0Var, RecyclerView.k.c cVar, RecyclerView.k.c cVar2);

        void d(RecyclerView.c0 c0Var, RecyclerView.k.c cVar, RecyclerView.k.c cVar2);
    }

    p() {
    }

    private RecyclerView.k.c l(RecyclerView.c0 c0Var, int i) {
        a aVarM;
        RecyclerView.k.c cVar;
        int iF = this.a.f(c0Var);
        if (iF >= 0 && (aVarM = this.a.m(iF)) != null) {
            int i2 = aVarM.a;
            if ((i2 & i) != 0) {
                aVarM.a = (i ^ (-1)) & i2;
                if (i == 4) {
                    cVar = aVarM.f989b;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    cVar = aVarM.f990c;
                }
                if ((aVarM.a & 12) == 0) {
                    this.a.k(iF);
                    a.c(aVarM);
                }
                return cVar;
            }
        }
        return null;
    }

    void a(RecyclerView.c0 c0Var, RecyclerView.k.c cVar) {
        a aVarB = this.a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.a.put(c0Var, aVarB);
        }
        aVarB.a |= 2;
        aVarB.f989b = cVar;
    }

    void b(RecyclerView.c0 c0Var) {
        a aVarB = this.a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.a.put(c0Var, aVarB);
        }
        aVarB.a |= 1;
    }

    void c(long j, RecyclerView.c0 c0Var) {
        this.f987b.i(j, c0Var);
    }

    void d(RecyclerView.c0 c0Var, RecyclerView.k.c cVar) {
        a aVarB = this.a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.a.put(c0Var, aVarB);
        }
        aVarB.f990c = cVar;
        aVarB.a |= 8;
    }

    void e(RecyclerView.c0 c0Var, RecyclerView.k.c cVar) {
        a aVarB = this.a.get(c0Var);
        if (aVarB == null) {
            aVarB = a.b();
            this.a.put(c0Var, aVarB);
        }
        aVarB.f989b = cVar;
        aVarB.a |= 4;
    }

    void f() {
        this.a.clear();
        this.f987b.b();
    }

    RecyclerView.c0 g(long j) {
        return this.f987b.e(j);
    }

    boolean h(RecyclerView.c0 c0Var) {
        a aVar = this.a.get(c0Var);
        return (aVar == null || (aVar.a & 1) == 0) ? false : true;
    }

    boolean i(RecyclerView.c0 c0Var) {
        a aVar = this.a.get(c0Var);
        return (aVar == null || (aVar.a & 4) == 0) ? false : true;
    }

    void j() {
        a.a();
    }

    public void k(RecyclerView.c0 c0Var) {
        p(c0Var);
    }

    RecyclerView.k.c m(RecyclerView.c0 c0Var) {
        return l(c0Var, 8);
    }

    RecyclerView.k.c n(RecyclerView.c0 c0Var) {
        return l(c0Var, 4);
    }

    void o(b bVar) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            RecyclerView.c0 c0VarI = this.a.i(size);
            a aVarK = this.a.k(size);
            int i = aVarK.a;
            if ((i & 3) == 3) {
                bVar.a(c0VarI);
            } else if ((i & 1) != 0) {
                RecyclerView.k.c cVar = aVarK.f989b;
                if (cVar == null) {
                    bVar.a(c0VarI);
                } else {
                    bVar.c(c0VarI, cVar, aVarK.f990c);
                }
            } else if ((i & 14) == 14) {
                bVar.b(c0VarI, aVarK.f989b, aVarK.f990c);
            } else if ((i & 12) == 12) {
                bVar.d(c0VarI, aVarK.f989b, aVarK.f990c);
            } else if ((i & 4) != 0) {
                bVar.c(c0VarI, aVarK.f989b, null);
            } else if ((i & 8) != 0) {
                bVar.b(c0VarI, aVarK.f989b, aVarK.f990c);
            }
            a.c(aVarK);
        }
    }

    void p(RecyclerView.c0 c0Var) {
        a aVar = this.a.get(c0Var);
        if (aVar == null) {
            return;
        }
        aVar.a &= -2;
    }

    void q(RecyclerView.c0 c0Var) {
        int iL = this.f987b.l() - 1;
        while (true) {
            if (iL < 0) {
                break;
            }
            if (c0Var == this.f987b.m(iL)) {
                this.f987b.k(iL);
                break;
            }
            iL--;
        }
        a aVarRemove = this.a.remove(c0Var);
        if (aVarRemove != null) {
            a.c(aVarRemove);
        }
    }
}
