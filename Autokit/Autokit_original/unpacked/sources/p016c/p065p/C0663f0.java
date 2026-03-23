package p016c.p065p;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: renamed from: c.p.f0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0663f0 extends C0661e0 {

    /* JADX INFO: renamed from: h */
    private static boolean f3960h = true;

    C0663f0() {
    }

    @Override // p016c.p065p.C0669i0
    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: e */
    public void mo5085e(View view, int i, int i2, int i3, int i4) {
        if (f3960h) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f3960h = false;
            }
        }
    }
}
