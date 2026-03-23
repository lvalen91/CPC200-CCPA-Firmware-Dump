package c.e.b.k;

import c.e.b.k.d;
import c.e.b.k.e;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends e {
    protected float p0 = -1.0f;
    protected int q0 = -1;
    protected int r0 = -1;
    private d s0 = this.G;
    private int t0 = 0;
    private boolean u0;

    static /* synthetic */ class a {
        static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[d.b.values().length];
            a = iArr;
            try {
                iArr[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[d.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[d.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[d.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[d.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[d.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[d.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[d.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[d.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public g() {
        this.O.clear();
        this.O.add(this.s0);
        int length = this.N.length;
        for (int i = 0; i < length; i++) {
            this.N[i] = this.s0;
        }
    }

    @Override // c.e.b.k.e
    public void Z0(c.e.b.d dVar, boolean z) {
        if (I() == null) {
            return;
        }
        int iX = dVar.x(this.s0);
        if (this.t0 == 1) {
            V0(iX);
            W0(0);
            v0(I().v());
            U0(0);
            return;
        }
        V0(0);
        W0(iX);
        U0(I().R());
        v0(0);
    }

    public d a1() {
        return this.s0;
    }

    public int b1() {
        return this.t0;
    }

    public int c1() {
        return this.q0;
    }

    public int d1() {
        return this.r0;
    }

    @Override // c.e.b.k.e
    public boolean e0() {
        return this.u0;
    }

    public float e1() {
        return this.p0;
    }

    @Override // c.e.b.k.e
    public boolean f0() {
        return this.u0;
    }

    public void f1(int i) {
        this.s0.s(i);
        this.u0 = true;
    }

    @Override // c.e.b.k.e
    public void g(c.e.b.d dVar, boolean z) {
        f fVar = (f) I();
        if (fVar == null) {
            return;
        }
        d dVarM = fVar.m(d.b.LEFT);
        d dVarM2 = fVar.m(d.b.RIGHT);
        e eVar = this.R;
        boolean z2 = eVar != null && eVar.Q[0] == e.b.WRAP_CONTENT;
        if (this.t0 == 0) {
            dVarM = fVar.m(d.b.TOP);
            dVarM2 = fVar.m(d.b.BOTTOM);
            e eVar2 = this.R;
            z2 = eVar2 != null && eVar2.Q[1] == e.b.WRAP_CONTENT;
        }
        if (this.u0 && this.s0.m()) {
            c.e.b.i iVarQ = dVar.q(this.s0);
            dVar.f(iVarQ, this.s0.d());
            if (this.q0 != -1) {
                if (z2) {
                    dVar.h(dVar.q(dVarM2), iVarQ, 0, 5);
                }
            } else if (this.r0 != -1 && z2) {
                c.e.b.i iVarQ2 = dVar.q(dVarM2);
                dVar.h(iVarQ, dVar.q(dVarM), 0, 5);
                dVar.h(iVarQ2, iVarQ, 0, 5);
            }
            this.u0 = false;
            return;
        }
        if (this.q0 != -1) {
            c.e.b.i iVarQ3 = dVar.q(this.s0);
            dVar.e(iVarQ3, dVar.q(dVarM), this.q0, 8);
            if (z2) {
                dVar.h(dVar.q(dVarM2), iVarQ3, 0, 5);
                return;
            }
            return;
        }
        if (this.r0 == -1) {
            if (this.p0 != -1.0f) {
                dVar.d(c.e.b.d.s(dVar, dVar.q(this.s0), dVar.q(dVarM2), this.p0));
                return;
            }
            return;
        }
        c.e.b.i iVarQ4 = dVar.q(this.s0);
        c.e.b.i iVarQ5 = dVar.q(dVarM2);
        dVar.e(iVarQ4, iVarQ5, -this.r0, 8);
        if (z2) {
            dVar.h(iVarQ4, dVar.q(dVarM), 0, 5);
            dVar.h(iVarQ5, iVarQ4, 0, 5);
        }
    }

    public void g1(int i) {
        if (i > -1) {
            this.p0 = -1.0f;
            this.q0 = i;
            this.r0 = -1;
        }
    }

    @Override // c.e.b.k.e
    public boolean h() {
        return true;
    }

    public void h1(int i) {
        if (i > -1) {
            this.p0 = -1.0f;
            this.q0 = -1;
            this.r0 = i;
        }
    }

    public void i1(float f) {
        if (f > -1.0f) {
            this.p0 = f;
            this.q0 = -1;
            this.r0 = -1;
        }
    }

    public void j1(int i) {
        if (this.t0 == i) {
            return;
        }
        this.t0 = i;
        this.O.clear();
        if (this.t0 == 1) {
            this.s0 = this.F;
        } else {
            this.s0 = this.G;
        }
        this.O.add(this.s0);
        int length = this.N.length;
        for (int i2 = 0; i2 < length; i2++) {
            this.N[i2] = this.s0;
        }
    }

    @Override // c.e.b.k.e
    public d m(d.b bVar) {
        switch (a.a[bVar.ordinal()]) {
            case 1:
            case 2:
                if (this.t0 == 1) {
                    return this.s0;
                }
                break;
            case 3:
            case 4:
                if (this.t0 == 0) {
                    return this.s0;
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
