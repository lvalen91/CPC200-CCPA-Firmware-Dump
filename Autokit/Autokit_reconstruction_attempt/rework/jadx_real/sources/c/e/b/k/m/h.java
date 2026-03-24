package c.e.b.k.m;

import c.e.b.k.d;
import c.e.b.k.e;
import c.e.b.k.m.b;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h {
    private static b.a a = new b.a();

    private static boolean a(c.e.b.k.e eVar) {
        e.b bVarY = eVar.y();
        e.b bVarO = eVar.O();
        c.e.b.k.f fVar = eVar.I() != null ? (c.e.b.k.f) eVar.I() : null;
        if (fVar != null) {
            fVar.y();
            e.b bVar = e.b.FIXED;
        }
        if (fVar != null) {
            fVar.O();
            e.b bVar2 = e.b.FIXED;
        }
        boolean z = bVarY == e.b.FIXED || bVarY == e.b.WRAP_CONTENT || (bVarY == e.b.MATCH_CONSTRAINT && eVar.n == 0 && eVar.U == CropImageView.DEFAULT_ASPECT_RATIO && eVar.V(0)) || eVar.e0();
        boolean z2 = bVarO == e.b.FIXED || bVarO == e.b.WRAP_CONTENT || (bVarO == e.b.MATCH_CONSTRAINT && eVar.o == 0 && eVar.U == CropImageView.DEFAULT_ASPECT_RATIO && eVar.V(1)) || eVar.f0();
        if (eVar.U <= CropImageView.DEFAULT_ASPECT_RATIO || !(z || z2)) {
            return z && z2;
        }
        return true;
    }

    private static void b(c.e.b.k.e eVar, b.InterfaceC0049b interfaceC0049b, boolean z) {
        c.e.b.k.d dVar;
        c.e.b.k.d dVar2;
        c.e.b.k.d dVar3;
        c.e.b.k.d dVar4;
        c.e.b.k.d dVar5;
        if (!(eVar instanceof c.e.b.k.f) && eVar.d0() && a(eVar)) {
            c.e.b.k.f.A1(eVar, interfaceC0049b, new b.a(), b.a.k);
        }
        c.e.b.k.d dVarM = eVar.m(d.b.LEFT);
        c.e.b.k.d dVarM2 = eVar.m(d.b.RIGHT);
        int iD = dVarM.d();
        int iD2 = dVarM2.d();
        if (dVarM.c() != null && dVarM.m()) {
            Iterator<c.e.b.k.d> it = dVarM.c().iterator();
            while (it.hasNext()) {
                c.e.b.k.d next = it.next();
                c.e.b.k.e eVar2 = next.f1132d;
                boolean zA = a(eVar2);
                if (eVar2.d0() && zA) {
                    c.e.b.k.f.A1(eVar2, interfaceC0049b, new b.a(), b.a.k);
                }
                if (eVar2.y() != e.b.MATCH_CONSTRAINT || zA) {
                    if (!eVar2.d0()) {
                        c.e.b.k.d dVar6 = eVar2.F;
                        if (next == dVar6 && eVar2.H.f == null) {
                            int iE = dVar6.e() + iD;
                            eVar2.p0(iE, eVar2.R() + iE);
                            b(eVar2, interfaceC0049b, z);
                        } else {
                            c.e.b.k.d dVar7 = eVar2.H;
                            if (next == dVar7 && eVar2.F.f == null) {
                                int iE2 = iD - dVar7.e();
                                eVar2.p0(iE2 - eVar2.R(), iE2);
                                b(eVar2, interfaceC0049b, z);
                            } else if (next == eVar2.F && (dVar3 = eVar2.H.f) != null && dVar3.m() && !eVar2.Z()) {
                                d(interfaceC0049b, eVar2, z);
                            }
                        }
                    }
                } else if (eVar2.y() == e.b.MATCH_CONSTRAINT && eVar2.r >= 0 && eVar2.q >= 0 && (eVar2.Q() == 8 || (eVar2.n == 0 && eVar2.t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                    if (!eVar2.Z() && !eVar2.c0()) {
                        if (((next == eVar2.F && (dVar5 = eVar2.H.f) != null && dVar5.m()) || (next == eVar2.H && (dVar4 = eVar2.F.f) != null && dVar4.m())) && !eVar2.Z()) {
                            e(eVar, interfaceC0049b, eVar2, z);
                        }
                    }
                }
            }
        }
        if ((eVar instanceof c.e.b.k.g) || dVarM2.c() == null || !dVarM2.m()) {
            return;
        }
        Iterator<c.e.b.k.d> it2 = dVarM2.c().iterator();
        while (it2.hasNext()) {
            c.e.b.k.d next2 = it2.next();
            c.e.b.k.e eVar3 = next2.f1132d;
            boolean zA2 = a(eVar3);
            if (eVar3.d0() && zA2) {
                c.e.b.k.f.A1(eVar3, interfaceC0049b, new b.a(), b.a.k);
            }
            boolean z2 = (next2 == eVar3.F && (dVar2 = eVar3.H.f) != null && dVar2.m()) || (next2 == eVar3.H && (dVar = eVar3.F.f) != null && dVar.m());
            if (eVar3.y() != e.b.MATCH_CONSTRAINT || zA2) {
                if (!eVar3.d0()) {
                    c.e.b.k.d dVar8 = eVar3.F;
                    if (next2 == dVar8 && eVar3.H.f == null) {
                        int iE3 = dVar8.e() + iD2;
                        eVar3.p0(iE3, eVar3.R() + iE3);
                        b(eVar3, interfaceC0049b, z);
                    } else {
                        c.e.b.k.d dVar9 = eVar3.H;
                        if (next2 == dVar9 && eVar3.F.f == null) {
                            int iE4 = iD2 - dVar9.e();
                            eVar3.p0(iE4 - eVar3.R(), iE4);
                            b(eVar3, interfaceC0049b, z);
                        } else if (z2 && !eVar3.Z()) {
                            d(interfaceC0049b, eVar3, z);
                        }
                    }
                }
            } else if (eVar3.y() == e.b.MATCH_CONSTRAINT && eVar3.r >= 0 && eVar3.q >= 0 && (eVar3.Q() == 8 || (eVar3.n == 0 && eVar3.t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                if (!eVar3.Z() && !eVar3.c0() && z2 && !eVar3.Z()) {
                    e(eVar, interfaceC0049b, eVar3, z);
                }
            }
        }
    }

    private static void c(c.e.b.k.a aVar, b.InterfaceC0049b interfaceC0049b, int i, boolean z) {
        if (aVar.c1()) {
            if (i == 0) {
                b(aVar, interfaceC0049b, z);
            } else {
                i(aVar, interfaceC0049b);
            }
        }
    }

    private static void d(b.InterfaceC0049b interfaceC0049b, c.e.b.k.e eVar, boolean z) {
        float fW = eVar.w();
        int iD = eVar.F.f.d();
        int iD2 = eVar.H.f.d();
        int iE = eVar.F.e() + iD;
        int iE2 = iD2 - eVar.H.e();
        if (iD == iD2) {
            fW = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iR = eVar.R();
        int i = (iD2 - iD) - iR;
        if (iD > iD2) {
            i = (iD - iD2) - iR;
        }
        int i2 = ((int) ((fW * i) + 0.5f)) + iD;
        int i3 = i2 + iR;
        if (iD > iD2) {
            i3 = i2 - iR;
        }
        eVar.p0(i2, i3);
        b(eVar, interfaceC0049b, z);
    }

    private static void e(c.e.b.k.e eVar, b.InterfaceC0049b interfaceC0049b, c.e.b.k.e eVar2, boolean z) {
        float fW = eVar2.w();
        int iD = eVar2.F.f.d() + eVar2.F.e();
        int iD2 = eVar2.H.f.d() - eVar2.H.e();
        if (iD2 >= iD) {
            int iR = eVar2.R();
            if (eVar2.Q() != 8) {
                int i = eVar2.n;
                if (i == 2) {
                    iR = (int) (eVar2.w() * 0.5f * (eVar instanceof c.e.b.k.f ? eVar.R() : eVar.I().R()));
                } else if (i == 0) {
                    iR = iD2 - iD;
                }
                iR = Math.max(eVar2.q, iR);
                int i2 = eVar2.r;
                if (i2 > 0) {
                    iR = Math.min(i2, iR);
                }
            }
            int i3 = iD + ((int) ((fW * ((iD2 - iD) - iR)) + 0.5f));
            eVar2.p0(i3, iR + i3);
            b(eVar2, interfaceC0049b, z);
        }
    }

    private static void f(b.InterfaceC0049b interfaceC0049b, c.e.b.k.e eVar) {
        float fM = eVar.M();
        int iD = eVar.G.f.d();
        int iD2 = eVar.I.f.d();
        int iE = eVar.G.e() + iD;
        int iE2 = iD2 - eVar.I.e();
        if (iD == iD2) {
            fM = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iV = eVar.v();
        int i = (iD2 - iD) - iV;
        if (iD > iD2) {
            i = (iD - iD2) - iV;
        }
        int i2 = (int) ((fM * i) + 0.5f);
        int i3 = iD + i2;
        int i4 = i3 + iV;
        if (iD > iD2) {
            i3 = iD - i2;
            i4 = i3 - iV;
        }
        eVar.s0(i3, i4);
        i(eVar, interfaceC0049b);
    }

    private static void g(c.e.b.k.e eVar, b.InterfaceC0049b interfaceC0049b, c.e.b.k.e eVar2) {
        float fM = eVar2.M();
        int iD = eVar2.G.f.d() + eVar2.G.e();
        int iD2 = eVar2.I.f.d() - eVar2.I.e();
        if (iD2 >= iD) {
            int iV = eVar2.v();
            if (eVar2.Q() != 8) {
                int i = eVar2.o;
                if (i == 2) {
                    iV = (int) (fM * 0.5f * (eVar instanceof c.e.b.k.f ? eVar.v() : eVar.I().v()));
                } else if (i == 0) {
                    iV = iD2 - iD;
                }
                iV = Math.max(eVar2.t, iV);
                int i2 = eVar2.u;
                if (i2 > 0) {
                    iV = Math.min(i2, iV);
                }
            }
            int i3 = iD + ((int) ((fM * ((iD2 - iD) - iV)) + 0.5f));
            eVar2.s0(i3, iV + i3);
            i(eVar2, interfaceC0049b);
        }
    }

    public static void h(c.e.b.k.f fVar, b.InterfaceC0049b interfaceC0049b) {
        e.b bVarY = fVar.y();
        e.b bVarO = fVar.O();
        fVar.i0();
        ArrayList<c.e.b.k.e> arrayListA1 = fVar.a1();
        int size = arrayListA1.size();
        for (int i = 0; i < size; i++) {
            arrayListA1.get(i).i0();
        }
        boolean zX1 = fVar.x1();
        if (bVarY == e.b.FIXED) {
            fVar.p0(0, fVar.R());
        } else {
            fVar.q0(0);
        }
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            c.e.b.k.e eVar = arrayListA1.get(i2);
            if (eVar instanceof c.e.b.k.g) {
                c.e.b.k.g gVar = (c.e.b.k.g) eVar;
                if (gVar.b1() == 1) {
                    if (gVar.c1() != -1) {
                        gVar.f1(gVar.c1());
                    } else if (gVar.d1() != -1 && fVar.e0()) {
                        gVar.f1(fVar.R() - gVar.d1());
                    } else if (fVar.e0()) {
                        gVar.f1((int) ((gVar.e1() * fVar.R()) + 0.5f));
                    }
                    z = true;
                }
            } else if ((eVar instanceof c.e.b.k.a) && ((c.e.b.k.a) eVar).g1() == 0) {
                z2 = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                c.e.b.k.e eVar2 = arrayListA1.get(i3);
                if (eVar2 instanceof c.e.b.k.g) {
                    c.e.b.k.g gVar2 = (c.e.b.k.g) eVar2;
                    if (gVar2.b1() == 1) {
                        b(gVar2, interfaceC0049b, zX1);
                    }
                }
            }
        }
        b(fVar, interfaceC0049b, zX1);
        if (z2) {
            for (int i4 = 0; i4 < size; i4++) {
                c.e.b.k.e eVar3 = arrayListA1.get(i4);
                if (eVar3 instanceof c.e.b.k.a) {
                    c.e.b.k.a aVar = (c.e.b.k.a) eVar3;
                    if (aVar.g1() == 0) {
                        c(aVar, interfaceC0049b, 0, zX1);
                    }
                }
            }
        }
        if (bVarO == e.b.FIXED) {
            fVar.s0(0, fVar.v());
        } else {
            fVar.r0(0);
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            c.e.b.k.e eVar4 = arrayListA1.get(i5);
            if (eVar4 instanceof c.e.b.k.g) {
                c.e.b.k.g gVar3 = (c.e.b.k.g) eVar4;
                if (gVar3.b1() == 0) {
                    if (gVar3.c1() != -1) {
                        gVar3.f1(gVar3.c1());
                    } else if (gVar3.d1() != -1 && fVar.f0()) {
                        gVar3.f1(fVar.v() - gVar3.d1());
                    } else if (fVar.f0()) {
                        gVar3.f1((int) ((gVar3.e1() * fVar.v()) + 0.5f));
                    }
                    z3 = true;
                }
            } else if ((eVar4 instanceof c.e.b.k.a) && ((c.e.b.k.a) eVar4).g1() == 1) {
                z4 = true;
            }
        }
        if (z3) {
            for (int i6 = 0; i6 < size; i6++) {
                c.e.b.k.e eVar5 = arrayListA1.get(i6);
                if (eVar5 instanceof c.e.b.k.g) {
                    c.e.b.k.g gVar4 = (c.e.b.k.g) eVar5;
                    if (gVar4.b1() == 0) {
                        i(gVar4, interfaceC0049b);
                    }
                }
            }
        }
        i(fVar, interfaceC0049b);
        if (z4) {
            for (int i7 = 0; i7 < size; i7++) {
                c.e.b.k.e eVar6 = arrayListA1.get(i7);
                if (eVar6 instanceof c.e.b.k.a) {
                    c.e.b.k.a aVar2 = (c.e.b.k.a) eVar6;
                    if (aVar2.g1() == 1) {
                        c(aVar2, interfaceC0049b, 1, zX1);
                    }
                }
            }
        }
        for (int i8 = 0; i8 < size; i8++) {
            c.e.b.k.e eVar7 = arrayListA1.get(i8);
            if (eVar7.d0() && a(eVar7)) {
                c.e.b.k.f.A1(eVar7, interfaceC0049b, a, b.a.k);
                b(eVar7, interfaceC0049b, zX1);
                i(eVar7, interfaceC0049b);
            }
        }
    }

    private static void i(c.e.b.k.e eVar, b.InterfaceC0049b interfaceC0049b) {
        c.e.b.k.d dVar;
        c.e.b.k.d dVar2;
        c.e.b.k.d dVar3;
        c.e.b.k.d dVar4;
        c.e.b.k.d dVar5;
        if (!(eVar instanceof c.e.b.k.f) && eVar.d0() && a(eVar)) {
            c.e.b.k.f.A1(eVar, interfaceC0049b, new b.a(), b.a.k);
        }
        c.e.b.k.d dVarM = eVar.m(d.b.TOP);
        c.e.b.k.d dVarM2 = eVar.m(d.b.BOTTOM);
        int iD = dVarM.d();
        int iD2 = dVarM2.d();
        if (dVarM.c() != null && dVarM.m()) {
            Iterator<c.e.b.k.d> it = dVarM.c().iterator();
            while (it.hasNext()) {
                c.e.b.k.d next = it.next();
                c.e.b.k.e eVar2 = next.f1132d;
                boolean zA = a(eVar2);
                if (eVar2.d0() && zA) {
                    c.e.b.k.f.A1(eVar2, interfaceC0049b, new b.a(), b.a.k);
                }
                if (eVar2.O() != e.b.MATCH_CONSTRAINT || zA) {
                    if (!eVar2.d0()) {
                        c.e.b.k.d dVar6 = eVar2.G;
                        if (next == dVar6 && eVar2.I.f == null) {
                            int iE = dVar6.e() + iD;
                            eVar2.s0(iE, eVar2.v() + iE);
                            i(eVar2, interfaceC0049b);
                        } else {
                            c.e.b.k.d dVar7 = eVar2.I;
                            if (next == dVar7 && dVar7.f == null) {
                                int iE2 = iD - dVar7.e();
                                eVar2.s0(iE2 - eVar2.v(), iE2);
                                i(eVar2, interfaceC0049b);
                            } else if (next == eVar2.G && (dVar3 = eVar2.I.f) != null && dVar3.m()) {
                                f(interfaceC0049b, eVar2);
                            }
                        }
                    }
                } else if (eVar2.O() == e.b.MATCH_CONSTRAINT && eVar2.u >= 0 && eVar2.t >= 0 && (eVar2.Q() == 8 || (eVar2.o == 0 && eVar2.t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                    if (!eVar2.b0() && !eVar2.c0()) {
                        if (((next == eVar2.G && (dVar5 = eVar2.I.f) != null && dVar5.m()) || (next == eVar2.I && (dVar4 = eVar2.G.f) != null && dVar4.m())) && !eVar2.b0()) {
                            g(eVar, interfaceC0049b, eVar2);
                        }
                    }
                }
            }
        }
        if (eVar instanceof c.e.b.k.g) {
            return;
        }
        if (dVarM2.c() != null && dVarM2.m()) {
            Iterator<c.e.b.k.d> it2 = dVarM2.c().iterator();
            while (it2.hasNext()) {
                c.e.b.k.d next2 = it2.next();
                c.e.b.k.e eVar3 = next2.f1132d;
                boolean zA2 = a(eVar3);
                if (eVar3.d0() && zA2) {
                    c.e.b.k.f.A1(eVar3, interfaceC0049b, new b.a(), b.a.k);
                }
                boolean z = (next2 == eVar3.G && (dVar2 = eVar3.I.f) != null && dVar2.m()) || (next2 == eVar3.I && (dVar = eVar3.G.f) != null && dVar.m());
                if (eVar3.O() != e.b.MATCH_CONSTRAINT || zA2) {
                    if (!eVar3.d0()) {
                        c.e.b.k.d dVar8 = eVar3.G;
                        if (next2 == dVar8 && eVar3.I.f == null) {
                            int iE3 = dVar8.e() + iD2;
                            eVar3.s0(iE3, eVar3.v() + iE3);
                            i(eVar3, interfaceC0049b);
                        } else {
                            c.e.b.k.d dVar9 = eVar3.I;
                            if (next2 == dVar9 && eVar3.G.f == null) {
                                int iE4 = iD2 - dVar9.e();
                                eVar3.s0(iE4 - eVar3.v(), iE4);
                                i(eVar3, interfaceC0049b);
                            } else if (z && !eVar3.b0()) {
                                f(interfaceC0049b, eVar3);
                            }
                        }
                    }
                } else if (eVar3.O() == e.b.MATCH_CONSTRAINT && eVar3.u >= 0 && eVar3.t >= 0 && (eVar3.Q() == 8 || (eVar3.o == 0 && eVar3.t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                    if (!eVar3.b0() && !eVar3.c0() && z && !eVar3.b0()) {
                        g(eVar, interfaceC0049b, eVar3);
                    }
                }
            }
        }
        c.e.b.k.d dVarM3 = eVar.m(d.b.BASELINE);
        if (dVarM3.c() == null || !dVarM3.m()) {
            return;
        }
        int iD3 = dVarM3.d();
        for (c.e.b.k.d dVar10 : dVarM3.c()) {
            c.e.b.k.e eVar4 = dVar10.f1132d;
            boolean zA3 = a(eVar4);
            if (eVar4.d0() && zA3) {
                c.e.b.k.f.A1(eVar4, interfaceC0049b, new b.a(), b.a.k);
            }
            if (eVar4.O() != e.b.MATCH_CONSTRAINT || zA3) {
                if (!eVar4.d0() && dVar10 == eVar4.J) {
                    eVar4.o0(iD3);
                    i(eVar4, interfaceC0049b);
                }
            }
        }
    }
}
