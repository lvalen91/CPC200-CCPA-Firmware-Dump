package c.e.b.k.m;

import c.e.b.k.d;
import c.e.b.k.e;
import c.e.b.k.m.f;
import c.e.b.k.m.p;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class n extends p {
    public f k;
    g l;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[p.b.values().length];
            a = iArr;
            try {
                iArr[p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public n(c.e.b.k.e eVar) {
        super(eVar);
        f fVar = new f(this);
        this.k = fVar;
        this.l = null;
        this.h.e = f.a.TOP;
        this.i.e = f.a.BOTTOM;
        fVar.e = f.a.BASELINE;
        this.f = 1;
    }

    @Override // c.e.b.k.m.p, c.e.b.k.m.d
    public void a(d dVar) {
        float f;
        float fT;
        float fT2;
        int i;
        int i2 = a.a[this.j.ordinal()];
        if (i2 == 1) {
            p(dVar);
        } else if (i2 == 2) {
            o(dVar);
        } else if (i2 == 3) {
            c.e.b.k.e eVar = this.f1163b;
            n(dVar, eVar.G, eVar.I, 1);
            return;
        }
        g gVar = this.e;
        if (gVar.f1152c && !gVar.j && this.f1165d == e.b.MATCH_CONSTRAINT) {
            c.e.b.k.e eVar2 = this.f1163b;
            int i3 = eVar2.o;
            if (i3 == 2) {
                c.e.b.k.e eVarI = eVar2.I();
                if (eVarI != null) {
                    if (eVarI.e.e.j) {
                        this.e.d((int) ((r7.g * this.f1163b.v) + 0.5f));
                    }
                }
            } else if (i3 == 3 && eVar2.f1138d.e.j) {
                int iU = eVar2.u();
                if (iU == -1) {
                    c.e.b.k.e eVar3 = this.f1163b;
                    f = eVar3.f1138d.e.g;
                    fT = eVar3.t();
                } else if (iU == 0) {
                    fT2 = r7.f1138d.e.g * this.f1163b.t();
                    i = (int) (fT2 + 0.5f);
                    this.e.d(i);
                } else if (iU != 1) {
                    i = 0;
                    this.e.d(i);
                } else {
                    c.e.b.k.e eVar4 = this.f1163b;
                    f = eVar4.f1138d.e.g;
                    fT = eVar4.t();
                }
                fT2 = f / fT;
                i = (int) (fT2 + 0.5f);
                this.e.d(i);
            }
        }
        f fVar = this.h;
        if (fVar.f1152c) {
            f fVar2 = this.i;
            if (fVar2.f1152c) {
                if (fVar.j && fVar2.j && this.e.j) {
                    return;
                }
                if (!this.e.j && this.f1165d == e.b.MATCH_CONSTRAINT) {
                    c.e.b.k.e eVar5 = this.f1163b;
                    if (eVar5.n == 0 && !eVar5.b0()) {
                        f fVar3 = this.h.l.get(0);
                        f fVar4 = this.i.l.get(0);
                        int i4 = fVar3.g;
                        f fVar5 = this.h;
                        int i5 = i4 + fVar5.f;
                        int i6 = fVar4.g + this.i.f;
                        fVar5.d(i5);
                        this.i.d(i6);
                        this.e.d(i6 - i5);
                        return;
                    }
                }
                if (!this.e.j && this.f1165d == e.b.MATCH_CONSTRAINT && this.a == 1 && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    f fVar6 = this.h.l.get(0);
                    int i7 = (this.i.l.get(0).g + this.i.f) - (fVar6.g + this.h.f);
                    g gVar2 = this.e;
                    int i8 = gVar2.m;
                    if (i7 < i8) {
                        gVar2.d(i7);
                    } else {
                        gVar2.d(i8);
                    }
                }
                if (this.e.j && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    f fVar7 = this.h.l.get(0);
                    f fVar8 = this.i.l.get(0);
                    int i9 = fVar7.g + this.h.f;
                    int i10 = fVar8.g + this.i.f;
                    float fM = this.f1163b.M();
                    if (fVar7 == fVar8) {
                        i9 = fVar7.g;
                        i10 = fVar8.g;
                        fM = 0.5f;
                    }
                    this.h.d((int) (i9 + 0.5f + (((i10 - i9) - this.e.g) * fM)));
                    this.i.d(this.h.g + this.e.g);
                }
            }
        }
    }

    @Override // c.e.b.k.m.p
    void d() {
        c.e.b.k.e eVarI;
        c.e.b.k.e eVarI2;
        c.e.b.k.e eVar = this.f1163b;
        if (eVar.a) {
            this.e.d(eVar.v());
        }
        if (!this.e.j) {
            this.f1165d = this.f1163b.O();
            if (this.f1163b.U()) {
                this.l = new c.e.b.k.m.a(this);
            }
            e.b bVar = this.f1165d;
            if (bVar != e.b.MATCH_CONSTRAINT) {
                if (bVar == e.b.MATCH_PARENT && (eVarI2 = this.f1163b.I()) != null && eVarI2.O() == e.b.FIXED) {
                    int iV = (eVarI2.v() - this.f1163b.G.e()) - this.f1163b.I.e();
                    b(this.h, eVarI2.e.h, this.f1163b.G.e());
                    b(this.i, eVarI2.e.i, -this.f1163b.I.e());
                    this.e.d(iV);
                    return;
                }
                if (this.f1165d == e.b.FIXED) {
                    this.e.d(this.f1163b.v());
                }
            }
        } else if (this.f1165d == e.b.MATCH_PARENT && (eVarI = this.f1163b.I()) != null && eVarI.O() == e.b.FIXED) {
            b(this.h, eVarI.e.h, this.f1163b.G.e());
            b(this.i, eVarI.e.i, -this.f1163b.I.e());
            return;
        }
        if (this.e.j) {
            c.e.b.k.e eVar2 = this.f1163b;
            if (eVar2.a) {
                c.e.b.k.d[] dVarArr = eVar2.N;
                if (dVarArr[2].f != null && dVarArr[3].f != null) {
                    if (eVar2.b0()) {
                        this.h.f = this.f1163b.N[2].e();
                        this.i.f = -this.f1163b.N[3].e();
                    } else {
                        f fVarH = h(this.f1163b.N[2]);
                        if (fVarH != null) {
                            b(this.h, fVarH, this.f1163b.N[2].e());
                        }
                        f fVarH2 = h(this.f1163b.N[3]);
                        if (fVarH2 != null) {
                            b(this.i, fVarH2, -this.f1163b.N[3].e());
                        }
                        this.h.f1151b = true;
                        this.i.f1151b = true;
                    }
                    if (this.f1163b.U()) {
                        b(this.k, this.h, this.f1163b.n());
                        return;
                    }
                    return;
                }
                c.e.b.k.e eVar3 = this.f1163b;
                c.e.b.k.d[] dVarArr2 = eVar3.N;
                if (dVarArr2[2].f != null) {
                    f fVarH3 = h(dVarArr2[2]);
                    if (fVarH3 != null) {
                        b(this.h, fVarH3, this.f1163b.N[2].e());
                        b(this.i, this.h, this.e.g);
                        if (this.f1163b.U()) {
                            b(this.k, this.h, this.f1163b.n());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (dVarArr2[3].f != null) {
                    f fVarH4 = h(dVarArr2[3]);
                    if (fVarH4 != null) {
                        b(this.i, fVarH4, -this.f1163b.N[3].e());
                        b(this.h, this.i, -this.e.g);
                    }
                    if (this.f1163b.U()) {
                        b(this.k, this.h, this.f1163b.n());
                        return;
                    }
                    return;
                }
                if (dVarArr2[4].f != null) {
                    f fVarH5 = h(dVarArr2[4]);
                    if (fVarH5 != null) {
                        b(this.k, fVarH5, 0);
                        b(this.h, this.k, -this.f1163b.n());
                        b(this.i, this.h, this.e.g);
                        return;
                    }
                    return;
                }
                if ((eVar3 instanceof c.e.b.k.h) || eVar3.I() == null || this.f1163b.m(d.b.CENTER).f != null) {
                    return;
                }
                b(this.h, this.f1163b.I().e.h, this.f1163b.T());
                b(this.i, this.h, this.e.g);
                if (this.f1163b.U()) {
                    b(this.k, this.h, this.f1163b.n());
                    return;
                }
                return;
            }
        }
        if (this.e.j || this.f1165d != e.b.MATCH_CONSTRAINT) {
            this.e.b(this);
        } else {
            c.e.b.k.e eVar4 = this.f1163b;
            int i = eVar4.o;
            if (i == 2) {
                c.e.b.k.e eVarI3 = eVar4.I();
                if (eVarI3 != null) {
                    g gVar = eVarI3.e.e;
                    this.e.l.add(gVar);
                    gVar.k.add(this.e);
                    g gVar2 = this.e;
                    gVar2.f1151b = true;
                    gVar2.k.add(this.h);
                    this.e.k.add(this.i);
                }
            } else if (i == 3 && !eVar4.b0()) {
                c.e.b.k.e eVar5 = this.f1163b;
                if (eVar5.n != 3) {
                    g gVar3 = eVar5.f1138d.e;
                    this.e.l.add(gVar3);
                    gVar3.k.add(this.e);
                    g gVar4 = this.e;
                    gVar4.f1151b = true;
                    gVar4.k.add(this.h);
                    this.e.k.add(this.i);
                }
            }
        }
        c.e.b.k.e eVar6 = this.f1163b;
        c.e.b.k.d[] dVarArr3 = eVar6.N;
        if (dVarArr3[2].f == null || dVarArr3[3].f == null) {
            c.e.b.k.e eVar7 = this.f1163b;
            c.e.b.k.d[] dVarArr4 = eVar7.N;
            if (dVarArr4[2].f != null) {
                f fVarH6 = h(dVarArr4[2]);
                if (fVarH6 != null) {
                    b(this.h, fVarH6, this.f1163b.N[2].e());
                    c(this.i, this.h, 1, this.e);
                    if (this.f1163b.U()) {
                        c(this.k, this.h, 1, this.l);
                    }
                    if (this.f1165d == e.b.MATCH_CONSTRAINT && this.f1163b.t() > CropImageView.DEFAULT_ASPECT_RATIO) {
                        l lVar = this.f1163b.f1138d;
                        if (lVar.f1165d == e.b.MATCH_CONSTRAINT) {
                            lVar.e.k.add(this.e);
                            this.e.l.add(this.f1163b.f1138d.e);
                            this.e.a = this;
                        }
                    }
                }
            } else if (dVarArr4[3].f != null) {
                f fVarH7 = h(dVarArr4[3]);
                if (fVarH7 != null) {
                    b(this.i, fVarH7, -this.f1163b.N[3].e());
                    c(this.h, this.i, -1, this.e);
                    if (this.f1163b.U()) {
                        c(this.k, this.h, 1, this.l);
                    }
                }
            } else if (dVarArr4[4].f != null) {
                f fVarH8 = h(dVarArr4[4]);
                if (fVarH8 != null) {
                    b(this.k, fVarH8, 0);
                    c(this.h, this.k, -1, this.l);
                    c(this.i, this.h, 1, this.e);
                }
            } else if (!(eVar7 instanceof c.e.b.k.h) && eVar7.I() != null) {
                b(this.h, this.f1163b.I().e.h, this.f1163b.T());
                c(this.i, this.h, 1, this.e);
                if (this.f1163b.U()) {
                    c(this.k, this.h, 1, this.l);
                }
                if (this.f1165d == e.b.MATCH_CONSTRAINT && this.f1163b.t() > CropImageView.DEFAULT_ASPECT_RATIO) {
                    l lVar2 = this.f1163b.f1138d;
                    if (lVar2.f1165d == e.b.MATCH_CONSTRAINT) {
                        lVar2.e.k.add(this.e);
                        this.e.l.add(this.f1163b.f1138d.e);
                        this.e.a = this;
                    }
                }
            }
        } else {
            if (eVar6.b0()) {
                this.h.f = this.f1163b.N[2].e();
                this.i.f = -this.f1163b.N[3].e();
            } else {
                f fVarH9 = h(this.f1163b.N[2]);
                f fVarH10 = h(this.f1163b.N[3]);
                fVarH9.b(this);
                fVarH10.b(this);
                this.j = p.b.CENTER;
            }
            if (this.f1163b.U()) {
                c(this.k, this.h, 1, this.l);
            }
        }
        if (this.e.l.size() == 0) {
            this.e.f1152c = true;
        }
    }

    @Override // c.e.b.k.m.p
    public void e() {
        f fVar = this.h;
        if (fVar.j) {
            this.f1163b.W0(fVar.g);
        }
    }

    @Override // c.e.b.k.m.p
    void f() {
        this.f1164c = null;
        this.h.c();
        this.i.c();
        this.k.c();
        this.e.c();
        this.g = false;
    }

    @Override // c.e.b.k.m.p
    boolean m() {
        return this.f1165d != e.b.MATCH_CONSTRAINT || this.f1163b.o == 0;
    }

    void q() {
        this.g = false;
        this.h.c();
        this.h.j = false;
        this.i.c();
        this.i.j = false;
        this.k.c();
        this.k.j = false;
        this.e.j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f1163b.r();
    }
}
