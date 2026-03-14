package d.a.a.b;

import android.opengl.Matrix;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e {
    private a a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private float[] f2263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f2265d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float[] i;
    private boolean j;
    private float[] k = new float[16];

    public e(a aVar) {
        this.a = aVar;
        float[] fArr = new float[4];
        this.f2263b = fArr;
        fArr[3] = 1.0f;
        this.f2264c = -1;
        this.i = new float[16];
        this.j = false;
    }

    private void c() {
        float[] fArr = this.i;
        Matrix.setIdentityM(fArr, 0);
        Matrix.translateM(fArr, 0, this.g, this.h, CropImageView.DEFAULT_ASPECT_RATIO);
        float f = this.f2265d;
        if (f != CropImageView.DEFAULT_ASPECT_RATIO) {
            Matrix.rotateM(fArr, 0, f, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
        }
        Matrix.scaleM(fArr, 0, this.e, this.f, 1.0f);
        this.j = true;
    }

    public void a(f fVar, float[] fArr) {
        Matrix.multiplyMM(this.k, 0, fArr, 0, b(), 0);
        fVar.a(this.k, this.a.d(), 0, this.a.e(), this.a.a(), this.a.f(), d.a, this.a.b(), this.f2264c, this.a.c());
    }

    public float[] b() {
        if (!this.j) {
            c();
        }
        return this.i;
    }

    public void d(float f, float f2) {
        this.g = f;
        this.h = f2;
        this.j = false;
    }

    public void e(float f) {
        while (f >= 360.0f) {
            f -= 360.0f;
        }
        while (f <= -360.0f) {
            f += 360.0f;
        }
        this.f2265d = f;
        this.j = false;
    }

    public void f(float f, float f2) {
        this.e = f;
        this.f = f2;
        this.j = false;
    }

    public void g(int i) {
        this.f2264c = i;
    }

    public String toString() {
        return "[Sprite2d pos=" + this.g + "," + this.h + " scale=" + this.e + "," + this.f + " angle=" + this.f2265d + " color={" + this.f2263b[0] + "," + this.f2263b[1] + "," + this.f2263b[2] + "} drawable=" + this.a + "]";
    }
}
