package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import p012b.p013a.p014a.p015a.C0492b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class MediaBrowserCompat$ItemReceiver extends C0492b {

    /* JADX INFO: renamed from: d */
    private final String f3d;

    /* JADX INFO: renamed from: e */
    private final AbstractC0008b f4e;

    @Override // p012b.p013a.p014a.p015a.C0492b
    /* JADX INFO: renamed from: j */
    protected void mo1j(int i, Bundle bundle) {
        MediaSessionCompat.m95a(bundle);
        if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
            this.f4e.m37a(this.f3d);
            return;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable == null || (parcelable instanceof MediaBrowserCompat$MediaItem)) {
            this.f4e.m38b((MediaBrowserCompat$MediaItem) parcelable);
        } else {
            this.f4e.m37a(this.f3d);
        }
    }
}
