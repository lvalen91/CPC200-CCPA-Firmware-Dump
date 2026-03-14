package c.e.b.k;

import c.e.b.k.d;
import c.e.b.k.e;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends i {
    private int r0 = 0;
    private boolean s0 = true;
    private int t0 = 0;
    boolean u0 = false;

    public boolean c1() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        boolean z = true;
        while (true) {
            i = this.q0;
            if (i4 >= i) {
                break;
            }
            e eVar = this.p0[i4];
            if ((this.s0 || eVar.h()) && ((((i2 = this.r0) == 0 || i2 == 1) && !eVar.e0()) || (((i3 = this.r0) == 2 || i3 == 3) && !eVar.f0()))) {
                z = false;
            }
            i4++;
        }
        if (!z || i <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z2 = false;
        for (int i5 = 0; i5 < this.q0; i5++) {
            e eVar2 = this.p0[i5];
            if (this.s0 || eVar2.h()) {
                if (!z2) {
                    int i6 = this.r0;
                    if (i6 == 0) {
                        iMax = eVar2.m(d.b.LEFT).d();
                    } else if (i6 == 1) {
                        iMax = eVar2.m(d.b.RIGHT).d();
                    } else if (i6 == 2) {
                        iMax = eVar2.m(d.b.TOP).d();
                    } else if (i6 == 3) {
                        iMax = eVar2.m(d.b.BOTTOM).d();
                    }
                    z2 = true;
                }
                int i7 = this.r0;
                if (i7 == 0) {
                    iMax = Math.min(iMax, eVar2.m(d.b.LEFT).d());
                } else if (i7 == 1) {
                    iMax = Math.max(iMax, eVar2.m(d.b.RIGHT).d());
                } else if (i7 == 2) {
                    iMax = Math.min(iMax, eVar2.m(d.b.TOP).d());
                } else if (i7 == 3) {
                    iMax = Math.max(iMax, eVar2.m(d.b.BOTTOM).d());
                }
            }
        }
        int i8 = iMax + this.t0;
        int i9 = this.r0;
        if (i9 == 0 || i9 == 1) {
            p0(i8, i8);
        } else {
            s0(i8, i8);
        }
        this.u0 = true;
        return true;
    }

    public boolean d1() {
        return this.s0;
    }

    @Override // c.e.b.k.e
    public boolean e0() {
        return this.u0;
    }

    public int e1() {
        return this.r0;
    }

    @Override // c.e.b.k.e
    public boolean f0() {
        return this.u0;
    }

    public int f1() {
        return this.t0;
    }

    @Override // c.e.b.k.e
    public void g(c.e.b.d dVar, boolean z) {
        d[] dVarArr;
        boolean z2;
        int i;
        int i2;
        d[] dVarArr2 = this.N;
        dVarArr2[0] = this.F;
        dVarArr2[2] = this.G;
        dVarArr2[1] = this.H;
        dVarArr2[3] = this.I;
        int i3 = 0;
        while (true) {
            dVarArr = this.N;
            if (i3 >= dVarArr.length) {
                break;
            }
            dVarArr[i3].i = dVar.q(dVarArr[i3]);
            i3++;
        }
        int i4 = this.r0;
        if (i4 < 0 || i4 >= 4) {
            return;
        }
        d dVar2 = dVarArr[i4];
        if (!this.u0) {
            c1();
        }
        if (this.u0) {
            this.u0 = false;
            int i5 = this.r0;
            if (i5 == 0 || i5 == 1) {
                dVar.f(this.F.i, this.W);
                dVar.f(this.H.i, this.W);
                return;
            } else {
                if (i5 == 2 || i5 == 3) {
                    dVar.f(this.G.i, this.X);
                    dVar.f(this.I.i, this.X);
                    return;
                }
                return;
            }
        }
        for (int i6 = 0; i6 < this.q0; i6++) {
            e eVar = this.p0[i6];
            if ((this.s0 || eVar.h()) && ((((i = this.r0) == 0 || i == 1) && eVar.y() == e.b.MATCH_CONSTRAINT && eVar.F.f != null && eVar.H.f != null) || (((i2 = this.r0) == 2 || i2 == 3) && eVar.O() == e.b.MATCH_CONSTRAINT && eVar.G.f != null && eVar.I.f != null))) {
                z2 = true;
                break;
            }
        }
        z2 = false;
        boolean z3 = this.F.k() || this.H.k();
        boolean z4 = this.G.k() || this.I.k();
        int i7 = !z2 && ((this.r0 == 0 && z3) || ((this.r0 == 2 && z4) || ((this.r0 == 1 && z3) || (this.r0 == 3 && z4)))) ? 5 : 4;
        for (int i8 = 0; i8 < this.q0; i8++) {
            e eVar2 = this.p0[i8];
            if (this.s0 || eVar2.h()) {
                c.e.b.i iVarQ = dVar.q(eVar2.N[this.r0]);
                d[] dVarArr3 = eVar2.N;
                int i9 = this.r0;
                dVarArr3[i9].i = iVarQ;
                int i10 = (dVarArr3[i9].f == null || dVarArr3[i9].f.f1132d != this) ? 0 : dVarArr3[i9].g + 0;
                int i11 = this.r0;
                if (i11 == 0 || i11 == 2) {
                    dVar.i(dVar2.i, iVarQ, this.t0 - i10, z2);
                } else {
                    dVar.g(dVar2.i, iVarQ, this.t0 + i10, z2);
                }
                dVar.e(dVar2.i, iVarQ, this.t0 + i10, i7);
            }
        }
        int i12 = this.r0;
        if (i12 == 0) {
            dVar.e(this.H.i, this.F.i, 0, 8);
            dVar.e(this.F.i, this.R.H.i, 0, 4);
            dVar.e(this.F.i, this.R.F.i, 0, 0);
            return;
        }
        if (i12 == 1) {
            dVar.e(this.F.i, this.H.i, 0, 8);
            dVar.e(this.F.i, this.R.F.i, 0, 4);
            dVar.e(this.F.i, this.R.H.i, 0, 0);
        } else if (i12 == 2) {
            dVar.e(this.I.i, this.G.i, 0, 8);
            dVar.e(this.G.i, this.R.I.i, 0, 4);
            dVar.e(this.G.i, this.R.G.i, 0, 0);
        } else if (i12 == 3) {
            dVar.e(this.G.i, this.I.i, 0, 8);
            dVar.e(this.G.i, this.R.G.i, 0, 4);
            dVar.e(this.G.i, this.R.I.i, 0, 0);
        }
    }

    public int g1() {
        int i = this.r0;
        if (i == 0 || i == 1) {
            return 0;
        }
        return (i == 2 || i == 3) ? 1 : -1;
    }

    @Override // c.e.b.k.e
    public boolean h() {
        return true;
    }

    protected void h1() {
        for (int i = 0; i < this.q0; i++) {
            e eVar = this.p0[i];
            int i2 = this.r0;
            if (i2 == 0 || i2 == 1) {
                eVar.C0(0, true);
            } else if (i2 == 2 || i2 == 3) {
                eVar.C0(1, true);
            }
        }
    }

    public void i1(boolean z) {
        this.s0 = z;
    }

    public void j1(int i) {
        this.r0 = i;
    }

    public void k1(int i) {
        this.t0 = i;
    }

    @Override // c.e.b.k.e
    public String toString() {
        String str = "[Barrier] " + r() + " {";
        for (int i = 0; i < this.q0; i++) {
            e eVar = this.p0[i];
            if (i > 0) {
                str = str + ", ";
            }
            str = str + eVar.r();
        }
        return str + "}";
    }
}
