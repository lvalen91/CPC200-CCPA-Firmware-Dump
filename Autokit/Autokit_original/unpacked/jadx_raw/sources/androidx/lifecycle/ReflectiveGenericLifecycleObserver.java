package androidx.lifecycle;

import androidx.lifecycle.b;
import androidx.lifecycle.f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class ReflectiveGenericLifecycleObserver implements h {
    private final Object a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.a f812b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.a = obj;
        this.f812b = b.f817c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.h
    public void d(j jVar, f.b bVar) {
        this.f812b.a(jVar, bVar, this.a);
    }
}
