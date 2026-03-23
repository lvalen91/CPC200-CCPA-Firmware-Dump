package p016c.p033e.p037b.p038k;

import p016c.p033e.p037b.C0547d;
import p016c.p033e.p037b.C0552i;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: c.e.b.k.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0554a extends C0562i {

    /* JADX INFO: renamed from: r0 */
    private int f3464r0 = 0;

    /* JADX INFO: renamed from: s0 */
    private boolean f3465s0 = true;

    /* JADX INFO: renamed from: t0 */
    private int f3466t0 = 0;

    /* JADX INFO: renamed from: u0 */
    boolean f3467u0 = false;

    /* JADX INFO: renamed from: c1 */
    public boolean m4407c1() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        boolean z = true;
        while (true) {
            i = this.f3610q0;
            if (i4 >= i) {
                break;
            }
            C0558e c0558e = this.f3609p0[i4];
            if ((this.f3465s0 || c0558e.mo4415h()) && ((((i2 = this.f3464r0) == 0 || i2 == 1) && !c0558e.mo4409e0()) || (((i3 = this.f3464r0) == 2 || i3 == 3) && !c0558e.mo4411f0()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z2 = false;
        for (int i5 = 0; i5 < this.f3610q0; i5++) {
            C0558e c0558e2 = this.f3609p0[i5];
            if (this.f3465s0 || c0558e2.mo4415h()) {
                if (!z2) {
                    int i6 = this.f3464r0;
                    if (i6 == 0) {
                        iMax = c0558e2.mo4513m(C0557d.b.LEFT).m4428d();
                    } else if (i6 == 1) {
                        iMax = c0558e2.mo4513m(C0557d.b.RIGHT).m4428d();
                    } else if (i6 == 2) {
                        iMax = c0558e2.mo4513m(C0557d.b.TOP).m4428d();
                    } else if (i6 == 3) {
                        iMax = c0558e2.mo4513m(C0557d.b.BOTTOM).m4428d();
                    }
                    z2 = true;
                }
                int i7 = this.f3464r0;
                if (i7 == 0) {
                    iMax = Math.min(iMax, c0558e2.mo4513m(C0557d.b.LEFT).m4428d());
                } else if (i7 == 1) {
                    iMax = Math.max(iMax, c0558e2.mo4513m(C0557d.b.RIGHT).m4428d());
                } else if (i7 == 2) {
                    iMax = Math.min(iMax, c0558e2.mo4513m(C0557d.b.TOP).m4428d());
                } else if (i7 == 3) {
                    iMax = Math.max(iMax, c0558e2.mo4513m(C0557d.b.BOTTOM).m4428d());
                }
            }
        }
        int i8 = iMax + this.f3466t0;
        int i9 = this.f3464r0;
        if (i9 == 0 || i9 == 1) {
            m4520p0(i8, i8);
        } else {
            m4526s0(i8, i8);
        }
        this.f3467u0 = true;
        return true;
    }

    /* JADX INFO: renamed from: d1 */
    public boolean m4408d1() {
        return this.f3465s0;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: e0 */
    public boolean mo4409e0() {
        return this.f3467u0;
    }

    /* JADX INFO: renamed from: e1 */
    public int m4410e1() {
        return this.f3464r0;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: f0 */
    public boolean mo4411f0() {
        return this.f3467u0;
    }

    /* JADX INFO: renamed from: f1 */
    public int m4412f1() {
        return this.f3466t0;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: g */
    public void mo4413g(C0547d c0547d, boolean z) {
        C0557d[] c0557dArr;
        boolean z2;
        int i;
        int i2;
        C0557d[] c0557dArr2 = this.f3522N;
        c0557dArr2[0] = this.f3514F;
        c0557dArr2[2] = this.f3515G;
        c0557dArr2[1] = this.f3516H;
        c0557dArr2[3] = this.f3517I;
        int i3 = 0;
        while (true) {
            c0557dArr = this.f3522N;
            if (i3 >= c0557dArr.length) {
                break;
            }
            c0557dArr[i3].f3496i = c0547d.m4375q(c0557dArr[i3]);
            i3++;
        }
        int i4 = this.f3464r0;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        C0557d c0557d = c0557dArr[i4];
        if (!this.f3467u0) {
            m4407c1();
        }
        if (this.f3467u0) {
            this.f3467u0 = false;
            int i5 = this.f3464r0;
            if (i5 == 0 || i5 == 1) {
                c0547d.m4366f(this.f3514F.f3496i, this.f3531W);
                c0547d.m4366f(this.f3516H.f3496i, this.f3531W);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    c0547d.m4366f(this.f3515G.f3496i, this.f3532X);
                    c0547d.m4366f(this.f3517I.f3496i, this.f3532X);
                    return;
                }
                return;
            }
        }
        for (int i6 = 0; i6 < this.f3610q0; i6++) {
            C0558e c0558e = this.f3609p0[i6];
            if ((this.f3465s0 || c0558e.mo4415h()) && ((((i = this.f3464r0) == 0 || i == 1) && c0558e.m4537y() == C0558e.b.MATCH_CONSTRAINT && c0558e.f3514F.f3493f != null && c0558e.f3516H.f3493f != null) || (((i2 = this.f3464r0) == 2 || i2 == 3) && c0558e.m4475O() == C0558e.b.MATCH_CONSTRAINT && c0558e.f3515G.f3493f != null && c0558e.f3517I.f3493f != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.f3514F.m4435k() || this.f3516H.m4435k();
        boolean z4 = this.f3515G.m4435k() || this.f3517I.m4435k();
        int i7 = !z2 && ((this.f3464r0 == 0 && z3) || ((this.f3464r0 == 2 && z4) || ((this.f3464r0 == 1 && z3) || (this.f3464r0 == 3 && z4)))) ? 5 : 4;
        for (int i8 = 0; i8 < this.f3610q0; i8++) {
            C0558e c0558e2 = this.f3609p0[i8];
            if (this.f3465s0 || c0558e2.mo4415h()) {
                C0552i c0552iM4375q = c0547d.m4375q(c0558e2.f3522N[this.f3464r0]);
                C0557d[] c0557dArr3 = c0558e2.f3522N;
                int i9 = this.f3464r0;
                c0557dArr3[i9].f3496i = c0552iM4375q;
                int i10 = (c0557dArr3[i9].f3493f == null || c0557dArr3[i9].f3493f.f3491d != this) ? 0 : c0557dArr3[i9].f3494g + 0;
                int i11 = this.f3464r0;
                if (i11 == 0 || i11 == 2) {
                    c0547d.m4369i(c0557d.f3496i, c0552iM4375q, this.f3466t0 - i10, z2);
                } else {
                    c0547d.m4367g(c0557d.f3496i, c0552iM4375q, this.f3466t0 + i10, z2);
                }
                c0547d.m4365e(c0557d.f3496i, c0552iM4375q, this.f3466t0 + i10, i7);
            }
        }
        int i12 = this.f3464r0;
        if (i12 == 0) {
            c0547d.m4365e(this.f3516H.f3496i, this.f3514F.f3496i, 0, 8);
            c0547d.m4365e(this.f3514F.f3496i, this.f3526R.f3516H.f3496i, 0, 4);
            c0547d.m4365e(this.f3514F.f3496i, this.f3526R.f3514F.f3496i, 0, 0);
            return;
        }
        if (i12 == 1) {
            c0547d.m4365e(this.f3514F.f3496i, this.f3516H.f3496i, 0, 8);
            c0547d.m4365e(this.f3514F.f3496i, this.f3526R.f3514F.f3496i, 0, 4);
            c0547d.m4365e(this.f3514F.f3496i, this.f3526R.f3516H.f3496i, 0, 0);
        } else if (i12 == 2) {
            c0547d.m4365e(this.f3517I.f3496i, this.f3515G.f3496i, 0, 8);
            c0547d.m4365e(this.f3515G.f3496i, this.f3526R.f3517I.f3496i, 0, 4);
            c0547d.m4365e(this.f3515G.f3496i, this.f3526R.f3515G.f3496i, 0, 0);
        } else if (i12 == 3) {
            c0547d.m4365e(this.f3515G.f3496i, this.f3517I.f3496i, 0, 8);
            c0547d.m4365e(this.f3515G.f3496i, this.f3526R.f3515G.f3496i, 0, 4);
            c0547d.m4365e(this.f3515G.f3496i, this.f3526R.f3517I.f3496i, 0, 0);
        }
    }

    /* JADX INFO: renamed from: g1 */
    public int m4414g1() {
        int i = this.f3464r0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    /* JADX INFO: renamed from: h */
    public boolean mo4415h() {
        return true;
    }

    /* JADX INFO: renamed from: h1 */
    protected void m4416h1() {
        for (int i = 0; i < this.f3610q0; i++) {
            C0558e c0558e = this.f3609p0[i];
            int i2 = this.f3464r0;
            if (i2 == 0 || i2 == 1) {
                c0558e.m4452C0(0, true);
            } else if (i2 == 2 || i2 == 3) {
                c0558e.m4452C0(1, true);
            }
        }
    }

    /* JADX INFO: renamed from: i1 */
    public void m4417i1(boolean z) {
        this.f3465s0 = z;
    }

    /* JADX INFO: renamed from: j1 */
    public void m4418j1(int i) {
        this.f3464r0 = i;
    }

    /* JADX INFO: renamed from: k1 */
    public void m4419k1(int i) {
        this.f3466t0 = i;
    }

    @Override // p016c.p033e.p037b.p038k.C0558e
    public String toString() {
        String str = "[Barrier] " + m4523r() + " {";
        for (int i = 0; i < this.f3610q0; i++) {
            C0558e c0558e = this.f3609p0[i];
            if (i > 0) {
                str = str + ", ";
            }
            str = str + c0558e.m4523r();
        }
        return str + "}";
    }
}
