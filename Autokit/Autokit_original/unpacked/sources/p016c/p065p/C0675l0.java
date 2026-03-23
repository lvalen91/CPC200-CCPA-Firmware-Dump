package p016c.p065p;

import android.view.View;
import android.view.WindowId;

/* JADX INFO: renamed from: c.p.l0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0675l0 implements InterfaceC0677m0 {

    /* JADX INFO: renamed from: a */
    private final WindowId f3994a;

    C0675l0(View view) {
        this.f3994a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof C0675l0) && ((C0675l0) obj).f3994a.equals(this.f3994a);
    }

    public int hashCode() {
        return this.f3994a.hashCode();
    }
}
