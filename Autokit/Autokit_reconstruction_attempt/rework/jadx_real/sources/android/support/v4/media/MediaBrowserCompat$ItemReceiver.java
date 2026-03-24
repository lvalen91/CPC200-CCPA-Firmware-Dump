package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class MediaBrowserCompat$ItemReceiver extends b.a.a.a.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f1d;
    private final b e;

    @Override // b.a.a.a.b
    protected void j(int i, Bundle bundle) {
        MediaSessionCompat.a(bundle);
        if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
            this.e.a(this.f1d);
            return;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable == null || (parcelable instanceof MediaBrowserCompat$MediaItem)) {
            this.e.b((MediaBrowserCompat$MediaItem) parcelable);
        } else {
            this.e.a(this.f1d);
        }
    }
}
