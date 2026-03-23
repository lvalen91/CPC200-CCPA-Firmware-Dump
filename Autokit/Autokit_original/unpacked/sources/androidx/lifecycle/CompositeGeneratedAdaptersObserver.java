package androidx.lifecycle;

import androidx.lifecycle.AbstractC0392f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class CompositeGeneratedAdaptersObserver implements InterfaceC0394h {

    /* JADX INFO: renamed from: a */
    private final InterfaceC0391e[] f2471a;

    CompositeGeneratedAdaptersObserver(InterfaceC0391e[] interfaceC0391eArr) {
        this.f2471a = interfaceC0391eArr;
    }

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        C0400n c0400n = new C0400n();
        for (InterfaceC0391e interfaceC0391e : this.f2471a) {
            interfaceC0391e.m2993a(interfaceC0396j, bVar, false, c0400n);
        }
        for (InterfaceC0391e interfaceC0391e2 : this.f2471a) {
            interfaceC0391e2.m2993a(interfaceC0396j, bVar, true, c0400n);
        }
    }
}
