package p016c.p033e.p037b.p038k;

import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: c.e.b.k.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0556c {

    /* JADX INFO: renamed from: a */
    protected C0558e f3468a;

    /* JADX INFO: renamed from: b */
    protected C0558e f3469b;

    /* JADX INFO: renamed from: c */
    protected C0558e f3470c;

    /* JADX INFO: renamed from: d */
    protected C0558e f3471d;

    /* JADX INFO: renamed from: e */
    protected C0558e f3472e;

    /* JADX INFO: renamed from: f */
    protected C0558e f3473f;

    /* JADX INFO: renamed from: g */
    protected C0558e f3474g;

    /* JADX INFO: renamed from: h */
    protected ArrayList<C0558e> f3475h;

    /* JADX INFO: renamed from: i */
    protected int f3476i;

    /* JADX INFO: renamed from: j */
    protected int f3477j;

    /* JADX INFO: renamed from: k */
    protected float f3478k = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: l */
    int f3479l;

    /* JADX INFO: renamed from: m */
    int f3480m;

    /* JADX INFO: renamed from: n */
    int f3481n;

    /* JADX INFO: renamed from: o */
    private int f3482o;

    /* JADX INFO: renamed from: p */
    private boolean f3483p;

    /* JADX INFO: renamed from: q */
    protected boolean f3484q;

    /* JADX INFO: renamed from: r */
    protected boolean f3485r;

    /* JADX INFO: renamed from: s */
    protected boolean f3486s;

    /* JADX INFO: renamed from: t */
    private boolean f3487t;

    public C0556c(C0558e c0558e, int i, boolean z) {
        this.f3483p = false;
        this.f3468a = c0558e;
        this.f3482o = i;
        this.f3483p = z;
    }

    /* JADX INFO: renamed from: b */
    private void m4422b() {
        int i = this.f3482o * 2;
        C0558e c0558e = this.f3468a;
        boolean z = false;
        C0558e c0558e2 = c0558e;
        boolean z2 = false;
        while (!z2) {
            this.f3476i++;
            C0558e[] c0558eArr = c0558e.f3558l0;
            int i2 = this.f3482o;
            C0558e c0558e3 = null;
            c0558eArr[i2] = null;
            c0558e.f3556k0[i2] = null;
            if (c0558e.m4479Q() != 8) {
                this.f3479l++;
                if (c0558e.m4525s(this.f3482o) != C0558e.b.MATCH_CONSTRAINT) {
                    this.f3480m += c0558e.m4451C(this.f3482o);
                }
                int iM4429e = this.f3480m + c0558e.f3522N[i].m4429e();
                this.f3480m = iM4429e;
                int i3 = i + 1;
                this.f3480m = iM4429e + c0558e.f3522N[i3].m4429e();
                int iM4429e2 = this.f3481n + c0558e.f3522N[i].m4429e();
                this.f3481n = iM4429e2;
                this.f3481n = iM4429e2 + c0558e.f3522N[i3].m4429e();
                if (this.f3469b == null) {
                    this.f3469b = c0558e;
                }
                this.f3471d = c0558e;
                C0558e.b[] bVarArr = c0558e.f3525Q;
                int i4 = this.f3482o;
                if (bVarArr[i4] == C0558e.b.MATCH_CONSTRAINT) {
                    int[] iArr = c0558e.f3564p;
                    if (iArr[i4] == 0 || iArr[i4] == 3 || iArr[i4] == 2) {
                        this.f3477j++;
                        float[] fArr = c0558e.f3554j0;
                        int i5 = this.f3482o;
                        float f = fArr[i5];
                        if (f > CropImageView.DEFAULT_ASPECT_RATIO) {
                            this.f3478k += fArr[i5];
                        }
                        if (m4423c(c0558e, this.f3482o)) {
                            if (f < CropImageView.DEFAULT_ASPECT_RATIO) {
                                this.f3484q = true;
                            } else {
                                this.f3485r = true;
                            }
                            if (this.f3475h == null) {
                                this.f3475h = new ArrayList<>();
                            }
                            this.f3475h.add(c0558e);
                        }
                        if (this.f3473f == null) {
                            this.f3473f = c0558e;
                        }
                        C0558e c0558e4 = this.f3474g;
                        if (c0558e4 != null) {
                            c0558e4.f3556k0[this.f3482o] = c0558e;
                        }
                        this.f3474g = c0558e;
                    }
                    if (this.f3482o == 0) {
                        if (c0558e.f3561n == 0 && c0558e.f3565q == 0) {
                            int i6 = c0558e.f3566r;
                        }
                    } else if (c0558e.f3563o == 0 && c0558e.f3568t == 0) {
                        int i7 = c0558e.f3569u;
                    }
                    int i8 = (c0558e.f3529U > CropImageView.DEFAULT_ASPECT_RATIO ? 1 : (c0558e.f3529U == CropImageView.DEFAULT_ASPECT_RATIO ? 0 : -1));
                }
            }
            if (c0558e2 != c0558e) {
                c0558e2.f3558l0[this.f3482o] = c0558e;
            }
            C0557d c0557d = c0558e.f3522N[i + 1].f3493f;
            if (c0557d != null) {
                C0558e c0558e5 = c0557d.f3491d;
                C0557d[] c0557dArr = c0558e5.f3522N;
                if (c0557dArr[i].f3493f != null && c0557dArr[i].f3493f.f3491d == c0558e) {
                    c0558e3 = c0558e5;
                }
            }
            if (c0558e3 == null) {
                c0558e3 = c0558e;
                z2 = true;
            }
            c0558e2 = c0558e;
            c0558e = c0558e3;
        }
        C0558e c0558e6 = this.f3469b;
        if (c0558e6 != null) {
            this.f3480m -= c0558e6.f3522N[i].m4429e();
        }
        C0558e c0558e7 = this.f3471d;
        if (c0558e7 != null) {
            this.f3480m -= c0558e7.f3522N[i + 1].m4429e();
        }
        this.f3470c = c0558e;
        if (this.f3482o == 0 && this.f3483p) {
            this.f3472e = c0558e;
        } else {
            this.f3472e = this.f3468a;
        }
        if (this.f3485r && this.f3484q) {
            z = true;
        }
        this.f3486s = z;
    }

    /* JADX INFO: renamed from: c */
    private static boolean m4423c(C0558e c0558e, int i) {
        if (c0558e.m4479Q() != 8 && c0558e.f3525Q[i] == C0558e.b.MATCH_CONSTRAINT) {
            int[] iArr = c0558e.f3564p;
            if (iArr[i] == 0 || iArr[i] == 3) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: a */
    public void m4424a() {
        if (!this.f3487t) {
            m4422b();
        }
        this.f3487t = true;
    }
}
