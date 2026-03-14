package p093d.p094a.p095a.p096b;

import android.view.Surface;

/* JADX INFO: renamed from: d.a.a.b.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1197g extends C1193c {

    /* JADX INFO: renamed from: e */
    private Surface f7578e;

    /* JADX INFO: renamed from: f */
    private boolean f7579f;

    public C1197g(C1192b c1192b, Surface surface, boolean z) {
        super(c1192b);
        m9066a(surface);
        this.f7578e = surface;
        this.f7579f = z;
    }

    /* JADX INFO: renamed from: g */
    public void m9088g() {
        m9070e();
        Surface surface = this.f7578e;
        if (surface != null) {
            if (this.f7579f) {
                surface.release();
            }
            this.f7578e = null;
        }
    }
}
