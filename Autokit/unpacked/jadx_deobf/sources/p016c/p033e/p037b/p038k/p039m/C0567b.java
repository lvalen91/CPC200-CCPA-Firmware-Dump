package p016c.p033e.p037b.p038k.p039m;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.C0548e;
import p016c.p033e.p037b.p038k.C0554a;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0559f;
import p016c.p033e.p037b.p038k.C0560g;
import p016c.p033e.p037b.p038k.C0563j;
import p016c.p033e.p037b.p038k.C0564k;
import p016c.p033e.p037b.p038k.InterfaceC0561h;

/* JADX INFO: renamed from: c.e.b.k.m.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0567b {

    /* JADX INFO: renamed from: a */
    private final ArrayList<C0558e> f3614a = new ArrayList<>();

    /* JADX INFO: renamed from: b */
    private a f3615b = new a();

    /* JADX INFO: renamed from: c */
    private C0559f f3616c;

    /* JADX INFO: renamed from: c.e.b.k.m.b$a */
    public static class a {

        /* JADX INFO: renamed from: k */
        public static int f3617k = 0;

        /* JADX INFO: renamed from: l */
        public static int f3618l = 1;

        /* JADX INFO: renamed from: m */
        public static int f3619m = 2;

        /* JADX INFO: renamed from: a */
        public C0558e.b f3620a;

        /* JADX INFO: renamed from: b */
        public C0558e.b f3621b;

        /* JADX INFO: renamed from: c */
        public int f3622c;

        /* JADX INFO: renamed from: d */
        public int f3623d;

        /* JADX INFO: renamed from: e */
        public int f3624e;

        /* JADX INFO: renamed from: f */
        public int f3625f;

        /* JADX INFO: renamed from: g */
        public int f3626g;

        /* JADX INFO: renamed from: h */
        public boolean f3627h;

        /* JADX INFO: renamed from: i */
        public boolean f3628i;

        /* JADX INFO: renamed from: j */
        public int f3629j;
    }

    /* JADX INFO: renamed from: c.e.b.k.m.b$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        void mo1465a(C0558e c0558e, a aVar);

        /* JADX INFO: renamed from: b */
        void mo1466b();
    }

    public C0567b(C0559f c0559f) {
        this.f3616c = c0559f;
    }

    /* JADX INFO: renamed from: a */
    private boolean m4595a(b bVar, C0558e c0558e, int i) {
        this.f3615b.f3620a = c0558e.m4537y();
        this.f3615b.f3621b = c0558e.m4475O();
        this.f3615b.f3622c = c0558e.m4481R();
        this.f3615b.f3623d = c0558e.m4531v();
        a aVar = this.f3615b;
        aVar.f3628i = false;
        aVar.f3629j = i;
        boolean z = aVar.f3620a == C0558e.b.MATCH_CONSTRAINT;
        boolean z2 = this.f3615b.f3621b == C0558e.b.MATCH_CONSTRAINT;
        boolean z3 = z && c0558e.f3529U > CropImageView.DEFAULT_ASPECT_RATIO;
        boolean z4 = z2 && c0558e.f3529U > CropImageView.DEFAULT_ASPECT_RATIO;
        if (z3 && c0558e.f3564p[0] == 4) {
            this.f3615b.f3620a = C0558e.b.FIXED;
        }
        if (z4 && c0558e.f3564p[1] == 4) {
            this.f3615b.f3621b = C0558e.b.FIXED;
        }
        bVar.mo1465a(c0558e, this.f3615b);
        c0558e.m4488U0(this.f3615b.f3624e);
        c0558e.m4532v0(this.f3615b.f3625f);
        c0558e.m4530u0(this.f3615b.f3627h);
        c0558e.m4510k0(this.f3615b.f3626g);
        a aVar2 = this.f3615b;
        aVar2.f3629j = a.f3617k;
        return aVar2.f3628i;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x009e A[PHI: r9
      0x009e: PHI (r9v3 boolean) = (r9v2 boolean), (r9v2 boolean), (r9v2 boolean), (r9v5 boolean), (r9v5 boolean) binds: [B:32:0x0062, B:34:0x0068, B:36:0x006c, B:57:0x009b, B:55:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00b2 A[SYNTHETIC] */
    /* JADX INFO: renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void m4596b(C0559f c0559f) {
        C0577l c0577l;
        C0579n c0579n;
        int size = c0559f.f3613p0.size();
        boolean zM4547B1 = c0559f.m4547B1(64);
        b bVarM4563r1 = c0559f.m4563r1();
        for (int i = 0; i < size; i++) {
            C0558e c0558e = c0559f.f3613p0.get(i);
            if (!(c0558e instanceof C0560g) && !(c0558e instanceof C0554a) && !c0558e.m4500c0() && (!zM4547B1 || (c0577l = c0558e.f3541d) == null || (c0579n = c0558e.f3543e) == null || !c0577l.f3682e.f3649j || !c0579n.f3682e.f3649j)) {
                C0558e.b bVarM4525s = c0558e.m4525s(0);
                boolean z = true;
                C0558e.b bVarM4525s2 = c0558e.m4525s(1);
                C0558e.b bVar = C0558e.b.MATCH_CONSTRAINT;
                boolean z2 = bVarM4525s == bVar && c0558e.f3561n != 1 && bVarM4525s2 == bVar && c0558e.f3563o != 1;
                if (z2 || !c0559f.m4547B1(1) || (c0558e instanceof C0564k)) {
                    z = z2;
                    if (z) {
                        m4595a(bVarM4563r1, c0558e, a.f3617k);
                        C0548e c0548e = c0559f.f3596u0;
                        if (c0548e != null) {
                            c0548e.f3393a++;
                        }
                    }
                } else {
                    C0558e.b bVar2 = C0558e.b.MATCH_CONSTRAINT;
                    if (bVarM4525s == bVar2 && c0558e.f3561n == 0 && bVarM4525s2 != bVar2 && !c0558e.m4496Z()) {
                        z2 = true;
                    }
                    C0558e.b bVar3 = C0558e.b.MATCH_CONSTRAINT;
                    if (bVarM4525s2 == bVar3 && c0558e.f3563o == 0 && bVarM4525s != bVar3 && !c0558e.m4496Z()) {
                        z2 = true;
                    }
                    C0558e.b bVar4 = C0558e.b.MATCH_CONSTRAINT;
                    if ((bVarM4525s != bVar4 && bVarM4525s2 != bVar4) || c0558e.f3529U <= CropImageView.DEFAULT_ASPECT_RATIO) {
                    }
                    if (z) {
                    }
                }
            }
        }
        bVarM4563r1.mo1466b();
    }

    /* JADX INFO: renamed from: c */
    private void m4597c(C0559f c0559f, String str, int i, int i2) {
        int iM4459G = c0559f.m4459G();
        int iM4457F = c0559f.m4457F();
        c0559f.m4468K0(0);
        c0559f.m4466J0(0);
        c0559f.m4488U0(i);
        c0559f.m4532v0(i2);
        c0559f.m4468K0(iM4459G);
        c0559f.m4466J0(iM4457F);
        this.f3616c.mo4553b1();
    }

    /* JADX INFO: renamed from: d */
    public long m4598d(C0559f c0559f, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean zM4562q1;
        int i10;
        int i11;
        boolean z;
        boolean z2;
        boolean z3;
        int i12;
        b bVar;
        int i13;
        int i14;
        int i15;
        boolean z4;
        C0548e c0548e;
        b bVarM4563r1 = c0559f.m4563r1();
        int size = c0559f.f3613p0.size();
        int iM4481R = c0559f.m4481R();
        int iM4531v = c0559f.m4531v();
        boolean zM4588b = C0563j.m4588b(i, 128);
        boolean z5 = zM4588b || C0563j.m4588b(i, 64);
        if (z5) {
            for (int i16 = 0; i16 < size; i16++) {
                C0558e c0558e = c0559f.f3613p0.get(i16);
                boolean z6 = (c0558e.m4537y() == C0558e.b.MATCH_CONSTRAINT) && (c0558e.m4475O() == C0558e.b.MATCH_CONSTRAINT) && c0558e.m4527t() > CropImageView.DEFAULT_ASPECT_RATIO;
                if ((c0558e.m4496Z() && z6) || ((c0558e.m4499b0() && z6) || (c0558e instanceof C0564k) || c0558e.m4496Z() || c0558e.m4499b0())) {
                    z5 = false;
                    break;
                }
            }
        }
        if (z5 && (c0548e = C0547d.f3372x) != null) {
            c0548e.f3395c++;
        }
        boolean z7 = z5 & ((i4 == 1073741824 && i6 == 1073741824) || zM4588b);
        if (z7) {
            int iMin = Math.min(c0559f.m4455E(), i5);
            int iMin2 = Math.min(c0559f.m4453D(), i7);
            if (i4 == 1073741824 && c0559f.m4481R() != iMin) {
                c0559f.m4488U0(iMin);
                c0559f.m4566u1();
            }
            if (i6 == 1073741824 && c0559f.m4531v() != iMin2) {
                c0559f.m4532v0(iMin2);
                c0559f.m4566u1();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                zM4562q1 = c0559f.m4560o1(zM4588b);
                i10 = 2;
            } else {
                boolean zM4561p1 = c0559f.m4561p1(zM4588b);
                if (i4 == 1073741824) {
                    zM4561p1 &= c0559f.m4562q1(zM4588b, 0);
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                if (i6 == 1073741824) {
                    zM4562q1 = c0559f.m4562q1(zM4588b, 1) & zM4561p1;
                    i10++;
                } else {
                    zM4562q1 = zM4561p1;
                }
            }
            if (zM4562q1) {
                c0559f.mo4495Y0(i4 == 1073741824, i6 == 1073741824);
            }
        } else {
            zM4562q1 = false;
            i10 = 0;
        }
        if (zM4562q1 && i10 == 2) {
            return 0L;
        }
        int iM4564s1 = c0559f.m4564s1();
        if (size > 0) {
            m4596b(c0559f);
        }
        m4599e(c0559f);
        int size2 = this.f3614a.size();
        if (size > 0) {
            m4597c(c0559f, "First pass", iM4481R, iM4531v);
        }
        if (size2 > 0) {
            boolean z8 = c0559f.m4537y() == C0558e.b.WRAP_CONTENT;
            boolean z9 = c0559f.m4475O() == C0558e.b.WRAP_CONTENT;
            int iMax = Math.max(c0559f.m4481R(), this.f3616c.m4459G());
            int iMax2 = Math.max(c0559f.m4531v(), this.f3616c.m4457F());
            int i17 = 0;
            boolean zM4590d1 = false;
            while (i17 < size2) {
                C0558e c0558e2 = this.f3614a.get(i17);
                if (c0558e2 instanceof C0564k) {
                    int iM4481R2 = c0558e2.m4481R();
                    i13 = iM4564s1;
                    int iM4531v2 = c0558e2.m4531v();
                    i14 = iM4481R;
                    boolean zM4595a = m4595a(bVarM4563r1, c0558e2, a.f3618l) | zM4590d1;
                    C0548e c0548e2 = c0559f.f3596u0;
                    i15 = iM4531v;
                    if (c0548e2 != null) {
                        c0548e2.f3394b++;
                    }
                    int iM4481R3 = c0558e2.m4481R();
                    int iM4531v3 = c0558e2.m4531v();
                    if (iM4481R3 != iM4481R2) {
                        c0558e2.m4488U0(iM4481R3);
                        if (z8 && c0558e2.m4467K() > iMax) {
                            iMax = Math.max(iMax, c0558e2.m4467K() + c0558e2.mo4513m(C0557d.b.RIGHT).m4429e());
                        }
                        z4 = true;
                    } else {
                        z4 = zM4595a;
                    }
                    if (iM4531v3 != iM4531v2) {
                        c0558e2.m4532v0(iM4531v3);
                        if (z9 && c0558e2.m4519p() > iMax2) {
                            iMax2 = Math.max(iMax2, c0558e2.m4519p() + c0558e2.mo4513m(C0557d.b.BOTTOM).m4429e());
                        }
                        z4 = true;
                    }
                    zM4590d1 = z4 | ((C0564k) c0558e2).m4590d1();
                } else {
                    i13 = iM4564s1;
                    i14 = iM4481R;
                    i15 = iM4531v;
                }
                i17++;
                iM4564s1 = i13;
                iM4481R = i14;
                iM4531v = i15;
            }
            int i18 = iM4564s1;
            int i19 = iM4481R;
            int i20 = iM4531v;
            int i21 = 0;
            int i22 = 2;
            while (i21 < i22) {
                int i23 = 0;
                while (i23 < size2) {
                    C0558e c0558e3 = this.f3614a.get(i23);
                    if (((c0558e3 instanceof InterfaceC0561h) && !(c0558e3 instanceof C0564k)) || (c0558e3 instanceof C0560g) || c0558e3.m4479Q() == 8 || ((z7 && c0558e3.f3541d.f3682e.f3649j && c0558e3.f3543e.f3682e.f3649j) || (c0558e3 instanceof C0564k))) {
                        z3 = z7;
                        i12 = size2;
                        bVar = bVarM4563r1;
                    } else {
                        int iM4481R4 = c0558e3.m4481R();
                        int iM4531v4 = c0558e3.m4531v();
                        int iM4515n = c0558e3.m4515n();
                        int i24 = a.f3618l;
                        z3 = z7;
                        if (i21 == 1) {
                            i24 = a.f3619m;
                        }
                        boolean zM4595a2 = m4595a(bVarM4563r1, c0558e3, i24) | zM4590d1;
                        C0548e c0548e3 = c0559f.f3596u0;
                        i12 = size2;
                        bVar = bVarM4563r1;
                        if (c0548e3 != null) {
                            c0548e3.f3394b++;
                        }
                        int iM4481R5 = c0558e3.m4481R();
                        int iM4531v5 = c0558e3.m4531v();
                        if (iM4481R5 != iM4481R4) {
                            c0558e3.m4488U0(iM4481R5);
                            if (z8 && c0558e3.m4467K() > iMax) {
                                iMax = Math.max(iMax, c0558e3.m4467K() + c0558e3.mo4513m(C0557d.b.RIGHT).m4429e());
                            }
                            zM4595a2 = true;
                        }
                        if (iM4531v5 != iM4531v4) {
                            c0558e3.m4532v0(iM4531v5);
                            if (z9 && c0558e3.m4519p() > iMax2) {
                                iMax2 = Math.max(iMax2, c0558e3.m4519p() + c0558e3.mo4513m(C0557d.b.BOTTOM).m4429e());
                            }
                            zM4595a2 = true;
                        }
                        zM4590d1 = (!c0558e3.m4487U() || iM4515n == c0558e3.m4515n()) ? zM4595a2 : true;
                    }
                    i23++;
                    size2 = i12;
                    bVarM4563r1 = bVar;
                    z7 = z3;
                }
                boolean z10 = z7;
                int i25 = size2;
                b bVar2 = bVarM4563r1;
                if (!zM4590d1) {
                    break;
                }
                m4597c(c0559f, "intermediate pass", i19, i20);
                i21++;
                bVarM4563r1 = bVar2;
                z7 = z10;
                i22 = 2;
                zM4590d1 = false;
                size2 = i25;
            }
            if (zM4590d1) {
                m4597c(c0559f, "2nd pass", i19, i20);
                if (c0559f.m4481R() < iMax) {
                    c0559f.m4488U0(iMax);
                    z = true;
                } else {
                    z = false;
                }
                if (c0559f.m4531v() < iMax2) {
                    c0559f.m4532v0(iMax2);
                    z2 = true;
                } else {
                    z2 = z;
                }
                if (z2) {
                    m4597c(c0559f, "3rd pass", i19, i20);
                }
            }
            i11 = i18;
        } else {
            i11 = iM4564s1;
        }
        c0559f.m4549E1(i11);
        return 0L;
    }

    /* JADX INFO: renamed from: e */
    public void m4599e(C0559f c0559f) {
        this.f3614a.clear();
        int size = c0559f.f3613p0.size();
        for (int i = 0; i < size; i++) {
            C0558e c0558e = c0559f.f3613p0.get(i);
            if (c0558e.m4537y() == C0558e.b.MATCH_CONSTRAINT || c0558e.m4475O() == C0558e.b.MATCH_CONSTRAINT) {
                this.f3614a.add(c0558e);
            }
        }
        c0559f.m4566u1();
    }
}
