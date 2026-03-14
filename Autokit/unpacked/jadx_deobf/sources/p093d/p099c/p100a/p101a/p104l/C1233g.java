package p093d.p099c.p100a.p101a.p104l;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: renamed from: d.c.a.a.l.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1233g implements TypeEvaluator<Matrix> {

    /* JADX INFO: renamed from: a */
    private final float[] f7764a = new float[9];

    /* JADX INFO: renamed from: b */
    private final float[] f7765b = new float[9];

    /* JADX INFO: renamed from: c */
    private final Matrix f7766c = new Matrix();

    /* JADX INFO: renamed from: a */
    public Matrix mo8605a(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.f7764a);
        matrix2.getValues(this.f7765b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f7765b;
            float f2 = fArr[i];
            float[] fArr2 = this.f7764a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f7766c.setValues(this.f7765b);
        return this.f7766c;
    }
}
