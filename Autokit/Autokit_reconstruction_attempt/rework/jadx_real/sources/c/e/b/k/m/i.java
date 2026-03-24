package c.e.b.k.m;

import c.e.b.k.d;
import c.e.b.k.e;
import c.e.b.k.m.b;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class i {
    public static o a(c.e.b.k.e eVar, int i, ArrayList<o> arrayList, o oVar) {
        int iB1;
        int i2 = i == 0 ? eVar.m0 : eVar.n0;
        if (i2 != -1 && (oVar == null || i2 != oVar.f1160b)) {
            int i3 = 0;
            while (true) {
                if (i3 >= arrayList.size()) {
                    break;
                }
                o oVar2 = arrayList.get(i3);
                if (oVar2.c() == i2) {
                    if (oVar != null) {
                        oVar.g(i, oVar2);
                        arrayList.remove(oVar);
                    }
                    oVar = oVar2;
                } else {
                    i3++;
                }
            }
        } else if (i2 != -1) {
            return oVar;
        }
        if (oVar == null) {
            if ((eVar instanceof c.e.b.k.i) && (iB1 = ((c.e.b.k.i) eVar).b1(i)) != -1) {
                int i4 = 0;
                while (true) {
                    if (i4 >= arrayList.size()) {
                        break;
                    }
                    o oVar3 = arrayList.get(i4);
                    if (oVar3.c() == iB1) {
                        oVar = oVar3;
                        break;
                    }
                    i4++;
                }
            }
            if (oVar == null) {
                oVar = new o(i);
            }
            arrayList.add(oVar);
        }
        if (oVar.a(eVar)) {
            if (eVar instanceof c.e.b.k.g) {
                c.e.b.k.g gVar = (c.e.b.k.g) eVar;
                gVar.a1().b(gVar.b1() == 0 ? 1 : 0, arrayList, oVar);
            }
            if (i == 0) {
                eVar.m0 = oVar.c();
                eVar.F.b(i, arrayList, oVar);
                eVar.H.b(i, arrayList, oVar);
            } else {
                eVar.n0 = oVar.c();
                eVar.G.b(i, arrayList, oVar);
                eVar.J.b(i, arrayList, oVar);
                eVar.I.b(i, arrayList, oVar);
            }
            eVar.M.b(i, arrayList, oVar);
        }
        return oVar;
    }

    private static o b(ArrayList<o> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            o oVar = arrayList.get(i2);
            if (i == oVar.f1160b) {
                return oVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:176:0x0343  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean c(c.e.b.k.f fVar, b.InterfaceC0049b interfaceC0049b) {
        o oVar;
        o oVar2;
        ArrayList<c.e.b.k.e> arrayListA1 = fVar.a1();
        int size = arrayListA1.size();
        for (int i = 0; i < size; i++) {
            c.e.b.k.e eVar = arrayListA1.get(i);
            if (!d(fVar.y(), fVar.O(), eVar.y(), eVar.O())) {
                return false;
            }
        }
        c.e.b.e eVar2 = fVar.u0;
        if (eVar2 != null) {
            eVar2.A++;
        }
        ArrayList arrayList = null;
        ArrayList<c.e.b.k.i> arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList<c.e.b.k.i> arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        for (int i2 = 0; i2 < size; i2++) {
            c.e.b.k.e eVar3 = arrayListA1.get(i2);
            if (!d(fVar.y(), fVar.O(), eVar3.y(), eVar3.O())) {
                c.e.b.k.f.A1(eVar3, interfaceC0049b, fVar.J0, b.a.k);
            }
            boolean z = eVar3 instanceof c.e.b.k.g;
            if (z) {
                c.e.b.k.g gVar = (c.e.b.k.g) eVar3;
                if (gVar.b1() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(gVar);
                }
                if (gVar.b1() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(gVar);
                }
            }
            if (eVar3 instanceof c.e.b.k.i) {
                if (eVar3 instanceof c.e.b.k.a) {
                    c.e.b.k.a aVar = (c.e.b.k.a) eVar3;
                    if (aVar.g1() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(aVar);
                    }
                    if (aVar.g1() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(aVar);
                    }
                } else {
                    c.e.b.k.i iVar = (c.e.b.k.i) eVar3;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(iVar);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(iVar);
                }
            }
            if (eVar3.F.f == null && eVar3.H.f == null && !z && !(eVar3 instanceof c.e.b.k.a)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(eVar3);
            }
            if (eVar3.G.f == null && eVar3.I.f == null && eVar3.J.f == null && !z && !(eVar3 instanceof c.e.b.k.a)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(eVar3);
            }
        }
        ArrayList<o> arrayList7 = new ArrayList<>();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                a((c.e.b.k.g) it.next(), 0, arrayList7, null);
            }
        }
        int i3 = 0;
        o oVar3 = null;
        if (arrayList2 != null) {
            for (c.e.b.k.i iVar2 : arrayList2) {
                o oVarA = a(iVar2, i3, arrayList7, oVar3);
                iVar2.a1(arrayList7, i3, oVarA);
                oVarA.b(arrayList7);
                i3 = 0;
                oVar3 = null;
            }
        }
        c.e.b.k.d dVarM = fVar.m(d.b.LEFT);
        if (dVarM.c() != null) {
            Iterator<c.e.b.k.d> it2 = dVarM.c().iterator();
            while (it2.hasNext()) {
                a(it2.next().f1132d, 0, arrayList7, null);
            }
        }
        c.e.b.k.d dVarM2 = fVar.m(d.b.RIGHT);
        if (dVarM2.c() != null) {
            Iterator<c.e.b.k.d> it3 = dVarM2.c().iterator();
            while (it3.hasNext()) {
                a(it3.next().f1132d, 0, arrayList7, null);
            }
        }
        c.e.b.k.d dVarM3 = fVar.m(d.b.CENTER);
        if (dVarM3.c() != null) {
            Iterator<c.e.b.k.d> it4 = dVarM3.c().iterator();
            while (it4.hasNext()) {
                a(it4.next().f1132d, 0, arrayList7, null);
            }
        }
        o oVar4 = null;
        if (arrayList5 != null) {
            Iterator it5 = arrayList5.iterator();
            while (it5.hasNext()) {
                a((c.e.b.k.e) it5.next(), 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                a((c.e.b.k.g) it6.next(), 1, arrayList7, null);
            }
        }
        if (arrayList4 != null) {
            for (c.e.b.k.i iVar3 : arrayList4) {
                o oVarA2 = a(iVar3, 1, arrayList7, oVar4);
                iVar3.a1(arrayList7, 1, oVarA2);
                oVarA2.b(arrayList7);
                oVar4 = null;
            }
        }
        c.e.b.k.d dVarM4 = fVar.m(d.b.TOP);
        if (dVarM4.c() != null) {
            Iterator<c.e.b.k.d> it7 = dVarM4.c().iterator();
            while (it7.hasNext()) {
                a(it7.next().f1132d, 1, arrayList7, null);
            }
        }
        c.e.b.k.d dVarM5 = fVar.m(d.b.BASELINE);
        if (dVarM5.c() != null) {
            Iterator<c.e.b.k.d> it8 = dVarM5.c().iterator();
            while (it8.hasNext()) {
                a(it8.next().f1132d, 1, arrayList7, null);
            }
        }
        c.e.b.k.d dVarM6 = fVar.m(d.b.BOTTOM);
        if (dVarM6.c() != null) {
            Iterator<c.e.b.k.d> it9 = dVarM6.c().iterator();
            while (it9.hasNext()) {
                a(it9.next().f1132d, 1, arrayList7, null);
            }
        }
        c.e.b.k.d dVarM7 = fVar.m(d.b.CENTER);
        if (dVarM7.c() != null) {
            Iterator<c.e.b.k.d> it10 = dVarM7.c().iterator();
            while (it10.hasNext()) {
                a(it10.next().f1132d, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            Iterator it11 = arrayList6.iterator();
            while (it11.hasNext()) {
                a((c.e.b.k.e) it11.next(), 1, arrayList7, null);
            }
        }
        for (int i4 = 0; i4 < size; i4++) {
            c.e.b.k.e eVar4 = arrayListA1.get(i4);
            if (eVar4.g0()) {
                o oVarB = b(arrayList7, eVar4.m0);
                o oVarB2 = b(arrayList7, eVar4.n0);
                if (oVarB != null && oVarB2 != null) {
                    oVarB.g(0, oVarB2);
                    oVarB2.i(2);
                    arrayList7.remove(oVarB);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (fVar.y() == e.b.WRAP_CONTENT) {
            oVar = null;
            int i5 = 0;
            for (o oVar5 : arrayList7) {
                if (oVar5.d() != 1) {
                    oVar5.h(false);
                    int iF = oVar5.f(fVar.t1(), 0);
                    if (iF > i5) {
                        oVar = oVar5;
                        i5 = iF;
                    }
                }
            }
            if (oVar != null) {
                fVar.z0(e.b.FIXED);
                fVar.U0(i5);
                oVar.h(true);
            } else {
                oVar = null;
            }
        }
        if (fVar.O() == e.b.WRAP_CONTENT) {
            o oVar6 = null;
            int i6 = 0;
            for (o oVar7 : arrayList7) {
                if (oVar7.d() != 0) {
                    oVar7.h(false);
                    int iF2 = oVar7.f(fVar.t1(), 1);
                    if (iF2 > i6) {
                        oVar6 = oVar7;
                        i6 = iF2;
                    }
                }
            }
            if (oVar6 != null) {
                fVar.Q0(e.b.FIXED);
                fVar.v0(i6);
                oVar6.h(true);
                oVar2 = oVar6;
            }
            return oVar == null || oVar2 != null;
        }
        oVar2 = null;
        if (oVar == null) {
        }
    }

    public static boolean d(e.b bVar, e.b bVar2, e.b bVar3, e.b bVar4) {
        return (bVar3 == e.b.FIXED || bVar3 == e.b.WRAP_CONTENT || (bVar3 == e.b.MATCH_PARENT && bVar != e.b.WRAP_CONTENT)) || (bVar4 == e.b.FIXED || bVar4 == e.b.WRAP_CONTENT || (bVar4 == e.b.MATCH_PARENT && bVar2 != e.b.WRAP_CONTENT));
    }
}
