package p016c.p033e.p037b.p038k.p039m;

import p016c.p033e.p037b.p038k.C0557d;
import p016c.p033e.p037b.p038k.C0558e;

/* JADX INFO: renamed from: c.e.b.k.m.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0581p implements InterfaceC0569d {

    /* JADX INFO: renamed from: a */
    public int f3678a;

    /* JADX INFO: renamed from: b */
    C0558e f3679b;

    /* JADX INFO: renamed from: c */
    C0578m f3680c;

    /* JADX INFO: renamed from: d */
    protected C0558e.b f3681d;

    /* JADX INFO: renamed from: e */
    C0572g f3682e = new C0572g(this);

    /* JADX INFO: renamed from: f */
    public int f3683f = 0;

    /* JADX INFO: renamed from: g */
    boolean f3684g = false;

    /* JADX INFO: renamed from: h */
    public C0571f f3685h = new C0571f(this);

    /* JADX INFO: renamed from: i */
    public C0571f f3686i = new C0571f(this);

    /* JADX INFO: renamed from: j */
    protected b f3687j = b.NONE;

    /* JADX INFO: renamed from: c.e.b.k.m.p$a */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a */
        static final /* synthetic */ int[] f3688a;

        static {
            int[] iArr = new int[C0557d.b.values().length];
            f3688a = iArr;
            try {
                iArr[C0557d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3688a[C0557d.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f3688a[C0557d.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f3688a[C0557d.b.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f3688a[C0557d.b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: renamed from: c.e.b.k.m.p$b */
    enum b {
        NONE,
        START,
        END,
        CENTER
    }

    public AbstractC0581p(C0558e c0558e) {
        this.f3679b = c0558e;
    }

    /* JADX INFO: renamed from: l */
    private void m4658l(int i, int i2) {
        int i3 = this.f3678a;
        if (i3 == 0) {
            this.f3682e.mo4625d(m4661g(i2, i));
            return;
        }
        if (i3 == 1) {
            this.f3682e.mo4625d(Math.min(m4661g(this.f3682e.f3661m, i), i2));
            return;
        }
        if (i3 == 2) {
            C0558e c0558eM4463I = this.f3679b.m4463I();
            if (c0558eM4463I != null) {
                if ((i == 0 ? c0558eM4463I.f3541d : c0558eM4463I.f3543e).f3682e.f3649j) {
                    C0558e c0558e = this.f3679b;
                    this.f3682e.mo4625d(m4661g((int) ((r8.f3682e.f3646g * (i == 0 ? c0558e.f3567s : c0558e.f3570v)) + 0.5f), i));
                    return;
                }
                return;
            }
            return;
        }
        if (i3 != 3) {
            return;
        }
        C0558e c0558e2 = this.f3679b;
        C0577l c0577l = c0558e2.f3541d;
        C0558e.b bVar = c0577l.f3681d;
        C0558e.b bVar2 = C0558e.b.MATCH_CONSTRAINT;
        if (bVar == bVar2 && c0577l.f3678a == 3) {
            C0579n c0579n = c0558e2.f3543e;
            if (c0579n.f3681d == bVar2 && c0579n.f3678a == 3) {
                return;
            }
        }
        C0558e c0558e3 = this.f3679b;
        if ((i == 0 ? c0558e3.f3543e : c0558e3.f3541d).f3682e.f3649j) {
            float fM4527t = this.f3679b.m4527t();
            this.f3682e.mo4625d(i == 1 ? (int) ((r8.f3682e.f3646g / fM4527t) + 0.5f) : (int) ((fM4527t * r8.f3682e.f3646g) + 0.5f));
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.InterfaceC0569d
    /* JADX INFO: renamed from: a */
    public void mo4603a(InterfaceC0569d interfaceC0569d) {
    }

    /* JADX INFO: renamed from: b */
    protected final void m4659b(C0571f c0571f, C0571f c0571f2, int i) {
        c0571f.f3651l.add(c0571f2);
        c0571f.f3645f = i;
        c0571f2.f3650k.add(c0571f);
    }

    /* JADX INFO: renamed from: c */
    protected final void m4660c(C0571f c0571f, C0571f c0571f2, int i, C0572g c0572g) {
        c0571f.f3651l.add(c0571f2);
        c0571f.f3651l.add(this.f3682e);
        c0571f.f3647h = i;
        c0571f.f3648i = c0572g;
        c0571f2.f3650k.add(c0571f);
        c0572g.f3650k.add(c0571f);
    }

    /* JADX INFO: renamed from: d */
    abstract void mo4604d();

    /* JADX INFO: renamed from: e */
    abstract void mo4605e();

    /* JADX INFO: renamed from: f */
    abstract void mo4606f();

    /* JADX INFO: renamed from: g */
    protected final int m4661g(int i, int i2) {
        int iMax;
        if (i2 == 0) {
            C0558e c0558e = this.f3679b;
            int i3 = c0558e.f3566r;
            iMax = Math.max(c0558e.f3565q, i);
            if (i3 > 0) {
                iMax = Math.min(i3, i);
            }
            if (iMax == i) {
                return i;
            }
        } else {
            C0558e c0558e2 = this.f3679b;
            int i4 = c0558e2.f3569u;
            iMax = Math.max(c0558e2.f3568t, i);
            if (i4 > 0) {
                iMax = Math.min(i4, i);
            }
            if (iMax == i) {
                return i;
            }
        }
        return iMax;
    }

    /* JADX INFO: renamed from: h */
    protected final C0571f m4662h(C0557d c0557d) {
        C0557d c0557d2 = c0557d.f3493f;
        if (c0557d2 == null) {
            return null;
        }
        C0558e c0558e = c0557d2.f3491d;
        int i = a.f3688a[c0557d2.f3492e.ordinal()];
        if (i == 1) {
            return c0558e.f3541d.f3685h;
        }
        if (i == 2) {
            return c0558e.f3541d.f3686i;
        }
        if (i == 3) {
            return c0558e.f3543e.f3685h;
        }
        if (i == 4) {
            return c0558e.f3543e.f3669k;
        }
        if (i != 5) {
            return null;
        }
        return c0558e.f3543e.f3686i;
    }

    /* JADX INFO: renamed from: i */
    protected final C0571f m4663i(C0557d c0557d, int i) {
        C0557d c0557d2 = c0557d.f3493f;
        if (c0557d2 == null) {
            return null;
        }
        C0558e c0558e = c0557d2.f3491d;
        AbstractC0581p abstractC0581p = i == 0 ? c0558e.f3541d : c0558e.f3543e;
        int i2 = a.f3688a[c0557d.f3493f.f3492e.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return abstractC0581p.f3686i;
        }
        return abstractC0581p.f3685h;
    }

    /* JADX INFO: renamed from: j */
    public long mo4607j() {
        if (this.f3682e.f3649j) {
            return r0.f3646g;
        }
        return 0L;
    }

    /* JADX INFO: renamed from: k */
    public boolean m4664k() {
        return this.f3684g;
    }

    /* JADX INFO: renamed from: m */
    abstract boolean mo4608m();

    /* JADX INFO: renamed from: n */
    protected void m4665n(InterfaceC0569d interfaceC0569d, C0557d c0557d, C0557d c0557d2, int i) {
        C0571f c0571fM4662h = m4662h(c0557d);
        C0571f c0571fM4662h2 = m4662h(c0557d2);
        if (c0571fM4662h.f3649j && c0571fM4662h2.f3649j) {
            int iM4429e = c0571fM4662h.f3646g + c0557d.m4429e();
            int iM4429e2 = c0571fM4662h2.f3646g - c0557d2.m4429e();
            int i2 = iM4429e2 - iM4429e;
            if (!this.f3682e.f3649j && this.f3681d == C0558e.b.MATCH_CONSTRAINT) {
                m4658l(i, i2);
            }
            C0572g c0572g = this.f3682e;
            if (c0572g.f3649j) {
                if (c0572g.f3646g == i2) {
                    this.f3685h.mo4625d(iM4429e);
                    this.f3686i.mo4625d(iM4429e2);
                    return;
                }
                C0558e c0558e = this.f3679b;
                float fM4533w = i == 0 ? c0558e.m4533w() : c0558e.m4471M();
                if (c0571fM4662h == c0571fM4662h2) {
                    iM4429e = c0571fM4662h.f3646g;
                    iM4429e2 = c0571fM4662h2.f3646g;
                    fM4533w = 0.5f;
                }
                this.f3685h.mo4625d((int) (iM4429e + 0.5f + (((iM4429e2 - iM4429e) - this.f3682e.f3646g) * fM4533w)));
                this.f3686i.mo4625d(this.f3685h.f3646g + this.f3682e.f3646g);
            }
        }
    }

    /* JADX INFO: renamed from: o */
    protected void m4666o(InterfaceC0569d interfaceC0569d) {
    }

    /* JADX INFO: renamed from: p */
    protected void m4667p(InterfaceC0569d interfaceC0569d) {
    }
}
