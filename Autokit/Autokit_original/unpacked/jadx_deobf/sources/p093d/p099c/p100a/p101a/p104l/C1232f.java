package p093d.p099c.p100a.p101a.p104l;

import android.graphics.Matrix;
import android.util.Property;
import android.widget.ImageView;

/* JADX INFO: renamed from: d.c.a.a.l.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1232f extends Property<ImageView, Matrix> {

    /* JADX INFO: renamed from: a */
    private final Matrix f7763a;

    public C1232f() {
        super(Matrix.class, "imageMatrixProperty");
        this.f7763a = new Matrix();
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Matrix get(ImageView imageView) {
        this.f7763a.set(imageView.getImageMatrix());
        return this.f7763a;
    }

    @Override // android.util.Property
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void set(ImageView imageView, Matrix matrix) {
        imageView.setImageMatrix(matrix);
    }
}
