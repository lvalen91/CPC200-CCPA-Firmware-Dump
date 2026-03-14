package p016c.p033e.p037b.p038k.p039m;

import com.yalantis.ucrop.view.CropImageView;
import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.InterfaceC0561h;
import p016c.p033e.p037b.p038k.p039m.AbstractC0581p;
import p016c.p033e.p037b.p038k.p039m.C0571f;

/* JADX INFO: renamed from: c.e.b.k.m.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0579n extends AbstractC0581p {

    /* JADX INFO: renamed from: k */
    public C0571f f3669k;

    /* JADX INFO: renamed from: l */
    C0572g f3670l;

    /* JADX INFO: renamed from: c.e.b.k.m.n$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f3671a;

        static {
            int[] iArr = new int[AbstractC0581p.b.values().length];
            f3671a = iArr;
            try {
                iArr[AbstractC0581p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3671a[AbstractC0581p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3671a[AbstractC0581p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public C0579n(C0558e c0558e) {
        super(c0558e);
        C0571f c0571f = new C0571f(this);
        this.f3669k = c0571f;
        this.f3670l = null;
        this.f3685h.f3644e = C0571f.a.TOP;
        this.f3686i.f3644e = C0571f.a.BOTTOM;
        c0571f.f3644e = C0571f.a.BASELINE;
        this.f3683f = 1;
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p, p016c.p033e.p037b.p038k.p039m.InterfaceC0569d
    /* JADX INFO: renamed from: a */
    public void mo4603a(InterfaceC0569d interfaceC0569d) {
        float f;
        float fM4527t;
        float fM4527t2;
        int i;
        int i2 = a.f3671a[this.f3687j.ordinal()];
        if (i2 == 1) {
            m4667p(interfaceC0569d);
        } else if (i2 == 2) {
            m4666o(interfaceC0569d);
        } else if (i2 == 3) {
            C0558e c0558e = this.f3679b;
            m4665n(interfaceC0569d, c0558e.f3515G, c0558e.f3517I, 1);
            return;
        }
        C0572g c0572g = this.f3682e;
        if (c0572g.f3642c && !c0572g.f3649j && this.f3681d == C0558e.b.MATCH_CONSTRAINT) {
            C0558e c0558e2 = this.f3679b;
            int i3 = c0558e2.f3563o;
            if (i3 == 2) {
                C0558e c0558eM4463I = c0558e2.m4463I();
                if (c0558eM4463I != null) {
                    if (c0558eM4463I.f3543e.f3682e.f3649j) {
                        this.f3682e.mo4625d((int) ((r7.f3646g * this.f3679b.f3570v) + 0.5f));
                    }
                }
            } else if (i3 == 3 && c0558e2.f3541d.f3682e.f3649j) {
                int iM4529u = c0558e2.m4529u();
                if (iM4529u == -1) {
                    C0558e c0558e3 = this.f3679b;
                    f = c0558e3.f3541d.f3682e.f3646g;
                    fM4527t = c0558e3.m4527t();
                } else if (iM4529u == 0) {
                    fM4527t2 = r7.f3541d.f3682e.f3646g * this.f3679b.m4527t();
                    i = (int) (fM4527t2 + 0.5f);
                    this.f3682e.mo4625d(i);
                } else if (iM4529u != 1) {
                    i = 0;
                    this.f3682e.mo4625d(i);
                } else {
                    C0558e c0558e4 = this.f3679b;
                    f = c0558e4.f3541d.f3682e.f3646g;
                    fM4527t = c0558e4.m4527t();
                }
                fM4527t2 = f / fM4527t;
                i = (int) (fM4527t2 + 0.5f);
                this.f3682e.mo4625d(i);
            }
        }
        C0571f c0571f = this.f3685h;
        if (c0571f.f3642c) {
            C0571f c0571f2 = this.f3686i;
            if (c0571f2.f3642c) {
                if (c0571f.f3649j && c0571f2.f3649j && this.f3682e.f3649j) {
                    return;
                }
                if (!this.f3682e.f3649j && this.f3681d == C0558e.b.MATCH_CONSTRAINT) {
                    C0558e c0558e5 = this.f3679b;
                    if (c0558e5.f3561n == 0 && !c0558e5.m4499b0()) {
                        C0571f c0571f3 = this.f3685h.f3651l.get(0);
                        C0571f c0571f4 = this.f3686i.f3651l.get(0);
                        int i4 = c0571f3.f3646g;
                        C0571f c0571f5 = this.f3685h;
                        int i5 = i4 + c0571f5.f3645f;
                        int i6 = c0571f4.f3646g + this.f3686i.f3645f;
                        c0571f5.mo4625d(i5);
                        this.f3686i.mo4625d(i6);
                        this.f3682e.mo4625d(i6 - i5);
                        return;
                    }
                }
                if (!this.f3682e.f3649j && this.f3681d == C0558e.b.MATCH_CONSTRAINT && this.f3678a == 1 && this.f3685h.f3651l.size() > 0 && this.f3686i.f3651l.size() > 0) {
                    C0571f c0571f6 = this.f3685h.f3651l.get(0);
                    int i7 = (this.f3686i.f3651l.get(0).f3646g + this.f3686i.f3645f) - (c0571f6.f3646g + this.f3685h.f3645f);
                    C0572g c0572g2 = this.f3682e;
                    int i8 = c0572g2.f3661m;
                    if (i7 < i8) {
                        c0572g2.mo4625d(i7);
                    } else {
                        c0572g2.mo4625d(i8);
                    }
                }
                if (this.f3682e.f3649j && this.f3685h.f3651l.size() > 0 && this.f3686i.f3651l.size() > 0) {
                    C0571f c0571f7 = this.f3685h.f3651l.get(0);
                    C0571f c0571f8 = this.f3686i.f3651l.get(0);
                    int i9 = c0571f7.f3646g + this.f3685h.f3645f;
                    int i10 = c0571f8.f3646g + this.f3686i.f3645f;
                    float fM4471M = this.f3679b.m4471M();
                    if (c0571f7 == c0571f8) {
                        i9 = c0571f7.f3646g;
                        i10 = c0571f8.f3646g;
                        fM4471M = 0.5f;
                    }
                    this.f3685h.mo4625d((int) (i9 + 0.5f + (((i10 - i9) - this.f3682e.f3646g) * fM4471M)));
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
            this.f3682e.mo4625d(c0558e.m4531v());
        }
        if (!this.f3682e.f3649j) {
            this.f3681d = this.f3679b.m4475O();
            if (this.f3679b.m4487U()) {
                this.f3670l = new C0566a(this);
            }
            C0558e.b bVar = this.f3681d;
            if (bVar != C0558e.b.MATCH_CONSTRAINT) {
                if (bVar == C0558e.b.MATCH_PARENT && (c0558eM4463I2 = this.f3679b.m4463I()) != null && c0558eM4463I2.m4475O() == C0558e.b.FIXED) {
                    int iM4531v = (c0558eM4463I2.m4531v() - this.f3679b.f3515G.m4429e()) - this.f3679b.f3517I.m4429e();
                    m4659b(this.f3685h, c0558eM4463I2.f3543e.f3685h, this.f3679b.f3515G.m4429e());
                    m4659b(this.f3686i, c0558eM4463I2.f3543e.f3686i, -this.f3679b.f3517I.m4429e());
                    this.f3682e.mo4625d(iM4531v);
                    return;
                }
                if (this.f3681d == C0558e.b.FIXED) {
                    this.f3682e.mo4625d(this.f3679b.m4531v());
                }
            }
        } else if (this.f3681d == C0558e.b.MATCH_PARENT && (c0558eM4463I = this.f3679b.m4463I()) != null && c0558eM4463I.m4475O() == C0558e.b.FIXED) {
            m4659b(this.f3685h, c0558eM4463I.f3543e.f3685h, this.f3679b.f3515G.m4429e());
            m4659b(this.f3686i, c0558eM4463I.f3543e.f3686i, -this.f3679b.f3517I.m4429e());
            return;
        }
        if (this.f3682e.f3649j) {
            C0558e c0558e2 = this.f3679b;
            if (c0558e2.f3535a) {
                C0557d[] c0557dArr = c0558e2.f3522N;
                if (c0557dArr[2].f3493f != null && c0557dArr[3].f3493f != null) {
                    if (c0558e2.m4499b0()) {
                        this.f3685h.f3645f = this.f3679b.f3522N[2].m4429e();
                        this.f3686i.f3645f = -this.f3679b.f3522N[3].m4429e();
                    } else {
                        C0571f c0571fM4662h = m4662h(this.f3679b.f3522N[2]);
                        if (c0571fM4662h != null) {
                            m4659b(this.f3685h, c0571fM4662h, this.f3679b.f3522N[2].m4429e());
                        }
                        C0571f c0571fM4662h2 = m4662h(this.f3679b.f3522N[3]);
                        if (c0571fM4662h2 != null) {
                            m4659b(this.f3686i, c0571fM4662h2, -this.f3679b.f3522N[3].m4429e());
                        }
                        this.f3685h.f3641b = true;
                        this.f3686i.f3641b = true;
                    }
                    if (this.f3679b.m4487U()) {
                        m4659b(this.f3669k, this.f3685h, this.f3679b.m4515n());
                        return;
                    }
                    return;
                }
                C0558e c0558e3 = this.f3679b;
                C0557d[] c0557dArr2 = c0558e3.f3522N;
                if (c0557dArr2[2].f3493f != null) {
                    C0571f c0571fM4662h3 = m4662h(c0557dArr2[2]);
                    if (c0571fM4662h3 != null) {
                        m4659b(this.f3685h, c0571fM4662h3, this.f3679b.f3522N[2].m4429e());
                        m4659b(this.f3686i, this.f3685h, this.f3682e.f3646g);
                        if (this.f3679b.m4487U()) {
                            m4659b(this.f3669k, this.f3685h, this.f3679b.m4515n());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (c0557dArr2[3].f3493f != null) {
                    C0571f c0571fM4662h4 = m4662h(c0557dArr2[3]);
                    if (c0571fM4662h4 != null) {
                        m4659b(this.f3686i, c0571fM4662h4, -this.f3679b.f3522N[3].m4429e());
                        m4659b(this.f3685h, this.f3686i, -this.f3682e.f3646g);
                    }
                    if (this.f3679b.m4487U()) {
                        m4659b(this.f3669k, this.f3685h, this.f3679b.m4515n());
                        return;
                    }
                    return;
                }
                if (c0557dArr2[4].f3493f != null) {
                    C0571f c0571fM4662h5 = m4662h(c0557dArr2[4]);
                    if (c0571fM4662h5 != null) {
                        m4659b(this.f3669k, c0571fM4662h5, 0);
                        m4659b(this.f3685h, this.f3669k, -this.f3679b.m4515n());
                        m4659b(this.f3686i, this.f3685h, this.f3682e.f3646g);
                        return;
                    }
                    return;
                }
                if ((c0558e3 instanceof InterfaceC0561h) || c0558e3.m4463I() == null || this.f3679b.mo4513m(C0557d.b.CENTER).f3493f != null) {
                    return;
                }
                m4659b(this.f3685h, this.f3679b.m4463I().f3543e.f3685h, this.f3679b.m4485T());
                m4659b(this.f3686i, this.f3685h, this.f3682e.f3646g);
                if (this.f3679b.m4487U()) {
                    m4659b(this.f3669k, this.f3685h, this.f3679b.m4515n());
                    return;
                }
                return;
            }
        }
        if (this.f3682e.f3649j || this.f3681d != C0558e.b.MATCH_CONSTRAINT) {
            this.f3682e.m4623b(this);
        } else {
            C0558e c0558e4 = this.f3679b;
            int i = c0558e4.f3563o;
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
            } else if (i == 3 && !c0558e4.m4499b0()) {
                C0558e c0558e5 = this.f3679b;
                if (c0558e5.f3561n != 3) {
                    C0572g c0572g3 = c0558e5.f3541d.f3682e;
                    this.f3682e.f3651l.add(c0572g3);
                    c0572g3.f3650k.add(this.f3682e);
                    C0572g c0572g4 = this.f3682e;
                    c0572g4.f3641b = true;
                    c0572g4.f3650k.add(this.f3685h);
                    this.f3682e.f3650k.add(this.f3686i);
                }
            }
        }
        C0558e c0558e6 = this.f3679b;
        C0557d[] c0557dArr3 = c0558e6.f3522N;
        if (c0557dArr3[2].f3493f == null || c0557dArr3[3].f3493f == null) {
            C0558e c0558e7 = this.f3679b;
            C0557d[] c0557dArr4 = c0558e7.f3522N;
            if (c0557dArr4[2].f3493f != null) {
                C0571f c0571fM4662h6 = m4662h(c0557dArr4[2]);
                if (c0571fM4662h6 != null) {
                    m4659b(this.f3685h, c0571fM4662h6, this.f3679b.f3522N[2].m4429e());
                    m4660c(this.f3686i, this.f3685h, 1, this.f3682e);
                    if (this.f3679b.m4487U()) {
                        m4660c(this.f3669k, this.f3685h, 1, this.f3670l);
                    }
                    if (this.f3681d == C0558e.b.MATCH_CONSTRAINT && this.f3679b.m4527t() > CropImageView.DEFAULT_ASPECT_RATIO) {
                        C0577l c0577l = this.f3679b.f3541d;
                        if (c0577l.f3681d == C0558e.b.MATCH_CONSTRAINT) {
                            c0577l.f3682e.f3650k.add(this.f3682e);
                            this.f3682e.f3651l.add(this.f3679b.f3541d.f3682e);
                            this.f3682e.f3640a = this;
                        }
                    }
                }
            } else if (c0557dArr4[3].f3493f != null) {
                C0571f c0571fM4662h7 = m4662h(c0557dArr4[3]);
                if (c0571fM4662h7 != null) {
                    m4659b(this.f3686i, c0571fM4662h7, -this.f3679b.f3522N[3].m4429e());
                    m4660c(this.f3685h, this.f3686i, -1, this.f3682e);
                    if (this.f3679b.m4487U()) {
                        m4660c(this.f3669k, this.f3685h, 1, this.f3670l);
                    }
                }
            } else if (c0557dArr4[4].f3493f != null) {
                C0571f c0571fM4662h8 = m4662h(c0557dArr4[4]);
                if (c0571fM4662h8 != null) {
                    m4659b(this.f3669k, c0571fM4662h8, 0);
                    m4660c(this.f3685h, this.f3669k, -1, this.f3670l);
                    m4660c(this.f3686i, this.f3685h, 1, this.f3682e);
                }
            } else if (!(c0558e7 instanceof InterfaceC0561h) && c0558e7.m4463I() != null) {
                m4659b(this.f3685h, this.f3679b.m4463I().f3543e.f3685h, this.f3679b.m4485T());
                m4660c(this.f3686i, this.f3685h, 1, this.f3682e);
                if (this.f3679b.m4487U()) {
                    m4660c(this.f3669k, this.f3685h, 1, this.f3670l);
                }
                if (this.f3681d == C0558e.b.MATCH_CONSTRAINT && this.f3679b.m4527t() > CropImageView.DEFAULT_ASPECT_RATIO) {
                    C0577l c0577l2 = this.f3679b.f3541d;
                    if (c0577l2.f3681d == C0558e.b.MATCH_CONSTRAINT) {
                        c0577l2.f3682e.f3650k.add(this.f3682e);
                        this.f3682e.f3651l.add(this.f3679b.f3541d.f3682e);
                        this.f3682e.f3640a = this;
                    }
                }
            }
        } else {
            if (c0558e6.m4499b0()) {
                this.f3685h.f3645f = this.f3679b.f3522N[2].m4429e();
                this.f3686i.f3645f = -this.f3679b.f3522N[3].m4429e();
            } else {
                C0571f c0571fM4662h9 = m4662h(this.f3679b.f3522N[2]);
                C0571f c0571fM4662h10 = m4662h(this.f3679b.f3522N[3]);
                c0571fM4662h9.m4623b(this);
                c0571fM4662h10.m4623b(this);
                this.f3687j = AbstractC0581p.b.CENTER;
            }
            if (this.f3679b.m4487U()) {
                m4660c(this.f3669k, this.f3685h, 1, this.f3670l);
            }
        }
        if (this.f3682e.f3651l.size() == 0) {
            this.f3682e.f3642c = true;
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: e */
    public void mo4605e() {
        C0571f c0571f = this.f3685h;
        if (c0571f.f3649j) {
            this.f3679b.m4492W0(c0571f.f3646g);
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: f */
    void mo4606f() {
        this.f3680c = null;
        this.f3685h.m4624c();
        this.f3686i.m4624c();
        this.f3669k.m4624c();
        this.f3682e.m4624c();
        this.f3684g = false;
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: m */
    boolean mo4608m() {
        return this.f3681d != C0558e.b.MATCH_CONSTRAINT || this.f3679b.f3563o == 0;
    }

    /* JADX INFO: renamed from: q */
    void m4647q() {
        this.f3684g = false;
        this.f3685h.m4624c();
        this.f3685h.f3649j = false;
        this.f3686i.m4624c();
        this.f3686i.f3649j = false;
        this.f3669k.m4624c();
        this.f3669k.f3649j = false;
        this.f3682e.f3649j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f3679b.m4523r();
    }
}
