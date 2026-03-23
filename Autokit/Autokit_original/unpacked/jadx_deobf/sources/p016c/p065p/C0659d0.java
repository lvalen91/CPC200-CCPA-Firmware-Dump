package p016c.p065p;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: renamed from: c.p.d0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0659d0 extends C0669i0 {

    /* JADX INFO: renamed from: e */
    private static boolean f3948e = true;

    C0659d0() {
    }

    @Override // p016c.p065p.C0669i0
    /* JADX INFO: renamed from: a */
    public void mo5076a(View view) {
    }

    @Override // p016c.p065p.C0669i0
    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: c */
    public float mo5077c(View view) {
        if (f3948e) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                f3948e = false;
            }
        }
        return view.getAlpha();
    }

    @Override // p016c.p065p.C0669i0
    /* JADX INFO: renamed from: d */
    public void mo5078d(View view) {
    }

    @Override // p016c.p065p.C0669i0
    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: f */
    public void mo5079f(View view, float f) {
        if (f3948e) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError unused) {
                f3948e = false;
            }
        }
        view.setAlpha(f);
    }
}
