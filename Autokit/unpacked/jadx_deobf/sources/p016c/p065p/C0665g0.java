package p016c.p065p;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;

/* JADX INFO: renamed from: c.p.g0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0665g0 extends C0663f0 {

    /* JADX INFO: renamed from: i */
    private static boolean f3961i = true;

    C0665g0() {
    }

    @Override // p016c.p065p.C0669i0
    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: g */
    public void mo5087g(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.mo5087g(view, i);
        } else if (f3961i) {
            try {
                view.setTransitionVisibility(i);
            } catch (NoSuchMethodError unused) {
                f3961i = false;
            }
        }
    }
}
