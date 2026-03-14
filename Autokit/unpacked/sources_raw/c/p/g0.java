package c.p;

import android.annotation.SuppressLint;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class g0 extends f0 {
    private static boolean i = true;

    g0() {
    }

    @Override // c.p.i0
    @SuppressLint({"NewApi"})
    public void g(View view, int i2) {
        if (Build.VERSION.SDK_INT == 28) {
            super.g(view, i2);
        } else if (i) {
            try {
                view.setTransitionVisibility(i2);
            } catch (NoSuchMethodError unused) {
                i = false;
            }
        }
    }
}
