package d.c.a.a.l;

import android.animation.TypeEvaluator;
import android.graphics.Matrix;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class g implements TypeEvaluator<Matrix> {
    private final float[] a = new float[9];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float[] f2319b = new float[9];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Matrix f2320c = new Matrix();

    public Matrix a(float f, Matrix matrix, Matrix matrix2) {
        matrix.getValues(this.a);
        matrix2.getValues(this.f2319b);
        for (int i = 0; i < 9; i++) {
            float[] fArr = this.f2319b;
            float f2 = fArr[i];
            float[] fArr2 = this.a;
            fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
        }
        this.f2320c.setValues(this.f2319b);
        return this.f2320c;
    }
}
