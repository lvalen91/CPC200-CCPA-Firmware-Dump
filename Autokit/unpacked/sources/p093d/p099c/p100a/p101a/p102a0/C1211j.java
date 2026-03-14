package p093d.p099c.p100a.p101a.p102a0;

import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: d.c.a.a.a0.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1211j extends C1205d {

    /* JADX INFO: renamed from: a */
    float f7664a = -1.0f;

    @Override // p093d.p099c.p100a.p101a.p102a0.C1205d
    /* JADX INFO: renamed from: a */
    public void mo9141a(C1214m c1214m, float f, float f2, float f3) {
        c1214m.m9303o(CropImageView.DEFAULT_ASPECT_RATIO, f3 * f2, 180.0f, 180.0f - f);
        float f4 = f3 * 2.0f * f2;
        c1214m.m9293a(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f4, f4, 180.0f, f);
    }
}
