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
import android.support.v4.media.session.C0038c;
import android.support.v4.media.session.InterfaceC0036a;
import android.support.v4.media.session.InterfaceC0037b;
import android.support.v4.media.session.MediaSessionCompat;
import androidx.core.app.C0235e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class MediaControllerCompat {

    /* JADX INFO: renamed from: a */
    private final MediaSessionCompat.Token f34a;

    static class MediaControllerImplApi21 {

        /* JADX INFO: renamed from: a */
        protected final Object f35a;

        /* JADX INFO: renamed from: b */
        final Object f36b = new Object();

        /* JADX INFO: renamed from: c */
        private final List<AbstractC0014a> f37c = new ArrayList();

        /* JADX INFO: renamed from: d */
        private HashMap<AbstractC0014a, BinderC0013a> f38d = new HashMap<>();

        /* JADX INFO: renamed from: e */
        final MediaSessionCompat.Token f39e;

        private static class ExtraBinderRequestResultReceiver extends ResultReceiver {

            /* JADX INFO: renamed from: b */
            private WeakReference<MediaControllerImplApi21> f40b;

            ExtraBinderRequestResultReceiver(MediaControllerImplApi21 mediaControllerImplApi21) {
                super(null);
                this.f40b = new WeakReference<>(mediaControllerImplApi21);
            }

            @Override // android.os.ResultReceiver
            protected void onReceiveResult(int i, Bundle bundle) {
                MediaControllerImplApi21 mediaControllerImplApi21 = this.f40b.get();
                if (mediaControllerImplApi21 == null || bundle == null) {
                    return;
                }
                synchronized (mediaControllerImplApi21.f36b) {
                    mediaControllerImplApi21.f39e.m114m(InterfaceC0037b.a.m265u(C0235e.m1663a(bundle, "android.support.v4.media.session.EXTRA_BINDER")));
                    mediaControllerImplApi21.f39e.m115n(bundle.getBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE"));
                    mediaControllerImplApi21.m63a();
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$MediaControllerImplApi21$a */
        private static class BinderC0013a extends AbstractC0014a.c {
            BinderC0013a(AbstractC0014a abstractC0014a) {
                super(abstractC0014a);
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.AbstractC0014a.c, android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: M */
            public void mo65M(MediaMetadataCompat mediaMetadataCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.AbstractC0014a.c, android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: P0 */
            public void mo66P0(ParcelableVolumeInfo parcelableVolumeInfo) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.AbstractC0014a.c, android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: a */
            public void mo67a(List<MediaSessionCompat.QueueItem> list) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.AbstractC0014a.c, android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: c */
            public void mo68c(CharSequence charSequence) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.AbstractC0014a.c, android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: e */
            public void mo69e() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.MediaControllerCompat.AbstractC0014a.c, android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: o */
            public void mo70o(Bundle bundle) {
                throw new AssertionError();
            }
        }

        public MediaControllerImplApi21(Context context, MediaSessionCompat.Token token) throws RemoteException {
            this.f39e = token;
            Object objM267b = C0038c.m267b(context, token.m113l());
            this.f35a = objM267b;
            if (objM267b == null) {
                throw new RemoteException();
            }
            if (this.f39e.m111j() == null) {
                m62b();
            }
        }

        /* JADX INFO: renamed from: b */
        private void m62b() {
            m64c("android.support.v4.media.session.command.GET_EXTRA_BINDER", null, new ExtraBinderRequestResultReceiver(this));
        }

        /* JADX INFO: renamed from: a */
        void m63a() {
            if (this.f39e.m111j() == null) {
                return;
            }
            for (AbstractC0014a abstractC0014a : this.f37c) {
                BinderC0013a binderC0013a = new BinderC0013a(abstractC0014a);
                this.f38d.put(abstractC0014a, binderC0013a);
                abstractC0014a.f43c = binderC0013a;
                try {
                    this.f39e.m111j().mo187F(binderC0013a);
                    abstractC0014a.m79i(13, null, null);
                } catch (RemoteException unused) {
                }
            }
            this.f37c.clear();
        }

        /* JADX INFO: renamed from: c */
        public void m64c(String str, Bundle bundle, ResultReceiver resultReceiver) {
            C0038c.m268c(this.f35a, str, bundle, resultReceiver);
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a */
    public static abstract class AbstractC0014a implements IBinder.DeathRecipient {

        /* JADX INFO: renamed from: a */
        final Object f41a;

        /* JADX INFO: renamed from: b */
        a f42b;

        /* JADX INFO: renamed from: c */
        InterfaceC0036a f43c;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$a */
        private class a extends Handler {
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$b */
        private static class b implements C0038c.a {

            /* JADX INFO: renamed from: a */
            private final WeakReference<AbstractC0014a> f44a;

            b(AbstractC0014a abstractC0014a) {
                this.f44a = new WeakReference<>(abstractC0014a);
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: a */
            public void mo80a(List<?> list) {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m75e(MediaSessionCompat.QueueItem.m105k(list));
                }
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: b */
            public void mo81b(Object obj) {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a == null || abstractC0014a.f43c != null) {
                    return;
                }
                abstractC0014a.m74d(PlaybackStateCompat.m248j(obj));
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: c */
            public void mo82c(CharSequence charSequence) {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m76f(charSequence);
                }
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: d */
            public void mo83d(Object obj) {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m73c(MediaMetadataCompat.m17k(obj));
                }
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: e */
            public void mo84e() {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m77g();
                }
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: f */
            public void mo85f(int i, int i2, int i3, int i4, int i5) {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m71a(new C0018e(i, i2, i3, i4, i5));
                }
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: g */
            public void mo86g(String str, Bundle bundle) {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a != null) {
                    if (abstractC0014a.f43c == null || Build.VERSION.SDK_INT >= 23) {
                        abstractC0014a.m78h(str, bundle);
                    }
                }
            }

            @Override // android.support.v4.media.session.C0038c.a
            /* JADX INFO: renamed from: o */
            public void mo87o(Bundle bundle) {
                AbstractC0014a abstractC0014a = this.f44a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m72b(bundle);
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$a$c */
        private static class c extends InterfaceC0036a.a {

            /* JADX INFO: renamed from: a */
            private final WeakReference<AbstractC0014a> f45a;

            c(AbstractC0014a abstractC0014a) {
                this.f45a = new WeakReference<>(abstractC0014a);
            }

            @Override // android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: B0 */
            public void mo88B0(int i) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(12, Integer.valueOf(i), null);
                }
            }

            @Override // android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: C0 */
            public void mo89C0() {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(13, null, null);
                }
            }

            @Override // android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: G0 */
            public void mo90G0(PlaybackStateCompat playbackStateCompat) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(2, playbackStateCompat, null);
                }
            }

            @Override // android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: H0 */
            public void mo91H0(String str, Bundle bundle) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(1, str, bundle);
                }
            }

            /* JADX INFO: renamed from: M */
            public void mo65M(MediaMetadataCompat mediaMetadataCompat) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(3, mediaMetadataCompat, null);
                }
            }

            /* JADX INFO: renamed from: P0 */
            public void mo66P0(ParcelableVolumeInfo parcelableVolumeInfo) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(4, parcelableVolumeInfo != null ? new C0018e(parcelableVolumeInfo.f115b, parcelableVolumeInfo.f116c, parcelableVolumeInfo.f117d, parcelableVolumeInfo.f118e, parcelableVolumeInfo.f119f) : null, null);
                }
            }

            /* JADX INFO: renamed from: a */
            public void mo67a(List<MediaSessionCompat.QueueItem> list) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(5, list, null);
                }
            }

            /* JADX INFO: renamed from: c */
            public void mo68c(CharSequence charSequence) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(6, charSequence, null);
                }
            }

            /* JADX INFO: renamed from: e */
            public void mo69e() {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(8, null, null);
                }
            }

            @Override // android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: e0 */
            public void mo92e0(int i) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(9, Integer.valueOf(i), null);
                }
            }

            /* JADX INFO: renamed from: o */
            public void mo70o(Bundle bundle) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(7, bundle, null);
                }
            }

            @Override // android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: q0 */
            public void mo93q0(boolean z) {
                AbstractC0014a abstractC0014a = this.f45a.get();
                if (abstractC0014a != null) {
                    abstractC0014a.m79i(11, Boolean.valueOf(z), null);
                }
            }

            @Override // android.support.v4.media.session.InterfaceC0036a
            /* JADX INFO: renamed from: s */
            public void mo94s(boolean z) {
            }
        }

        public AbstractC0014a() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f41a = C0038c.m266a(new b(this));
            } else {
                this.f43c = new c(this);
            }
        }

        /* JADX INFO: renamed from: a */
        public void m71a(C0018e c0018e) {
        }

        /* JADX INFO: renamed from: b */
        public void m72b(Bundle bundle) {
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            m79i(8, null, null);
        }

        /* JADX INFO: renamed from: c */
        public void m73c(MediaMetadataCompat mediaMetadataCompat) {
        }

        /* JADX INFO: renamed from: d */
        public void m74d(PlaybackStateCompat playbackStateCompat) {
        }

        /* JADX INFO: renamed from: e */
        public void m75e(List<MediaSessionCompat.QueueItem> list) {
        }

        /* JADX INFO: renamed from: f */
        public void m76f(CharSequence charSequence) {
        }

        /* JADX INFO: renamed from: g */
        public void m77g() {
        }

        /* JADX INFO: renamed from: h */
        public void m78h(String str, Bundle bundle) {
        }

        /* JADX INFO: renamed from: i */
        void m79i(int i, Object obj, Bundle bundle) {
            a aVar = this.f42b;
            if (aVar != null) {
                Message messageObtainMessage = aVar.obtainMessage(i, obj);
                messageObtainMessage.setData(bundle);
                messageObtainMessage.sendToTarget();
            }
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$b */
    static class C0015b extends MediaControllerImplApi21 {
        public C0015b(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$c */
    static class C0016c extends C0015b {
        public C0016c(Context context, MediaSessionCompat.Token token) {
            super(context, token);
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$d */
    static class C0017d {
        public C0017d(MediaSessionCompat.Token token) {
            InterfaceC0037b.a.m265u((IBinder) token.m113l());
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaControllerCompat$e */
    public static final class C0018e {
        C0018e(int i, int i2, int i3, int i4, int i5) {
        }
    }

    public MediaControllerCompat(Context context, MediaSessionCompat mediaSessionCompat) {
        new HashSet();
        if (mediaSessionCompat == null) {
            throw new IllegalArgumentException("session must not be null");
        }
        MediaSessionCompat.Token tokenM97b = mediaSessionCompat.m97b();
        this.f34a = tokenM97b;
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                new C0016c(context, tokenM97b);
            } else if (Build.VERSION.SDK_INT >= 23) {
                new C0015b(context, tokenM97b);
            } else if (Build.VERSION.SDK_INT >= 21) {
                new MediaControllerImplApi21(context, tokenM97b);
            } else {
                new C0017d(tokenM97b);
            }
        } catch (RemoteException unused) {
        }
    }
}
