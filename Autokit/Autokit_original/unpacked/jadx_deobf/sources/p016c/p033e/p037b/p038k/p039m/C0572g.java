package p016c.p033e.p037b.p038k.p039m;

import p016c.p033e.p037b.p038k.p039m.C0571f;

/* JADX INFO: renamed from: c.e.b.k.m.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0572g extends C0571f {

    /* JADX INFO: renamed from: m */
    public int f3661m;

    public C0572g(AbstractC0581p abstractC0581p) {
        super(abstractC0581p);
        if (abstractC0581p instanceof C0577l) {
            this.f3644e = C0571f.a.HORIZONTAL_DIMENSION;
        } else {
            this.f3644e = C0571f.a.VERTICAL_DIMENSION;
        }
    }

    @Override // p016c.p033e.p037b.p038k.p039m.C0571f
    /* JADX INFO: renamed from: d */
    public void mo4625d(int i) {
        if (this.f3649j) {
            return;
        }
        this.f3649j = true;
        this.f3646g = i;
        for (InterfaceC0569d interfaceC0569d : this.f3650k) {
            interfaceC0569d.mo4603a(interfaceC0569d);
        }
    }
}
