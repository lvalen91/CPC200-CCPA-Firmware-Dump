package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0392f;

/* JADX INFO: renamed from: androidx.savedstate.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0482b {

    /* JADX INFO: renamed from: a */
    private final InterfaceC0483c f3058a;

    /* JADX INFO: renamed from: b */
    private final SavedStateRegistry f3059b = new SavedStateRegistry();

    private C0482b(InterfaceC0483c interfaceC0483c) {
        this.f3058a = interfaceC0483c;
    }

    /* JADX INFO: renamed from: a */
    public static C0482b m3989a(InterfaceC0483c interfaceC0483c) {
        return new C0482b(interfaceC0483c);
    }

    /* JADX INFO: renamed from: b */
    public SavedStateRegistry m3990b() {
        return this.f3059b;
    }

    /* JADX INFO: renamed from: c */
    public void m3991c(Bundle bundle) {
        AbstractC0392f lifecycle = this.f3058a.getLifecycle();
        if (lifecycle.mo2995b() != AbstractC0392f.c.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.mo2994a(new Recreator(this.f3058a));
        this.f3059b.m3985b(lifecycle, bundle);
    }

    /* JADX INFO: renamed from: d */
    public void m3992d(Bundle bundle) {
        this.f3059b.m3986c(bundle);
    }
}
