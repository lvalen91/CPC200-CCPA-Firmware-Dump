package c.e.b.k.m;

import c.e.b.k.d;
import c.e.b.k.e;
import c.e.b.k.m.f;
import c.e.b.k.m.p;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class l extends p {
    private static int[] k = new int[2];

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

    public l(c.e.b.k.e eVar) {
        super(eVar);
        this.h.e = f.a.LEFT;
        this.i.e = f.a.RIGHT;
        this.f = 0;
    }

    private void q(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6 && i7 <= i7) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else {
            if (i6 > i6 || i9 > i7) {
                return;
            }
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x02ec  */
    @Override // c.e.b.k.m.p, c.e.b.k.m.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
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
            n(dVar, eVar.F, eVar.H, 0);
            return;
        }
        if (!this.e.j && this.f1165d == e.b.MATCH_CONSTRAINT) {
            c.e.b.k.e eVar2 = this.f1163b;
            int i3 = eVar2.n;
            if (i3 == 2) {
                c.e.b.k.e eVarI = eVar2.I();
                if (eVarI != null) {
                    if (eVarI.f1138d.e.j) {
                        this.e.d((int) ((r0.g * this.f1163b.s) + 0.5f));
                    }
                }
            } else if (i3 == 3) {
                int i4 = eVar2.o;
                if (i4 == 0 || i4 == 3) {
                    c.e.b.k.e eVar3 = this.f1163b;
                    n nVar = eVar3.e;
                    f fVar = nVar.h;
                    f fVar2 = nVar.i;
                    boolean z = eVar3.F.f != null;
                    boolean z2 = this.f1163b.G.f != null;
                    boolean z3 = this.f1163b.H.f != null;
                    boolean z4 = this.f1163b.I.f != null;
                    int iU = this.f1163b.u();
                    if (z && z2 && z3 && z4) {
                        float fT3 = this.f1163b.t();
                        if (fVar.j && fVar2.j) {
                            f fVar3 = this.h;
                            if (fVar3.f1152c && this.i.f1152c) {
                                q(k, fVar3.l.get(0).g + this.h.f, this.i.l.get(0).g - this.i.f, fVar.g + fVar.f, fVar2.g - fVar2.f, fT3, iU);
                                this.e.d(k[0]);
                                this.f1163b.e.e.d(k[1]);
                                return;
                            }
                            return;
                        }
                        f fVar4 = this.h;
                        if (fVar4.j) {
                            f fVar5 = this.i;
                            if (fVar5.j) {
                                if (!fVar.f1152c || !fVar2.f1152c) {
                                    return;
                                }
                                q(k, fVar4.g + fVar4.f, fVar5.g - fVar5.f, fVar.l.get(0).g + fVar.f, fVar2.l.get(0).g - fVar2.f, fT3, iU);
                                this.e.d(k[0]);
                                this.f1163b.e.e.d(k[1]);
                            }
                        }
                        f fVar6 = this.h;
                        if (!fVar6.f1152c || !this.i.f1152c || !fVar.f1152c || !fVar2.f1152c) {
                            return;
                        }
                        q(k, fVar6.l.get(0).g + this.h.f, this.i.l.get(0).g - this.i.f, fVar.l.get(0).g + fVar.f, fVar2.l.get(0).g - fVar2.f, fT3, iU);
                        this.e.d(k[0]);
                        this.f1163b.e.e.d(k[1]);
                    } else if (z && z3) {
                        if (!this.h.f1152c || !this.i.f1152c) {
                            return;
                        }
                        float fT4 = this.f1163b.t();
                        int i5 = this.h.l.get(0).g + this.h.f;
                        int i6 = this.i.l.get(0).g - this.i.f;
                        if (iU == -1 || iU == 0) {
                            int iG = g(i6 - i5, 0);
                            int i7 = (int) ((iG * fT4) + 0.5f);
                            int iG2 = g(i7, 1);
                            if (i7 != iG2) {
                                iG = (int) ((iG2 / fT4) + 0.5f);
                            }
                            this.e.d(iG);
                            this.f1163b.e.e.d(iG2);
                        } else if (iU == 1) {
                            int iG3 = g(i6 - i5, 0);
                            int i8 = (int) ((iG3 / fT4) + 0.5f);
                            int iG4 = g(i8, 1);
                            if (i8 != iG4) {
                                iG3 = (int) ((iG4 * fT4) + 0.5f);
                            }
                            this.e.d(iG3);
                            this.f1163b.e.e.d(iG4);
                        }
                    } else if (z2 && z4) {
                        if (!fVar.f1152c || !fVar2.f1152c) {
                            return;
                        }
                        float fT5 = this.f1163b.t();
                        int i9 = fVar.l.get(0).g + fVar.f;
                        int i10 = fVar2.l.get(0).g - fVar2.f;
                        if (iU == -1) {
                            int iG5 = g(i10 - i9, 1);
                            int i11 = (int) ((iG5 / fT5) + 0.5f);
                            int iG6 = g(i11, 0);
                            if (i11 != iG6) {
                                iG5 = (int) ((iG6 * fT5) + 0.5f);
                            }
                            this.e.d(iG6);
                            this.f1163b.e.e.d(iG5);
                        } else if (iU == 0) {
                            int iG7 = g(i10 - i9, 1);
                            int i12 = (int) ((iG7 * fT5) + 0.5f);
                            int iG8 = g(i12, 0);
                            if (i12 != iG8) {
                                iG7 = (int) ((iG8 / fT5) + 0.5f);
                            }
                            this.e.d(iG8);
                            this.f1163b.e.e.d(iG7);
                        } else if (iU == 1) {
                        }
                    }
                } else {
                    int iU2 = eVar2.u();
                    if (iU2 == -1) {
                        c.e.b.k.e eVar4 = this.f1163b;
                        f = eVar4.e.e.g;
                        fT = eVar4.t();
                    } else if (iU2 == 0) {
                        fT2 = r0.e.e.g / this.f1163b.t();
                        i = (int) (fT2 + 0.5f);
                        this.e.d(i);
                    } else if (iU2 != 1) {
                        i = 0;
                        this.e.d(i);
                    } else {
                        c.e.b.k.e eVar5 = this.f1163b;
                        f = eVar5.e.e.g;
                        fT = eVar5.t();
                    }
                    fT2 = f * fT;
                    i = (int) (fT2 + 0.5f);
                    this.e.d(i);
                }
            }
        }
        f fVar7 = this.h;
        if (fVar7.f1152c) {
            f fVar8 = this.i;
            if (fVar8.f1152c) {
                if (fVar7.j && fVar8.j && this.e.j) {
                    return;
                }
                if (!this.e.j && this.f1165d == e.b.MATCH_CONSTRAINT) {
                    c.e.b.k.e eVar6 = this.f1163b;
                    if (eVar6.n == 0 && !eVar6.Z()) {
                        f fVar9 = this.h.l.get(0);
                        f fVar10 = this.i.l.get(0);
                        int i13 = fVar9.g;
                        f fVar11 = this.h;
                        int i14 = i13 + fVar11.f;
                        int i15 = fVar10.g + this.i.f;
                        fVar11.d(i14);
                        this.i.d(i15);
                        this.e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.e.j && this.f1165d == e.b.MATCH_CONSTRAINT && this.a == 1 && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    int iMin = Math.min((this.i.l.get(0).g + this.i.f) - (this.h.l.get(0).g + this.h.f), this.e.m);
                    c.e.b.k.e eVar7 = this.f1163b;
                    int i16 = eVar7.r;
                    int iMax = Math.max(eVar7.q, iMin);
                    if (i16 > 0) {
                        iMax = Math.min(i16, iMax);
                    }
                    this.e.d(iMax);
                }
                if (this.e.j) {
                    f fVar12 = this.h.l.get(0);
                    f fVar13 = this.i.l.get(0);
                    int i17 = fVar12.g + this.h.f;
                    int i18 = fVar13.g + this.i.f;
                    float fW = this.f1163b.w();
                    if (fVar12 == fVar13) {
                        i17 = fVar12.g;
                        i18 = fVar13.g;
                        fW = 0.5f;
                    }
                    this.h.d((int) (i17 + 0.5f + (((i18 - i17) - this.e.g) * fW)));
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
            this.e.d(eVar.R());
        }
        if (!this.e.j) {
            e.b bVarY = this.f1163b.y();
            this.f1165d = bVarY;
            if (bVarY != e.b.MATCH_CONSTRAINT) {
                if (bVarY == e.b.MATCH_PARENT && (((eVarI2 = this.f1163b.I()) != null && eVarI2.y() == e.b.FIXED) || eVarI2.y() == e.b.MATCH_PARENT)) {
                    int iR = (eVarI2.R() - this.f1163b.F.e()) - this.f1163b.H.e();
                    b(this.h, eVarI2.f1138d.h, this.f1163b.F.e());
                    b(this.i, eVarI2.f1138d.i, -this.f1163b.H.e());
                    this.e.d(iR);
                    return;
                }
                if (this.f1165d == e.b.FIXED) {
                    this.e.d(this.f1163b.R());
                }
            }
        } else if (this.f1165d == e.b.MATCH_PARENT && (((eVarI = this.f1163b.I()) != null && eVarI.y() == e.b.FIXED) || eVarI.y() == e.b.MATCH_PARENT)) {
            b(this.h, eVarI.f1138d.h, this.f1163b.F.e());
            b(this.i, eVarI.f1138d.i, -this.f1163b.H.e());
            return;
        }
        if (this.e.j) {
            c.e.b.k.e eVar2 = this.f1163b;
            if (eVar2.a) {
                c.e.b.k.d[] dVarArr = eVar2.N;
                if (dVarArr[0].f != null && dVarArr[1].f != null) {
                    if (eVar2.Z()) {
                        this.h.f = this.f1163b.N[0].e();
                        this.i.f = -this.f1163b.N[1].e();
                        return;
                    }
                    f fVarH = h(this.f1163b.N[0]);
                    if (fVarH != null) {
                        b(this.h, fVarH, this.f1163b.N[0].e());
                    }
                    f fVarH2 = h(this.f1163b.N[1]);
                    if (fVarH2 != null) {
                        b(this.i, fVarH2, -this.f1163b.N[1].e());
                    }
                    this.h.f1151b = true;
                    this.i.f1151b = true;
                    return;
                }
                c.e.b.k.e eVar3 = this.f1163b;
                c.e.b.k.d[] dVarArr2 = eVar3.N;
                if (dVarArr2[0].f != null) {
                    f fVarH3 = h(dVarArr2[0]);
                    if (fVarH3 != null) {
                        b(this.h, fVarH3, this.f1163b.N[0].e());
                        b(this.i, this.h, this.e.g);
                        return;
                    }
                    return;
                }
                if (dVarArr2[1].f != null) {
                    f fVarH4 = h(dVarArr2[1]);
                    if (fVarH4 != null) {
                        b(this.i, fVarH4, -this.f1163b.N[1].e());
                        b(this.h, this.i, -this.e.g);
                        return;
                    }
                    return;
                }
                if ((eVar3 instanceof c.e.b.k.h) || eVar3.I() == null || this.f1163b.m(d.b.CENTER).f != null) {
                    return;
                }
                b(this.h, this.f1163b.I().f1138d.h, this.f1163b.S());
                b(this.i, this.h, this.e.g);
                return;
            }
        }
        if (this.f1165d == e.b.MATCH_CONSTRAINT) {
            c.e.b.k.e eVar4 = this.f1163b;
            int i = eVar4.n;
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
            } else if (i == 3) {
                if (eVar4.o == 3) {
                    this.h.a = this;
                    this.i.a = this;
                    n nVar = eVar4.e;
                    nVar.h.a = this;
                    nVar.i.a = this;
                    this.e.a = this;
                    if (eVar4.b0()) {
                        this.e.l.add(this.f1163b.e.e);
                        this.f1163b.e.e.k.add(this.e);
                        n nVar2 = this.f1163b.e;
                        nVar2.e.a = this;
                        this.e.l.add(nVar2.h);
                        this.e.l.add(this.f1163b.e.i);
                        this.f1163b.e.h.k.add(this.e);
                        this.f1163b.e.i.k.add(this.e);
                    } else if (this.f1163b.Z()) {
                        this.f1163b.e.e.l.add(this.e);
                        this.e.k.add(this.f1163b.e.e);
                    } else {
                        this.f1163b.e.e.l.add(this.e);
                    }
                } else {
                    g gVar3 = eVar4.e.e;
                    this.e.l.add(gVar3);
                    gVar3.k.add(this.e);
                    this.f1163b.e.h.k.add(this.e);
                    this.f1163b.e.i.k.add(this.e);
                    g gVar4 = this.e;
                    gVar4.f1151b = true;
                    gVar4.k.add(this.h);
                    this.e.k.add(this.i);
                    this.h.l.add(this.e);
                    this.i.l.add(this.e);
                }
            }
        }
        c.e.b.k.e eVar5 = this.f1163b;
        c.e.b.k.d[] dVarArr3 = eVar5.N;
        if (dVarArr3[0].f != null && dVarArr3[1].f != null) {
            if (eVar5.Z()) {
                this.h.f = this.f1163b.N[0].e();
                this.i.f = -this.f1163b.N[1].e();
                return;
            }
            f fVarH5 = h(this.f1163b.N[0]);
            f fVarH6 = h(this.f1163b.N[1]);
            fVarH5.b(this);
            fVarH6.b(this);
            this.j = p.b.CENTER;
            return;
        }
        c.e.b.k.e eVar6 = this.f1163b;
        c.e.b.k.d[] dVarArr4 = eVar6.N;
        if (dVarArr4[0].f != null) {
            f fVarH7 = h(dVarArr4[0]);
            if (fVarH7 != null) {
                b(this.h, fVarH7, this.f1163b.N[0].e());
                c(this.i, this.h, 1, this.e);
                return;
            }
            return;
        }
        if (dVarArr4[1].f != null) {
            f fVarH8 = h(dVarArr4[1]);
            if (fVarH8 != null) {
                b(this.i, fVarH8, -this.f1163b.N[1].e());
                c(this.h, this.i, -1, this.e);
                return;
            }
            return;
        }
        if ((eVar6 instanceof c.e.b.k.h) || eVar6.I() == null) {
            return;
        }
        b(this.h, this.f1163b.I().f1138d.h, this.f1163b.S());
        c(this.i, this.h, 1, this.e);
    }

    @Override // c.e.b.k.m.p
    public void e() {
        f fVar = this.h;
        if (fVar.j) {
            this.f1163b.V0(fVar.g);
        }
    }

    @Override // c.e.b.k.m.p
    void f() {
        this.f1164c = null;
        this.h.c();
        this.i.c();
        this.e.c();
        this.g = false;
    }

    @Override // c.e.b.k.m.p
    boolean m() {
        return this.f1165d != e.b.MATCH_CONSTRAINT || this.f1163b.n == 0;
    }

    void r() {
        this.g = false;
        this.h.c();
        this.h.j = false;
        this.i.c();
        this.i.j = false;
        this.e.j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f1163b.r();
    }
}
