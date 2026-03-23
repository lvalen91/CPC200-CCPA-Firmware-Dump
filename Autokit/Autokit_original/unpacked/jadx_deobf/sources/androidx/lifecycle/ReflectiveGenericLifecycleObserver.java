package androidx.lifecycle;

import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.C0386b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ReflectiveGenericLifecycleObserver implements InterfaceC0394h {

    /* JADX INFO: renamed from: a */
    private final Object f2492a;

    /* JADX INFO: renamed from: b */
    private final C0386b.a f2493b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f2492a = obj;
        this.f2493b = C0386b.f2501c.m2982c(obj.getClass());
    }

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        this.f2493b.m2985a(interfaceC0396j, bVar, this.f2492a);
    }
}
