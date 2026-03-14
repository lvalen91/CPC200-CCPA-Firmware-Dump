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

/* JADX INFO: renamed from: android.support.v4.media.session.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0039d {

    /* JADX INFO: renamed from: android.support.v4.media.session.d$a */
    interface a {
        /* JADX INFO: renamed from: b */
        void mo147b(Object obj);

        /* JADX INFO: renamed from: d */
        void mo148d();

        /* JADX INFO: renamed from: e */
        void mo149e();

        /* JADX INFO: renamed from: f */
        void mo150f(String str, Bundle bundle);

        /* JADX INFO: renamed from: g */
        void mo151g();

        /* JADX INFO: renamed from: i */
        void mo152i();

        /* JADX INFO: renamed from: j */
        void mo153j(String str, Bundle bundle, ResultReceiver resultReceiver);

        /* JADX INFO: renamed from: k */
        void mo154k();

        /* JADX INFO: renamed from: l */
        void mo155l(String str, Bundle bundle);

        /* JADX INFO: renamed from: m */
        void mo156m();

        /* JADX INFO: renamed from: n */
        boolean mo157n(Intent intent);

        /* JADX INFO: renamed from: o */
        void mo158o(long j);

        /* JADX INFO: renamed from: p */
        void mo159p(String str, Bundle bundle);

        /* JADX INFO: renamed from: q */
        void mo160q();

        /* JADX INFO: renamed from: s */
        void mo161s(long j);
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.d$b */
    static class b<T extends a> extends MediaSession.Callback {

        /* JADX INFO: renamed from: a */
        protected final T f151a;

        public b(T t) {
            this.f151a = t;
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
            MediaSessionCompat.m95a(bundle);
            this.f151a.mo153j(str, bundle, resultReceiver);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onCustomAction(String str, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            this.f151a.mo159p(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onFastForward() {
            this.f151a.mo156m();
        }

        @Override // android.media.session.MediaSession.Callback
        public boolean onMediaButtonEvent(Intent intent) {
            return this.f151a.mo157n(intent) || super.onMediaButtonEvent(intent);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPause() {
            this.f151a.mo152i();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlay() {
            this.f151a.mo148d();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromMediaId(String str, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            this.f151a.mo155l(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onPlayFromSearch(String str, Bundle bundle) {
            MediaSessionCompat.m95a(bundle);
            this.f151a.mo150f(str, bundle);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onRewind() {
            this.f151a.mo149e();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSeekTo(long j) {
            this.f151a.mo158o(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSetRating(Rating rating) {
            this.f151a.mo147b(rating);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToNext() {
            this.f151a.mo160q();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToPrevious() {
            this.f151a.mo154k();
        }

        @Override // android.media.session.MediaSession.Callback
        public void onSkipToQueueItem(long j) {
            this.f151a.mo161s(j);
        }

        @Override // android.media.session.MediaSession.Callback
        public void onStop() {
            this.f151a.mo151g();
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.d$c */
    static class c {
        /* JADX INFO: renamed from: a */
        public static Object m281a(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        /* JADX INFO: renamed from: b */
        public static long m282b(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }

    /* JADX INFO: renamed from: a */
    public static Object m272a(a aVar) {
        return new b(aVar);
    }

    /* JADX INFO: renamed from: b */
    public static Object m273b(Context context, String str) {
        return new MediaSession(context, str);
    }

    /* JADX INFO: renamed from: c */
    public static Parcelable m274c(Object obj) {
        return ((MediaSession) obj).getSessionToken();
    }

    /* JADX INFO: renamed from: d */
    public static void m275d(Object obj) {
        ((MediaSession) obj).release();
    }

    /* JADX INFO: renamed from: e */
    public static void m276e(Object obj, boolean z) {
        ((MediaSession) obj).setActive(z);
    }

    /* JADX INFO: renamed from: f */
    public static void m277f(Object obj, Object obj2, Handler handler) {
        ((MediaSession) obj).setCallback((MediaSession.Callback) obj2, handler);
    }

    /* JADX INFO: renamed from: g */
    public static void m278g(Object obj, int i) {
        ((MediaSession) obj).setFlags(i);
    }

    /* JADX INFO: renamed from: h */
    public static void m279h(Object obj, PendingIntent pendingIntent) {
        ((MediaSession) obj).setMediaButtonReceiver(pendingIntent);
    }

    /* JADX INFO: renamed from: i */
    public static void m280i(Object obj, Object obj2) {
        ((MediaSession) obj).setPlaybackState((PlaybackState) obj2);
    }
}
