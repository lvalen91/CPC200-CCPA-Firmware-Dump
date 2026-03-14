package c.p;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class h0 extends g0 {
    h0() {
    }

    @Override // c.p.d0, c.p.i0
    public float c(View view) {
        return view.getTransitionAlpha();
    }

    @Override // c.p.f0, c.p.i0
    public void e(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // c.p.d0, c.p.i0
    public void f(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // c.p.g0, c.p.i0
    public void g(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // c.p.e0, c.p.i0
    public void h(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // c.p.e0, c.p.i0
    public void i(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
