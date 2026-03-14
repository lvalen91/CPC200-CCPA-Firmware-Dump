package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class MediaBrowserCompat$CustomActionResultReceiver extends b.a.a.a.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f0d;
    private final Bundle e;
    private final a f;

    @Override // b.a.a.a.b
    protected void j(int i, Bundle bundle) {
        if (this.f == null) {
            return;
        }
        MediaSessionCompat.a(bundle);
        if (i == -1) {
            this.f.a(this.f0d, this.e, bundle);
            return;
        }
        if (i == 0) {
            this.f.c(this.f0d, this.e, bundle);
            return;
        }
        if (i == 1) {
            this.f.b(this.f0d, this.e, bundle);
            return;
        }
        String str = "Unknown result code: " + i + " (extras=" + this.e + ", resultData=" + bundle + ")";
    }
}
