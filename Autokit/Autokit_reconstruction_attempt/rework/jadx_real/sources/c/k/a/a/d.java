package c.k.a.a;

import android.view.animation.Interpolator;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
abstract class d implements Interpolator {
    private final float[] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final float f1257b;

    protected d(float[] fArr) {
        this.a = fArr;
        this.f1257b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        float[] fArr = this.a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f1257b;
        float f3 = (f - (iMin * f2)) / f2;
        float[] fArr2 = this.a;
        return fArr2[iMin] + (f3 * (fArr2[iMin + 1] - fArr2[iMin]));
    }
}
