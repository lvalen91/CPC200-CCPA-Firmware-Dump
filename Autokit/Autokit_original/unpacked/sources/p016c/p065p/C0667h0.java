package p016c.p065p;

import android.graphics.Matrix;
import android.view.View;

/* JADX INFO: renamed from: c.p.h0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0667h0 extends C0665g0 {
    C0667h0() {
    }

    @Override // p016c.p065p.C0659d0, p016c.p065p.C0669i0
    /* JADX INFO: renamed from: c */
    public float mo5077c(View view) {
        return view.getTransitionAlpha();
    }

    @Override // p016c.p065p.C0663f0, p016c.p065p.C0669i0
    /* JADX INFO: renamed from: e */
    public void mo5085e(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // p016c.p065p.C0659d0, p016c.p065p.C0669i0
    /* JADX INFO: renamed from: f */
    public void mo5079f(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // p016c.p065p.C0665g0, p016c.p065p.C0669i0
    /* JADX INFO: renamed from: g */
    public void mo5087g(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // p016c.p065p.C0661e0, p016c.p065p.C0669i0
    /* JADX INFO: renamed from: h */
    public void mo5082h(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // p016c.p065p.C0661e0, p016c.p065p.C0669i0
    /* JADX INFO: renamed from: i */
    public void mo5083i(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
