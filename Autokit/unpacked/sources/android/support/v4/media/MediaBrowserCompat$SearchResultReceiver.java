package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import java.util.ArrayList;
import p012b.p013a.p014a.p015a.C0492b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class MediaBrowserCompat$SearchResultReceiver extends C0492b {

    /* JADX INFO: renamed from: d */
    private final String f7d;

    /* JADX INFO: renamed from: e */
    private final Bundle f8e;

    /* JADX INFO: renamed from: f */
    private final AbstractC0009c f9f;

    @Override // p012b.p013a.p014a.p015a.C0492b
    /* JADX INFO: renamed from: j */
    protected void mo1j(int i, Bundle bundle) {
        MediaSessionCompat.m95a(bundle);
        if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
            this.f9f.m39a(this.f7d, this.f8e);
            return;
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
        ArrayList arrayList = null;
        if (parcelableArray != null) {
            arrayList = new ArrayList();
            for (Parcelable parcelable : parcelableArray) {
                arrayList.add((MediaBrowserCompat$MediaItem) parcelable);
            }
        }
        this.f9f.m40b(this.f7d, this.f8e, arrayList);
    }
}
