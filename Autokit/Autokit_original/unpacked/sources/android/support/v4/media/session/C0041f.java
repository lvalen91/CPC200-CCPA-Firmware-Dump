package android.support.v4.media.session;

import android.media.session.MediaSession;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.media.session.C0040e;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: renamed from: android.support.v4.media.session.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0041f {

    /* JADX INFO: renamed from: android.support.v4.media.session.f$a */
    public interface a extends C0040e.a {
        /* JADX INFO: renamed from: a */
        void mo163a();

        /* JADX INFO: renamed from: c */
        void mo164c(Uri uri, Bundle bundle);

        /* JADX INFO: renamed from: h */
        void mo165h(String str, Bundle bundle);

        /* JADX INFO: renamed from: r */
        void mo166r(String str, Bundle bundle);
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.f$b */
    static class b<T extends a> extends C0040e.b<T> {
        public b(T t) {
            super(t);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepare() {
            ((a) this.f151a).mo163a();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepareFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            ((a) this.f151a).mo165h(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepareFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            ((a) this.f151a).mo166r(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPrepareFromUri(Uri uri, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            ((a) this.f151a).mo164c(uri, bundle);
        }
    }

    /* JADX INFO: renamed from: a */
    public static Object m284a(a aVar) {
        return new b(aVar);
    }

    /* JADX INFO: renamed from: b */
    public static String m285b(Object obj) {
        MediaSession mediaSession = (MediaSession) obj;
        try {
            return (String) mediaSession.getClass().getMethod("getCallingPackage", new Class[0]).invoke(mediaSession, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }
}
