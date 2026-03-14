package android.support.v4.media.session;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.C0039d;

/* JADX INFO: renamed from: android.support.v4.media.session.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0040e {

    /* JADX INFO: renamed from: android.support.v4.media.session.e$a */
    public interface a extends C0039d.a {
        /* JADX INFO: renamed from: t */
        void mo162t(Uri uri, Bundle bundle);
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.e$b */
    static class b<T extends a> extends C0039d.b<T> {
        public b(T t) {
            super(t);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromUri(Uri uri, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            ((a) this.f151a).mo162t(uri, bundle);
        }
    }

    /* JADX INFO: renamed from: a */
    public static Object m283a(a aVar) {
        return new b(aVar);
    }
}
