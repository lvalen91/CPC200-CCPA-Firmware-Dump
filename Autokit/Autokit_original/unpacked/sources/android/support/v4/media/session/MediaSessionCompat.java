package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.media.Rating;
import android.media.RemoteControlClient;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.session.C0039d;
import android.support.v4.media.session.C0040e;
import android.support.v4.media.session.C0041f;
import android.support.v4.media.session.InterfaceC0037b;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.core.app.C0235e;
import androidx.media.AbstractC0417e;
import androidx.media.C0413a;
import androidx.media.p011f.C0418a;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MediaSessionCompat {

    /* JADX INFO: renamed from: c */
    static int f46c;

    /* JADX INFO: renamed from: a */
    private final InterfaceC0025d f47a;

    /* JADX INFO: renamed from: b */
    private final ArrayList<InterfaceC0031j> f48b;

    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new C0020a();

        /* JADX INFO: renamed from: b */
        ResultReceiver f52b;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$ResultReceiverWrapper$a */
        static class C0020a implements Parcelable.Creator<ResultReceiverWrapper> {
            C0020a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        }

        ResultReceiverWrapper(Parcel parcel) {
            this.f52b = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f52b.writeToParcel(parcel, i);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new C0021a();

        /* JADX INFO: renamed from: b */
        private final Object f53b;

        /* JADX INFO: renamed from: c */
        private InterfaceC0037b f54c;

        /* JADX INFO: renamed from: d */
        private Bundle f55d;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$Token$a */
        static class C0021a implements Parcelable.Creator<Token> {
            C0021a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Token createFromParcel(Parcel parcel) {
                return new Token(Build.VERSION.SDK_INT >= 21 ? parcel.readParcelable(null) : parcel.readStrongBinder());
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public Token[] newArray(int i) {
                return new Token[i];
            }
        }

        Token(Object obj) {
            this(obj, null, null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Token)) {
                return false;
            }
            Token token = (Token) obj;
            Object obj2 = this.f53b;
            if (obj2 == null) {
                return token.f53b == null;
            }
            Object obj3 = token.f53b;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.f53b;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        /* JADX INFO: renamed from: j */
        public InterfaceC0037b m111j() {
            return this.f54c;
        }

        /* JADX INFO: renamed from: k */
        public Bundle m112k() {
            return this.f55d;
        }

        /* JADX INFO: renamed from: l */
        public Object m113l() {
            return this.f53b;
        }

        /* JADX INFO: renamed from: m */
        public void m114m(InterfaceC0037b interfaceC0037b) {
            this.f54c = interfaceC0037b;
        }

        /* JADX INFO: renamed from: n */
        public void m115n(Bundle bundle) {
            this.f55d = bundle;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f53b, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f53b);
            }
        }

        Token(Object obj, InterfaceC0037b interfaceC0037b, Bundle bundle) {
            this.f53b = obj;
            this.f54c = interfaceC0037b;
            this.f55d = bundle;
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$a */
    class C0022a extends AbstractC0024c {
        C0022a(MediaSessionCompat mediaSessionCompat) {
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$b */
    class C0023b extends AbstractC0024c {
        C0023b(MediaSessionCompat mediaSessionCompat) {
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$c */
    public static abstract class AbstractC0024c {

        /* JADX INFO: renamed from: a */
        final Object f56a;

        /* JADX INFO: renamed from: b */
        WeakReference<InterfaceC0025d> f57b;

        /* JADX INFO: renamed from: c */
        private a f58c = null;

        /* JADX INFO: renamed from: d */
        private boolean f59d;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$c$a */
        private class a extends Handler {
            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    AbstractC0024c.this.m121a((C0413a) message.obj);
                }
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$c$b */
        private class b implements C0039d.a {
            b() {
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: b */
            public void mo147b(Object obj) {
                AbstractC0024c.this.m141u(RatingCompat.m26j(obj));
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: d */
            public void mo148d() {
                AbstractC0024c.this.m129i();
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: e */
            public void mo149e() {
                AbstractC0024c.this.m138r();
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: f */
            public void mo150f(String str, Bundle bundle) {
                AbstractC0024c.this.m131k(str, bundle);
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: g */
            public void mo151g() {
                AbstractC0024c.this.m119B();
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: i */
            public void mo152i() {
                AbstractC0024c.this.m128h();
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: j */
            public void mo153j(String str, Bundle bundle, ResultReceiver resultReceiver) {
                try {
                    QueueItem queueItem = null;
                    IBinder iBinderAsBinder = null;
                    queueItem = null;
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        C0028g c0028g = (C0028g) AbstractC0024c.this.f57b.get();
                        if (c0028g != null) {
                            Bundle bundle2 = new Bundle();
                            Token tokenMo170d = c0028g.mo170d();
                            InterfaceC0037b interfaceC0037bM111j = tokenMo170d.m111j();
                            if (interfaceC0037bM111j != null) {
                                iBinderAsBinder = interfaceC0037bM111j.asBinder();
                            }
                            C0235e.m1664b(bundle2, "android.support.v4.media.session.EXTRA_BINDER", iBinderAsBinder);
                            bundle2.putBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE", tokenMo170d.m112k());
                            resultReceiver.send(0, bundle2);
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        AbstractC0024c.this.m122b((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        AbstractC0024c.this.m123c((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        AbstractC0024c.this.m137q((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                        return;
                    }
                    if (!str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                        AbstractC0024c.this.m124d(str, bundle, resultReceiver);
                        return;
                    }
                    C0028g c0028g2 = (C0028g) AbstractC0024c.this.f57b.get();
                    if (c0028g2 == null || c0028g2.f72f == null) {
                        return;
                    }
                    int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                    if (i >= 0 && i < c0028g2.f72f.size()) {
                        queueItem = c0028g2.f72f.get(i);
                    }
                    if (queueItem != null) {
                        AbstractC0024c.this.m137q(queueItem.m106l());
                    }
                } catch (BadParcelableException unused) {
                }
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: k */
            public void mo154k() {
                AbstractC0024c.this.m146z();
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: l */
            public void mo155l(String str, Bundle bundle) {
                AbstractC0024c.this.m130j(str, bundle);
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: m */
            public void mo156m() {
                AbstractC0024c.this.m126f();
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: n */
            public boolean mo157n(Intent intent) {
                return AbstractC0024c.this.mo127g(intent);
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: o */
            public void mo158o(long j) {
                AbstractC0024c.this.m139s(j);
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: p */
            public void mo159p(String str, Bundle bundle) {
                Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                MediaSessionCompat.m95a(bundle2);
                if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                    AbstractC0024c.this.m132l((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                    AbstractC0024c.this.m133m();
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                    AbstractC0024c.this.m134n(bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                    AbstractC0024c.this.m135o(bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                    AbstractC0024c.this.m136p((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                    AbstractC0024c.this.m140t(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                    AbstractC0024c.this.m143w(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                    AbstractC0024c.this.m144x(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                } else if (!str.equals("android.support.v4.media.session.action.SET_RATING")) {
                    AbstractC0024c.this.m125e(str, bundle);
                } else {
                    AbstractC0024c.this.m142v((RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING"), bundle2);
                }
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: q */
            public void mo160q() {
                AbstractC0024c.this.m145y();
            }

            @Override // android.support.v4.media.session.C0039d.a
            /* JADX INFO: renamed from: s */
            public void mo161s(long j) {
                AbstractC0024c.this.m118A(j);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$c$c */
        private class c extends b implements C0040e.a {
            c() {
                super();
            }

            @Override // android.support.v4.media.session.C0040e.a
            /* JADX INFO: renamed from: t */
            public void mo162t(Uri uri, Bundle bundle) {
                AbstractC0024c.this.m132l(uri, bundle);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$c$d */
        private class d extends c implements C0041f.a {
            d() {
                super();
            }

            @Override // android.support.v4.media.session.C0041f.a
            /* JADX INFO: renamed from: a */
            public void mo163a() {
                AbstractC0024c.this.m133m();
            }

            @Override // android.support.v4.media.session.C0041f.a
            /* JADX INFO: renamed from: c */
            public void mo164c(Uri uri, Bundle bundle) {
                AbstractC0024c.this.m136p(uri, bundle);
            }

            @Override // android.support.v4.media.session.C0041f.a
            /* JADX INFO: renamed from: h */
            public void mo165h(String str, Bundle bundle) {
                AbstractC0024c.this.m134n(str, bundle);
            }

            @Override // android.support.v4.media.session.C0041f.a
            /* JADX INFO: renamed from: r */
            public void mo166r(String str, Bundle bundle) {
                AbstractC0024c.this.m135o(str, bundle);
            }
        }

        public AbstractC0024c() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                this.f56a = C0041f.m284a(new d());
                return;
            }
            if (i >= 23) {
                this.f56a = C0040e.m283a(new c());
            } else if (i >= 21) {
                this.f56a = C0039d.m272a(new b());
            } else {
                this.f56a = null;
            }
        }

        /* JADX INFO: renamed from: A */
        public void m118A(long j) {
        }

        /* JADX INFO: renamed from: B */
        public void m119B() {
        }

        /* JADX INFO: renamed from: C */
        void m120C(InterfaceC0025d interfaceC0025d, Handler handler) {
            this.f57b = new WeakReference<>(interfaceC0025d);
            a aVar = this.f58c;
            if (aVar != null) {
                aVar.removeCallbacksAndMessages(null);
            }
            this.f58c = new a(handler.getLooper());
        }

        /* JADX INFO: renamed from: a */
        void m121a(C0413a c0413a) {
            if (this.f59d) {
                this.f59d = false;
                this.f58c.removeMessages(1);
                InterfaceC0025d interfaceC0025d = this.f57b.get();
                if (interfaceC0025d == null) {
                    return;
                }
                PlaybackStateCompat playbackStateCompatMo175i = interfaceC0025d.mo175i();
                long jM249k = playbackStateCompatMo175i == null ? 0L : playbackStateCompatMo175i.m249k();
                boolean z = playbackStateCompatMo175i != null && playbackStateCompatMo175i.m254p() == 3;
                boolean z2 = (516 & jM249k) != 0;
                boolean z3 = (jM249k & 514) != 0;
                interfaceC0025d.mo172f(c0413a);
                if (z && z3) {
                    m128h();
                } else if (!z && z2) {
                    m129i();
                }
                interfaceC0025d.mo172f(null);
            }
        }

        /* JADX INFO: renamed from: b */
        public void m122b(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        /* JADX INFO: renamed from: c */
        public void m123c(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        /* JADX INFO: renamed from: d */
        public void m124d(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        /* JADX INFO: renamed from: e */
        public void m125e(String str, Bundle bundle) {
        }

        /* JADX INFO: renamed from: f */
        public void m126f() {
        }

        /* JADX INFO: renamed from: g */
        public boolean mo127g(Intent intent) {
            InterfaceC0025d interfaceC0025d;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27 || (interfaceC0025d = this.f57b.get()) == null || this.f58c == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            C0413a c0413aMo171e = interfaceC0025d.mo171e();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                m121a(c0413aMo171e);
                return false;
            }
            if (keyEvent.getRepeatCount() > 0) {
                m121a(c0413aMo171e);
            } else if (this.f59d) {
                this.f58c.removeMessages(1);
                this.f59d = false;
                PlaybackStateCompat playbackStateCompatMo175i = interfaceC0025d.mo175i();
                if (((playbackStateCompatMo175i == null ? 0L : playbackStateCompatMo175i.m249k()) & 32) != 0) {
                    m145y();
                }
            } else {
                this.f59d = true;
                a aVar = this.f58c;
                aVar.sendMessageDelayed(aVar.obtainMessage(1, c0413aMo171e), ViewConfiguration.getDoubleTapTimeout());
            }
            return true;
        }

        /* JADX INFO: renamed from: h */
        public void m128h() {
        }

        /* JADX INFO: renamed from: i */
        public void m129i() {
        }

        /* JADX INFO: renamed from: j */
        public void m130j(String str, Bundle bundle) {
        }

        /* JADX INFO: renamed from: k */
        public void m131k(String str, Bundle bundle) {
        }

        /* JADX INFO: renamed from: l */
        public void m132l(Uri uri, Bundle bundle) {
        }

        /* JADX INFO: renamed from: m */
        public void m133m() {
        }

        /* JADX INFO: renamed from: n */
        public void m134n(String str, Bundle bundle) {
        }

        /* JADX INFO: renamed from: o */
        public void m135o(String str, Bundle bundle) {
        }

        /* JADX INFO: renamed from: p */
        public void m136p(Uri uri, Bundle bundle) {
        }

        /* JADX INFO: renamed from: q */
        public void m137q(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        /* JADX INFO: renamed from: r */
        public void m138r() {
        }

        /* JADX INFO: renamed from: s */
        public void m139s(long j) {
        }

        /* JADX INFO: renamed from: t */
        public void m140t(boolean z) {
        }

        /* JADX INFO: renamed from: u */
        public void m141u(RatingCompat ratingCompat) {
        }

        /* JADX INFO: renamed from: v */
        public void m142v(RatingCompat ratingCompat, Bundle bundle) {
        }

        /* JADX INFO: renamed from: w */
        public void m143w(int i) {
        }

        /* JADX INFO: renamed from: x */
        public void m144x(int i) {
        }

        /* JADX INFO: renamed from: y */
        public void m145y() {
        }

        /* JADX INFO: renamed from: z */
        public void m146z() {
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$d */
    interface InterfaceC0025d {
        /* JADX INFO: renamed from: a */
        void mo167a();

        /* JADX INFO: renamed from: b */
        void mo168b(PendingIntent pendingIntent);

        /* JADX INFO: renamed from: c */
        void mo169c(boolean z);

        /* JADX INFO: renamed from: d */
        Token mo170d();

        /* JADX INFO: renamed from: e */
        C0413a mo171e();

        /* JADX INFO: renamed from: f */
        void mo172f(C0413a c0413a);

        /* JADX INFO: renamed from: g */
        void mo173g(PlaybackStateCompat playbackStateCompat);

        /* JADX INFO: renamed from: h */
        void mo174h(AbstractC0024c abstractC0024c, Handler handler);

        /* JADX INFO: renamed from: i */
        PlaybackStateCompat mo175i();

        /* JADX INFO: renamed from: j */
        void mo176j(int i);
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$e */
    static class C0026e extends C0030i {

        /* JADX INFO: renamed from: F */
        private static boolean f64F = true;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$e$a */
        class a implements RemoteControlClient.OnPlaybackPositionUpdateListener {
            a() {
            }

            @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
            public void onPlaybackPositionUpdate(long j) {
                C0026e.this.m235o(18, -1, -1, Long.valueOf(j), null);
            }
        }

        C0026e(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0030i, android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: h */
        public void mo174h(AbstractC0024c abstractC0024c, Handler handler) {
            super.mo174h(abstractC0024c, handler);
            if (abstractC0024c == null) {
                this.f91h.setPlaybackPositionUpdateListener(null);
            } else {
                this.f91h.setPlaybackPositionUpdateListener(new a());
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0030i
        /* JADX INFO: renamed from: n */
        int mo177n(long j) {
            int iMo177n = super.mo177n(j);
            return (j & 256) != 0 ? iMo177n | 256 : iMo177n;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0030i
        /* JADX INFO: renamed from: p */
        void mo178p(PendingIntent pendingIntent, ComponentName componentName) {
            if (f64F) {
                try {
                    this.f90g.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException unused) {
                    f64F = false;
                }
            }
            if (f64F) {
                return;
            }
            super.mo178p(pendingIntent, componentName);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0030i
        /* JADX INFO: renamed from: u */
        void mo179u(PlaybackStateCompat playbackStateCompat) {
            long jM253o = playbackStateCompat.m253o();
            float fM251m = playbackStateCompat.m251m();
            long jM250l = playbackStateCompat.m250l();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (playbackStateCompat.m254p() == 3) {
                long j = 0;
                if (jM253o > 0) {
                    if (jM250l > 0) {
                        j = jElapsedRealtime - jM250l;
                        if (fM251m > CropImageView.DEFAULT_ASPECT_RATIO && fM251m != 1.0f) {
                            j = (long) (j * fM251m);
                        }
                    }
                    jM253o += j;
                }
            }
            this.f91h.setPlaybackState(m234m(playbackStateCompat.m254p()), jM253o, fM251m);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0030i
        /* JADX INFO: renamed from: w */
        void mo180w(PendingIntent pendingIntent, ComponentName componentName) {
            if (f64F) {
                this.f90g.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.mo180w(pendingIntent, componentName);
            }
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$f */
    static class C0027f extends C0026e {

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$f$a */
        class a implements RemoteControlClient.OnMetadataUpdateListener {
            a() {
            }

            @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
            public void onMetadataUpdate(int i, Object obj) {
                if (i == 268435457 && (obj instanceof Rating)) {
                    C0027f.this.m235o(19, -1, -1, RatingCompat.m26j(obj), null);
                }
            }
        }

        C0027f(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0026e, android.support.v4.media.session.MediaSessionCompat.C0030i, android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: h */
        public void mo174h(AbstractC0024c abstractC0024c, Handler handler) {
            super.mo174h(abstractC0024c, handler);
            if (abstractC0024c == null) {
                this.f91h.setMetadataUpdateListener(null);
            } else {
                this.f91h.setMetadataUpdateListener(new a());
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0030i
        /* JADX INFO: renamed from: l */
        RemoteControlClient.MetadataEditor mo181l(Bundle bundle) {
            RemoteControlClient.MetadataEditor metadataEditorMo181l = super.mo181l(bundle);
            PlaybackStateCompat playbackStateCompat = this.f103t;
            if (((playbackStateCompat == null ? 0L : playbackStateCompat.m249k()) & 128) != 0) {
                metadataEditorMo181l.addEditableKey(268435457);
            }
            if (bundle == null) {
                return metadataEditorMo181l;
            }
            if (bundle.containsKey("android.media.metadata.YEAR")) {
                metadataEditorMo181l.putLong(8, bundle.getLong("android.media.metadata.YEAR"));
            }
            if (bundle.containsKey("android.media.metadata.RATING")) {
                metadataEditorMo181l.putObject(101, (Object) bundle.getParcelable("android.media.metadata.RATING"));
            }
            if (bundle.containsKey("android.media.metadata.USER_RATING")) {
                metadataEditorMo181l.putObject(268435457, (Object) bundle.getParcelable("android.media.metadata.USER_RATING"));
            }
            return metadataEditorMo181l;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0026e, android.support.v4.media.session.MediaSessionCompat.C0030i
        /* JADX INFO: renamed from: n */
        int mo177n(long j) {
            int iMo177n = super.mo177n(j);
            return (j & 128) != 0 ? iMo177n | 512 : iMo177n;
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$g */
    static class C0028g implements InterfaceC0025d {

        /* JADX INFO: renamed from: a */
        final Object f67a;

        /* JADX INFO: renamed from: b */
        final Token f68b;

        /* JADX INFO: renamed from: c */
        boolean f69c = false;

        /* JADX INFO: renamed from: d */
        final RemoteCallbackList<InterfaceC0036a> f70d = new RemoteCallbackList<>();

        /* JADX INFO: renamed from: e */
        PlaybackStateCompat f71e;

        /* JADX INFO: renamed from: f */
        List<QueueItem> f72f;

        /* JADX INFO: renamed from: g */
        MediaMetadataCompat f73g;

        /* JADX INFO: renamed from: h */
        int f74h;

        /* JADX INFO: renamed from: i */
        boolean f75i;

        /* JADX INFO: renamed from: j */
        int f76j;

        /* JADX INFO: renamed from: k */
        int f77k;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$g$a */
        class a extends InterfaceC0037b.a {
            a() {
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: A0 */
            public void mo183A0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: B */
            public void mo184B(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: C */
            public void mo185C(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: E */
            public void mo186E() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: F */
            public void mo187F(InterfaceC0036a interfaceC0036a) {
                C0028g c0028g = C0028g.this;
                if (c0028g.f69c) {
                    return;
                }
                String strM182k = c0028g.m182k();
                if (strM182k == null) {
                    strM182k = "android.media.session.MediaController";
                }
                C0028g.this.f70d.register(interfaceC0036a, new C0413a(strM182k, Binder.getCallingPid(), Binder.getCallingUid()));
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: H */
            public void mo188H(RatingCompat ratingCompat, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: I */
            public MediaMetadataCompat mo189I() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: I0 */
            public void mo190I0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: J */
            public void mo191J(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: K */
            public void mo192K(InterfaceC0036a interfaceC0036a) {
                C0028g.this.f70d.unregister(interfaceC0036a);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: K0 */
            public void mo193K0(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: L */
            public void mo194L(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: L0 */
            public List<QueueItem> mo195L0() {
                return null;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: N */
            public String mo196N() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: P */
            public boolean mo197P() {
                return false;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Q */
            public void mo198Q(boolean z) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Q0 */
            public boolean mo199Q0(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: R */
            public void mo200R(RatingCompat ratingCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: S */
            public void mo201S(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: T */
            public long mo202T() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: U */
            public void mo203U(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: V */
            public void mo204V(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: W */
            public int mo205W() {
                return C0028g.this.f76j;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: X */
            public void mo206X(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Y */
            public void mo207Y(boolean z) {
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Z */
            public void mo208Z(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: d0 */
            public ParcelableVolumeInfo mo209d0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: f0 */
            public void mo210f0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: g0 */
            public Bundle mo211g0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: i */
            public PlaybackStateCompat mo212i() {
                C0028g c0028g = C0028g.this;
                return MediaSessionCompat.m96c(c0028g.f71e, c0028g.f73g);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: i0 */
            public void mo213i0(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: j0 */
            public void mo214j0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: k0 */
            public boolean mo215k0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: l0 */
            public void mo216l0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: m0 */
            public PendingIntent mo217m0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: n0 */
            public int mo218n0() {
                return C0028g.this.f77k;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            public void next() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: o0 */
            public void mo219o0(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: p0 */
            public void mo220p0(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: r */
            public void mo221r(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: r0 */
            public void mo222r0(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: s0 */
            public int mo223s0() {
                return C0028g.this.f74h;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            public void stop() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: t */
            public void mo224t() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: t0 */
            public void mo225t0(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: u0 */
            public boolean mo226u0() {
                return C0028g.this.f75i;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: w */
            public void mo227w() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: x */
            public CharSequence mo228x() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: x0 */
            public String mo229x0() {
                throw new AssertionError();
            }
        }

        C0028g(Context context, String str, Bundle bundle) {
            this.f67a = C0039d.m273b(context, str);
            this.f68b = new Token(C0039d.m274c(this.f67a), new a(), bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: a */
        public void mo167a() {
            this.f69c = true;
            C0039d.m275d(this.f67a);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: b */
        public void mo168b(PendingIntent pendingIntent) {
            C0039d.m279h(this.f67a, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: c */
        public void mo169c(boolean z) {
            C0039d.m276e(this.f67a, z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: d */
        public Token mo170d() {
            return this.f68b;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: e */
        public C0413a mo171e() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: f */
        public void mo172f(C0413a c0413a) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: g */
        public void mo173g(PlaybackStateCompat playbackStateCompat) {
            this.f71e = playbackStateCompat;
            for (int iBeginBroadcast = this.f70d.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((InterfaceC0036a) this.f70d.getBroadcastItem(iBeginBroadcast)).mo90G0(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f70d.finishBroadcast();
            C0039d.m280i(this.f67a, playbackStateCompat == null ? null : playbackStateCompat.m252n());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: h */
        public void mo174h(AbstractC0024c abstractC0024c, Handler handler) {
            C0039d.m277f(this.f67a, abstractC0024c == null ? null : abstractC0024c.f56a, handler);
            if (abstractC0024c != null) {
                abstractC0024c.m120C(this, handler);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: i */
        public PlaybackStateCompat mo175i() {
            return this.f71e;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: j */
        public void mo176j(int i) {
            C0039d.m278g(this.f67a, i);
        }

        /* JADX INFO: renamed from: k */
        public String m182k() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return C0041f.m285b(this.f67a);
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$h */
    static class C0029h extends C0028g {
        C0029h(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0028g, android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: e */
        public final C0413a mo171e() {
            return new C0413a(((MediaSession) this.f67a).getCurrentControllerInfo());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.C0028g, android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: f */
        public void mo172f(C0413a c0413a) {
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$i */
    static class C0030i implements InterfaceC0025d {

        /* JADX INFO: renamed from: A */
        int f79A;

        /* JADX INFO: renamed from: B */
        Bundle f80B;

        /* JADX INFO: renamed from: C */
        int f81C;

        /* JADX INFO: renamed from: D */
        int f82D;

        /* JADX INFO: renamed from: E */
        AbstractC0417e f83E;

        /* JADX INFO: renamed from: a */
        private final ComponentName f84a;

        /* JADX INFO: renamed from: b */
        private final PendingIntent f85b;

        /* JADX INFO: renamed from: c */
        private final b f86c;

        /* JADX INFO: renamed from: d */
        private final Token f87d;

        /* JADX INFO: renamed from: e */
        final String f88e;

        /* JADX INFO: renamed from: f */
        final String f89f;

        /* JADX INFO: renamed from: g */
        final AudioManager f90g;

        /* JADX INFO: renamed from: h */
        final RemoteControlClient f91h;

        /* JADX INFO: renamed from: k */
        private c f94k;

        /* JADX INFO: renamed from: p */
        volatile AbstractC0024c f99p;

        /* JADX INFO: renamed from: q */
        private C0413a f100q;

        /* JADX INFO: renamed from: r */
        int f101r;

        /* JADX INFO: renamed from: s */
        MediaMetadataCompat f102s;

        /* JADX INFO: renamed from: t */
        PlaybackStateCompat f103t;

        /* JADX INFO: renamed from: u */
        PendingIntent f104u;

        /* JADX INFO: renamed from: v */
        List<QueueItem> f105v;

        /* JADX INFO: renamed from: w */
        CharSequence f106w;

        /* JADX INFO: renamed from: x */
        int f107x;

        /* JADX INFO: renamed from: y */
        boolean f108y;

        /* JADX INFO: renamed from: z */
        int f109z;

        /* JADX INFO: renamed from: i */
        final Object f92i = new Object();

        /* JADX INFO: renamed from: j */
        final RemoteCallbackList<InterfaceC0036a> f93j = new RemoteCallbackList<>();

        /* JADX INFO: renamed from: l */
        boolean f95l = false;

        /* JADX INFO: renamed from: m */
        boolean f96m = false;

        /* JADX INFO: renamed from: n */
        private boolean f97n = false;

        /* JADX INFO: renamed from: o */
        private boolean f98o = false;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$i$a */
        private static final class a {

            /* JADX INFO: renamed from: a */
            public final String f110a;

            /* JADX INFO: renamed from: b */
            public final Bundle f111b;

            /* JADX INFO: renamed from: c */
            public final ResultReceiver f112c;

            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.f110a = str;
                this.f111b = bundle;
                this.f112c = resultReceiver;
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$i$b */
        class b extends InterfaceC0037b.a {
            b() {
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: A0 */
            public void mo183A0() {
                m240G(3);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: B */
            public void mo184B(String str, Bundle bundle) {
                m242R0(20, str, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: C */
            public void mo185C(int i, int i2, String str) {
                C0030i.this.m233k(i, i2);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: E */
            public void mo186E() {
                m240G(12);
            }

            /* JADX INFO: renamed from: E0 */
            void m239E0(int i, Object obj, int i2) {
                C0030i.this.m235o(i, i2, 0, obj, null);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: F */
            public void mo187F(InterfaceC0036a interfaceC0036a) {
                if (C0030i.this.f95l) {
                    try {
                        interfaceC0036a.mo69e();
                    } catch (Exception unused) {
                    }
                } else {
                    C0030i.this.f93j.register(interfaceC0036a, new C0413a("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
                }
            }

            /* JADX INFO: renamed from: G */
            void m240G(int i) {
                C0030i.this.m235o(i, 0, 0, null, null);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: H */
            public void mo188H(RatingCompat ratingCompat, Bundle bundle) {
                m242R0(31, ratingCompat, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: I */
            public MediaMetadataCompat mo189I() {
                return C0030i.this.f102s;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: I0 */
            public void mo190I0() {
                m240G(7);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: J */
            public void mo191J(String str, Bundle bundle) {
                m242R0(4, str, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: K */
            public void mo192K(InterfaceC0036a interfaceC0036a) {
                C0030i.this.f93j.unregister(interfaceC0036a);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: K0 */
            public void mo193K0(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                m243c0(1, new a(str, bundle, resultReceiverWrapper.f52b));
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: L */
            public void mo194L(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                m239E0(26, mediaDescriptionCompat, i);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: L0 */
            public List<QueueItem> mo195L0() {
                List<QueueItem> list;
                synchronized (C0030i.this.f92i) {
                    list = C0030i.this.f105v;
                }
                return list;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: N */
            public String mo196N() {
                return C0030i.this.f89f;
            }

            /* JADX INFO: renamed from: O */
            void m241O(int i, int i2) {
                C0030i.this.m235o(i, i2, 0, null, null);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: P */
            public boolean mo197P() {
                return false;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Q */
            public void mo198Q(boolean z) {
                m243c0(29, Boolean.valueOf(z));
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Q0 */
            public boolean mo199Q0(KeyEvent keyEvent) {
                boolean z = (C0030i.this.f101r & 1) != 0;
                if (z) {
                    m243c0(21, keyEvent);
                }
                return z;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: R */
            public void mo200R(RatingCompat ratingCompat) {
                m243c0(19, ratingCompat);
            }

            /* JADX INFO: renamed from: R0 */
            void m242R0(int i, Object obj, Bundle bundle) {
                C0030i.this.m235o(i, 0, 0, obj, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: S */
            public void mo201S(String str, Bundle bundle) {
                m242R0(8, str, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: T */
            public long mo202T() {
                long j;
                synchronized (C0030i.this.f92i) {
                    j = C0030i.this.f101r;
                }
                return j;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: U */
            public void mo203U(int i, int i2, String str) {
                C0030i.this.m237v(i, i2);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: V */
            public void mo204V(Uri uri, Bundle bundle) {
                m242R0(6, uri, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: W */
            public int mo205W() {
                return C0030i.this.f109z;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: X */
            public void mo206X(long j) {
                m243c0(11, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Y */
            public void mo207Y(boolean z) {
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: Z */
            public void mo208Z(String str, Bundle bundle) {
                m242R0(9, str, bundle);
            }

            /* JADX INFO: renamed from: c0 */
            void m243c0(int i, Object obj) {
                C0030i.this.m235o(i, 0, 0, obj, null);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: d0 */
            public ParcelableVolumeInfo mo209d0() {
                int i;
                int i2;
                int streamMaxVolume;
                int streamVolume;
                synchronized (C0030i.this.f92i) {
                    i = C0030i.this.f81C;
                    i2 = C0030i.this.f82D;
                    AbstractC0417e abstractC0417e = C0030i.this.f83E;
                    if (i == 2) {
                        abstractC0417e.m3068a();
                        throw null;
                    }
                    streamMaxVolume = C0030i.this.f90g.getStreamMaxVolume(i2);
                    streamVolume = C0030i.this.f90g.getStreamVolume(i2);
                }
                return new ParcelableVolumeInfo(i, i2, 2, streamMaxVolume, streamVolume);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: f0 */
            public void mo210f0() {
                m240G(16);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: g0 */
            public Bundle mo211g0() {
                Bundle bundle;
                synchronized (C0030i.this.f92i) {
                    bundle = C0030i.this.f80B;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: i */
            public PlaybackStateCompat mo212i() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (C0030i.this.f92i) {
                    playbackStateCompat = C0030i.this.f103t;
                    mediaMetadataCompat = C0030i.this.f102s;
                }
                return MediaSessionCompat.m96c(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: i0 */
            public void mo213i0(Uri uri, Bundle bundle) {
                m242R0(10, uri, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: j0 */
            public void mo214j0(MediaDescriptionCompat mediaDescriptionCompat) {
                m243c0(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: k0 */
            public boolean mo215k0() {
                return (C0030i.this.f101r & 2) != 0;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: l0 */
            public void mo216l0(MediaDescriptionCompat mediaDescriptionCompat) {
                m243c0(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: m0 */
            public PendingIntent mo217m0() {
                PendingIntent pendingIntent;
                synchronized (C0030i.this.f92i) {
                    pendingIntent = C0030i.this.f104u;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: n0 */
            public int mo218n0() {
                return C0030i.this.f79A;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            public void next() {
                m240G(14);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: o0 */
            public void mo219o0(long j) {
                m243c0(18, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: p0 */
            public void mo220p0(int i) {
                m241O(30, i);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: r */
            public void mo221r(int i) {
                m241O(23, i);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: r0 */
            public void mo222r0(int i) {
                m241O(28, i);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: s0 */
            public int mo223s0() {
                return C0030i.this.f107x;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            public void stop() {
                m240G(13);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: t */
            public void mo224t() {
                m240G(15);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: t0 */
            public void mo225t0(String str, Bundle bundle) {
                m242R0(5, str, bundle);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: u0 */
            public boolean mo226u0() {
                return C0030i.this.f108y;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: w */
            public void mo227w() {
                m240G(17);
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: x */
            public CharSequence mo228x() {
                return C0030i.this.f106w;
            }

            @Override // android.support.v4.media.session.InterfaceC0037b
            /* JADX INFO: renamed from: x0 */
            public String mo229x0() {
                return C0030i.this.f88e;
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$i$c */
        class c extends Handler {
            public c(Looper looper) {
                super(looper);
            }

            /* JADX INFO: renamed from: a */
            private void m244a(KeyEvent keyEvent, AbstractC0024c abstractC0024c) {
                if (keyEvent == null || keyEvent.getAction() != 0) {
                    return;
                }
                PlaybackStateCompat playbackStateCompat = C0030i.this.f103t;
                long jM249k = playbackStateCompat == null ? 0L : playbackStateCompat.m249k();
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 126) {
                    if ((jM249k & 4) != 0) {
                        abstractC0024c.m129i();
                    }
                    return;
                }
                if (keyCode == 127) {
                    if ((jM249k & 2) != 0) {
                        abstractC0024c.m128h();
                        return;
                    }
                    return;
                }
                switch (keyCode) {
                    case 86:
                        if ((jM249k & 1) != 0) {
                            abstractC0024c.m119B();
                        }
                        break;
                    case 87:
                        if ((jM249k & 32) != 0) {
                            abstractC0024c.m145y();
                        }
                        break;
                    case 88:
                        if ((jM249k & 16) != 0) {
                            abstractC0024c.m146z();
                        }
                        break;
                    case 89:
                        if ((jM249k & 8) != 0) {
                            abstractC0024c.m138r();
                        }
                        break;
                    case 90:
                        if ((jM249k & 64) != 0) {
                            abstractC0024c.m126f();
                        }
                        break;
                }
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                AbstractC0024c abstractC0024c = C0030i.this.f99p;
                if (abstractC0024c == null) {
                    return;
                }
                Bundle data = message.getData();
                MediaSessionCompat.m95a(data);
                C0030i.this.mo172f(new C0413a(data.getString("data_calling_pkg"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
                Bundle bundle = data.getBundle("data_extras");
                MediaSessionCompat.m95a(bundle);
                try {
                    switch (message.what) {
                        case 1:
                            a aVar = (a) message.obj;
                            abstractC0024c.m124d(aVar.f110a, aVar.f111b, aVar.f112c);
                            break;
                        case 2:
                            C0030i.this.m233k(message.arg1, 0);
                            break;
                        case 3:
                            abstractC0024c.m133m();
                            break;
                        case 4:
                            abstractC0024c.m134n((String) message.obj, bundle);
                            break;
                        case 5:
                            abstractC0024c.m135o((String) message.obj, bundle);
                            break;
                        case 6:
                            abstractC0024c.m136p((Uri) message.obj, bundle);
                            break;
                        case 7:
                            abstractC0024c.m129i();
                            break;
                        case 8:
                            abstractC0024c.m130j((String) message.obj, bundle);
                            break;
                        case 9:
                            abstractC0024c.m131k((String) message.obj, bundle);
                            break;
                        case 10:
                            abstractC0024c.m132l((Uri) message.obj, bundle);
                            break;
                        case 11:
                            abstractC0024c.m118A(((Long) message.obj).longValue());
                            break;
                        case 12:
                            abstractC0024c.m128h();
                            break;
                        case 13:
                            abstractC0024c.m119B();
                            break;
                        case 14:
                            abstractC0024c.m145y();
                            break;
                        case 15:
                            abstractC0024c.m146z();
                            break;
                        case 16:
                            abstractC0024c.m126f();
                            break;
                        case 17:
                            abstractC0024c.m138r();
                            break;
                        case 18:
                            abstractC0024c.m139s(((Long) message.obj).longValue());
                            break;
                        case 19:
                            abstractC0024c.m141u((RatingCompat) message.obj);
                            break;
                        case 20:
                            abstractC0024c.m125e((String) message.obj, bundle);
                            break;
                        case 21:
                            KeyEvent keyEvent = (KeyEvent) message.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!abstractC0024c.mo127g(intent)) {
                                m244a(keyEvent, abstractC0024c);
                            }
                            break;
                        case 22:
                            C0030i.this.m237v(message.arg1, 0);
                            break;
                        case 23:
                            abstractC0024c.m143w(message.arg1);
                            break;
                        case 25:
                            abstractC0024c.m122b((MediaDescriptionCompat) message.obj);
                            break;
                        case 26:
                            abstractC0024c.m123c((MediaDescriptionCompat) message.obj, message.arg1);
                            break;
                        case 27:
                            abstractC0024c.m137q((MediaDescriptionCompat) message.obj);
                            break;
                        case 28:
                            if (C0030i.this.f105v != null) {
                                QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= C0030i.this.f105v.size()) ? null : C0030i.this.f105v.get(message.arg1);
                                if (queueItem != null) {
                                    abstractC0024c.m137q(queueItem.m106l());
                                }
                            }
                            break;
                        case 29:
                            abstractC0024c.m140t(((Boolean) message.obj).booleanValue());
                            break;
                        case 30:
                            abstractC0024c.m144x(message.arg1);
                            break;
                        case 31:
                            abstractC0024c.m142v((RatingCompat) message.obj, bundle);
                            break;
                    }
                } finally {
                    C0030i.this.mo172f(null);
                }
            }
        }

        public C0030i(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            if (componentName == null) {
                throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
            }
            this.f88e = context.getPackageName();
            this.f90g = (AudioManager) context.getSystemService("audio");
            this.f89f = str;
            this.f84a = componentName;
            this.f85b = pendingIntent;
            this.f86c = new b();
            this.f87d = new Token(this.f86c);
            this.f107x = 0;
            this.f81C = 1;
            this.f82D = 3;
            this.f91h = new RemoteControlClient(pendingIntent);
        }

        /* JADX INFO: renamed from: q */
        private void m230q(MediaMetadataCompat mediaMetadataCompat) {
            for (int iBeginBroadcast = this.f93j.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((InterfaceC0036a) this.f93j.getBroadcastItem(iBeginBroadcast)).mo65M(mediaMetadataCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f93j.finishBroadcast();
        }

        /* JADX INFO: renamed from: r */
        private void m231r() {
            for (int iBeginBroadcast = this.f93j.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((InterfaceC0036a) this.f93j.getBroadcastItem(iBeginBroadcast)).mo69e();
                } catch (RemoteException unused) {
                }
            }
            this.f93j.finishBroadcast();
            this.f93j.kill();
        }

        /* JADX INFO: renamed from: s */
        private void m232s(PlaybackStateCompat playbackStateCompat) {
            for (int iBeginBroadcast = this.f93j.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((InterfaceC0036a) this.f93j.getBroadcastItem(iBeginBroadcast)).mo90G0(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f93j.finishBroadcast();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: a */
        public void mo167a() {
            this.f96m = false;
            this.f95l = true;
            m238x();
            m231r();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: b */
        public void mo168b(PendingIntent pendingIntent) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: c */
        public void mo169c(boolean z) {
            if (z == this.f96m) {
                return;
            }
            this.f96m = z;
            if (m238x()) {
                m236t(this.f102s);
                mo173g(this.f103t);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: d */
        public Token mo170d() {
            return this.f87d;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: e */
        public C0413a mo171e() {
            C0413a c0413a;
            synchronized (this.f92i) {
                c0413a = this.f100q;
            }
            return c0413a;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: f */
        public void mo172f(C0413a c0413a) {
            synchronized (this.f92i) {
                this.f100q = c0413a;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: g */
        public void mo173g(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.f92i) {
                this.f103t = playbackStateCompat;
            }
            m232s(playbackStateCompat);
            if (this.f96m) {
                if (playbackStateCompat == null) {
                    this.f91h.setPlaybackState(0);
                    this.f91h.setTransportControlFlags(0);
                } else {
                    mo179u(playbackStateCompat);
                    this.f91h.setTransportControlFlags(mo177n(playbackStateCompat.m249k()));
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: h */
        public void mo174h(AbstractC0024c abstractC0024c, Handler handler) {
            this.f99p = abstractC0024c;
            if (abstractC0024c != null) {
                if (handler == null) {
                    handler = new Handler();
                }
                synchronized (this.f92i) {
                    if (this.f94k != null) {
                        this.f94k.removeCallbacksAndMessages(null);
                    }
                    this.f94k = new c(handler.getLooper());
                    this.f99p.m120C(this, handler);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: i */
        public PlaybackStateCompat mo175i() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.f92i) {
                playbackStateCompat = this.f103t;
            }
            return playbackStateCompat;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.InterfaceC0025d
        /* JADX INFO: renamed from: j */
        public void mo176j(int i) {
            synchronized (this.f92i) {
                this.f101r = i;
            }
            m238x();
        }

        /* JADX INFO: renamed from: k */
        void m233k(int i, int i2) {
            if (this.f81C != 2) {
                this.f90g.adjustStreamVolume(this.f82D, i, i2);
                return;
            }
            AbstractC0417e abstractC0417e = this.f83E;
            if (abstractC0417e != null) {
                abstractC0417e.m3069b(i);
            }
        }

        /* JADX INFO: renamed from: l */
        RemoteControlClient.MetadataEditor mo181l(Bundle bundle) {
            RemoteControlClient.MetadataEditor metadataEditorEditMetadata = this.f91h.editMetadata(true);
            if (bundle == null) {
                return metadataEditorEditMetadata;
            }
            if (bundle.containsKey("android.media.metadata.ART")) {
                Bitmap bitmapCopy = (Bitmap) bundle.getParcelable("android.media.metadata.ART");
                if (bitmapCopy != null) {
                    bitmapCopy = bitmapCopy.copy(bitmapCopy.getConfig(), false);
                }
                metadataEditorEditMetadata.putBitmap(100, bitmapCopy);
            } else if (bundle.containsKey("android.media.metadata.ALBUM_ART")) {
                Bitmap bitmapCopy2 = (Bitmap) bundle.getParcelable("android.media.metadata.ALBUM_ART");
                if (bitmapCopy2 != null) {
                    bitmapCopy2 = bitmapCopy2.copy(bitmapCopy2.getConfig(), false);
                }
                metadataEditorEditMetadata.putBitmap(100, bitmapCopy2);
            }
            if (bundle.containsKey("android.media.metadata.ALBUM")) {
                metadataEditorEditMetadata.putString(1, bundle.getString("android.media.metadata.ALBUM"));
            }
            if (bundle.containsKey("android.media.metadata.ALBUM_ARTIST")) {
                metadataEditorEditMetadata.putString(13, bundle.getString("android.media.metadata.ALBUM_ARTIST"));
            }
            if (bundle.containsKey("android.media.metadata.ARTIST")) {
                metadataEditorEditMetadata.putString(2, bundle.getString("android.media.metadata.ARTIST"));
            }
            if (bundle.containsKey("android.media.metadata.AUTHOR")) {
                metadataEditorEditMetadata.putString(3, bundle.getString("android.media.metadata.AUTHOR"));
            }
            if (bundle.containsKey("android.media.metadata.COMPILATION")) {
                metadataEditorEditMetadata.putString(15, bundle.getString("android.media.metadata.COMPILATION"));
            }
            if (bundle.containsKey("android.media.metadata.COMPOSER")) {
                metadataEditorEditMetadata.putString(4, bundle.getString("android.media.metadata.COMPOSER"));
            }
            if (bundle.containsKey("android.media.metadata.DATE")) {
                metadataEditorEditMetadata.putString(5, bundle.getString("android.media.metadata.DATE"));
            }
            if (bundle.containsKey("android.media.metadata.DISC_NUMBER")) {
                metadataEditorEditMetadata.putLong(14, bundle.getLong("android.media.metadata.DISC_NUMBER"));
            }
            if (bundle.containsKey("android.media.metadata.DURATION")) {
                metadataEditorEditMetadata.putLong(9, bundle.getLong("android.media.metadata.DURATION"));
            }
            if (bundle.containsKey("android.media.metadata.GENRE")) {
                metadataEditorEditMetadata.putString(6, bundle.getString("android.media.metadata.GENRE"));
            }
            if (bundle.containsKey("android.media.metadata.TITLE")) {
                metadataEditorEditMetadata.putString(7, bundle.getString("android.media.metadata.TITLE"));
            }
            if (bundle.containsKey("android.media.metadata.TRACK_NUMBER")) {
                metadataEditorEditMetadata.putLong(0, bundle.getLong("android.media.metadata.TRACK_NUMBER"));
            }
            if (bundle.containsKey("android.media.metadata.WRITER")) {
                metadataEditorEditMetadata.putString(11, bundle.getString("android.media.metadata.WRITER"));
            }
            return metadataEditorEditMetadata;
        }

        /* JADX INFO: renamed from: m */
        int m234m(int i) {
            switch (i) {
                case 0:
                    return 0;
                case 1:
                    return 1;
                case 2:
                    return 2;
                case 3:
                    return 3;
                case 4:
                    return 4;
                case 5:
                    return 5;
                case 6:
                case 8:
                    return 8;
                case 7:
                    return 9;
                case 9:
                    return 7;
                case 10:
                case 11:
                    return 6;
                default:
                    return -1;
            }
        }

        /* JADX INFO: renamed from: n */
        int mo177n(long j) {
            int i = (1 & j) != 0 ? 32 : 0;
            if ((2 & j) != 0) {
                i |= 16;
            }
            if ((4 & j) != 0) {
                i |= 4;
            }
            if ((8 & j) != 0) {
                i |= 2;
            }
            if ((16 & j) != 0) {
                i |= 1;
            }
            if ((32 & j) != 0) {
                i |= 128;
            }
            if ((64 & j) != 0) {
                i |= 64;
            }
            return (j & 512) != 0 ? i | 8 : i;
        }

        /* JADX INFO: renamed from: o */
        void m235o(int i, int i2, int i3, Object obj, Bundle bundle) {
            synchronized (this.f92i) {
                if (this.f94k != null) {
                    Message messageObtainMessage = this.f94k.obtainMessage(i, i2, i3, obj);
                    Bundle bundle2 = new Bundle();
                    bundle2.putString("data_calling_pkg", "android.media.session.MediaController");
                    bundle2.putInt("data_calling_pid", Binder.getCallingPid());
                    bundle2.putInt("data_calling_uid", Binder.getCallingUid());
                    if (bundle != null) {
                        bundle2.putBundle("data_extras", bundle);
                    }
                    messageObtainMessage.setData(bundle2);
                    messageObtainMessage.sendToTarget();
                }
            }
        }

        /* JADX INFO: renamed from: p */
        void mo178p(PendingIntent pendingIntent, ComponentName componentName) {
            this.f90g.registerMediaButtonEventReceiver(componentName);
        }

        /* JADX INFO: renamed from: t */
        public void m236t(MediaMetadataCompat mediaMetadataCompat) {
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new MediaMetadataCompat.C0005b(mediaMetadataCompat, MediaSessionCompat.f46c).m24a();
            }
            synchronized (this.f92i) {
                this.f102s = mediaMetadataCompat;
            }
            m230q(mediaMetadataCompat);
            if (this.f96m) {
                mo181l(mediaMetadataCompat == null ? null : mediaMetadataCompat.m19l()).apply();
            }
        }

        /* JADX INFO: renamed from: u */
        void mo179u(PlaybackStateCompat playbackStateCompat) {
            this.f91h.setPlaybackState(m234m(playbackStateCompat.m254p()));
        }

        /* JADX INFO: renamed from: v */
        void m237v(int i, int i2) {
            if (this.f81C != 2) {
                this.f90g.setStreamVolume(this.f82D, i, i2);
                return;
            }
            AbstractC0417e abstractC0417e = this.f83E;
            if (abstractC0417e != null) {
                abstractC0417e.m3070c(i);
            }
        }

        /* JADX INFO: renamed from: w */
        void mo180w(PendingIntent pendingIntent, ComponentName componentName) {
            this.f90g.unregisterMediaButtonEventReceiver(componentName);
        }

        /* JADX INFO: renamed from: x */
        boolean m238x() {
            if (this.f96m) {
                if (!this.f97n && (this.f101r & 1) != 0) {
                    mo178p(this.f85b, this.f84a);
                    this.f97n = true;
                } else if (this.f97n && (this.f101r & 1) == 0) {
                    mo180w(this.f85b, this.f84a);
                    this.f97n = false;
                }
                if (!this.f98o && (this.f101r & 2) != 0) {
                    this.f90g.registerRemoteControlClient(this.f91h);
                    this.f98o = true;
                    return true;
                }
                if (this.f98o && (this.f101r & 2) == 0) {
                    this.f91h.setPlaybackState(0);
                    this.f90g.unregisterRemoteControlClient(this.f91h);
                    this.f98o = false;
                }
            } else {
                if (this.f97n) {
                    mo180w(this.f85b, this.f84a);
                    this.f97n = false;
                }
                if (this.f98o) {
                    this.f91h.setPlaybackState(0);
                    this.f90g.unregisterRemoteControlClient(this.f91h);
                    this.f98o = false;
                }
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$j */
    public interface InterfaceC0031j {
        /* JADX INFO: renamed from: a */
        void m245a();
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }

    /* JADX INFO: renamed from: a */
    public static void m95a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    /* JADX INFO: renamed from: c */
    static PlaybackStateCompat m96c(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long jM20m = -1;
        if (playbackStateCompat.m253o() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.m254p() != 3 && playbackStateCompat.m254p() != 4 && playbackStateCompat.m254p() != 5) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.m250l() <= 0) {
            return playbackStateCompat;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jM251m = ((long) (playbackStateCompat.m251m() * (jElapsedRealtime - r0))) + playbackStateCompat.m253o();
        if (mediaMetadataCompat != null && mediaMetadataCompat.m18j("android.media.metadata.DURATION")) {
            jM20m = mediaMetadataCompat.m20m("android.media.metadata.DURATION");
        }
        long j = (jM20m < 0 || jM251m <= jM20m) ? jM251m < 0 ? 0L : jM251m : jM20m;
        PlaybackStateCompat.C0035b c0035b = new PlaybackStateCompat.C0035b(playbackStateCompat);
        c0035b.m263c(playbackStateCompat.m254p(), j, playbackStateCompat.m251m(), jElapsedRealtime);
        return c0035b.m261a();
    }

    /* JADX INFO: renamed from: b */
    public Token m97b() {
        return this.f47a.mo170d();
    }

    /* JADX INFO: renamed from: d */
    public void m98d() {
        this.f47a.mo167a();
    }

    /* JADX INFO: renamed from: e */
    public void m99e(boolean z) {
        this.f47a.mo169c(z);
        Iterator<InterfaceC0031j> it = this.f48b.iterator();
        while (it.hasNext()) {
            it.next().m245a();
        }
    }

    /* JADX INFO: renamed from: f */
    public void m100f(AbstractC0024c abstractC0024c) {
        m101g(abstractC0024c, null);
    }

    /* JADX INFO: renamed from: g */
    public void m101g(AbstractC0024c abstractC0024c, Handler handler) {
        if (abstractC0024c == null) {
            this.f47a.mo174h(null, null);
            return;
        }
        InterfaceC0025d interfaceC0025d = this.f47a;
        if (handler == null) {
            handler = new Handler();
        }
        interfaceC0025d.mo174h(abstractC0024c, handler);
    }

    /* JADX INFO: renamed from: h */
    public void m102h(int i) {
        this.f47a.mo176j(i);
    }

    /* JADX INFO: renamed from: i */
    public void m103i(PlaybackStateCompat playbackStateCompat) {
        this.f47a.mo173g(playbackStateCompat);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    private MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this.f48b = new ArrayList<>();
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                componentName = componentName == null ? C0418a.m3071a(context) : componentName;
                if (componentName != null && pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName);
                    pendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
                }
                int i = Build.VERSION.SDK_INT;
                if (i >= 28) {
                    this.f47a = new C0029h(context, str, bundle);
                    m100f(new C0022a(this));
                    this.f47a.mo168b(pendingIntent);
                } else if (i >= 21) {
                    this.f47a = new C0028g(context, str, bundle);
                    m100f(new C0023b(this));
                    this.f47a.mo168b(pendingIntent);
                } else if (i >= 19) {
                    this.f47a = new C0027f(context, str, componentName, pendingIntent);
                } else if (i >= 18) {
                    this.f47a = new C0026e(context, str, componentName, pendingIntent);
                } else {
                    this.f47a = new C0030i(context, str, componentName, pendingIntent);
                }
                new MediaControllerCompat(context, this);
                if (f46c == 0) {
                    f46c = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        throw new IllegalArgumentException("context must not be null");
    }

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new C0019a();

        /* JADX INFO: renamed from: b */
        private final MediaDescriptionCompat f49b;

        /* JADX INFO: renamed from: c */
        private final long f50c;

        /* JADX INFO: renamed from: d */
        private Object f51d;

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$QueueItem$a */
        static class C0019a implements Parcelable.Creator<QueueItem> {
            C0019a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (mediaDescriptionCompat == null) {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (j == -1) {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            }
            this.f49b = mediaDescriptionCompat;
            this.f50c = j;
            this.f51d = obj;
        }

        /* JADX INFO: renamed from: j */
        public static QueueItem m104j(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.m4j(C0039d.c.m281a(obj)), C0039d.c.m282b(obj));
        }

        /* JADX INFO: renamed from: k */
        public static List<QueueItem> m105k(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(m104j(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: renamed from: l */
        public MediaDescriptionCompat m106l() {
            return this.f49b;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f49b + ", Id=" + this.f50c + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f49b.writeToParcel(parcel, i);
            parcel.writeLong(this.f50c);
        }

        QueueItem(Parcel parcel) {
            this.f49b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f50c = parcel.readLong();
        }
    }
}
