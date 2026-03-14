package p016c.p033e.p037b.p038k.p039m;

import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.InterfaceC0561h;
import p016c.p033e.p037b.p038k.p039m.AbstractC0581p;
import p016c.p033e.p037b.p038k.p039m.C0571f;

/* JADX INFO: renamed from: c.e.b.k.m.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0577l extends AbstractC0581p {

    /* JADX INFO: renamed from: k */
    private static int[] f3663k = new int[2];

    /* JADX INFO: renamed from: c.e.b.k.m.l$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f3664a;

        static {
            int[] iArr = new int[AbstractC0581p.b.values().length];
            f3664a = iArr;
            try {
                iArr[AbstractC0581p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3664a[AbstractC0581p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3664a[AbstractC0581p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C0577l(C0558e c0558e) {
        super(c0558e);
        this.f3685h.f3644e = C0571f.a.LEFT;
        this.f3686i.f3644e = C0571f.a.RIGHT;
        this.f3683f = 0;
    }

    /* JADX INFO: renamed from: q */
    private void m4641q(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6 && i7 <= i7) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else {
            if (i6 > i6 || i9 > i7) {
                return;
            }
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x02ec  */
    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p, p016c.p033e.p037b.p038k.p039m.InterfaceC0569d
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo4603a(InterfaceC0569d interfaceC0569d) {
        float f;
        float fM4527t;
        float fM4527t2;
        int i;
        int i2 = a.f3664a[this.f3687j.ordinal()];
        if (i2 == 1) {
            m4667p(interfaceC0569d);
        } else if (i2 == 2) {
            m4666o(interfaceC0569d);
        } else if (i2 == 3) {
            C0558e c0558e = this.f3679b;
            m4665n(interfaceC0569d, c0558e.f3514F, c0558e.f3516H, 0);
            return;
        }
        if (!this.f3682e.f3649j && this.f3681d == C0558e.b.MATCH_CONSTRAINT) {
            C0558e c0558e2 = this.f3679b;
            int i3 = c0558e2.f3561n;
            if (i3 == 2) {
                C0558e c0558eM4463I = c0558e2.m4463I();
                if (c0558eM4463I != null) {
                    if (c0558eM4463I.f3541d.f3682e.f3649j) {
                        this.f3682e.mo4625d((int) ((r0.f3646g * this.f3679b.f3567s) + 0.5f));
                    }
                }
            } else if (i3 == 3) {
                int i4 = c0558e2.f3563o;
                if (i4 == 0 || i4 == 3) {
                    C0558e c0558e3 = this.f3679b;
                    C0579n c0579n = c0558e3.f3543e;
                    C0571f c0571f = c0579n.f3685h;
                    C0571f c0571f2 = c0579n.f3686i;
                    boolean z = c0558e3.f3514F.f3493f != null;
                    boolean z2 = this.f3679b.f3515G.f3493f != null;
                    boolean z3 = this.f3679b.f3516H.f3493f != null;
                    boolean z4 = this.f3679b.f3517I.f3493f != null;
                    int iM4529u = this.f3679b.m4529u();
                    if (z && z2 && z3 && z4) {
                        float fM4527t3 = this.f3679b.m4527t();
                        if (c0571f.f3649j && c0571f2.f3649j) {
                            C0571f c0571f3 = this.f3685h;
                            if (c0571f3.f3642c && this.f3686i.f3642c) {
                                m4641q(f3663k, c0571f3.f3651l.get(0).f3646g + this.f3685h.f3645f, this.f3686i.f3651l.get(0).f3646g - this.f3686i.f3645f, c0571f.f3646g + c0571f.f3645f, c0571f2.f3646g - c0571f2.f3645f, fM4527t3, iM4529u);
                                this.f3682e.mo4625d(f3663k[0]);
                                this.f3679b.f3543e.f3682e.mo4625d(f3663k[1]);
                                return;
                            }
                            return;
                        }
                        C0571f c0571f4 = this.f3685h;
                        if (c0571f4.f3649j) {
                            C0571f c0571f5 = this.f3686i;
                            if (c0571f5.f3649j) {
                                if (!c0571f.f3642c || !c0571f2.f3642c) {
                                    return;
                                }
                                m4641q(f3663k, c0571f4.f3646g + c0571f4.f3645f, c0571f5.f3646g - c0571f5.f3645f, c0571f.f3651l.get(0).f3646g + c0571f.f3645f, c0571f2.f3651l.get(0).f3646g - c0571f2.f3645f, fM4527t3, iM4529u);
                                this.f3682e.mo4625d(f3663k[0]);
                                this.f3679b.f3543e.f3682e.mo4625d(f3663k[1]);
                            }
                        }
                        C0571f c0571f6 = this.f3685h;
                        if (!c0571f6.f3642c || !this.f3686i.f3642c || !c0571f.f3642c || !c0571f2.f3642c) {
                            return;
                        }
                        m4641q(f3663k, c0571f6.f3651l.get(0).f3646g + this.f3685h.f3645f, this.f3686i.f3651l.get(0).f3646g - this.f3686i.f3645f, c0571f.f3651l.get(0).f3646g + c0571f.f3645f, c0571f2.f3651l.get(0).f3646g - c0571f2.f3645f, fM4527t3, iM4529u);
                        this.f3682e.mo4625d(f3663k[0]);
                        this.f3679b.f3543e.f3682e.mo4625d(f3663k[1]);
                    } else if (z && z3) {
                        if (!this.f3685h.f3642c || !this.f3686i.f3642c) {
                            return;
                        }
                        float fM4527t4 = this.f3679b.m4527t();
                        int i5 = this.f3685h.f3651l.get(0).f3646g + this.f3685h.f3645f;
                        int i6 = this.f3686i.f3651l.get(0).f3646g - this.f3686i.f3645f;
                        if (iM4529u == -1 || iM4529u == 0) {
                            int iM4661g = m4661g(i6 - i5, 0);
                            int i7 = (int) ((iM4661g * fM4527t4) + 0.5f);
                            int iM4661g2 = m4661g(i7, 1);
                            if (i7 != iM4661g2) {
                                iM4661g = (int) ((iM4661g2 / fM4527t4) + 0.5f);
                            }
                            this.f3682e.mo4625d(iM4661g);
                            this.f3679b.f3543e.f3682e.mo4625d(iM4661g2);
                        } else if (iM4529u == 1) {
                            int iM4661g3 = m4661g(i6 - i5, 0);
                            int i8 = (int) ((iM4661g3 / fM4527t4) + 0.5f);
                            int iM4661g4 = m4661g(i8, 1);
                            if (i8 != iM4661g4) {
                                iM4661g3 = (int) ((iM4661g4 * fM4527t4) + 0.5f);
                            }
                            this.f3682e.mo4625d(iM4661g3);
                            this.f3679b.f3543e.f3682e.mo4625d(iM4661g4);
                        }
                    } else if (z2 && z4) {
                        if (!c0571f.f3642c || !c0571f2.f3642c) {
                            return;
                        }
                        float fM4527t5 = this.f3679b.m4527t();
                        int i9 = c0571f.f3651l.get(0).f3646g + c0571f.f3645f;
                        int i10 = c0571f2.f3651l.get(0).f3646g - c0571f2.f3645f;
                        if (iM4529u == -1) {
                            int iM4661g5 = m4661g(i10 - i9, 1);
                            int i11 = (int) ((iM4661g5 / fM4527t5) + 0.5f);
                            int iM4661g6 = m4661g(i11, 0);
                            if (i11 != iM4661g6) {
                                iM4661g5 = (int) ((iM4661g6 * fM4527t5) + 0.5f);
                            }
                            this.f3682e.mo4625d(iM4661g6);
                            this.f3679b.f3543e.f3682e.mo4625d(iM4661g5);
                        } else if (iM4529u == 0) {
                            int iM4661g7 = m4661g(i10 - i9, 1);
                            int i12 = (int) ((iM4661g7 * fM4527t5) + 0.5f);
                            int iM4661g8 = m4661g(i12, 0);
                            if (i12 != iM4661g8) {
                                iM4661g7 = (int) ((iM4661g8 / fM4527t5) + 0.5f);
                            }
                            this.f3682e.mo4625d(iM4661g8);
                            this.f3679b.f3543e.f3682e.mo4625d(iM4661g7);
                        } else if (iM4529u == 1) {
                        }
                    }
                } else {
                    int iM4529u2 = c0558e2.m4529u();
                    if (iM4529u2 == -1) {
                        C0558e c0558e4 = this.f3679b;
                        f = c0558e4.f3543e.f3682e.f3646g;
                        fM4527t = c0558e4.m4527t();
                    } else if (iM4529u2 == 0) {
                        fM4527t2 = r0.f3543e.f3682e.f3646g / this.f3679b.m4527t();
                        i = (int) (fM4527t2 + 0.5f);
                        this.f3682e.mo4625d(i);
                    } else if (iM4529u2 != 1) {
                        i = 0;
                        this.f3682e.mo4625d(i);
                    } else {
                        C0558e c0558e5 = this.f3679b;
                        f = c0558e5.f3543e.f3682e.f3646g;
                        fM4527t = c0558e5.m4527t();
                    }
                    fM4527t2 = f * fM4527t;
                    i = (int) (fM4527t2 + 0.5f);
                    this.f3682e.mo4625d(i);
                }
            }
        }
        C0571f c0571f7 = this.f3685h;
        if (c0571f7.f3642c) {
            C0571f c0571f8 = this.f3686i;
            if (c0571f8.f3642c) {
                if (c0571f7.f3649j && c0571f8.f3649j && this.f3682e.f3649j) {
                    return;
                }
                if (!this.f3682e.f3649j && this.f3681d == C0558e.b.MATCH_CONSTRAINT) {
                    C0558e c0558e6 = this.f3679b;
                    if (c0558e6.f3561n == 0 && !c0558e6.m4496Z()) {
                        C0571f c0571f9 = this.f3685h.f3651l.get(0);
                        C0571f c0571f10 = this.f3686i.f3651l.get(0);
                        int i13 = c0571f9.f3646g;
                        C0571f c0571f11 = this.f3685h;
                        int i14 = i13 + c0571f11.f3645f;
                        int i15 = c0571f10.f3646g + this.f3686i.f3645f;
                        c0571f11.mo4625d(i14);
                        this.f3686i.mo4625d(i15);
                        this.f3682e.mo4625d(i15 - i14);
                        return;
                    }
                }
                if (!this.f3682e.f3649j && this.f3681d == C0558e.b.MATCH_CONSTRAINT && this.f3678a == 1 && this.f3685h.f3651l.size() > 0 && this.f3686i.f3651l.size() > 0) {
                    int iMin = Math.min((this.f3686i.f3651l.get(0).f3646g + this.f3686i.f3645f) - (this.f3685h.f3651l.get(0).f3646g + this.f3685h.f3645f), this.f3682e.f3661m);
                    C0558e c0558e7 = this.f3679b;
                    int i16 = c0558e7.f3566r;
                    int iMax = Math.max(c0558e7.f3565q, iMin);
                    if (i16 > 0) {
                        iMax = Math.min(i16, iMax);
                    }
                    this.f3682e.mo4625d(iMax);
                }
                if (this.f3682e.f3649j) {
                    C0571f c0571f12 = this.f3685h.f3651l.get(0);
                    C0571f c0571f13 = this.f3686i.f3651l.get(0);
                    int i17 = c0571f12.f3646g + this.f3685h.f3645f;
                    int i18 = c0571f13.f3646g + this.f3686i.f3645f;
                    float fM4533w = this.f3679b.m4533w();
                    if (c0571f12 == c0571f13) {
                        i17 = c0571f12.f3646g;
                        i18 = c0571f13.f3646g;
                        fM4533w = 0.5f;
                    }
                    this.f3685h.mo4625d((int) (i17 + 0.5f + (((i18 - i17) - this.f3682e.f3646g) * fM4533w)));
                    this.f3686i.mo4625d(this.f3685h.f3646g + this.f3682e.f3646g);
                }
            }
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: d */
    void mo4604d() {
        C0558e c0558eM4463I;
        C0558e c0558eM4463I2;
        C0558e c0558e = this.f3679b;
        if (c0558e.f3535a) {
            this.f3682e.mo4625d(c0558e.m4481R());
        }
        if (!this.f3682e.f3649j) {
            C0558e.b bVarM4537y = this.f3679b.m4537y();
            this.f3681d = bVarM4537y;
            if (bVarM4537y != C0558e.b.MATCH_CONSTRAINT) {
                if (bVarM4537y == C0558e.b.MATCH_PARENT && (((c0558eM4463I2 = this.f3679b.m4463I()) != null && c0558eM4463I2.m4537y() == C0558e.b.FIXED) || c0558eM4463I2.m4537y() == C0558e.b.MATCH_PARENT)) {
                    int iM4481R = (c0558eM4463I2.m4481R() - this.f3679b.f3514F.m4429e()) - this.f3679b.f3516H.m4429e();
                    m4659b(this.f3685h, c0558eM4463I2.f3541d.f3685h, this.f3679b.f3514F.m4429e());
                    m4659b(this.f3686i, c0558eM4463I2.f3541d.f3686i, -this.f3679b.f3516H.m4429e());
                    this.f3682e.mo4625d(iM4481R);
                    return;
                }
                if (this.f3681d == C0558e.b.FIXED) {
                    this.f3682e.mo4625d(this.f3679b.m4481R());
                }
            }
        } else if (this.f3681d == C0558e.b.MATCH_PARENT && (((c0558eM4463I = this.f3679b.m4463I()) != null && c0558eM4463I.m4537y() == C0558e.b.FIXED) || c0558eM4463I.m4537y() == C0558e.b.MATCH_PARENT)) {
            m4659b(this.f3685h, c0558eM4463I.f3541d.f3685h, this.f3679b.f3514F.m4429e());
            m4659b(this.f3686i, c0558eM4463I.f3541d.f3686i, -this.f3679b.f3516H.m4429e());
            return;
        }
        if (this.f3682e.f3649j) {
            C0558e c0558e2 = this.f3679b;
            if (c0558e2.f3535a) {
                C0557d[] c0557dArr = c0558e2.f3522N;
                if (c0557dArr[0].f3493f != null && c0557dArr[1].f3493f != null) {
                    if (c0558e2.m4496Z()) {
                        this.f3685h.f3645f = this.f3679b.f3522N[0].m4429e();
                        this.f3686i.f3645f = -this.f3679b.f3522N[1].m4429e();
                        return;
                    }
                    C0571f c0571fM4662h = m4662h(this.f3679b.f3522N[0]);
                    if (c0571fM4662h != null) {
                        m4659b(this.f3685h, c0571fM4662h, this.f3679b.f3522N[0].m4429e());
                    }
                    C0571f c0571fM4662h2 = m4662h(this.f3679b.f3522N[1]);
                    if (c0571fM4662h2 != null) {
                        m4659b(this.f3686i, c0571fM4662h2, -this.f3679b.f3522N[1].m4429e());
                    }
                    this.f3685h.f3641b = true;
                    this.f3686i.f3641b = true;
                    return;
                }
                C0558e c0558e3 = this.f3679b;
                C0557d[] c0557dArr2 = c0558e3.f3522N;
                if (c0557dArr2[0].f3493f != null) {
                    C0571f c0571fM4662h3 = m4662h(c0557dArr2[0]);
                    if (c0571fM4662h3 != null) {
                        m4659b(this.f3685h, c0571fM4662h3, this.f3679b.f3522N[0].m4429e());
                        m4659b(this.f3686i, this.f3685h, this.f3682e.f3646g);
                        return;
                    }
                    return;
                }
                if (c0557dArr2[1].f3493f != null) {
                    C0571f c0571fM4662h4 = m4662h(c0557dArr2[1]);
                    if (c0571fM4662h4 != null) {
                        m4659b(this.f3686i, c0571fM4662h4, -this.f3679b.f3522N[1].m4429e());
                        m4659b(this.f3685h, this.f3686i, -this.f3682e.f3646g);
                        return;
                    }
                    return;
                }
                if ((c0558e3 instanceof InterfaceC0561h) || c0558e3.m4463I() == null || this.f3679b.mo4513m(C0557d.b.CENTER).f3493f != null) {
                    return;
                }
                m4659b(this.f3685h, this.f3679b.m4463I().f3541d.f3685h, this.f3679b.m4483S());
                m4659b(this.f3686i, this.f3685h, this.f3682e.f3646g);
                return;
            }
        }
        if (this.f3681d == C0558e.b.MATCH_CONSTRAINT) {
            C0558e c0558e4 = this.f3679b;
            int i = c0558e4.f3561n;
            if (i == 2) {
                C0558e c0558eM4463I3 = c0558e4.m4463I();
                if (c0558eM4463I3 != null) {
                    C0572g c0572g = c0558eM4463I3.f3543e.f3682e;
                    this.f3682e.f3651l.add(c0572g);
                    c0572g.f3650k.add(this.f3682e);
                    C0572g c0572g2 = this.f3682e;
                    c0572g2.f3641b = true;
                    c0572g2.f3650k.add(this.f3685h);
                    this.f3682e.f3650k.add(this.f3686i);
                }
            } else if (i == 3) {
                if (c0558e4.f3563o == 3) {
                    this.f3685h.f3640a = this;
                    this.f3686i.f3640a = this;
                    C0579n c0579n = c0558e4.f3543e;
                    c0579n.f3685h.f3640a = this;
                    c0579n.f3686i.f3640a = this;
                    this.f3682e.f3640a = this;
                    if (c0558e4.m4499b0()) {
                        this.f3682e.f3651l.add(this.f3679b.f3543e.f3682e);
                        this.f3679b.f3543e.f3682e.f3650k.add(this.f3682e);
                        C0579n c0579n2 = this.f3679b.f3543e;
                        c0579n2.f3682e.f3640a = this;
                        this.f3682e.f3651l.add(c0579n2.f3685h);
                        this.f3682e.f3651l.add(this.f3679b.f3543e.f3686i);
                        this.f3679b.f3543e.f3685h.f3650k.add(this.f3682e);
                        this.f3679b.f3543e.f3686i.f3650k.add(this.f3682e);
                    } else if (this.f3679b.m4496Z()) {
                        this.f3679b.f3543e.f3682e.f3651l.add(this.f3682e);
                        this.f3682e.f3650k.add(this.f3679b.f3543e.f3682e);
                    } else {
                        this.f3679b.f3543e.f3682e.f3651l.add(this.f3682e);
                    }
                } else {
                    C0572g c0572g3 = c0558e4.f3543e.f3682e;
                    this.f3682e.f3651l.add(c0572g3);
                    c0572g3.f3650k.add(this.f3682e);
                    this.f3679b.f3543e.f3685h.f3650k.add(this.f3682e);
                    this.f3679b.f3543e.f3686i.f3650k.add(this.f3682e);
                    C0572g c0572g4 = this.f3682e;
                    c0572g4.f3641b = true;
                    c0572g4.f3650k.add(this.f3685h);
                    this.f3682e.f3650k.add(this.f3686i);
                    this.f3685h.f3651l.add(this.f3682e);
                    this.f3686i.f3651l.add(this.f3682e);
                }
            }
        }
        C0558e c0558e5 = this.f3679b;
        C0557d[] c0557dArr3 = c0558e5.f3522N;
        if (c0557dArr3[0].f3493f != null && c0557dArr3[1].f3493f != null) {
            if (c0558e5.m4496Z()) {
                this.f3685h.f3645f = this.f3679b.f3522N[0].m4429e();
                this.f3686i.f3645f = -this.f3679b.f3522N[1].m4429e();
                return;
            }
            C0571f c0571fM4662h5 = m4662h(this.f3679b.f3522N[0]);
            C0571f c0571fM4662h6 = m4662h(this.f3679b.f3522N[1]);
            c0571fM4662h5.m4623b(this);
            c0571fM4662h6.m4623b(this);
            this.f3687j = AbstractC0581p.b.CENTER;
            return;
        }
        C0558e c0558e6 = this.f3679b;
        C0557d[] c0557dArr4 = c0558e6.f3522N;
        if (c0557dArr4[0].f3493f != null) {
            C0571f c0571fM4662h7 = m4662h(c0557dArr4[0]);
            if (c0571fM4662h7 != null) {
                m4659b(this.f3685h, c0571fM4662h7, this.f3679b.f3522N[0].m4429e());
                m4660c(this.f3686i, this.f3685h, 1, this.f3682e);
                return;
            }
            return;
        }
        if (c0557dArr4[1].f3493f != null) {
            C0571f c0571fM4662h8 = m4662h(c0557dArr4[1]);
            if (c0571fM4662h8 != null) {
                m4659b(this.f3686i, c0571fM4662h8, -this.f3679b.f3522N[1].m4429e());
                m4660c(this.f3685h, this.f3686i, -1, this.f3682e);
                return;
            }
            return;
        }
        if ((c0558e6 instanceof InterfaceC0561h) || c0558e6.m4463I() == null) {
            return;
        }
        m4659b(this.f3685h, this.f3679b.m4463I().f3541d.f3685h, this.f3679b.m4483S());
        m4660c(this.f3686i, this.f3685h, 1, this.f3682e);
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: e */
    public void mo4605e() {
        C0571f c0571f = this.f3685h;
        if (c0571f.f3649j) {
            this.f3679b.m4490V0(c0571f.f3646g);
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: f */
    void mo4606f() {
        this.f3680c = null;
        this.f3685h.m4624c();
        this.f3686i.m4624c();
        this.f3682e.m4624c();
        this.f3684g = false;
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: m */
    boolean mo4608m() {
        return this.f3681d != C0558e.b.MATCH_CONSTRAINT || this.f3679b.f3561n == 0;
    }

    /* JADX INFO: renamed from: r */
    void m4642r() {
        this.f3684g = false;
        this.f3685h.m4624c();
        this.f3685h.f3649j = false;
        this.f3686i.m4624c();
        this.f3686i.f3649j = false;
        this.f3682e.f3649j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f3679b.m4523r();
    }
}
