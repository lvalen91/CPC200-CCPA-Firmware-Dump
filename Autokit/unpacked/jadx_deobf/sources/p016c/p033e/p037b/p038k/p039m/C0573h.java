package p016c.p033e.p037b.p038k.p039m;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.Iterator;
import p016c.p033e.p037b.p038k.C0554a;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0559f;
import p016c.p033e.p037b.p038k.C0560g;
import p016c.p033e.p037b.p038k.p039m.C0567b;

/* JADX INFO: renamed from: c.e.b.k.m.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0573h {

    /* JADX INFO: renamed from: a */
    private static C0567b.a f3662a = new C0567b.a();

    /* JADX INFO: renamed from: a */
    private static boolean m4626a(C0558e c0558e) {
        C0558e.b bVarM4537y = c0558e.m4537y();
        C0558e.b bVarM4475O = c0558e.m4475O();
        C0559f c0559f = c0558e.m4463I() != null ? (C0559f) c0558e.m4463I() : null;
        if (c0559f != null) {
            c0559f.m4537y();
            C0558e.b bVar = C0558e.b.FIXED;
        }
        if (c0559f != null) {
            c0559f.m4475O();
            C0558e.b bVar2 = C0558e.b.FIXED;
        }
        boolean z = bVarM4537y == C0558e.b.FIXED || bVarM4537y == C0558e.b.WRAP_CONTENT || (bVarM4537y == C0558e.b.MATCH_CONSTRAINT && c0558e.f3561n == 0 && c0558e.f3529U == CropImageView.DEFAULT_ASPECT_RATIO && c0558e.m4489V(0)) || c0558e.mo4409e0();
        boolean z2 = bVarM4475O == C0558e.b.FIXED || bVarM4475O == C0558e.b.WRAP_CONTENT || (bVarM4475O == C0558e.b.MATCH_CONSTRAINT && c0558e.f3563o == 0 && c0558e.f3529U == CropImageView.DEFAULT_ASPECT_RATIO && c0558e.m4489V(1)) || c0558e.mo4411f0();
        if (c0558e.f3529U <= CropImageView.DEFAULT_ASPECT_RATIO || !(z || z2)) {
            return z && z2;
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    private static void m4627b(C0558e c0558e, C0567b.b bVar, boolean z) {
        C0557d c0557d;
        C0557d c0557d2;
        C0557d c0557d3;
        C0557d c0557d4;
        C0557d c0557d5;
        if (!(c0558e instanceof C0559f) && c0558e.m4501d0() && m4626a(c0558e)) {
            C0559f.m4541A1(c0558e, bVar, new C0567b.a(), C0567b.a.f3617k);
        }
        C0557d c0557dMo4513m = c0558e.mo4513m(C0557d.b.LEFT);
        C0557d c0557dMo4513m2 = c0558e.mo4513m(C0557d.b.RIGHT);
        int iM4428d = c0557dMo4513m.m4428d();
        int iM4428d2 = c0557dMo4513m2.m4428d();
        if (c0557dMo4513m.m4427c() != null && c0557dMo4513m.m4437m()) {
            Iterator<C0557d> it = c0557dMo4513m.m4427c().iterator();
            while (it.hasNext()) {
                C0557d next = it.next();
                C0558e c0558e2 = next.f3491d;
                boolean zM4626a = m4626a(c0558e2);
                if (c0558e2.m4501d0() && zM4626a) {
                    C0559f.m4541A1(c0558e2, bVar, new C0567b.a(), C0567b.a.f3617k);
                }
                if (c0558e2.m4537y() != C0558e.b.MATCH_CONSTRAINT || zM4626a) {
                    if (!c0558e2.m4501d0()) {
                        C0557d c0557d6 = c0558e2.f3514F;
                        if (next == c0557d6 && c0558e2.f3516H.f3493f == null) {
                            int iM4429e = c0557d6.m4429e() + iM4428d;
                            c0558e2.m4520p0(iM4429e, c0558e2.m4481R() + iM4429e);
                            m4627b(c0558e2, bVar, z);
                        } else {
                            C0557d c0557d7 = c0558e2.f3516H;
                            if (next == c0557d7 && c0558e2.f3514F.f3493f == null) {
                                int iM4429e2 = iM4428d - c0557d7.m4429e();
                                c0558e2.m4520p0(iM4429e2 - c0558e2.m4481R(), iM4429e2);
                                m4627b(c0558e2, bVar, z);
                            } else if (next == c0558e2.f3514F && (c0557d3 = c0558e2.f3516H.f3493f) != null && c0557d3.m4437m() && !c0558e2.m4496Z()) {
                                m4629d(bVar, c0558e2, z);
                            }
                        }
                    }
                } else if (c0558e2.m4537y() == C0558e.b.MATCH_CONSTRAINT && c0558e2.f3566r >= 0 && c0558e2.f3565q >= 0 && (c0558e2.m4479Q() == 8 || (c0558e2.f3561n == 0 && c0558e2.m4527t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                    if (!c0558e2.m4496Z() && !c0558e2.m4500c0()) {
                        if (((next == c0558e2.f3514F && (c0557d5 = c0558e2.f3516H.f3493f) != null && c0557d5.m4437m()) || (next == c0558e2.f3516H && (c0557d4 = c0558e2.f3514F.f3493f) != null && c0557d4.m4437m())) && !c0558e2.m4496Z()) {
                            m4630e(c0558e, bVar, c0558e2, z);
                        }
                    }
                }
            }
        }
        if ((c0558e instanceof C0560g) || c0557dMo4513m2.m4427c() == null || !c0557dMo4513m2.m4437m()) {
            return;
        }
        Iterator<C0557d> it2 = c0557dMo4513m2.m4427c().iterator();
        while (it2.hasNext()) {
            C0557d next2 = it2.next();
            C0558e c0558e3 = next2.f3491d;
            boolean zM4626a2 = m4626a(c0558e3);
            if (c0558e3.m4501d0() && zM4626a2) {
                C0559f.m4541A1(c0558e3, bVar, new C0567b.a(), C0567b.a.f3617k);
            }
            boolean z2 = (next2 == c0558e3.f3514F && (c0557d2 = c0558e3.f3516H.f3493f) != null && c0557d2.m4437m()) || (next2 == c0558e3.f3516H && (c0557d = c0558e3.f3514F.f3493f) != null && c0557d.m4437m());
            if (c0558e3.m4537y() != C0558e.b.MATCH_CONSTRAINT || zM4626a2) {
                if (!c0558e3.m4501d0()) {
                    C0557d c0557d8 = c0558e3.f3514F;
                    if (next2 == c0557d8 && c0558e3.f3516H.f3493f == null) {
                        int iM4429e3 = c0557d8.m4429e() + iM4428d2;
                        c0558e3.m4520p0(iM4429e3, c0558e3.m4481R() + iM4429e3);
                        m4627b(c0558e3, bVar, z);
                    } else {
                        C0557d c0557d9 = c0558e3.f3516H;
                        if (next2 == c0557d9 && c0558e3.f3514F.f3493f == null) {
                            int iM4429e4 = iM4428d2 - c0557d9.m4429e();
                            c0558e3.m4520p0(iM4429e4 - c0558e3.m4481R(), iM4429e4);
                            m4627b(c0558e3, bVar, z);
                        } else if (z2 && !c0558e3.m4496Z()) {
                            m4629d(bVar, c0558e3, z);
                        }
                    }
                }
            } else if (c0558e3.m4537y() == C0558e.b.MATCH_CONSTRAINT && c0558e3.f3566r >= 0 && c0558e3.f3565q >= 0 && (c0558e3.m4479Q() == 8 || (c0558e3.f3561n == 0 && c0558e3.m4527t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                if (!c0558e3.m4496Z() && !c0558e3.m4500c0() && z2 && !c0558e3.m4496Z()) {
                    m4630e(c0558e, bVar, c0558e3, z);
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private static void m4628c(C0554a c0554a, C0567b.b bVar, int i, boolean z) {
        if (c0554a.m4407c1()) {
            if (i == 0) {
                m4627b(c0554a, bVar, z);
            } else {
                m4634i(c0554a, bVar);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    private static void m4629d(C0567b.b bVar, C0558e c0558e, boolean z) {
        float fM4533w = c0558e.m4533w();
        int iM4428d = c0558e.f3514F.f3493f.m4428d();
        int iM4428d2 = c0558e.f3516H.f3493f.m4428d();
        int iM4429e = c0558e.f3514F.m4429e() + iM4428d;
        int iM4429e2 = iM4428d2 - c0558e.f3516H.m4429e();
        if (iM4428d == iM4428d2) {
            fM4533w = 0.5f;
        } else {
            iM4428d = iM4429e;
            iM4428d2 = iM4429e2;
        }
        int iM4481R = c0558e.m4481R();
        int i = (iM4428d2 - iM4428d) - iM4481R;
        if (iM4428d > iM4428d2) {
            i = (iM4428d - iM4428d2) - iM4481R;
        }
        int i2 = ((int) ((fM4533w * i) + 0.5f)) + iM4428d;
        int i3 = i2 + iM4481R;
        if (iM4428d > iM4428d2) {
            i3 = i2 - iM4481R;
        }
        c0558e.m4520p0(i2, i3);
        m4627b(c0558e, bVar, z);
    }

    /* JADX INFO: renamed from: e */
    private static void m4630e(C0558e c0558e, C0567b.b bVar, C0558e c0558e2, boolean z) {
        float fM4533w = c0558e2.m4533w();
        int iM4428d = c0558e2.f3514F.f3493f.m4428d() + c0558e2.f3514F.m4429e();
        int iM4428d2 = c0558e2.f3516H.f3493f.m4428d() - c0558e2.f3516H.m4429e();
        if (iM4428d2 >= iM4428d) {
            int iM4481R = c0558e2.m4481R();
            if (c0558e2.m4479Q() != 8) {
                int i = c0558e2.f3561n;
                if (i == 2) {
                    iM4481R = (int) (c0558e2.m4533w() * 0.5f * (c0558e instanceof C0559f ? c0558e.m4481R() : c0558e.m4463I().m4481R()));
                } else if (i == 0) {
                    iM4481R = iM4428d2 - iM4428d;
                }
                iM4481R = Math.max(c0558e2.f3565q, iM4481R);
                int i2 = c0558e2.f3566r;
                if (i2 > 0) {
                    iM4481R = Math.min(i2, iM4481R);
                }
            }
            int i3 = iM4428d + ((int) ((fM4533w * ((iM4428d2 - iM4428d) - iM4481R)) + 0.5f));
            c0558e2.m4520p0(i3, iM4481R + i3);
            m4627b(c0558e2, bVar, z);
        }
    }

    /* JADX INFO: renamed from: f */
    private static void m4631f(C0567b.b bVar, C0558e c0558e) {
        float fM4471M = c0558e.m4471M();
        int iM4428d = c0558e.f3515G.f3493f.m4428d();
        int iM4428d2 = c0558e.f3517I.f3493f.m4428d();
        int iM4429e = c0558e.f3515G.m4429e() + iM4428d;
        int iM4429e2 = iM4428d2 - c0558e.f3517I.m4429e();
        if (iM4428d == iM4428d2) {
            fM4471M = 0.5f;
        } else {
            iM4428d = iM4429e;
            iM4428d2 = iM4429e2;
        }
        int iM4531v = c0558e.m4531v();
        int i = (iM4428d2 - iM4428d) - iM4531v;
        if (iM4428d > iM4428d2) {
            i = (iM4428d - iM4428d2) - iM4531v;
        }
        int i2 = (int) ((fM4471M * i) + 0.5f);
        int i3 = iM4428d + i2;
        int i4 = i3 + iM4531v;
        if (iM4428d > iM4428d2) {
            i3 = iM4428d - i2;
            i4 = i3 - iM4531v;
        }
        c0558e.m4526s0(i3, i4);
        m4634i(c0558e, bVar);
    }

    /* JADX INFO: renamed from: g */
    private static void m4632g(C0558e c0558e, C0567b.b bVar, C0558e c0558e2) {
        float fM4471M = c0558e2.m4471M();
        int iM4428d = c0558e2.f3515G.f3493f.m4428d() + c0558e2.f3515G.m4429e();
        int iM4428d2 = c0558e2.f3517I.f3493f.m4428d() - c0558e2.f3517I.m4429e();
        if (iM4428d2 >= iM4428d) {
            int iM4531v = c0558e2.m4531v();
            if (c0558e2.m4479Q() != 8) {
                int i = c0558e2.f3563o;
                if (i == 2) {
                    iM4531v = (int) (fM4471M * 0.5f * (c0558e instanceof C0559f ? c0558e.m4531v() : c0558e.m4463I().m4531v()));
                } else if (i == 0) {
                    iM4531v = iM4428d2 - iM4428d;
                }
                iM4531v = Math.max(c0558e2.f3568t, iM4531v);
                int i2 = c0558e2.f3569u;
                if (i2 > 0) {
                    iM4531v = Math.min(i2, iM4531v);
                }
            }
            int i3 = iM4428d + ((int) ((fM4471M * ((iM4428d2 - iM4428d) - iM4531v)) + 0.5f));
            c0558e2.m4526s0(i3, iM4531v + i3);
            m4634i(c0558e2, bVar);
        }
    }

    /* JADX INFO: renamed from: h */
    public static void m4633h(C0559f c0559f, C0567b.b bVar) {
        C0558e.b bVarM4537y = c0559f.m4537y();
        C0558e.b bVarM4475O = c0559f.m4475O();
        c0559f.m4506i0();
        ArrayList<C0558e> arrayListM4592a1 = c0559f.m4592a1();
        int size = arrayListM4592a1.size();
        for (int i = 0; i < size; i++) {
            arrayListM4592a1.get(i).m4506i0();
        }
        boolean zM4569x1 = c0559f.m4569x1();
        if (bVarM4537y == C0558e.b.FIXED) {
            c0559f.m4520p0(0, c0559f.m4481R());
        } else {
            c0559f.m4522q0(0);
        }
        boolean z = false;
        boolean z2 = false;
        for (int i2 = 0; i2 < size; i2++) {
            C0558e c0558e = arrayListM4592a1.get(i2);
            if (c0558e instanceof C0560g) {
                C0560g c0560g = (C0560g) c0558e;
                if (c0560g.m4573b1() == 1) {
                    if (c0560g.m4574c1() != -1) {
                        c0560g.m4577f1(c0560g.m4574c1());
                    } else if (c0560g.m4575d1() != -1 && c0559f.mo4409e0()) {
                        c0560g.m4577f1(c0559f.m4481R() - c0560g.m4575d1());
                    } else if (c0559f.mo4409e0()) {
                        c0560g.m4577f1((int) ((c0560g.m4576e1() * c0559f.m4481R()) + 0.5f));
                    }
                    z = true;
                }
            } else if ((c0558e instanceof C0554a) && ((C0554a) c0558e).m4414g1() == 0) {
                z2 = true;
            }
        }
        if (z) {
            for (int i3 = 0; i3 < size; i3++) {
                C0558e c0558e2 = arrayListM4592a1.get(i3);
                if (c0558e2 instanceof C0560g) {
                    C0560g c0560g2 = (C0560g) c0558e2;
                    if (c0560g2.m4573b1() == 1) {
                        m4627b(c0560g2, bVar, zM4569x1);
                    }
                }
            }
        }
        m4627b(c0559f, bVar, zM4569x1);
        if (z2) {
            for (int i4 = 0; i4 < size; i4++) {
                C0558e c0558e3 = arrayListM4592a1.get(i4);
                if (c0558e3 instanceof C0554a) {
                    C0554a c0554a = (C0554a) c0558e3;
                    if (c0554a.m4414g1() == 0) {
                        m4628c(c0554a, bVar, 0, zM4569x1);
                    }
                }
            }
        }
        if (bVarM4475O == C0558e.b.FIXED) {
            c0559f.m4526s0(0, c0559f.m4531v());
        } else {
            c0559f.m4524r0(0);
        }
        boolean z3 = false;
        boolean z4 = false;
        for (int i5 = 0; i5 < size; i5++) {
            C0558e c0558e4 = arrayListM4592a1.get(i5);
            if (c0558e4 instanceof C0560g) {
                C0560g c0560g3 = (C0560g) c0558e4;
                if (c0560g3.m4573b1() == 0) {
                    if (c0560g3.m4574c1() != -1) {
                        c0560g3.m4577f1(c0560g3.m4574c1());
                    } else if (c0560g3.m4575d1() != -1 && c0559f.mo4411f0()) {
                        c0560g3.m4577f1(c0559f.m4531v() - c0560g3.m4575d1());
                    } else if (c0559f.mo4411f0()) {
                        c0560g3.m4577f1((int) ((c0560g3.m4576e1() * c0559f.m4531v()) + 0.5f));
                    }
                    z3 = true;
                }
            } else if ((c0558e4 instanceof C0554a) && ((C0554a) c0558e4).m4414g1() == 1) {
                z4 = true;
            }
        }
        if (z3) {
            for (int i6 = 0; i6 < size; i6++) {
                C0558e c0558e5 = arrayListM4592a1.get(i6);
                if (c0558e5 instanceof C0560g) {
                    C0560g c0560g4 = (C0560g) c0558e5;
                    if (c0560g4.m4573b1() == 0) {
                        m4634i(c0560g4, bVar);
                    }
                }
            }
        }
        m4634i(c0559f, bVar);
        if (z4) {
            for (int i7 = 0; i7 < size; i7++) {
                C0558e c0558e6 = arrayListM4592a1.get(i7);
                if (c0558e6 instanceof C0554a) {
                    C0554a c0554a2 = (C0554a) c0558e6;
                    if (c0554a2.m4414g1() == 1) {
                        m4628c(c0554a2, bVar, 1, zM4569x1);
                    }
                }
            }
        }
        for (int i8 = 0; i8 < size; i8++) {
            C0558e c0558e7 = arrayListM4592a1.get(i8);
            if (c0558e7.m4501d0() && m4626a(c0558e7)) {
                C0559f.m4541A1(c0558e7, bVar, f3662a, C0567b.a.f3617k);
                m4627b(c0558e7, bVar, zM4569x1);
                m4634i(c0558e7, bVar);
            }
        }
    }

    /* JADX INFO: renamed from: i */
    private static void m4634i(C0558e c0558e, C0567b.b bVar) {
        C0557d c0557d;
        C0557d c0557d2;
        C0557d c0557d3;
        C0557d c0557d4;
        C0557d c0557d5;
        if (!(c0558e instanceof C0559f) && c0558e.m4501d0() && m4626a(c0558e)) {
            C0559f.m4541A1(c0558e, bVar, new C0567b.a(), C0567b.a.f3617k);
        }
        C0557d c0557dMo4513m = c0558e.mo4513m(C0557d.b.TOP);
        C0557d c0557dMo4513m2 = c0558e.mo4513m(C0557d.b.BOTTOM);
        int iM4428d = c0557dMo4513m.m4428d();
        int iM4428d2 = c0557dMo4513m2.m4428d();
        if (c0557dMo4513m.m4427c() != null && c0557dMo4513m.m4437m()) {
            Iterator<C0557d> it = c0557dMo4513m.m4427c().iterator();
            while (it.hasNext()) {
                C0557d next = it.next();
                C0558e c0558e2 = next.f3491d;
                boolean zM4626a = m4626a(c0558e2);
                if (c0558e2.m4501d0() && zM4626a) {
                    C0559f.m4541A1(c0558e2, bVar, new C0567b.a(), C0567b.a.f3617k);
                }
                if (c0558e2.m4475O() != C0558e.b.MATCH_CONSTRAINT || zM4626a) {
                    if (!c0558e2.m4501d0()) {
                        C0557d c0557d6 = c0558e2.f3515G;
                        if (next == c0557d6 && c0558e2.f3517I.f3493f == null) {
                            int iM4429e = c0557d6.m4429e() + iM4428d;
                            c0558e2.m4526s0(iM4429e, c0558e2.m4531v() + iM4429e);
                            m4634i(c0558e2, bVar);
                        } else {
                            C0557d c0557d7 = c0558e2.f3517I;
                            if (next == c0557d7 && c0557d7.f3493f == null) {
                                int iM4429e2 = iM4428d - c0557d7.m4429e();
                                c0558e2.m4526s0(iM4429e2 - c0558e2.m4531v(), iM4429e2);
                                m4634i(c0558e2, bVar);
                            } else if (next == c0558e2.f3515G && (c0557d3 = c0558e2.f3517I.f3493f) != null && c0557d3.m4437m()) {
                                m4631f(bVar, c0558e2);
                            }
                        }
                    }
                } else if (c0558e2.m4475O() == C0558e.b.MATCH_CONSTRAINT && c0558e2.f3569u >= 0 && c0558e2.f3568t >= 0 && (c0558e2.m4479Q() == 8 || (c0558e2.f3563o == 0 && c0558e2.m4527t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                    if (!c0558e2.m4499b0() && !c0558e2.m4500c0()) {
                        if (((next == c0558e2.f3515G && (c0557d5 = c0558e2.f3517I.f3493f) != null && c0557d5.m4437m()) || (next == c0558e2.f3517I && (c0557d4 = c0558e2.f3515G.f3493f) != null && c0557d4.m4437m())) && !c0558e2.m4499b0()) {
                            m4632g(c0558e, bVar, c0558e2);
                        }
                    }
                }
            }
        }
        if (c0558e instanceof C0560g) {
            return;
        }
        if (c0557dMo4513m2.m4427c() != null && c0557dMo4513m2.m4437m()) {
            Iterator<C0557d> it2 = c0557dMo4513m2.m4427c().iterator();
            while (it2.hasNext()) {
                C0557d next2 = it2.next();
                C0558e c0558e3 = next2.f3491d;
                boolean zM4626a2 = m4626a(c0558e3);
                if (c0558e3.m4501d0() && zM4626a2) {
                    C0559f.m4541A1(c0558e3, bVar, new C0567b.a(), C0567b.a.f3617k);
                }
                boolean z = (next2 == c0558e3.f3515G && (c0557d2 = c0558e3.f3517I.f3493f) != null && c0557d2.m4437m()) || (next2 == c0558e3.f3517I && (c0557d = c0558e3.f3515G.f3493f) != null && c0557d.m4437m());
                if (c0558e3.m4475O() != C0558e.b.MATCH_CONSTRAINT || zM4626a2) {
                    if (!c0558e3.m4501d0()) {
                        C0557d c0557d8 = c0558e3.f3515G;
                        if (next2 == c0557d8 && c0558e3.f3517I.f3493f == null) {
                            int iM4429e3 = c0557d8.m4429e() + iM4428d2;
                            c0558e3.m4526s0(iM4429e3, c0558e3.m4531v() + iM4429e3);
                            m4634i(c0558e3, bVar);
                        } else {
                            C0557d c0557d9 = c0558e3.f3517I;
                            if (next2 == c0557d9 && c0558e3.f3515G.f3493f == null) {
                                int iM4429e4 = iM4428d2 - c0557d9.m4429e();
                                c0558e3.m4526s0(iM4429e4 - c0558e3.m4531v(), iM4429e4);
                                m4634i(c0558e3, bVar);
                            } else if (z && !c0558e3.m4499b0()) {
                                m4631f(bVar, c0558e3);
                            }
                        }
                    }
                } else if (c0558e3.m4475O() == C0558e.b.MATCH_CONSTRAINT && c0558e3.f3569u >= 0 && c0558e3.f3568t >= 0 && (c0558e3.m4479Q() == 8 || (c0558e3.f3563o == 0 && c0558e3.m4527t() == CropImageView.DEFAULT_ASPECT_RATIO))) {
                    if (!c0558e3.m4499b0() && !c0558e3.m4500c0() && z && !c0558e3.m4499b0()) {
                        m4632g(c0558e, bVar, c0558e3);
                    }
                }
            }
        }
        C0557d c0557dMo4513m3 = c0558e.mo4513m(C0557d.b.BASELINE);
        if (c0557dMo4513m3.m4427c() == null || !c0557dMo4513m3.m4437m()) {
            return;
        }
        int iM4428d3 = c0557dMo4513m3.m4428d();
        for (C0557d c0557d10 : c0557dMo4513m3.m4427c()) {
            C0558e c0558e4 = c0557d10.f3491d;
            boolean zM4626a3 = m4626a(c0558e4);
            if (c0558e4.m4501d0() && zM4626a3) {
                C0559f.m4541A1(c0558e4, bVar, new C0567b.a(), C0567b.a.f3617k);
            }
            if (c0558e4.m4475O() != C0558e.b.MATCH_CONSTRAINT || zM4626a3) {
                if (!c0558e4.m4501d0() && c0557d10 == c0558e4.f3518J) {
                    c0558e4.m4518o0(iM4428d3);
                    m4634i(c0558e4, bVar);
                }
            }
        }
    }
}
