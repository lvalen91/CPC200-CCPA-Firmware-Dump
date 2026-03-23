package p093d.p099c.p100a.p101a.p102a0;

import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: d.c.a.a.a0.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1206e extends C1205d {

    /* JADX INFO: renamed from: a */
    float f7614a = -1.0f;

    @Override // p093d.p099c.p100a.p101a.p102a0.C1205d
    /* JADX INFO: renamed from: a */
    public void mo9141a(C1214m c1214m, float f, float f2, float f3) {
        c1214m.m9303o(CropImageView.DEFAULT_ASPECT_RATIO, f3 * f2, 180.0f, 180.0f - f);
        double dSin = Math.sin(Math.toRadians(f));
        double d2 = f3;
        Double.isNaN(d2);
        double d3 = f2;
        Double.isNaN(d3);
        double dSin2 = Math.sin(Math.toRadians(90.0f - f));
        Double.isNaN(d2);
        Double.isNaN(d3);
        c1214m.m9301m((float) (dSin * d2 * d3), (float) (dSin2 * d2 * d3));
    }
}
