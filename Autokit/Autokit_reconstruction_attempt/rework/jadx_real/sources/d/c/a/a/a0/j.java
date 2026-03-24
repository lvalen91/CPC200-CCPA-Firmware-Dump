package d.c.a.a.a0;

import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class j extends d {
    float a = -1.0f;

    @Override // d.c.a.a.a0.d
    public void a(m mVar, float f, float f2, float f3) {
        mVar.o(CropImageView.DEFAULT_ASPECT_RATIO, f3 * f2, 180.0f, 180.0f - f);
        float f4 = f3 * 2.0f * f2;
        mVar.a(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f4, f4, 180.0f, f);
    }
}
