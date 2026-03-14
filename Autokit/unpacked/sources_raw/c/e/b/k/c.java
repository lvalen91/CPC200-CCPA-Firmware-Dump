package c.e.b.k;

import c.e.b.k.e;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c {
    protected e a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected e f1127b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected e f1128c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected e f1129d;
    protected e e;
    protected e f;
    protected e g;
    protected ArrayList<e> h;
    protected int i;
    protected int j;
    protected float k = CropImageView.DEFAULT_ASPECT_RATIO;
    int l;
    int m;
    int n;
    private int o;
    private boolean p;
    protected boolean q;
    protected boolean r;
    protected boolean s;
    private boolean t;

    public c(e eVar, int i, boolean z) {
        this.p = false;
        this.a = eVar;
        this.o = i;
        this.p = z;
    }

    private void b() {
        int i = this.o * 2;
        e eVar = this.a;
        boolean z = false;
        e eVar2 = eVar;
        boolean z2 = false;
        while (!z2) {
            this.i++;
            e[] eVarArr = eVar.l0;
            int i2 = this.o;
            e eVar3 = null;
            eVarArr[i2] = null;
            eVar.k0[i2] = null;
            if (eVar.Q() != 8) {
                this.l++;
                if (eVar.s(this.o) != e.b.MATCH_CONSTRAINT) {
                    this.m += eVar.C(this.o);
                }
                int iE = this.m + eVar.N[i].e();
                this.m = iE;
                int i3 = i + 1;
                this.m = iE + eVar.N[i3].e();
                int iE2 = this.n + eVar.N[i].e();
                this.n = iE2;
                this.n = iE2 + eVar.N[i3].e();
                if (this.f1127b == null) {
                    this.f1127b = eVar;
                }
                this.f1129d = eVar;
                e.b[] bVarArr = eVar.Q;
                int i4 = this.o;
                if (bVarArr[i4] == e.b.MATCH_CONSTRAINT) {
                    int[] iArr = eVar.p;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.j++;
                        float[] fArr = eVar.j0;
                        int i5 = this.o;
                        float f = fArr[i5];
                        if (f > CropImageView.DEFAULT_ASPECT_RATIO) {
                            this.k += fArr[i5];
                        }
                        if (c(eVar, this.o)) {
                            if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
                                this.q = true;
                            } else {
                                this.r = true;
                            }
                            if (this.h == null) {
                                this.h = new ArrayList<>();
                            }
                            this.h.add(eVar);
                        }
                        if (this.f == null) {
                            this.f = eVar;
                        }
                        e eVar4 = this.g;
                        if (eVar4 != null) {
                            eVar4.k0[this.o] = eVar;
                        }
                        this.g = eVar;
                    }
                    if (this.o == 0) {
                        if (eVar.n == 0 && eVar.q == 0) {
                            int i6 = eVar.r;
                        }
                    } else if (eVar.o == 0 && eVar.t == 0) {
                        int i7 = eVar.u;
                    }
                    int i8 = (eVar.U > CropImageView.DEFAULT_ASPECT_RATIO ? 1 : (eVar.U == CropImageView.DEFAULT_ASPECT_RATIO ? 0 : -1));
                }
            }
            if (eVar2 != eVar) {
                eVar2.l0[this.o] = eVar;
            }
            d dVar = eVar.N[i + 1].f;
            if (dVar != null) {
                e eVar5 = dVar.f1132d;
                d[] dVarArr = eVar5.N;
                if (dVarArr[i].f != null && dVarArr[i].f.f1132d == eVar) {
                    eVar3 = eVar5;
                }
            }
            if (eVar3 == null) {
                eVar3 = eVar;
                z2 = true;
            }
            eVar2 = eVar;
            eVar = eVar3;
        }
        e eVar6 = this.f1127b;
        if (eVar6 != null) {
            this.m -= eVar6.N[i].e();
        }
        e eVar7 = this.f1129d;
        if (eVar7 != null) {
            this.m -= eVar7.N[i + 1].e();
        }
        this.f1128c = eVar;
        if (this.o == 0 && this.p) {
            this.e = eVar;
        } else {
            this.e = this.a;
        }
        if (this.r && this.q) {
            z = true;
        }
        this.s = z;
    }

    private static boolean c(e eVar, int i) {
        if (eVar.Q() != 8 && eVar.Q[i] == e.b.MATCH_CONSTRAINT) {
            int[] iArr = eVar.p;
            if (iArr[i] == 0 || iArr[i] == 3) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        if (!this.t) {
            b();
        }
        this.t = true;
    }
}
