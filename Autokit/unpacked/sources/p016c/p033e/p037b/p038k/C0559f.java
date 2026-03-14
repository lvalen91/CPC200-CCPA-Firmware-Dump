package p016c.p033e.p037b.p038k;

import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.C0548e;
import p016c.p033e.p037b.C0552i;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.p039m.C0567b;
import p016c.p033e.p037b.p038k.p039m.C0570e;
import p016c.p033e.p037b.p038k.p039m.C0573h;
import p016c.p033e.p037b.p038k.p039m.C0574i;

/* JADX INFO: renamed from: c.e.b.k.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0559f extends C0565l {

    /* JADX INFO: renamed from: u0 */
    public C0548e f3596u0;

    /* JADX INFO: renamed from: w0 */
    int f3598w0;

    /* JADX INFO: renamed from: x0 */
    int f3599x0;

    /* JADX INFO: renamed from: q0 */
    C0567b f3592q0 = new C0567b(this);

    /* JADX INFO: renamed from: r0 */
    public C0570e f3593r0 = new C0570e(this);

    /* JADX INFO: renamed from: s0 */
    protected C0567b.b f3594s0 = null;

    /* JADX INFO: renamed from: t0 */
    private boolean f3595t0 = false;

    /* JADX INFO: renamed from: v0 */
    protected C0547d f3597v0 = new C0547d();

    /* JADX INFO: renamed from: y0 */
    public int f3600y0 = 0;

    /* JADX INFO: renamed from: z0 */
    public int f3601z0 = 0;

    /* JADX INFO: renamed from: A0 */
    C0556c[] f3582A0 = new C0556c[4];

    /* JADX INFO: renamed from: B0 */
    C0556c[] f3583B0 = new C0556c[4];

    /* JADX INFO: renamed from: C0 */
    private int f3584C0 = 257;

    /* JADX INFO: renamed from: D0 */
    private boolean f3585D0 = false;

    /* JADX INFO: renamed from: E0 */
    private boolean f3586E0 = false;

    /* JADX INFO: renamed from: F0 */
    private WeakReference<C0557d> f3587F0 = null;

    /* JADX INFO: renamed from: G0 */
    private WeakReference<C0557d> f3588G0 = null;

    /* JADX INFO: renamed from: H0 */
    private WeakReference<C0557d> f3589H0 = null;

    /* JADX INFO: renamed from: I0 */
    private WeakReference<C0557d> f3590I0 = null;

    /* JADX INFO: renamed from: J0 */
    public C0567b.a f3591J0 = new C0567b.a();

    /* JADX INFO: renamed from: A1 */
    public static boolean m4541A1(C0558e c0558e, C0567b.b bVar, C0567b.a aVar, int i) {
        int i2;
        int i3;
        if (bVar == null) {
            return false;
        }
        aVar.f3620a = c0558e.m4537y();
        aVar.f3621b = c0558e.m4475O();
        aVar.f3622c = c0558e.m4481R();
        aVar.f3623d = c0558e.m4531v();
        aVar.f3628i = false;
        aVar.f3629j = i;
        boolean z = aVar.f3620a == C0558e.b.MATCH_CONSTRAINT;
        boolean z2 = aVar.f3621b == C0558e.b.MATCH_CONSTRAINT;
        boolean z3 = z && c0558e.f3529U > CropImageView.DEFAULT_ASPECT_RATIO;
        boolean z4 = z2 && c0558e.f3529U > CropImageView.DEFAULT_ASPECT_RATIO;
        if (z && c0558e.m4489V(0) && c0558e.f3561n == 0 && !z3) {
            aVar.f3620a = C0558e.b.WRAP_CONTENT;
            if (z2 && c0558e.f3563o == 0) {
                aVar.f3620a = C0558e.b.FIXED;
            }
            z = false;
        }
        if (z2 && c0558e.m4489V(1) && c0558e.f3563o == 0 && !z4) {
            aVar.f3621b = C0558e.b.WRAP_CONTENT;
            if (z && c0558e.f3561n == 0) {
                aVar.f3621b = C0558e.b.FIXED;
            }
            z2 = false;
        }
        if (c0558e.mo4409e0()) {
            aVar.f3620a = C0558e.b.FIXED;
            z = false;
        }
        if (c0558e.mo4411f0()) {
            aVar.f3621b = C0558e.b.FIXED;
            z2 = false;
        }
        if (z3) {
            if (c0558e.f3564p[0] == 4) {
                aVar.f3620a = C0558e.b.FIXED;
            } else if (!z2) {
                if (aVar.f3621b == C0558e.b.FIXED) {
                    i3 = aVar.f3623d;
                } else {
                    aVar.f3620a = C0558e.b.WRAP_CONTENT;
                    bVar.mo1465a(c0558e, aVar);
                    i3 = aVar.f3625f;
                }
                aVar.f3620a = C0558e.b.FIXED;
                int i4 = c0558e.f3530V;
                if (i4 == 0 || i4 == -1) {
                    aVar.f3622c = (int) (c0558e.m4527t() * i3);
                } else {
                    aVar.f3622c = (int) (c0558e.m4527t() / i3);
                }
            }
        }
        if (z4) {
            if (c0558e.f3564p[1] == 4) {
                aVar.f3621b = C0558e.b.FIXED;
            } else if (!z) {
                if (aVar.f3620a == C0558e.b.FIXED) {
                    i2 = aVar.f3622c;
                } else {
                    aVar.f3621b = C0558e.b.WRAP_CONTENT;
                    bVar.mo1465a(c0558e, aVar);
                    i2 = aVar.f3624e;
                }
                aVar.f3621b = C0558e.b.FIXED;
                int i5 = c0558e.f3530V;
                if (i5 == 0 || i5 == -1) {
                    aVar.f3623d = (int) (i2 / c0558e.m4527t());
                } else {
                    aVar.f3623d = (int) (i2 * c0558e.m4527t());
                }
            }
        }
        bVar.mo1465a(c0558e, aVar);
        c0558e.m4488U0(aVar.f3624e);
        c0558e.m4532v0(aVar.f3625f);
        c0558e.m4530u0(aVar.f3627h);
        c0558e.m4510k0(aVar.f3626g);
        aVar.f3629j = C0567b.a.f3617k;
        return aVar.f3628i;
    }

    /* JADX INFO: renamed from: C1 */
    private void m4542C1() {
        this.f3600y0 = 0;
        this.f3601z0 = 0;
    }

    /* JADX INFO: renamed from: g1 */
    private void m4543g1(C0558e c0558e) {
        int i = this.f3600y0 + 1;
        C0556c[] c0556cArr = this.f3583B0;
        if (i >= c0556cArr.length) {
            this.f3583B0 = (C0556c[]) Arrays.copyOf(c0556cArr, c0556cArr.length * 2);
        }
        this.f3583B0[this.f3600y0] = new C0556c(c0558e, 0, m4569x1());
        this.f3600y0++;
    }

    /* JADX INFO: renamed from: j1 */
    private void m4544j1(C0557d c0557d, C0552i c0552i) {
        this.f3597v0.m4368h(c0552i, this.f3597v0.m4375q(c0557d), 0, 5);
    }

    /* JADX INFO: renamed from: k1 */
    private void m4545k1(C0557d c0557d, C0552i c0552i) {
        this.f3597v0.m4368h(this.f3597v0.m4375q(c0557d), c0552i, 0, 5);
    }

    /* JADX INFO: renamed from: l1 */
    private void m4546l1(C0558e c0558e) {
        int i = this.f3601z0 + 1;
        C0556c[] c0556cArr = this.f3582A0;
        if (i >= c0556cArr.length) {
            this.f3582A0 = (C0556c[]) Arrays.copyOf(c0556cArr, c0556cArr.length * 2);
        }
        this.f3582A0[this.f3601z0] = new C0556c(c0558e, 1, m4569x1());
        this.f3601z0++;
    }

    /* JADX INFO: renamed from: B1 */
    public boolean m4547B1(int i) {
        return (this.f3584C0 & i) == i;
    }

    /* JADX INFO: renamed from: D1 */
    public void m4548D1(C0567b.b bVar) {
        this.f3594s0 = bVar;
        this.f3593r0.m4622n(bVar);
    }

    /* JADX INFO: renamed from: E1 */
    public void m4549E1(int i) {
        this.f3584C0 = i;
        C0547d.f3366r = m4547B1(512);
    }

    /* JADX INFO: renamed from: F1 */
    public void m4550F1(boolean z) {
        this.f3595t0 = z;
    }

    /* JADX INFO: renamed from: G1 */
    public void m4551G1(C0547d c0547d, boolean[] zArr) {
        zArr[2] = false;
        boolean zM4547B1 = m4547B1(64);
        mo4497Z0(c0547d, zM4547B1);
        int size = this.f3613p0.size();
        for (int i = 0; i < size; i++) {
            this.f3613p0.get(i).mo4497Z0(c0547d, zM4547B1);
        }
    }

    /* JADX INFO: renamed from: H1 */
    public void m4552H1() {
        this.f3592q0.m4599e(this);
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: Y0 */
    public void mo4495Y0(boolean z, boolean z2) {
        super.mo4495Y0(z, z2);
        int size = this.f3613p0.size();
        for (int i = 0; i < size; i++) {
            this.f3613p0.get(i).mo4495Y0(z, z2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:156:0x0316 A[PHI: r0 r13
      0x0316: PHI (r0v20 boolean) = (r0v19 boolean), (r0v22 boolean), (r0v22 boolean), (r0v22 boolean) binds: [B:143:0x02d8, B:151:0x02fe, B:152:0x0300, B:154:0x0306] A[DONT_GENERATE, DONT_INLINE]
      0x0316: PHI (r13v9 boolean) = (r13v8 boolean), (r13v11 boolean), (r13v11 boolean), (r13v11 boolean) binds: [B:143:0x02d8, B:151:0x02fe, B:152:0x0300, B:154:0x0306] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [boolean] */
    @Override // p016c.p033e.p037b.p038k.C0565l
    /* JADX INFO: renamed from: b1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo4553b1() {
        int i;
        int i2;
        boolean z;
        boolean z2;
        ?? r6;
        C0558e.b bVar;
        this.f3531W = 0;
        this.f3532X = 0;
        this.f3585D0 = false;
        this.f3586E0 = false;
        int size = this.f3613p0.size();
        int iMax = Math.max(0, m4481R());
        int iMax2 = Math.max(0, m4531v());
        C0558e.b[] bVarArr = this.f3525Q;
        C0558e.b bVar2 = bVarArr[1];
        C0558e.b bVar3 = bVarArr[0];
        C0548e c0548e = this.f3596u0;
        if (c0548e != null) {
            c0548e.f3418z++;
        }
        if (C0563j.m4588b(this.f3584C0, 1)) {
            C0573h.m4633h(this, m4563r1());
            for (int i3 = 0; i3 < size; i3++) {
                C0558e c0558e = this.f3613p0.get(i3);
                if (c0558e.m4501d0() && !(c0558e instanceof C0560g) && !(c0558e instanceof C0554a) && !(c0558e instanceof C0564k) && !c0558e.m4500c0()) {
                    C0558e.b bVarM4525s = c0558e.m4525s(0);
                    C0558e.b bVarM4525s2 = c0558e.m4525s(1);
                    C0558e.b bVar4 = C0558e.b.MATCH_CONSTRAINT;
                    if (!(bVarM4525s == bVar4 && c0558e.f3561n != 1 && bVarM4525s2 == bVar4 && c0558e.f3563o != 1)) {
                        m4541A1(c0558e, this.f3594s0, new C0567b.a(), C0567b.a.f3617k);
                    }
                }
            }
        }
        if (size <= 2 || !((bVar3 == (bVar = C0558e.b.WRAP_CONTENT) || bVar2 == bVar) && C0563j.m4588b(this.f3584C0, 1024) && C0574i.m4637c(this, m4563r1()))) {
            i = iMax2;
            i2 = iMax;
            z = false;
        } else {
            if (bVar3 == C0558e.b.WRAP_CONTENT) {
                if (iMax >= m4481R() || iMax <= 0) {
                    iMax = m4481R();
                } else {
                    m4488U0(iMax);
                    this.f3585D0 = true;
                }
            }
            if (bVar2 == C0558e.b.WRAP_CONTENT) {
                if (iMax2 >= m4531v() || iMax2 <= 0) {
                    iMax2 = m4531v();
                } else {
                    m4532v0(iMax2);
                    this.f3586E0 = true;
                }
            }
            i = iMax2;
            i2 = iMax;
            z = true;
        }
        boolean z3 = m4547B1(64) || m4547B1(128);
        C0547d c0547d = this.f3597v0;
        c0547d.f3382h = false;
        c0547d.f3383i = false;
        if (this.f3584C0 != 0 && z3) {
            c0547d.f3383i = true;
        }
        ArrayList<C0558e> arrayList = this.f3613p0;
        boolean z4 = m4537y() == C0558e.b.WRAP_CONTENT || m4475O() == C0558e.b.WRAP_CONTENT;
        m4542C1();
        for (int i4 = 0; i4 < size; i4++) {
            C0558e c0558e2 = this.f3613p0.get(i4);
            if (c0558e2 instanceof C0565l) {
                ((C0565l) c0558e2).mo4553b1();
            }
        }
        boolean zM4547B1 = m4547B1(64);
        boolean z5 = z;
        int i5 = 0;
        boolean zM4555f1 = true;
        while (zM4555f1) {
            int i6 = i5 + 1;
            try {
                this.f3597v0.m4361D();
                m4542C1();
                m4509k(this.f3597v0);
                for (int i7 = 0; i7 < size; i7++) {
                    this.f3613p0.get(i7).m4509k(this.f3597v0);
                }
                zM4555f1 = m4555f1(this.f3597v0);
                if (this.f3587F0 != null && this.f3587F0.get() != null) {
                    m4545k1(this.f3587F0.get(), this.f3597v0.m4375q(this.f3515G));
                    this.f3587F0 = null;
                }
                if (this.f3589H0 != null && this.f3589H0.get() != null) {
                    m4544j1(this.f3589H0.get(), this.f3597v0.m4375q(this.f3517I));
                    this.f3589H0 = null;
                }
                if (this.f3588G0 != null && this.f3588G0.get() != null) {
                    m4545k1(this.f3588G0.get(), this.f3597v0.m4375q(this.f3514F));
                    this.f3588G0 = null;
                }
                if (this.f3590I0 != null && this.f3590I0.get() != null) {
                    m4544j1(this.f3590I0.get(), this.f3597v0.m4375q(this.f3516H));
                    this.f3590I0 = null;
                }
                if (zM4555f1) {
                    this.f3597v0.m4380z();
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("EXCEPTION : " + e);
            }
            if (zM4555f1) {
                m4551G1(this.f3597v0, C0563j.f3611a);
            } else {
                mo4497Z0(this.f3597v0, zM4547B1);
                for (int i8 = 0; i8 < size; i8++) {
                    this.f3613p0.get(i8).mo4497Z0(this.f3597v0, zM4547B1);
                }
            }
            if (z4 && i6 < 8 && C0563j.f3611a[2]) {
                int iMax3 = 0;
                int iMax4 = 0;
                for (int i9 = 0; i9 < size; i9++) {
                    C0558e c0558e3 = this.f3613p0.get(i9);
                    iMax3 = Math.max(iMax3, c0558e3.f3531W + c0558e3.m4481R());
                    iMax4 = Math.max(iMax4, c0558e3.f3532X + c0558e3.m4531v());
                }
                int iMax5 = Math.max(this.f3534Z, iMax3);
                int iMax6 = Math.max(this.f3536a0, iMax4);
                if (bVar3 != C0558e.b.WRAP_CONTENT || m4481R() >= iMax5) {
                    z2 = false;
                } else {
                    m4488U0(iMax5);
                    this.f3525Q[0] = C0558e.b.WRAP_CONTENT;
                    z2 = true;
                    z5 = true;
                }
                if (bVar2 == C0558e.b.WRAP_CONTENT && m4531v() < iMax6) {
                    m4532v0(iMax6);
                    this.f3525Q[1] = C0558e.b.WRAP_CONTENT;
                    z2 = true;
                    z5 = true;
                }
            } else {
                z2 = false;
            }
            int iMax7 = Math.max(this.f3534Z, m4481R());
            if (iMax7 > m4481R()) {
                m4488U0(iMax7);
                this.f3525Q[0] = C0558e.b.FIXED;
                z2 = true;
                z5 = true;
            }
            int iMax8 = Math.max(this.f3536a0, m4531v());
            if (iMax8 > m4531v()) {
                m4532v0(iMax8);
                r6 = 1;
                this.f3525Q[1] = C0558e.b.FIXED;
                z2 = true;
                z5 = true;
            } else {
                r6 = 1;
            }
            if (z5) {
                zM4555f1 = z2;
            } else {
                if (this.f3525Q[0] == C0558e.b.WRAP_CONTENT && i2 > 0 && m4481R() > i2) {
                    this.f3585D0 = r6;
                    this.f3525Q[0] = C0558e.b.FIXED;
                    m4488U0(i2);
                    z2 = true;
                    z5 = true;
                }
                if (this.f3525Q[r6] == C0558e.b.WRAP_CONTENT && i > 0 && m4531v() > i) {
                    this.f3586E0 = r6;
                    this.f3525Q[r6] = C0558e.b.FIXED;
                    m4532v0(i);
                    z5 = true;
                    zM4555f1 = true;
                }
            }
            i5 = i6;
        }
        this.f3613p0 = arrayList;
        if (z5) {
            C0558e.b[] bVarArr2 = this.f3525Q;
            bVarArr2[0] = bVar3;
            bVarArr2[1] = bVar2;
        }
        mo4508j0(this.f3597v0.m4378v());
    }

    /* JADX INFO: renamed from: e1 */
    void m4554e1(C0558e c0558e, int i) {
        if (i == 0) {
            m4543g1(c0558e);
        } else if (i == 1) {
            m4546l1(c0558e);
        }
    }

    /* JADX INFO: renamed from: f1 */
    public boolean m4555f1(C0547d c0547d) {
        boolean zM4547B1 = m4547B1(64);
        mo4413g(c0547d, zM4547B1);
        int size = this.f3613p0.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            C0558e c0558e = this.f3613p0.get(i);
            c0558e.m4452C0(0, false);
            c0558e.m4452C0(1, false);
            if (c0558e instanceof C0554a) {
                z = true;
            }
        }
        if (z) {
            for (int i2 = 0; i2 < size; i2++) {
                C0558e c0558e2 = this.f3613p0.get(i2);
                if (c0558e2 instanceof C0554a) {
                    ((C0554a) c0558e2).m4416h1();
                }
            }
        }
        for (int i3 = 0; i3 < size; i3++) {
            C0558e c0558e3 = this.f3613p0.get(i3);
            if (c0558e3.m4503f()) {
                c0558e3.mo4413g(c0547d, zM4547B1);
            }
        }
        if (C0547d.f3366r) {
            HashSet<C0558e> hashSet = new HashSet<>();
            for (int i4 = 0; i4 < size; i4++) {
                C0558e c0558e4 = this.f3613p0.get(i4);
                if (!c0558e4.m4503f()) {
                    hashSet.add(c0558e4);
                }
            }
            m4502e(this, c0547d, hashSet, m4537y() == C0558e.b.WRAP_CONTENT ? 0 : 1, false);
            for (C0558e c0558e5 : hashSet) {
                C0563j.m4587a(this, c0547d, c0558e5);
                c0558e5.mo4413g(c0547d, zM4547B1);
            }
        } else {
            for (int i5 = 0; i5 < size; i5++) {
                C0558e c0558e6 = this.f3613p0.get(i5);
                if (c0558e6 instanceof C0559f) {
                    C0558e.b[] bVarArr = c0558e6.f3525Q;
                    C0558e.b bVar = bVarArr[0];
                    C0558e.b bVar2 = bVarArr[1];
                    if (bVar == C0558e.b.WRAP_CONTENT) {
                        c0558e6.m4540z0(C0558e.b.FIXED);
                    }
                    if (bVar2 == C0558e.b.WRAP_CONTENT) {
                        c0558e6.m4480Q0(C0558e.b.FIXED);
                    }
                    c0558e6.mo4413g(c0547d, zM4547B1);
                    if (bVar == C0558e.b.WRAP_CONTENT) {
                        c0558e6.m4540z0(bVar);
                    }
                    if (bVar2 == C0558e.b.WRAP_CONTENT) {
                        c0558e6.m4480Q0(bVar2);
                    }
                } else {
                    C0563j.m4587a(this, c0547d, c0558e6);
                    if (!c0558e6.m4503f()) {
                        c0558e6.mo4413g(c0547d, zM4547B1);
                    }
                }
            }
        }
        if (this.f3600y0 > 0) {
            C0555b.m4421b(this, c0547d, null, 0);
        }
        if (this.f3601z0 > 0) {
            C0555b.m4421b(this, c0547d, null, 1);
        }
        return true;
    }

    @Override // p016c.p033e.p037b.p038k.C0565l, p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: h0 */
    public void mo4505h0() {
        this.f3597v0.m4361D();
        this.f3598w0 = 0;
        this.f3599x0 = 0;
        super.mo4505h0();
    }

    /* JADX INFO: renamed from: h1 */
    public void m4556h1(C0557d c0557d) {
        WeakReference<C0557d> weakReference = this.f3590I0;
        if (weakReference == null || weakReference.get() == null || c0557d.m4428d() > this.f3590I0.get().m4428d()) {
            this.f3590I0 = new WeakReference<>(c0557d);
        }
    }

    /* JADX INFO: renamed from: i1 */
    public void m4557i1(C0557d c0557d) {
        WeakReference<C0557d> weakReference = this.f3588G0;
        if (weakReference == null || weakReference.get() == null || c0557d.m4428d() > this.f3588G0.get().m4428d()) {
            this.f3588G0 = new WeakReference<>(c0557d);
        }
    }

    /* JADX INFO: renamed from: m1 */
    void m4558m1(C0557d c0557d) {
        WeakReference<C0557d> weakReference = this.f3589H0;
        if (weakReference == null || weakReference.get() == null || c0557d.m4428d() > this.f3589H0.get().m4428d()) {
            this.f3589H0 = new WeakReference<>(c0557d);
        }
    }

    /* JADX INFO: renamed from: n1 */
    void m4559n1(C0557d c0557d) {
        WeakReference<C0557d> weakReference = this.f3587F0;
        if (weakReference == null || weakReference.get() == null || c0557d.m4428d() > this.f3587F0.get().m4428d()) {
            this.f3587F0 = new WeakReference<>(c0557d);
        }
    }

    /* JADX INFO: renamed from: o1 */
    public boolean m4560o1(boolean z) {
        return this.f3593r0.m4616f(z);
    }

    /* JADX INFO: renamed from: p1 */
    public boolean m4561p1(boolean z) {
        return this.f3593r0.m4617g(z);
    }

    /* JADX INFO: renamed from: q1 */
    public boolean m4562q1(boolean z, int i) {
        return this.f3593r0.m4618h(z, i);
    }

    /* JADX INFO: renamed from: r1 */
    public C0567b.b m4563r1() {
        return this.f3594s0;
    }

    /* JADX INFO: renamed from: s1 */
    public int m4564s1() {
        return this.f3584C0;
    }

    /* JADX INFO: renamed from: t1 */
    public C0547d m4565t1() {
        return this.f3597v0;
    }

    /* JADX INFO: renamed from: u1 */
    public void m4566u1() {
        this.f3593r0.m4619j();
    }

    /* JADX INFO: renamed from: v1 */
    public void m4567v1() {
        this.f3593r0.m4620k();
    }

    /* JADX INFO: renamed from: w1 */
    public boolean m4568w1() {
        return this.f3586E0;
    }

    /* JADX INFO: renamed from: x1 */
    public boolean m4569x1() {
        return this.f3595t0;
    }

    /* JADX INFO: renamed from: y1 */
    public boolean m4570y1() {
        return this.f3585D0;
    }

    /* JADX INFO: renamed from: z1 */
    public long m4571z1(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        this.f3598w0 = i8;
        this.f3599x0 = i9;
        return this.f3592q0.m4598d(this, i, i8, i9, i2, i3, i4, i5, i6, i7);
    }
}
