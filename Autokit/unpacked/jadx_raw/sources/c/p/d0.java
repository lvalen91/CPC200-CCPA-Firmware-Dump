package c.p;

import android.annotation.SuppressLint;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class d0 extends i0 {
    private static boolean e = true;

    d0() {
    }

    @Override // c.p.i0
    public void a(View view) {
    }

    @Override // c.p.i0
    @SuppressLint({"NewApi"})
    public float c(View view) {
        if (e) {
            try {
                return view.getTransitionAlpha();
            } catch (NoSuchMethodError unused) {
                e = false;
            }
        }
        return view.getAlpha();
    }

    @Override // c.p.i0
    public void d(View view) {
    }

    @Override // c.p.i0
    @SuppressLint({"NewApi"})
    public void f(View view, float f) {
        if (e) {
            try {
                view.setTransitionAlpha(f);
                return;
            } catch (NoSuchMethodError unused) {
                e = false;
            }
        }
        view.setAlpha(f);
    }
}
