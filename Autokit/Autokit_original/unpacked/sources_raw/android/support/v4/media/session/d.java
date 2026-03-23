package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.media.Rating;
import android.media.session.MediaSession;
import android.media.session.PlaybackState;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.ResultReceiver;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class d {

    interface a {
        void b(Object obj);

        void d();

        void e();

        void f(String str, Bundle bundle);

        void g();

        void i();

        void j(String str, Bundle bundle, ResultReceiver resultReceiver);

        void k();

        void l(String str, Bundle bundle);

        void m();

        boolean n(Intent intent);

        void o(long j);

        void p(String str, Bundle bundle);

        void q();

        void s(long j);
    }

    static class b<T extends a> extends MediaSession.Callback {
        protected final T a;

        public b(T t) {
            this.a = t;
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            MediaSessionCompat.a(bundle);
            this.a.j(str, bundle, resultReceiver);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCustomAction(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.a.p(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onFastForward() {
            this.a.m();
        }

        @Override // android.media.session.MediaSession.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            return this.a.n(intent) || super.onMediaButtonEvent(intent);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPause() {
            this.a.i();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlay() {
            this.a.d();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.a.l(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            this.a.f(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onRewind() {
            this.a.e();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSeekTo(long j) {
            this.a.o(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSetRating(Rating rating) {
            this.a.b(rating);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToNext() {
            this.a.q();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToPrevious() {
            this.a.k();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToQueueItem(long j) {
            this.a.s(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onStop() {
            this.a.g();
        }
    }

    static class c {
        public static Object a(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        public static long b(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static Object b(Context context, String str) {
        return new MediaSession(context, str);
    }

    public static Parcelable c(Object obj) {
        return ((MediaSession) obj).getSessionToken();
    }

    public static void d(Object obj) {
        ((MediaSession) obj).release();
    }

    public static void e(Object obj, boolean z) {
        ((MediaSession) obj).setActive(z);
    }

    public static void f(Object obj, Object obj2, Handler handler) {
        ((MediaSession) obj).setCallback((MediaSession.Callback) obj2, handler);
    }

    public static void g(Object obj, int i) {
        ((MediaSession) obj).setFlags(i);
    }

    public static void h(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setMediaButtonReceiver(pendingIntent);
    }

    public static void i(Object obj, Object obj2) {
        ((MediaSession) obj).setPlaybackState((PlaybackState) obj2);
    }
}
