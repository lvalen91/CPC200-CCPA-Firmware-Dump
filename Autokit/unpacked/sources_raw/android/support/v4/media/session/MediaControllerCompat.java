package android.support.v4.media.session;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.a;
import android.support.v4.media.session.b;
import android.support.v4.media.session.c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class MediaControllerCompat {
    private final MediaSessionCompat.Token a;

    static class MediaControllerImplApi21 {
        protected final Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Object f17b = new Object();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final List<a> f18c = new ArrayList();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private HashMap<a, a> f19d = new HashMap<>();
        final MediaSessionCompat.Token e;

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private WeakReference<MediaControllerImplApi21> f20b;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f20b = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f20b.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f17b) {
                    mediaControllerImplApi21.e.m(b.a.u(androidx.core.app.e.a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.e.n(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                    mediaControllerImplApi21.a();
                }
            }
        }

        private static class a extends a.c {
            a(a aVar) {
                super(aVar);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void M(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void P0(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void a(List<MediaSessionCompat.QueueItem> list) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void c(CharSequence charSequence) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void e() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.a.c, android.support.v4.media.session.a
            public void o(Bundle bundle) {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) throws RemoteException {
            this.e = token;
            Object objB = android.support.v4.media.session.c.b(context, token.l());
            this.a = objB;
            if (objB == null) {
                throw new RemoteException();
            }
            if (this.e.j() == null) {
                b();
            }
        }

        private void b() {
            c("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        void a() {
            if (this.e.j() == null) {
                return;
            }
            for (a aVar : this.f18c) {
                a aVar2 = new a(aVar);
                this.f19d.put(aVar, aVar2);
                aVar.f22c = aVar2;
                try {
                    this.e.j().F(aVar2);
                    aVar.i(13, null, null);
                } catch (RemoteException unused) {
                }
            }
            this.f18c.clear();
        }

        public void c(String str, Bundle bundle, ResultReceiver resultReceiver) {
            android.support.v4.media.session.c.c(this.a, str, bundle, resultReceiver);
        }
    }

    public static abstract class a implements IBinder.DeathRecipient {
        final Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        HandlerC0000a f21b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        android.support.v4.media.session.a f22c;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$a, reason: collision with other inner class name */
        private class HandlerC0000a extends Handler {
        }

        private static class b implements c.a {
            private final WeakReference<a> a;

            b(a aVar) {
                this.a = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.c.a
            public void a(List<?> list) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.e(MediaSessionCompat.QueueItem.k(list));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void b(Object obj) {
                a aVar = this.a.get();
                if (aVar == null || aVar.f22c != null) {
                    return;
                }
                aVar.d(PlaybackStateCompat.j(obj));
            }

            @Override // android.support.v4.media.session.c.a
            public void c(CharSequence charSequence) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.f(charSequence);
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void d(Object obj) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.c(MediaMetadataCompat.k(obj));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void e() {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.g();
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void f(int i, int i2, int i3, int i4, int i5) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.a(new e(i, i2, i3, i4, i5));
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void g(String str, Bundle bundle) {
                a aVar = this.a.get();
                if (aVar != null) {
                    if (aVar.f22c == null || Build.VERSION.SDK_INT >= 23) {
                        aVar.h(str, bundle);
                    }
                }
            }

            @Override // android.support.v4.media.session.c.a
            public void o(Bundle bundle) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.b(bundle);
                }
            }
        }

        private static class c extends a.AbstractBinderC0002a {
            private final WeakReference<a> a;

            c(a aVar) {
                this.a = new WeakReference<>(aVar);
            }

            @Override // android.support.v4.media.session.a
            public void B0(int i) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void C0() {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void G0(PlaybackStateCompat playbackStateCompat) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(2, playbackStateCompat, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void H0(String str, Bundle bundle) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(1, str, bundle);
                }
            }

            public void M(MediaMetadataCompat mediaMetadataCompat) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(3, mediaMetadataCompat, null);
                }
            }

            public void P0(ParcelableVolumeInfo parcelableVolumeInfo) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(4, parcelableVolumeInfo != null ? new e(parcelableVolumeInfo.f45b, parcelableVolumeInfo.f46c, parcelableVolumeInfo.f47d, parcelableVolumeInfo.e, parcelableVolumeInfo.f) : null, null);
                }
            }

            public void a(List<MediaSessionCompat.QueueItem> list) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(5, list, null);
                }
            }

            public void c(CharSequence charSequence) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(6, charSequence, null);
                }
            }

            public void e() {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void e0(int i) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(9, Integer.valueOf(i), null);
                }
            }

            public void o(Bundle bundle) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(7, bundle, null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void q0(boolean z) {
                a aVar = this.a.get();
                if (aVar != null) {
                    aVar.i(11, Boolean.valueOf(z), null);
                }
            }

            @Override // android.support.v4.media.session.a
            public void s(boolean z) {
            }
        }

        public a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.a = android.support.v4.media.session.c.a(new b(this));
            } else {
                this.f22c = new c(this);
            }
        }

        public void a(e eVar) {
        }

        public void b(Bundle bundle) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            i(8, null, null);
        }

        public void c(MediaMetadataCompat mediaMetadataCompat) {
        }

        public void d(PlaybackStateCompat playbackStateCompat) {
        }

        public void e(List<MediaSessionCompat.QueueItem> list) {
        }

        public void f(CharSequence charSequence) {
        }

        public void g() {
        }

        public void h(String str, Bundle bundle) {
        }

        void i(int i, Object obj, Bundle bundle) {
            HandlerC0000a handlerC0000a = this.f21b;
            if (handlerC0000a != null) {
                Message messageObtainMessage = handlerC0000a.obtainMessage(i, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
        }
    }

    static class b extends MediaControllerImplApi21 {
        public b(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    static class c extends b {
        public c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    static class d {
        public d(MediaSessionCompat.Token token) {
            b.a.u((IBinder) token.l());
        }
    }

    public static final class e {
        e(int i, int i2, int i3, int i4, int i5) {
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        new HashSet();
        if (mediaSessionCompat == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        MediaSessionCompat.Token tokenB = mediaSessionCompat.b();
        this.a = tokenB;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                new c(context, tokenB);
            } else if (Build.VERSION.SDK_INT >= 23) {
                new b(context, tokenB);
            } else if (Build.VERSION.SDK_INT >= 21) {
                new MediaControllerImplApi21(context, tokenB);
            } else {
                new d(tokenB);
            }
        } catch (RemoteException unused) {
        }
    }
}
