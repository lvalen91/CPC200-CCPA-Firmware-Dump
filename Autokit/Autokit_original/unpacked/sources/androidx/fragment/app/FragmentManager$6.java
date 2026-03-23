package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class FragmentManager$6 implements InterfaceC0394h {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ String f2132a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ InterfaceC0371s f2133b;

    /* JADX INFO: renamed from: c */
    final /* synthetic */ AbstractC0392f f2134c;

    /* JADX INFO: renamed from: d */
    final /* synthetic */ AbstractC0366n f2135d;

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        Bundle bundle;
        if (bVar == AbstractC0392f.b.ON_START && (bundle = (Bundle) this.f2135d.f2306j.get(this.f2132a)) != null) {
            this.f2133b.m2837a(this.f2132a, bundle);
            this.f2135d.m2780q(this.f2132a);
        }
        if (bVar == AbstractC0392f.b.ON_DESTROY) {
            this.f2134c.mo2996c(this);
            this.f2135d.f2307k.remove(this.f2132a);
        }
    }
}
