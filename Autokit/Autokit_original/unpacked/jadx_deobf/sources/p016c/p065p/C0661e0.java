package p016c.p065p;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: renamed from: c.p.e0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0661e0 extends C0659d0 {

    /* JADX INFO: renamed from: f */
    private static boolean f3958f = true;

    /* JADX INFO: renamed from: g */
    private static boolean f3959g = true;

    C0661e0() {
    }

    @Override // p016c.p065p.C0669i0
    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: h */
    public void mo5082h(View view, Matrix matrix) {
        if (f3958f) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                f3958f = false;
            }
        }
    }

    @Override // p016c.p065p.C0669i0
    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: i */
    public void mo5083i(View view, Matrix matrix) {
        if (f3959g) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                f3959g = false;
            }
        }
    }
}
