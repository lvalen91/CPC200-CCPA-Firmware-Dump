package p016c.p056k.p057a.p058a;

import android.view.animation.Interpolator;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: c.k.a.a.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractInterpolatorC0640d implements Interpolator {

    /* JADX INFO: renamed from: a */
    private final float[] f3878a;

    /* JADX INFO: renamed from: b */
    private final float f3879b;

    protected AbstractInterpolatorC0640d(float[] fArr) {
        this.f3878a = fArr;
        this.f3879b = 1.0f / (fArr.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        float[] fArr = this.f3878a;
        int iMin = Math.min((int) ((fArr.length - 1) * f), fArr.length - 2);
        float f2 = this.f3879b;
        float f3 = (f - (iMin * f2)) / f2;
        float[] fArr2 = this.f3878a;
        return fArr2[iMin] + (f3 * (fArr2[iMin + 1] - fArr2[iMin]));
    }
}
