package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.C0397k;
import androidx.lifecycle.C0410x;
import androidx.lifecycle.InterfaceC0411y;
import androidx.savedstate.C0482b;
import androidx.savedstate.InterfaceC0483c;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: renamed from: androidx.fragment.app.a0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0349a0 implements InterfaceC0483c, InterfaceC0411y {

    /* JADX INFO: renamed from: b */
    private final C0410x f2139b;

    /* JADX INFO: renamed from: c */
    private C0397k f2140c = null;

    /* JADX INFO: renamed from: d */
    private C0482b f2141d = null;

    C0349a0(Fragment fragment, C0410x c0410x) {
        this.f2139b = c0410x;
    }

    /* JADX INFO: renamed from: a */
    void m2540a(AbstractC0392f.b bVar) {
        this.f2140c.m3012h(bVar);
    }

    /* JADX INFO: renamed from: b */
    void m2541b() {
        if (this.f2140c == null) {
            this.f2140c = new C0397k(this);
            this.f2141d = C0482b.m3989a(this);
        }
    }

    /* JADX INFO: renamed from: c */
    boolean m2542c() {
        return this.f2140c != null;
    }

    /* JADX INFO: renamed from: d */
    void m2543d(Bundle bundle) {
        this.f2141d.m3991c(bundle);
    }

    /* JADX INFO: renamed from: e */
    void m2544e(Bundle bundle) {
        this.f2141d.m3992d(bundle);
    }

    /* JADX INFO: renamed from: f */
    void m2545f(AbstractC0392f.c cVar) {
        this.f2140c.m3014o(cVar);
    }

    @Override // androidx.lifecycle.InterfaceC0396j
    public AbstractC0392f getLifecycle() {
        m2541b();
        return this.f2140c;
    }

    @Override // androidx.savedstate.InterfaceC0483c
    public SavedStateRegistry getSavedStateRegistry() {
        m2541b();
        return this.f2141d.m3990b();
    }

    @Override // androidx.lifecycle.InterfaceC0411y
    public C0410x getViewModelStore() {
        m2541b();
        return this.f2139b;
    }
}
