package p093d.p094a.p095a.p096b;

import android.opengl.Matrix;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: d.a.a.b.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1195e {

    /* JADX INFO: renamed from: a */
    private C1191a f7549a;

    /* JADX INFO: renamed from: b */
    private float[] f7550b;

    /* JADX INFO: renamed from: c */
    private int f7551c;

    /* JADX INFO: renamed from: d */
    private float f7552d;

    /* JADX INFO: renamed from: e */
    private float f7553e;

    /* JADX INFO: renamed from: f */
    private float f7554f;

    /* JADX INFO: renamed from: g */
    private float f7555g;

    /* JADX INFO: renamed from: h */
    private float f7556h;

    /* JADX INFO: renamed from: i */
    private float[] f7557i;

    /* JADX INFO: renamed from: j */
    private boolean f7558j;

    /* JADX INFO: renamed from: k */
    private float[] f7559k = new float[16];

    public C1195e(C1191a c1191a) {
        this.f7549a = c1191a;
        float[] fArr = new float[4];
        this.f7550b = fArr;
        fArr[3] = 1.0f;
        this.f7551c = -1;
        this.f7557i = new float[16];
        this.f7558j = false;
    }

    /* JADX INFO: renamed from: c */
    private void m9077c() {
        float[] fArr = this.f7557i;
        Matrix.setIdentityM(fArr, 0);
        Matrix.translateM(fArr, 0, this.f7555g, this.f7556h, CropImageView.DEFAULT_ASPECT_RATIO);
        float f = this.f7552d;
        if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
            Matrix.rotateM(fArr, 0, f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        }
        Matrix.scaleM(fArr, 0, this.f7553e, this.f7554f, 1.0f);
        this.f7558j = true;
    }

    /* JADX INFO: renamed from: a */
    public void m9078a(C1196f c1196f, float[] fArr) {
        Matrix.multiplyMM(this.f7559k, 0, fArr, 0, m9079b(), 0);
        c1196f.m9084a(this.f7559k, this.f7549a.m9053d(), 0, this.f7549a.m9054e(), this.f7549a.m9051a(), this.f7549a.m9055f(), C1194d.f7548a, this.f7549a.mo9049b(), this.f7551c, this.f7549a.m9052c());
    }

    /* JADX INFO: renamed from: b */
    public float[] m9079b() {
        if (!this.f7558j) {
            m9077c();
        }
        return this.f7557i;
    }

    /* JADX INFO: renamed from: d */
    public void m9080d(float f, float f2) {
        this.f7555g = f;
        this.f7556h = f2;
        this.f7558j = false;
    }

    /* JADX INFO: renamed from: e */
    public void m9081e(float f) {
        while (f >= 360.0f) {
            f -= 360.0f;
        }
        while (f <= -360.0f) {
            f += 360.0f;
        }
        this.f7552d = f;
        this.f7558j = false;
    }

    /* JADX INFO: renamed from: f */
    public void m9082f(float f, float f2) {
        this.f7553e = f;
        this.f7554f = f2;
        this.f7558j = false;
    }

    /* JADX INFO: renamed from: g */
    public void m9083g(int i) {
        this.f7551c = i;
    }

    public String toString() {
        return "[Sprite2d pos=" + this.f7555g + "," + this.f7556h + " scale=" + this.f7553e + "," + this.f7554f + " angle=" + this.f7552d + " color={" + this.f7550b[0] + "," + this.f7550b[1] + "," + this.f7550b[2] + "} drawable=" + this.f7549a + "]";
    }
}
