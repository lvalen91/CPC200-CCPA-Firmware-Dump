package p016c.p065p;

import android.os.IBinder;

/* JADX INFO: renamed from: c.p.k0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0673k0 implements InterfaceC0677m0 {

    /* JADX INFO: renamed from: a */
    private final IBinder f3991a;

    C0673k0(IBinder iBinder) {
        this.f3991a = iBinder;
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0673k0) && ((C0673k0) obj).f3991a.equals(this.f3991a);
    }

    public int hashCode() {
        return this.f3991a.hashCode();
    }
}
