package d.a.a.b;

import android.view.Surface;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g extends c {
    private Surface e;
    private boolean f;

    public g(b bVar, Surface surface, boolean z) {
        super(bVar);
        a(surface);
        this.e = surface;
        this.f = z;
    }

    public void g() {
        e();
        Surface surface = this.e;
        if (surface != null) {
            if (this.f) {
                surface.release();
            }
            this.e = null;
        }
    }
}
