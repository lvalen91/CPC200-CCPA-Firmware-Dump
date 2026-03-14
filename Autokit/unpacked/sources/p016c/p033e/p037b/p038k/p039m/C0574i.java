package p016c.p033e.p037b.p038k.p039m;

import java.util.ArrayList;
import java.util.Iterator;
import p016c.p033e.p037b.C0548e;
import p016c.p033e.p037b.p038k.C0554a;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0559f;
import p016c.p033e.p037b.p038k.C0560g;
import p016c.p033e.p037b.p038k.C0562i;
import p016c.p033e.p037b.p038k.p039m.C0567b;

/* JADX INFO: renamed from: c.e.b.k.m.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0574i {
    /* JADX INFO: renamed from: a */
    public static C0580o m4635a(C0558e c0558e, int i, ArrayList<C0580o> arrayList, C0580o c0580o) {
        int iM4586b1;
        int i2 = i == 0 ? c0558e.f3560m0 : c0558e.f3562n0;
        if (i2 != -1 && (c0580o == null || i2 != c0580o.f3674b)) {
            int i3 = 0;
            while (true) {
                if (i3 >= arrayList.size()) {
                    break;
                }
                C0580o c0580o2 = arrayList.get(i3);
                if (c0580o2.m4652c() == i2) {
                    if (c0580o != null) {
                        c0580o.m4655g(i, c0580o2);
                        arrayList.remove(c0580o);
                    }
                    c0580o = c0580o2;
                } else {
                    i3++;
                }
            }
        } else if (i2 != -1) {
            return c0580o;
        }
        if (c0580o == null) {
            if ((c0558e instanceof C0562i) && (iM4586b1 = ((C0562i) c0558e).m4586b1(i)) != -1) {
                int i4 = 0;
                while (true) {
                    if (i4 >= arrayList.size()) {
                        break;
                    }
                    C0580o c0580o3 = arrayList.get(i4);
                    if (c0580o3.m4652c() == iM4586b1) {
                        c0580o = c0580o3;
                        break;
                    }
                    i4++;
                }
            }
            if (c0580o == null) {
                c0580o = new C0580o(i);
            }
            arrayList.add(c0580o);
        }
        if (c0580o.m4650a(c0558e)) {
            if (c0558e instanceof C0560g) {
                C0560g c0560g = (C0560g) c0558e;
                c0560g.m4572a1().m4426b(c0560g.m4573b1() == 0 ? 1 : 0, arrayList, c0580o);
            }
            if (i == 0) {
                c0558e.f3560m0 = c0580o.m4652c();
                c0558e.f3514F.m4426b(i, arrayList, c0580o);
                c0558e.f3516H.m4426b(i, arrayList, c0580o);
            } else {
                c0558e.f3562n0 = c0580o.m4652c();
                c0558e.f3515G.m4426b(i, arrayList, c0580o);
                c0558e.f3518J.m4426b(i, arrayList, c0580o);
                c0558e.f3517I.m4426b(i, arrayList, c0580o);
            }
            c0558e.f3521M.m4426b(i, arrayList, c0580o);
        }
        return c0580o;
    }

    /* JADX INFO: renamed from: b */
    private static C0580o m4636b(ArrayList<C0580o> arrayList, int i) {
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0580o c0580o = arrayList.get(i2);
            if (i == c0580o.f3674b) {
                return c0580o;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:176:0x0343  */
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean m4637c(C0559f c0559f, C0567b.b bVar) {
        C0580o c0580o;
        C0580o c0580o2;
        ArrayList<C0558e> arrayListM4592a1 = c0559f.m4592a1();
        int size = arrayListM4592a1.size();
        for (int i = 0; i < size; i++) {
            C0558e c0558e = arrayListM4592a1.get(i);
            if (!m4638d(c0559f.m4537y(), c0559f.m4475O(), c0558e.m4537y(), c0558e.m4475O())) {
                return false;
            }
        }
        C0548e c0548e = c0559f.f3596u0;
        if (c0548e != null) {
            c0548e.f3392A++;
        }
        ArrayList arrayList = null;
        ArrayList<C0562i> arrayList2 = null;
        ArrayList arrayList3 = null;
        ArrayList<C0562i> arrayList4 = null;
        ArrayList arrayList5 = null;
        ArrayList arrayList6 = null;
        for (int i2 = 0; i2 < size; i2++) {
            C0558e c0558e2 = arrayListM4592a1.get(i2);
            if (!m4638d(c0559f.m4537y(), c0559f.m4475O(), c0558e2.m4537y(), c0558e2.m4475O())) {
                C0559f.m4541A1(c0558e2, bVar, c0559f.f3591J0, C0567b.a.f3617k);
            }
            boolean z = c0558e2 instanceof C0560g;
            if (z) {
                C0560g c0560g = (C0560g) c0558e2;
                if (c0560g.m4573b1() == 0) {
                    if (arrayList3 == null) {
                        arrayList3 = new ArrayList();
                    }
                    arrayList3.add(c0560g);
                }
                if (c0560g.m4573b1() == 1) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(c0560g);
                }
            }
            if (c0558e2 instanceof C0562i) {
                if (c0558e2 instanceof C0554a) {
                    C0554a c0554a = (C0554a) c0558e2;
                    if (c0554a.m4414g1() == 0) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(c0554a);
                    }
                    if (c0554a.m4414g1() == 1) {
                        if (arrayList4 == null) {
                            arrayList4 = new ArrayList();
                        }
                        arrayList4.add(c0554a);
                    }
                } else {
                    C0562i c0562i = (C0562i) c0558e2;
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add(c0562i);
                    if (arrayList4 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add(c0562i);
                }
            }
            if (c0558e2.f3514F.f3493f == null && c0558e2.f3516H.f3493f == null && !z && !(c0558e2 instanceof C0554a)) {
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                }
                arrayList5.add(c0558e2);
            }
            if (c0558e2.f3515G.f3493f == null && c0558e2.f3517I.f3493f == null && c0558e2.f3518J.f3493f == null && !z && !(c0558e2 instanceof C0554a)) {
                if (arrayList6 == null) {
                    arrayList6 = new ArrayList();
                }
                arrayList6.add(c0558e2);
            }
        }
        ArrayList<C0580o> arrayList7 = new ArrayList<>();
        if (arrayList != null) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                m4635a((C0560g) it.next(), 0, arrayList7, null);
            }
        }
        int i3 = 0;
        C0580o c0580o3 = null;
        if (arrayList2 != null) {
            for (C0562i c0562i2 : arrayList2) {
                C0580o c0580oM4635a = m4635a(c0562i2, i3, arrayList7, c0580o3);
                c0562i2.m4585a1(arrayList7, i3, c0580oM4635a);
                c0580oM4635a.m4651b(arrayList7);
                i3 = 0;
                c0580o3 = null;
            }
        }
        C0557d c0557dMo4513m = c0559f.mo4513m(C0557d.b.LEFT);
        if (c0557dMo4513m.m4427c() != null) {
            Iterator<C0557d> it2 = c0557dMo4513m.m4427c().iterator();
            while (it2.hasNext()) {
                m4635a(it2.next().f3491d, 0, arrayList7, null);
            }
        }
        C0557d c0557dMo4513m2 = c0559f.mo4513m(C0557d.b.RIGHT);
        if (c0557dMo4513m2.m4427c() != null) {
            Iterator<C0557d> it3 = c0557dMo4513m2.m4427c().iterator();
            while (it3.hasNext()) {
                m4635a(it3.next().f3491d, 0, arrayList7, null);
            }
        }
        C0557d c0557dMo4513m3 = c0559f.mo4513m(C0557d.b.CENTER);
        if (c0557dMo4513m3.m4427c() != null) {
            Iterator<C0557d> it4 = c0557dMo4513m3.m4427c().iterator();
            while (it4.hasNext()) {
                m4635a(it4.next().f3491d, 0, arrayList7, null);
            }
        }
        C0580o c0580o4 = null;
        if (arrayList5 != null) {
            Iterator it5 = arrayList5.iterator();
            while (it5.hasNext()) {
                m4635a((C0558e) it5.next(), 0, arrayList7, null);
            }
        }
        if (arrayList3 != null) {
            Iterator it6 = arrayList3.iterator();
            while (it6.hasNext()) {
                m4635a((C0560g) it6.next(), 1, arrayList7, null);
            }
        }
        if (arrayList4 != null) {
            for (C0562i c0562i3 : arrayList4) {
                C0580o c0580oM4635a2 = m4635a(c0562i3, 1, arrayList7, c0580o4);
                c0562i3.m4585a1(arrayList7, 1, c0580oM4635a2);
                c0580oM4635a2.m4651b(arrayList7);
                c0580o4 = null;
            }
        }
        C0557d c0557dMo4513m4 = c0559f.mo4513m(C0557d.b.TOP);
        if (c0557dMo4513m4.m4427c() != null) {
            Iterator<C0557d> it7 = c0557dMo4513m4.m4427c().iterator();
            while (it7.hasNext()) {
                m4635a(it7.next().f3491d, 1, arrayList7, null);
            }
        }
        C0557d c0557dMo4513m5 = c0559f.mo4513m(C0557d.b.BASELINE);
        if (c0557dMo4513m5.m4427c() != null) {
            Iterator<C0557d> it8 = c0557dMo4513m5.m4427c().iterator();
            while (it8.hasNext()) {
                m4635a(it8.next().f3491d, 1, arrayList7, null);
            }
        }
        C0557d c0557dMo4513m6 = c0559f.mo4513m(C0557d.b.BOTTOM);
        if (c0557dMo4513m6.m4427c() != null) {
            Iterator<C0557d> it9 = c0557dMo4513m6.m4427c().iterator();
            while (it9.hasNext()) {
                m4635a(it9.next().f3491d, 1, arrayList7, null);
            }
        }
        C0557d c0557dMo4513m7 = c0559f.mo4513m(C0557d.b.CENTER);
        if (c0557dMo4513m7.m4427c() != null) {
            Iterator<C0557d> it10 = c0557dMo4513m7.m4427c().iterator();
            while (it10.hasNext()) {
                m4635a(it10.next().f3491d, 1, arrayList7, null);
            }
        }
        if (arrayList6 != null) {
            Iterator it11 = arrayList6.iterator();
            while (it11.hasNext()) {
                m4635a((C0558e) it11.next(), 1, arrayList7, null);
            }
        }
        for (int i4 = 0; i4 < size; i4++) {
            C0558e c0558e3 = arrayListM4592a1.get(i4);
            if (c0558e3.m4504g0()) {
                C0580o c0580oM4636b = m4636b(arrayList7, c0558e3.f3560m0);
                C0580o c0580oM4636b2 = m4636b(arrayList7, c0558e3.f3562n0);
                if (c0580oM4636b != null && c0580oM4636b2 != null) {
                    c0580oM4636b.m4655g(0, c0580oM4636b2);
                    c0580oM4636b2.m4657i(2);
                    arrayList7.remove(c0580oM4636b);
                }
            }
        }
        if (arrayList7.size() <= 1) {
            return false;
        }
        if (c0559f.m4537y() == C0558e.b.WRAP_CONTENT) {
            c0580o = null;
            int i5 = 0;
            for (C0580o c0580o5 : arrayList7) {
                if (c0580o5.m4653d() != 1) {
                    c0580o5.m4656h(false);
                    int iM4654f = c0580o5.m4654f(c0559f.m4565t1(), 0);
                    if (iM4654f > i5) {
                        c0580o = c0580o5;
                        i5 = iM4654f;
                    }
                }
            }
            if (c0580o != null) {
                c0559f.m4540z0(C0558e.b.FIXED);
                c0559f.m4488U0(i5);
                c0580o.m4656h(true);
            } else {
                c0580o = null;
            }
        }
        if (c0559f.m4475O() == C0558e.b.WRAP_CONTENT) {
            C0580o c0580o6 = null;
            int i6 = 0;
            for (C0580o c0580o7 : arrayList7) {
                if (c0580o7.m4653d() != 0) {
                    c0580o7.m4656h(false);
                    int iM4654f2 = c0580o7.m4654f(c0559f.m4565t1(), 1);
                    if (iM4654f2 > i6) {
                        c0580o6 = c0580o7;
                        i6 = iM4654f2;
                    }
                }
            }
            if (c0580o6 != null) {
                c0559f.m4480Q0(C0558e.b.FIXED);
                c0559f.m4532v0(i6);
                c0580o6.m4656h(true);
                c0580o2 = c0580o6;
            }
            return c0580o == null || c0580o2 != null;
        }
        c0580o2 = null;
        if (c0580o == null) {
        }
    }

    /* JADX INFO: renamed from: d */
    public static boolean m4638d(C0558e.b bVar, C0558e.b bVar2, C0558e.b bVar3, C0558e.b bVar4) {
        return (bVar3 == C0558e.b.FIXED || bVar3 == C0558e.b.WRAP_CONTENT || (bVar3 == C0558e.b.MATCH_PARENT && bVar != C0558e.b.WRAP_CONTENT)) || (bVar4 == C0558e.b.FIXED || bVar4 == C0558e.b.WRAP_CONTENT || (bVar4 == C0558e.b.MATCH_PARENT && bVar2 != C0558e.b.WRAP_CONTENT));
    }
}
