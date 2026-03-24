package d.a.a;

import com.yalantis.ucrop.view.CropImageView;
import d.a.a.b.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a extends d.a.a.b.a {
    private FloatBuffer t;
    private float u;
    private boolean v;

    public a(a.b bVar) {
        super(bVar);
        this.u = 1.0f;
        this.v = true;
    }

    @Override // d.a.a.b.a
    public FloatBuffer b() {
        if (this.v) {
            FloatBuffer floatBufferB = super.b();
            int iCapacity = floatBufferB.capacity();
            if (this.t == null) {
                ByteBuffer byteBufferAllocateDirect = ByteBuffer.allocateDirect(iCapacity * 4);
                byteBufferAllocateDirect.order(ByteOrder.nativeOrder());
                this.t = byteBufferAllocateDirect.asFloatBuffer();
            }
            FloatBuffer floatBuffer = this.t;
            float f = this.u;
            for (int i = 0; i < iCapacity; i++) {
                floatBuffer.put(i, ((floatBufferB.get(i) - 0.5f) * f) + 0.5f);
            }
            this.v = false;
        }
        return this.t;
    }

    public void h(float f) {
        if (f >= CropImageView.DEFAULT_ASPECT_RATIO && f <= 1.0f) {
            this.u = f;
            this.v = true;
        } else {
            throw new RuntimeException("invalid scale " + f);
        }
    }
}
