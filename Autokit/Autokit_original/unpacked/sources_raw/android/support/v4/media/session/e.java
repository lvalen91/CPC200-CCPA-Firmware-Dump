package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class e {

    public interface a extends d.a {
        void t(Uri uri, Bundle bundle);
    }

    static class b<T extends a> extends d.b<T> {
        public b(T t) {
            super(t);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            ((a) this.a).t(uri, bundle);
        }
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }
}
