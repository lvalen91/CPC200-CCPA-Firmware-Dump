package p016c.p033e.p037b.p038k.p039m;

import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.C0560g;

/* JADX INFO: renamed from: c.e.b.k.m.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0575j extends AbstractC0581p {
    public C0575j(C0558e c0558e) {
        super(c0558e);
        c0558e.f3541d.mo4606f();
        c0558e.f3543e.mo4606f();
        this.f3683f = ((C0560g) c0558e).m4573b1();
    }

    /* JADX INFO: renamed from: q */
    private void m4639q(C0571f c0571f) {
        this.f3685h.f3650k.add(c0571f);
        c0571f.f3651l.add(this.f3685h);
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p, p016c.p033e.p037b.p038k.p039m.InterfaceC0569d
    /* JADX INFO: renamed from: a */
    public void mo4603a(InterfaceC0569d interfaceC0569d) {
        C0571f c0571f = this.f3685h;
        if (c0571f.f3642c && !c0571f.f3649j) {
            this.f3685h.mo4625d((int) ((c0571f.f3651l.get(0).f3646g * ((C0560g) this.f3679b).m4576e1()) + 0.5f));
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: d */
    void mo4604d() {
        C0560g c0560g = (C0560g) this.f3679b;
        int iM4574c1 = c0560g.m4574c1();
        int iM4575d1 = c0560g.m4575d1();
        c0560g.m4576e1();
        if (c0560g.m4573b1() == 1) {
            if (iM4574c1 != -1) {
                this.f3685h.f3651l.add(this.f3679b.f3526R.f3541d.f3685h);
                this.f3679b.f3526R.f3541d.f3685h.f3650k.add(this.f3685h);
                this.f3685h.f3645f = iM4574c1;
            } else if (iM4575d1 != -1) {
                this.f3685h.f3651l.add(this.f3679b.f3526R.f3541d.f3686i);
                this.f3679b.f3526R.f3541d.f3686i.f3650k.add(this.f3685h);
                this.f3685h.f3645f = -iM4575d1;
            } else {
                C0571f c0571f = this.f3685h;
                c0571f.f3641b = true;
                c0571f.f3651l.add(this.f3679b.f3526R.f3541d.f3686i);
                this.f3679b.f3526R.f3541d.f3686i.f3650k.add(this.f3685h);
            }
            m4639q(this.f3679b.f3541d.f3685h);
            m4639q(this.f3679b.f3541d.f3686i);
            return;
        }
        if (iM4574c1 != -1) {
            this.f3685h.f3651l.add(this.f3679b.f3526R.f3543e.f3685h);
            this.f3679b.f3526R.f3543e.f3685h.f3650k.add(this.f3685h);
            this.f3685h.f3645f = iM4574c1;
        } else if (iM4575d1 != -1) {
            this.f3685h.f3651l.add(this.f3679b.f3526R.f3543e.f3686i);
            this.f3679b.f3526R.f3543e.f3686i.f3650k.add(this.f3685h);
            this.f3685h.f3645f = -iM4575d1;
        } else {
            C0571f c0571f2 = this.f3685h;
            c0571f2.f3641b = true;
            c0571f2.f3651l.add(this.f3679b.f3526R.f3543e.f3686i);
            this.f3679b.f3526R.f3543e.f3686i.f3650k.add(this.f3685h);
        }
        m4639q(this.f3679b.f3543e.f3685h);
        m4639q(this.f3679b.f3543e.f3686i);
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: e */
    public void mo4605e() {
        if (((C0560g) this.f3679b).m4573b1() == 1) {
            this.f3679b.m4490V0(this.f3685h.f3646g);
        } else {
            this.f3679b.m4492W0(this.f3685h.f3646g);
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: f */
    void mo4606f() {
        this.f3685h.m4624c();
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: m */
    boolean mo4608m() {
        return false;
    }
}
