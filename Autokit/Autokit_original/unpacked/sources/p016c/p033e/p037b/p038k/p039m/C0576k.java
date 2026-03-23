package p016c.p033e.p037b.p038k.p039m;

import java.util.Iterator;
import p016c.p033e.p037b.p038k.C0554a;
import p016c.p033e.p037b.p038k.C0558e;
import p016c.p033e.p037b.p038k.p039m.C0571f;

/* JADX INFO: renamed from: c.e.b.k.m.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0576k extends AbstractC0581p {
    public C0576k(C0558e c0558e) {
        super(c0558e);
    }

    /* JADX INFO: renamed from: q */
    private void m4640q(C0571f c0571f) {
        this.f3685h.f3650k.add(c0571f);
        c0571f.f3651l.add(this.f3685h);
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p, p016c.p033e.p037b.p038k.p039m.InterfaceC0569d
    /* JADX INFO: renamed from: a */
    public void mo4603a(InterfaceC0569d interfaceC0569d) {
        C0554a c0554a = (C0554a) this.f3679b;
        int iM4410e1 = c0554a.m4410e1();
        Iterator<C0571f> it = this.f3685h.f3651l.iterator();
        int i = 0;
        int i2 = -1;
        while (it.hasNext()) {
            int i3 = it.next().f3646g;
            if (i2 == -1 || i3 < i2) {
                i2 = i3;
            }
            if (i < i3) {
                i = i3;
            }
        }
        if (iM4410e1 == 0 || iM4410e1 == 2) {
            this.f3685h.mo4625d(i2 + c0554a.m4412f1());
        } else {
            this.f3685h.mo4625d(i + c0554a.m4412f1());
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: d */
    void mo4604d() {
        C0558e c0558e = this.f3679b;
        if (c0558e instanceof C0554a) {
            this.f3685h.f3641b = true;
            C0554a c0554a = (C0554a) c0558e;
            int iM4410e1 = c0554a.m4410e1();
            boolean zM4408d1 = c0554a.m4408d1();
            int i = 0;
            if (iM4410e1 == 0) {
                this.f3685h.f3644e = C0571f.a.LEFT;
                while (i < c0554a.f3610q0) {
                    C0558e c0558e2 = c0554a.f3609p0[i];
                    if (zM4408d1 || c0558e2.m4479Q() != 8) {
                        C0571f c0571f = c0558e2.f3541d.f3685h;
                        c0571f.f3650k.add(this.f3685h);
                        this.f3685h.f3651l.add(c0571f);
                    }
                    i++;
                }
                m4640q(this.f3679b.f3541d.f3685h);
                m4640q(this.f3679b.f3541d.f3686i);
                return;
            }
            if (iM4410e1 == 1) {
                this.f3685h.f3644e = C0571f.a.RIGHT;
                while (i < c0554a.f3610q0) {
                    C0558e c0558e3 = c0554a.f3609p0[i];
                    if (zM4408d1 || c0558e3.m4479Q() != 8) {
                        C0571f c0571f2 = c0558e3.f3541d.f3686i;
                        c0571f2.f3650k.add(this.f3685h);
                        this.f3685h.f3651l.add(c0571f2);
                    }
                    i++;
                }
                m4640q(this.f3679b.f3541d.f3685h);
                m4640q(this.f3679b.f3541d.f3686i);
                return;
            }
            if (iM4410e1 == 2) {
                this.f3685h.f3644e = C0571f.a.TOP;
                while (i < c0554a.f3610q0) {
                    C0558e c0558e4 = c0554a.f3609p0[i];
                    if (zM4408d1 || c0558e4.m4479Q() != 8) {
                        C0571f c0571f3 = c0558e4.f3543e.f3685h;
                        c0571f3.f3650k.add(this.f3685h);
                        this.f3685h.f3651l.add(c0571f3);
                    }
                    i++;
                }
                m4640q(this.f3679b.f3543e.f3685h);
                m4640q(this.f3679b.f3543e.f3686i);
                return;
            }
            if (iM4410e1 != 3) {
                return;
            }
            this.f3685h.f3644e = C0571f.a.BOTTOM;
            while (i < c0554a.f3610q0) {
                C0558e c0558e5 = c0554a.f3609p0[i];
                if (zM4408d1 || c0558e5.m4479Q() != 8) {
                    C0571f c0571f4 = c0558e5.f3543e.f3686i;
                    c0571f4.f3650k.add(this.f3685h);
                    this.f3685h.f3651l.add(c0571f4);
                }
                i++;
            }
            m4640q(this.f3679b.f3543e.f3685h);
            m4640q(this.f3679b.f3543e.f3686i);
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: e */
    public void mo4605e() {
        C0558e c0558e = this.f3679b;
        if (c0558e instanceof C0554a) {
            int iM4410e1 = ((C0554a) c0558e).m4410e1();
            if (iM4410e1 == 0 || iM4410e1 == 1) {
                this.f3679b.m4490V0(this.f3685h.f3646g);
            } else {
                this.f3679b.m4492W0(this.f3685h.f3646g);
            }
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: f */
    void mo4606f() {
        this.f3680c = null;
        this.f3685h.m4624c();
    }

    @Override // p016c.p033e.p037b.p038k.p039m.AbstractC0581p
    /* JADX INFO: renamed from: m */
    boolean mo4608m() {
        return false;
    }
}
