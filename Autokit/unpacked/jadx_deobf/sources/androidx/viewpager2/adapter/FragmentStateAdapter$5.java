package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class FragmentStateAdapter$5 implements InterfaceC0394h {

    /* JADX INFO: renamed from: a */
    final /* synthetic */ Handler f3074a;

    /* JADX INFO: renamed from: b */
    final /* synthetic */ Runnable f3075b;

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        if (bVar == AbstractC0392f.b.ON_DESTROY) {
            this.f3074a.removeCallbacks(this.f3075b);
            interfaceC0396j.getLifecycle().mo2996c(this);
        }
    }
}
