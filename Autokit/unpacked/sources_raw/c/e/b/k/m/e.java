package c.e.b.k.m;

import c.e.b.k.e;
import c.e.b.k.m.b;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e {
    private c.e.b.k.f a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private c.e.b.k.f f1150d;
    private b.InterfaceC0049b f;
    private b.a g;
    ArrayList<m> h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1148b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1149c = true;
    private ArrayList<p> e = new ArrayList<>();

    public e(c.e.b.k.f fVar) {
        new ArrayList();
        this.f = null;
        this.g = new b.a();
        this.h = new ArrayList<>();
        this.a = fVar;
        this.f1150d = fVar;
    }

    private void a(f fVar, int i, int i2, f fVar2, ArrayList<m> arrayList, m mVar) {
        p pVar = fVar.f1153d;
        if (pVar.f1164c == null) {
            c.e.b.k.f fVar3 = this.a;
            if (pVar == fVar3.f1138d || pVar == fVar3.e) {
                return;
            }
            if (mVar == null) {
                mVar = new m(pVar, i2);
                arrayList.add(mVar);
            }
            pVar.f1164c = mVar;
            mVar.a(pVar);
            for (d dVar : pVar.h.k) {
                if (dVar instanceof f) {
                    a((f) dVar, i, 0, fVar2, arrayList, mVar);
                }
            }
            for (d dVar2 : pVar.i.k) {
                if (dVar2 instanceof f) {
                    a((f) dVar2, i, 1, fVar2, arrayList, mVar);
                }
            }
            if (i == 1 && (pVar instanceof n)) {
                for (d dVar3 : ((n) pVar).k.k) {
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i, 2, fVar2, arrayList, mVar);
                    }
                }
            }
            for (f fVar4 : pVar.h.l) {
                if (fVar4 == fVar2) {
                    mVar.a = true;
                }
                a(fVar4, i, 0, fVar2, arrayList, mVar);
            }
            for (f fVar5 : pVar.i.l) {
                if (fVar5 == fVar2) {
                    mVar.a = true;
                }
                a(fVar5, i, 1, fVar2, arrayList, mVar);
            }
            if (i == 1 && (pVar instanceof n)) {
                Iterator<f> it = ((n) pVar).k.l.iterator();
                while (it.hasNext()) {
                    a(it.next(), i, 2, fVar2, arrayList, mVar);
                }
            }
        }
    }

    private boolean b(c.e.b.k.f fVar) {
        int iR;
        int iV;
        int i;
        for (c.e.b.k.e eVar : fVar.p0) {
            e.b[] bVarArr = eVar.Q;
            e.b bVar = bVarArr[0];
            e.b bVar2 = bVarArr[1];
            if (eVar.Q() == 8) {
                eVar.a = true;
            } else {
                if (eVar.s < 1.0f && bVar == e.b.MATCH_CONSTRAINT) {
                    eVar.n = 2;
                }
                if (eVar.v < 1.0f && bVar2 == e.b.MATCH_CONSTRAINT) {
                    eVar.o = 2;
                }
                if (eVar.t() > CropImageView.DEFAULT_ASPECT_RATIO) {
                    if (bVar == e.b.MATCH_CONSTRAINT && (bVar2 == e.b.WRAP_CONTENT || bVar2 == e.b.FIXED)) {
                        eVar.n = 3;
                    } else if (bVar2 == e.b.MATCH_CONSTRAINT && (bVar == e.b.WRAP_CONTENT || bVar == e.b.FIXED)) {
                        eVar.o = 3;
                    } else {
                        e.b bVar3 = e.b.MATCH_CONSTRAINT;
                        if (bVar == bVar3 && bVar2 == bVar3) {
                            if (eVar.n == 0) {
                                eVar.n = 3;
                            }
                            if (eVar.o == 0) {
                                eVar.o = 3;
                            }
                        }
                    }
                }
                if (bVar == e.b.MATCH_CONSTRAINT && eVar.n == 1 && (eVar.F.f == null || eVar.H.f == null)) {
                    bVar = e.b.WRAP_CONTENT;
                }
                e.b bVar4 = bVar;
                if (bVar2 == e.b.MATCH_CONSTRAINT && eVar.o == 1 && (eVar.G.f == null || eVar.I.f == null)) {
                    bVar2 = e.b.WRAP_CONTENT;
                }
                e.b bVar5 = bVar2;
                l lVar = eVar.f1138d;
                lVar.f1165d = bVar4;
                lVar.a = eVar.n;
                n nVar = eVar.e;
                nVar.f1165d = bVar5;
                nVar.a = eVar.o;
                if ((bVar4 == e.b.MATCH_PARENT || bVar4 == e.b.FIXED || bVar4 == e.b.WRAP_CONTENT) && (bVar5 == e.b.MATCH_PARENT || bVar5 == e.b.FIXED || bVar5 == e.b.WRAP_CONTENT)) {
                    int iR2 = eVar.R();
                    if (bVar4 == e.b.MATCH_PARENT) {
                        iR = (fVar.R() - eVar.F.g) - eVar.H.g;
                        bVar4 = e.b.FIXED;
                    } else {
                        iR = iR2;
                    }
                    int iV2 = eVar.v();
                    if (bVar5 == e.b.MATCH_PARENT) {
                        iV = (fVar.v() - eVar.G.g) - eVar.I.g;
                        bVar5 = e.b.FIXED;
                    } else {
                        iV = iV2;
                    }
                    l(eVar, bVar4, iR, bVar5, iV);
                    eVar.f1138d.e.d(eVar.R());
                    eVar.e.e.d(eVar.v());
                    eVar.a = true;
                } else {
                    if (bVar4 == e.b.MATCH_CONSTRAINT && (bVar5 == e.b.WRAP_CONTENT || bVar5 == e.b.FIXED)) {
                        int i2 = eVar.n;
                        if (i2 == 3) {
                            e.b bVar6 = e.b.WRAP_CONTENT;
                            if (bVar5 == bVar6) {
                                l(eVar, bVar6, 0, bVar6, 0);
                            }
                            int iV3 = eVar.v();
                            int i3 = (int) ((iV3 * eVar.U) + 0.5f);
                            e.b bVar7 = e.b.FIXED;
                            l(eVar, bVar7, i3, bVar7, iV3);
                            eVar.f1138d.e.d(eVar.R());
                            eVar.e.e.d(eVar.v());
                            eVar.a = true;
                        } else if (i2 == 1) {
                            l(eVar, e.b.WRAP_CONTENT, 0, bVar5, 0);
                            eVar.f1138d.e.m = eVar.R();
                        } else if (i2 == 2) {
                            e.b[] bVarArr2 = fVar.Q;
                            if (bVarArr2[0] == e.b.FIXED || bVarArr2[0] == e.b.MATCH_PARENT) {
                                l(eVar, e.b.FIXED, (int) ((eVar.s * fVar.R()) + 0.5f), bVar5, eVar.v());
                                eVar.f1138d.e.d(eVar.R());
                                eVar.e.e.d(eVar.v());
                                eVar.a = true;
                            }
                        } else {
                            c.e.b.k.d[] dVarArr = eVar.N;
                            if (dVarArr[0].f == null || dVarArr[1].f == null) {
                                l(eVar, e.b.WRAP_CONTENT, 0, bVar5, 0);
                                eVar.f1138d.e.d(eVar.R());
                                eVar.e.e.d(eVar.v());
                                eVar.a = true;
                            }
                        }
                    }
                    if (bVar5 == e.b.MATCH_CONSTRAINT && (bVar4 == e.b.WRAP_CONTENT || bVar4 == e.b.FIXED)) {
                        int i4 = eVar.o;
                        if (i4 == 3) {
                            e.b bVar8 = e.b.WRAP_CONTENT;
                            if (bVar4 == bVar8) {
                                l(eVar, bVar8, 0, bVar8, 0);
                            }
                            int iR3 = eVar.R();
                            float f = eVar.U;
                            if (eVar.u() == -1) {
                                f = 1.0f / f;
                            }
                            e.b bVar9 = e.b.FIXED;
                            l(eVar, bVar9, iR3, bVar9, (int) ((iR3 * f) + 0.5f));
                            eVar.f1138d.e.d(eVar.R());
                            eVar.e.e.d(eVar.v());
                            eVar.a = true;
                        } else if (i4 == 1) {
                            l(eVar, bVar4, 0, e.b.WRAP_CONTENT, 0);
                            eVar.e.e.m = eVar.v();
                        } else if (i4 == 2) {
                            e.b[] bVarArr3 = fVar.Q;
                            if (bVarArr3[1] == e.b.FIXED || bVarArr3[1] == e.b.MATCH_PARENT) {
                                l(eVar, bVar4, eVar.R(), e.b.FIXED, (int) ((eVar.v * fVar.v()) + 0.5f));
                                eVar.f1138d.e.d(eVar.R());
                                eVar.e.e.d(eVar.v());
                                eVar.a = true;
                            }
                        } else {
                            c.e.b.k.d[] dVarArr2 = eVar.N;
                            if (dVarArr2[2].f == null || dVarArr2[3].f == null) {
                                l(eVar, e.b.WRAP_CONTENT, 0, bVar5, 0);
                                eVar.f1138d.e.d(eVar.R());
                                eVar.e.e.d(eVar.v());
                                eVar.a = true;
                            }
                        }
                    }
                    e.b bVar10 = e.b.MATCH_CONSTRAINT;
                    if (bVar4 == bVar10 && bVar5 == bVar10) {
                        int i5 = eVar.n;
                        if (i5 == 1 || (i = eVar.o) == 1) {
                            e.b bVar11 = e.b.WRAP_CONTENT;
                            l(eVar, bVar11, 0, bVar11, 0);
                            eVar.f1138d.e.m = eVar.R();
                            eVar.e.e.m = eVar.v();
                        } else if (i == 2 && i5 == 2) {
                            e.b[] bVarArr4 = fVar.Q;
                            e.b bVar12 = bVarArr4[0];
                            e.b bVar13 = e.b.FIXED;
                            if (bVar12 == bVar13 || bVarArr4[0] == bVar13) {
                                e.b[] bVarArr5 = fVar.Q;
                                e.b bVar14 = bVarArr5[1];
                                e.b bVar15 = e.b.FIXED;
                                if (bVar14 == bVar15 || bVarArr5[1] == bVar15) {
                                    float f2 = eVar.s;
                                    int iV4 = (int) ((eVar.v * fVar.v()) + 0.5f);
                                    e.b bVar16 = e.b.FIXED;
                                    l(eVar, bVar16, (int) ((f2 * fVar.R()) + 0.5f), bVar16, iV4);
                                    eVar.f1138d.e.d(eVar.R());
                                    eVar.e.e.d(eVar.v());
                                    eVar.a = true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int e(c.e.b.k.f fVar, int i) {
        int size = this.h.size();
        long jMax = 0;
        for (int i2 = 0; i2 < size; i2++) {
            jMax = Math.max(jMax, this.h.get(i2).b(fVar, i));
        }
        return (int) jMax;
    }

    private void i(p pVar, int i, ArrayList<m> arrayList) {
        for (d dVar : pVar.h.k) {
            if (dVar instanceof f) {
                a((f) dVar, i, 0, pVar.i, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).h, i, 0, pVar.i, arrayList, null);
            }
        }
        for (d dVar2 : pVar.i.k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i, 1, pVar.h, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).i, i, 1, pVar.h, arrayList, null);
            }
        }
        if (i == 1) {
            for (d dVar3 : ((n) pVar).k.k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i, 2, null, arrayList, null);
                }
            }
        }
    }

    private void l(c.e.b.k.e eVar, e.b bVar, int i, e.b bVar2, int i2) {
        b.a aVar = this.g;
        aVar.a = bVar;
        aVar.f1145b = bVar2;
        aVar.f1146c = i;
        aVar.f1147d = i2;
        this.f.a(eVar, aVar);
        eVar.U0(this.g.e);
        eVar.v0(this.g.f);
        eVar.u0(this.g.h);
        eVar.k0(this.g.g);
    }

    public void c() {
        d(this.e);
        this.h.clear();
        m.f1157d = 0;
        i(this.a.f1138d, 0, this.h);
        i(this.a.e, 1, this.h);
        this.f1148b = false;
    }

    public void d(ArrayList<p> arrayList) {
        arrayList.clear();
        this.f1150d.f1138d.f();
        this.f1150d.e.f();
        arrayList.add(this.f1150d.f1138d);
        arrayList.add(this.f1150d.e);
        HashSet hashSet = null;
        for (c.e.b.k.e eVar : this.f1150d.p0) {
            if (eVar instanceof c.e.b.k.g) {
                arrayList.add(new j(eVar));
            } else {
                if (eVar.Z()) {
                    if (eVar.f1136b == null) {
                        eVar.f1136b = new c(eVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f1136b);
                } else {
                    arrayList.add(eVar.f1138d);
                }
                if (eVar.b0()) {
                    if (eVar.f1137c == null) {
                        eVar.f1137c = new c(eVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f1137c);
                } else {
                    arrayList.add(eVar.e);
                }
                if (eVar instanceof c.e.b.k.i) {
                    arrayList.add(new k(eVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<p> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        for (p pVar : arrayList) {
            if (pVar.f1163b != this.f1150d) {
                pVar.d();
            }
        }
    }

    public boolean f(boolean z) {
        boolean z2;
        boolean z3 = true;
        boolean z4 = z & true;
        if (this.f1148b || this.f1149c) {
            for (c.e.b.k.e eVar : this.a.p0) {
                eVar.l();
                eVar.a = false;
                eVar.f1138d.r();
                eVar.e.q();
            }
            this.a.l();
            c.e.b.k.f fVar = this.a;
            fVar.a = false;
            fVar.f1138d.r();
            this.a.e.q();
            this.f1149c = false;
        }
        if (b(this.f1150d)) {
            return false;
        }
        this.a.V0(0);
        this.a.W0(0);
        e.b bVarS = this.a.s(0);
        e.b bVarS2 = this.a.s(1);
        if (this.f1148b) {
            c();
        }
        int iS = this.a.S();
        int iT = this.a.T();
        this.a.f1138d.h.d(iS);
        this.a.e.h.d(iT);
        m();
        e.b bVar = e.b.WRAP_CONTENT;
        if (bVarS == bVar || bVarS2 == bVar) {
            if (z4) {
                Iterator<p> it = this.e.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (!it.next().m()) {
                        z4 = false;
                        break;
                    }
                }
            }
            if (z4 && bVarS == e.b.WRAP_CONTENT) {
                this.a.z0(e.b.FIXED);
                c.e.b.k.f fVar2 = this.a;
                fVar2.U0(e(fVar2, 0));
                c.e.b.k.f fVar3 = this.a;
                fVar3.f1138d.e.d(fVar3.R());
            }
            if (z4 && bVarS2 == e.b.WRAP_CONTENT) {
                this.a.Q0(e.b.FIXED);
                c.e.b.k.f fVar4 = this.a;
                fVar4.v0(e(fVar4, 1));
                c.e.b.k.f fVar5 = this.a;
                fVar5.e.e.d(fVar5.v());
            }
        }
        e.b[] bVarArr = this.a.Q;
        if (bVarArr[0] == e.b.FIXED || bVarArr[0] == e.b.MATCH_PARENT) {
            int iR = this.a.R() + iS;
            this.a.f1138d.i.d(iR);
            this.a.f1138d.e.d(iR - iS);
            m();
            e.b[] bVarArr2 = this.a.Q;
            if (bVarArr2[1] == e.b.FIXED || bVarArr2[1] == e.b.MATCH_PARENT) {
                int iV = this.a.v() + iT;
                this.a.e.i.d(iV);
                this.a.e.e.d(iV - iT);
            }
            m();
            z2 = true;
        } else {
            z2 = false;
        }
        for (p pVar : this.e) {
            if (pVar.f1163b != this.a || pVar.g) {
                pVar.e();
            }
        }
        for (p pVar2 : this.e) {
            if (z2 || pVar2.f1163b != this.a) {
                if (!pVar2.h.j || ((!pVar2.i.j && !(pVar2 instanceof j)) || (!pVar2.e.j && !(pVar2 instanceof c) && !(pVar2 instanceof j)))) {
                    z3 = false;
                    break;
                }
            }
        }
        this.a.z0(bVarS);
        this.a.Q0(bVarS2);
        return z3;
    }

    public boolean g(boolean z) {
        if (this.f1148b) {
            for (c.e.b.k.e eVar : this.a.p0) {
                eVar.l();
                eVar.a = false;
                l lVar = eVar.f1138d;
                lVar.e.j = false;
                lVar.g = false;
                lVar.r();
                n nVar = eVar.e;
                nVar.e.j = false;
                nVar.g = false;
                nVar.q();
            }
            this.a.l();
            c.e.b.k.f fVar = this.a;
            fVar.a = false;
            l lVar2 = fVar.f1138d;
            lVar2.e.j = false;
            lVar2.g = false;
            lVar2.r();
            n nVar2 = this.a.e;
            nVar2.e.j = false;
            nVar2.g = false;
            nVar2.q();
            c();
        }
        if (b(this.f1150d)) {
            return false;
        }
        this.a.V0(0);
        this.a.W0(0);
        this.a.f1138d.h.d(0);
        this.a.e.h.d(0);
        return true;
    }

    public boolean h(boolean z, int i) {
        boolean z2;
        e.b bVar;
        boolean z3 = true;
        boolean z4 = z & true;
        e.b bVarS = this.a.s(0);
        e.b bVarS2 = this.a.s(1);
        int iS = this.a.S();
        int iT = this.a.T();
        if (z4 && (bVarS == (bVar = e.b.WRAP_CONTENT) || bVarS2 == bVar)) {
            Iterator<p> it = this.e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                p next = it.next();
                if (next.f == i && !next.m()) {
                    z4 = false;
                    break;
                }
            }
            if (i == 0) {
                if (z4 && bVarS == e.b.WRAP_CONTENT) {
                    this.a.z0(e.b.FIXED);
                    c.e.b.k.f fVar = this.a;
                    fVar.U0(e(fVar, 0));
                    c.e.b.k.f fVar2 = this.a;
                    fVar2.f1138d.e.d(fVar2.R());
                }
            } else if (z4 && bVarS2 == e.b.WRAP_CONTENT) {
                this.a.Q0(e.b.FIXED);
                c.e.b.k.f fVar3 = this.a;
                fVar3.v0(e(fVar3, 1));
                c.e.b.k.f fVar4 = this.a;
                fVar4.e.e.d(fVar4.v());
            }
        }
        if (i == 0) {
            e.b[] bVarArr = this.a.Q;
            if (bVarArr[0] == e.b.FIXED || bVarArr[0] == e.b.MATCH_PARENT) {
                int iR = this.a.R() + iS;
                this.a.f1138d.i.d(iR);
                this.a.f1138d.e.d(iR - iS);
                z2 = true;
            }
            z2 = false;
        } else {
            e.b[] bVarArr2 = this.a.Q;
            if (bVarArr2[1] == e.b.FIXED || bVarArr2[1] == e.b.MATCH_PARENT) {
                int iV = this.a.v() + iT;
                this.a.e.i.d(iV);
                this.a.e.e.d(iV - iT);
                z2 = true;
            }
            z2 = false;
        }
        m();
        for (p pVar : this.e) {
            if (pVar.f == i && (pVar.f1163b != this.a || pVar.g)) {
                pVar.e();
            }
        }
        for (p pVar2 : this.e) {
            if (pVar2.f == i && (z2 || pVar2.f1163b != this.a)) {
                if (!pVar2.h.j || !pVar2.i.j || (!(pVar2 instanceof c) && !pVar2.e.j)) {
                    z3 = false;
                    break;
                }
            }
        }
        this.a.z0(bVarS);
        this.a.Q0(bVarS2);
        return z3;
    }

    public void j() {
        this.f1148b = true;
    }

    public void k() {
        this.f1149c = true;
    }

    public void m() {
        g gVar;
        for (c.e.b.k.e eVar : this.a.p0) {
            if (!eVar.a) {
                e.b[] bVarArr = eVar.Q;
                boolean z = false;
                e.b bVar = bVarArr[0];
                e.b bVar2 = bVarArr[1];
                int i = eVar.n;
                int i2 = eVar.o;
                boolean z2 = bVar == e.b.WRAP_CONTENT || (bVar == e.b.MATCH_CONSTRAINT && i == 1);
                if (bVar2 == e.b.WRAP_CONTENT || (bVar2 == e.b.MATCH_CONSTRAINT && i2 == 1)) {
                    z = true;
                }
                g gVar2 = eVar.f1138d.e;
                boolean z3 = gVar2.j;
                g gVar3 = eVar.e.e;
                boolean z4 = gVar3.j;
                if (z3 && z4) {
                    e.b bVar3 = e.b.FIXED;
                    l(eVar, bVar3, gVar2.g, bVar3, gVar3.g);
                    eVar.a = true;
                } else if (z3 && z) {
                    l(eVar, e.b.FIXED, eVar.f1138d.e.g, e.b.WRAP_CONTENT, eVar.e.e.g);
                    if (bVar2 == e.b.MATCH_CONSTRAINT) {
                        eVar.e.e.m = eVar.v();
                    } else {
                        eVar.e.e.d(eVar.v());
                        eVar.a = true;
                    }
                } else if (z4 && z2) {
                    l(eVar, e.b.WRAP_CONTENT, eVar.f1138d.e.g, e.b.FIXED, eVar.e.e.g);
                    if (bVar == e.b.MATCH_CONSTRAINT) {
                        eVar.f1138d.e.m = eVar.R();
                    } else {
                        eVar.f1138d.e.d(eVar.R());
                        eVar.a = true;
                    }
                }
                if (eVar.a && (gVar = eVar.e.l) != null) {
                    gVar.d(eVar.n());
                }
            }
        }
    }

    public void n(b.InterfaceC0049b interfaceC0049b) {
        this.f = interfaceC0049b;
    }
}
