package p093d.p094a.p095a;

import com.yalantis.ucrop.view.CropImageView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import p093d.p094a.p095a.p096b.C1191a;

/* JADX INFO: renamed from: d.a.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1190a extends C1191a {

    /* JADX INFO: renamed from: t */
    private FloatBuffer f7514t;

    /* JADX INFO: renamed from: u */
    private float f7515u;

    /* JADX INFO: renamed from: v */
    private boolean f7516v;

    public C1190a(C1191a.b bVar) {
        super(bVar);
        this.f7515u = 1.0f;
        this.f7516v = true;
    }

    @Override // p093d.p094a.p095a.p096b.C1191a
    /* JADX INFO: renamed from: b */
    public FloatBuffer mo9049b() {
        if (this.f7516v) {
            FloatBuffer floatBufferMo9049b = super.mo9049b();
            int iCapacity = floatBufferMo9049b.capacity();
            if (this.f7514t == null) {
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iCapacity * 4);
                byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
                this.f7514t = byteBufferAllocateDirect.asFloatBuffer();
            }
            FloatBuffer floatBuffer = this.f7514t;
            float f = this.f7515u;
            for (int i = 0; i < iCapacity; i++) {
                floatBuffer.put(i, ((floatBufferMo9049b.get(i) - 0.5f) * f) + 0.5f);
            }
            this.f7516v = false;
        }
        return this.f7514t;
    }

    /* JADX INFO: renamed from: h */
    public void m9050h(float f) {
        if (f >= CropImageView.DEFAULT_ASPECT_RATIO && f <= 1.0f) {
            this.f7515u = f;
            this.f7516v = true;
        } else {
            throw new RuntimeException("invalid scale " + f);
        }
    }
}
