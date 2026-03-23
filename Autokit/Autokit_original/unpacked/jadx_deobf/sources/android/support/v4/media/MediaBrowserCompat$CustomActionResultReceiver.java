package android.support.v4.media;

import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import p012b.p013a.p014a.p015a.C0492b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class MediaBrowserCompat$CustomActionResultReceiver extends C0492b {

    /* JADX INFO: renamed from: d */
    private final String f0d;

    /* JADX INFO: renamed from: e */
    private final Bundle f1e;

    /* JADX INFO: renamed from: f */
    private final AbstractC0007a f2f;

    @Override // p012b.p013a.p014a.p015a.C0492b
    /* JADX INFO: renamed from: j */
    protected void mo1j(int i, Bundle bundle) {
        if (this.f2f == null) {
            return;
        }
        MediaSessionCompat.m95a(bundle);
        if (i == -1) {
            this.f2f.m34a(this.f0d, this.f1e, bundle);
            return;
        }
        if (i == 0) {
            this.f2f.m36c(this.f0d, this.f1e, bundle);
            return;
        }
        if (i == 1) {
            this.f2f.m35b(this.f0d, this.f1e, bundle);
            return;
        }
        String str = "Unknown result code: " + i + " (extras=" + this.f1e + ", resultData=" + bundle + ")";
    }
}
