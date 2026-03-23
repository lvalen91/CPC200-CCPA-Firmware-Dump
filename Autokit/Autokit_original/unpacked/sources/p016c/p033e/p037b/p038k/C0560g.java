package p016c.p033e.p037b.p038k;

import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.C0552i;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: c.e.b.k.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0560g extends C0558e {

    /* JADX INFO: renamed from: p0 */
    protected float f3602p0 = -1.0f;

    /* JADX INFO: renamed from: q0 */
    protected int f3603q0 = -1;

    /* JADX INFO: renamed from: r0 */
    protected int f3604r0 = -1;

    /* JADX INFO: renamed from: s0 */
    private C0557d f3605s0 = this.f3515G;

    /* JADX INFO: renamed from: t0 */
    private int f3606t0 = 0;

    /* JADX INFO: renamed from: u0 */
    private boolean f3607u0;

    /* JADX INFO: renamed from: c.e.b.k.g$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f3608a;

        static {
            int[] iArr = new int[C0557d.b.values().length];
            f3608a = iArr;
            try {
                iArr[C0557d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3608a[C0557d.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3608a[C0557d.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3608a[C0557d.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3608a[C0557d.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f3608a[C0557d.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f3608a[C0557d.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f3608a[C0557d.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f3608a[C0557d.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public C0560g() {
        this.f3523O.clear();
        this.f3523O.add(this.f3605s0);
        int length = this.f3522N.length;
        for (int i = 0; i < length; i++) {
            this.f3522N[i] = this.f3605s0;
        }
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: Z0 */
    public void mo4497Z0(C0547d c0547d, boolean z) {
        if (m4463I() == null) {
            return;
        }
        int iM4379x = c0547d.m4379x(this.f3605s0);
        if (this.f3606t0 == 1) {
            m4490V0(iM4379x);
            m4492W0(0);
            m4532v0(m4463I().m4531v());
            m4488U0(0);
            return;
        }
        m4490V0(0);
        m4492W0(iM4379x);
        m4488U0(m4463I().m4481R());
        m4532v0(0);
    }

    /* JADX INFO: renamed from: a1 */
    public C0557d m4572a1() {
        return this.f3605s0;
    }

    /* JADX INFO: renamed from: b1 */
    public int m4573b1() {
        return this.f3606t0;
    }

    /* JADX INFO: renamed from: c1 */
    public int m4574c1() {
        return this.f3603q0;
    }

    /* JADX INFO: renamed from: d1 */
    public int m4575d1() {
        return this.f3604r0;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: e0 */
    public boolean mo4409e0() {
        return this.f3607u0;
    }

    /* JADX INFO: renamed from: e1 */
    public float m4576e1() {
        return this.f3602p0;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: f0 */
    public boolean mo4411f0() {
        return this.f3607u0;
    }

    /* JADX INFO: renamed from: f1 */
    public void m4577f1(int i) {
        this.f3605s0.m4443s(i);
        this.f3607u0 = true;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: g */
    public void mo4413g(C0547d c0547d, boolean z) {
        C0559f c0559f = (C0559f) m4463I();
        if (c0559f == null) {
            return;
        }
        C0557d c0557dMo4513m = c0559f.mo4513m(C0557d.b.LEFT);
        C0557d c0557dMo4513m2 = c0559f.mo4513m(C0557d.b.RIGHT);
        C0558e c0558e = this.f3526R;
        boolean z2 = c0558e != null && c0558e.f3525Q[0] == C0558e.b.WRAP_CONTENT;
        if (this.f3606t0 == 0) {
            c0557dMo4513m = c0559f.mo4513m(C0557d.b.TOP);
            c0557dMo4513m2 = c0559f.mo4513m(C0557d.b.BOTTOM);
            C0558e c0558e2 = this.f3526R;
            z2 = c0558e2 != null && c0558e2.f3525Q[1] == C0558e.b.WRAP_CONTENT;
        }
        if (this.f3607u0 && this.f3605s0.m4437m()) {
            C0552i c0552iM4375q = c0547d.m4375q(this.f3605s0);
            c0547d.m4366f(c0552iM4375q, this.f3605s0.m4428d());
            if (this.f3603q0 != -1) {
                if (z2) {
                    c0547d.m4368h(c0547d.m4375q(c0557dMo4513m2), c0552iM4375q, 0, 5);
                }
            } else if (this.f3604r0 != -1 && z2) {
                C0552i c0552iM4375q2 = c0547d.m4375q(c0557dMo4513m2);
                c0547d.m4368h(c0552iM4375q, c0547d.m4375q(c0557dMo4513m), 0, 5);
                c0547d.m4368h(c0552iM4375q2, c0552iM4375q, 0, 5);
            }
            this.f3607u0 = false;
            return;
        }
        if (this.f3603q0 != -1) {
            C0552i c0552iM4375q3 = c0547d.m4375q(this.f3605s0);
            c0547d.m4365e(c0552iM4375q3, c0547d.m4375q(c0557dMo4513m), this.f3603q0, 8);
            if (z2) {
                c0547d.m4368h(c0547d.m4375q(c0557dMo4513m2), c0552iM4375q3, 0, 5);
                return;
            }
            return;
        }
        if (this.f3604r0 == -1) {
            if (this.f3602p0 != -1.0f) {
                c0547d.m4364d(C0547d.m4356s(c0547d, c0547d.m4375q(this.f3605s0), c0547d.m4375q(c0557dMo4513m2), this.f3602p0));
                return;
            }
            return;
        }
        C0552i c0552iM4375q4 = c0547d.m4375q(this.f3605s0);
        C0552i c0552iM4375q5 = c0547d.m4375q(c0557dMo4513m2);
        c0547d.m4365e(c0552iM4375q4, c0552iM4375q5, -this.f3604r0, 8);
        if (z2) {
            c0547d.m4368h(c0552iM4375q4, c0547d.m4375q(c0557dMo4513m), 0, 5);
            c0547d.m4368h(c0552iM4375q5, c0552iM4375q4, 0, 5);
        }
    }

    /* JADX INFO: renamed from: g1 */
    public void m4578g1(int i) {
        if (i > -1) {
            this.f3602p0 = -1.0f;
            this.f3603q0 = i;
            this.f3604r0 = -1;
        }
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: h */
    public boolean mo4415h() {
        return true;
    }

    /* JADX INFO: renamed from: h1 */
    public void m4579h1(int i) {
        if (i > -1) {
            this.f3602p0 = -1.0f;
            this.f3603q0 = -1;
            this.f3604r0 = i;
        }
    }

    /* JADX INFO: renamed from: i1 */
    public void m4580i1(float f) {
        if (f > -1.0f) {
            this.f3602p0 = f;
            this.f3603q0 = -1;
            this.f3604r0 = -1;
        }
    }

    /* JADX INFO: renamed from: j1 */
    public void m4581j1(int i) {
        if (this.f3606t0 == i) {
            return;
        }
        this.f3606t0 = i;
        this.f3523O.clear();
        if (this.f3606t0 == 1) {
            this.f3605s0 = this.f3514F;
        } else {
            this.f3605s0 = this.f3515G;
        }
        this.f3523O.add(this.f3605s0);
        int length = this.f3522N.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.f3522N[i2] = this.f3605s0;
        }
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: m */
    public C0557d mo4513m(C0557d.b bVar) {
        switch (a.f3608a[bVar.ordinal()]) {
            case 1:
            case 2:
                if (this.f3606t0 == 1) {
                    return this.f3605s0;
                }
                break;
            case 3:
            case 4:
                if (this.f3606t0 == 0) {
                    return this.f3605s0;
                }
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                return null;
        }
        throw new AssertionError(bVar.name());
    }
}
