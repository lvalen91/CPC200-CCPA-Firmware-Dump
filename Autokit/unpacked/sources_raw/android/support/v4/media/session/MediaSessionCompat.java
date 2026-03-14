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
import android.support.v4.media.session.PlaybackStateCompat;
import android.support.v4.media.session.b;
import android.support.v4.media.session.d;
import android.support.v4.media.session.e;
import android.support.v4.media.session.f;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MediaSessionCompat {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static int f23c;
    private final d a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ArrayList<j> f24b;

    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ResultReceiver f28b;

        static class a implements Parcelable.Creator<ResultReceiverWrapper> {
            a() {
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
            this.f28b = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f28b.writeToParcel(parcel, i);
        }
    }

    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Object f29b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private android.support.v4.media.session.b f30c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Bundle f31d;

        static class a implements Parcelable.Creator<Token> {
            a() {
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
            Object obj2 = this.f29b;
            if (obj2 == null) {
                return token.f29b == null;
            }
            Object obj3 = token.f29b;
            if (obj3 == null) {
                return false;
            }
            return obj2.equals(obj3);
        }

        public int hashCode() {
            Object obj = this.f29b;
            if (obj == null) {
                return 0;
            }
            return obj.hashCode();
        }

        public android.support.v4.media.session.b j() {
            return this.f30c;
        }

        public Bundle k() {
            return this.f31d;
        }

        public Object l() {
            return this.f29b;
        }

        public void m(android.support.v4.media.session.b bVar) {
            this.f30c = bVar;
        }

        public void n(Bundle bundle) {
            this.f31d = bundle;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (Build.VERSION.SDK_INT >= 21) {
                parcel.writeParcelable((Parcelable) this.f29b, i);
            } else {
                parcel.writeStrongBinder((IBinder) this.f29b);
            }
        }

        Token(Object obj, android.support.v4.media.session.b bVar, Bundle bundle) {
            this.f29b = obj;
            this.f30c = bVar;
            this.f31d = bundle;
        }
    }

    class a extends c {
        a(MediaSessionCompat mediaSessionCompat) {
        }
    }

    class b extends c {
        b(MediaSessionCompat mediaSessionCompat) {
        }
    }

    public static abstract class c {
        final Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        WeakReference<d> f32b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a f33c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f34d;

        private class a extends Handler {
            a(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    c.this.a((androidx.media.a) message.obj);
                }
            }
        }

        private class b implements d.a {
            b() {
            }

            @Override // android.support.v4.media.session.d.a
            public void b(Object obj) {
                c.this.u(RatingCompat.j(obj));
            }

            @Override // android.support.v4.media.session.d.a
            public void d() {
                c.this.i();
            }

            @Override // android.support.v4.media.session.d.a
            public void e() {
                c.this.r();
            }

            @Override // android.support.v4.media.session.d.a
            public void f(String str, Bundle bundle) {
                c.this.k(str, bundle);
            }

            @Override // android.support.v4.media.session.d.a
            public void g() {
                c.this.B();
            }

            @Override // android.support.v4.media.session.d.a
            public void i() {
                c.this.h();
            }

            @Override // android.support.v4.media.session.d.a
            public void j(String str, Bundle bundle, ResultReceiver resultReceiver) {
                try {
                    QueueItem queueItem = null;
                    IBinder iBinderAsBinder = null;
                    queueItem = null;
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        g gVar = (g) c.this.f32b.get();
                        if (gVar != null) {
                            Bundle bundle2 = new Bundle();
                            Token tokenD = gVar.d();
                            android.support.v4.media.session.b bVarJ = tokenD.j();
                            if (bVarJ != null) {
                                iBinderAsBinder = bVarJ.asBinder();
                            }
                            androidx.core.app.e.b(bundle2, "android.support.v4.media.session.EXTRA_BINDER", iBinderAsBinder);
                            bundle2.putBundle("android.support.v4.media.session.SESSION_TOKEN2_BUNDLE", tokenD.k());
                            resultReceiver.send(0, bundle2);
                            return;
                        }
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        c.this.b((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        c.this.c((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                        return;
                    }
                    if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        c.this.q((MediaDescriptionCompat) bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"));
                        return;
                    }
                    if (!str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                        c.this.d(str, bundle, resultReceiver);
                        return;
                    }
                    g gVar2 = (g) c.this.f32b.get();
                    if (gVar2 == null || gVar2.f == null) {
                        return;
                    }
                    int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                    if (i >= 0 && i < gVar2.f.size()) {
                        queueItem = gVar2.f.get(i);
                    }
                    if (queueItem != null) {
                        c.this.q(queueItem.l());
                    }
                } catch (BadParcelableException unused) {
                }
            }

            @Override // android.support.v4.media.session.d.a
            public void k() {
                c.this.z();
            }

            @Override // android.support.v4.media.session.d.a
            public void l(String str, Bundle bundle) {
                c.this.j(str, bundle);
            }

            @Override // android.support.v4.media.session.d.a
            public void m() {
                c.this.f();
            }

            @Override // android.support.v4.media.session.d.a
            public boolean n(Intent intent) {
                return c.this.g(intent);
            }

            @Override // android.support.v4.media.session.d.a
            public void o(long j) {
                c.this.s(j);
            }

            @Override // android.support.v4.media.session.d.a
            public void p(String str, Bundle bundle) {
                Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                MediaSessionCompat.a(bundle2);
                if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                    c.this.l((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                    c.this.m();
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                    c.this.n(bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                    c.this.o(bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                    c.this.p((Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI"), bundle2);
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                    c.this.t(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
                    return;
                }
                if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                    c.this.w(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                    c.this.x(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                } else if (!str.equals("android.support.v4.media.session.action.SET_RATING")) {
                    c.this.e(str, bundle);
                } else {
                    c.this.v((RatingCompat) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING"), bundle2);
                }
            }

            @Override // android.support.v4.media.session.d.a
            public void q() {
                c.this.y();
            }

            @Override // android.support.v4.media.session.d.a
            public void s(long j) {
                c.this.A(j);
            }
        }

        /* JADX INFO: renamed from: android.support.v4.media.session.MediaSessionCompat$c$c, reason: collision with other inner class name */
        private class C0001c extends b implements e.a {
            C0001c() {
                super();
            }

            @Override // android.support.v4.media.session.e.a
            public void t(Uri uri, Bundle bundle) {
                c.this.l(uri, bundle);
            }
        }

        private class d extends C0001c implements f.a {
            d() {
                super();
            }

            @Override // android.support.v4.media.session.f.a
            public void a() {
                c.this.m();
            }

            @Override // android.support.v4.media.session.f.a
            public void c(Uri uri, Bundle bundle) {
                c.this.p(uri, bundle);
            }

            @Override // android.support.v4.media.session.f.a
            public void h(String str, Bundle bundle) {
                c.this.n(str, bundle);
            }

            @Override // android.support.v4.media.session.f.a
            public void r(String str, Bundle bundle) {
                c.this.o(str, bundle);
            }
        }

        public c() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 24) {
                this.a = android.support.v4.media.session.f.a(new d());
                return;
            }
            if (i >= 23) {
                this.a = android.support.v4.media.session.e.a(new C0001c());
            } else if (i >= 21) {
                this.a = android.support.v4.media.session.d.a(new b());
            } else {
                this.a = null;
            }
        }

        public void A(long j) {
        }

        public void B() {
        }

        void C(d dVar, Handler handler) {
            this.f32b = new WeakReference<>(dVar);
            a aVar = this.f33c;
            if (aVar != null) {
                aVar.removeCallbacksAndMessages(null);
            }
            this.f33c = new a(handler.getLooper());
        }

        void a(androidx.media.a aVar) {
            if (this.f34d) {
                this.f34d = false;
                this.f33c.removeMessages(1);
                d dVar = this.f32b.get();
                if (dVar == null) {
                    return;
                }
                PlaybackStateCompat playbackStateCompatI = dVar.i();
                long jK = playbackStateCompatI == null ? 0L : playbackStateCompatI.k();
                boolean z = playbackStateCompatI != null && playbackStateCompatI.p() == 3;
                boolean z2 = (516 & jK) != 0;
                boolean z3 = (jK & 514) != 0;
                dVar.f(aVar);
                if (z && z3) {
                    h();
                } else if (!z && z2) {
                    i();
                }
                dVar.f(null);
            }
        }

        public void b(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void c(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void d(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void e(String str, Bundle bundle) {
        }

        public void f() {
        }

        public boolean g(Intent intent) {
            d dVar;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27 || (dVar = this.f32b.get()) == null || this.f33c == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            androidx.media.a aVarE = dVar.e();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 79 && keyCode != 85) {
                a(aVarE);
                return false;
            }
            if (keyEvent.getRepeatCount() > 0) {
                a(aVarE);
            } else if (this.f34d) {
                this.f33c.removeMessages(1);
                this.f34d = false;
                PlaybackStateCompat playbackStateCompatI = dVar.i();
                if (((playbackStateCompatI == null ? 0L : playbackStateCompatI.k()) & 32) != 0) {
                    y();
                }
            } else {
                this.f34d = true;
                a aVar = this.f33c;
                aVar.sendMessageDelayed(aVar.obtainMessage(1, aVarE), ViewConfiguration.getDoubleTapTimeout());
            }
            return true;
        }

        public void h() {
        }

        public void i() {
        }

        public void j(String str, Bundle bundle) {
        }

        public void k(String str, Bundle bundle) {
        }

        public void l(Uri uri, Bundle bundle) {
        }

        public void m() {
        }

        public void n(String str, Bundle bundle) {
        }

        public void o(String str, Bundle bundle) {
        }

        public void p(Uri uri, Bundle bundle) {
        }

        public void q(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void r() {
        }

        public void s(long j) {
        }

        public void t(boolean z) {
        }

        public void u(RatingCompat ratingCompat) {
        }

        public void v(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void w(int i) {
        }

        public void x(int i) {
        }

        public void y() {
        }

        public void z() {
        }
    }

    interface d {
        void a();

        void b(PendingIntent pendingIntent);

        void c(boolean z);

        Token d();

        androidx.media.a e();

        void f(androidx.media.a aVar);

        void g(PlaybackStateCompat playbackStateCompat);

        void h(c cVar, Handler handler);

        PlaybackStateCompat i();

        void j(int i);
    }

    static class e extends i {
        private static boolean F = true;

        class a implements RemoteControlClient.OnPlaybackPositionUpdateListener {
            a() {
            }

            @Override // android.media.RemoteControlClient.OnPlaybackPositionUpdateListener
            public void onPlaybackPositionUpdate(long j) {
                e.this.o(18, -1, -1, Long.valueOf(j), null);
            }
        }

        e(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i, android.support.v4.media.session.MediaSessionCompat.d
        public void h(c cVar, Handler handler) {
            super.h(cVar, handler);
            if (cVar == null) {
                this.h.setPlaybackPositionUpdateListener(null);
            } else {
                this.h.setPlaybackPositionUpdateListener(new a());
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        int n(long j) {
            int iN = super.n(j);
            return (j & 256) != 0 ? iN | 256 : iN;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        void p(PendingIntent pendingIntent, ComponentName componentName) {
            if (F) {
                try {
                    this.g.registerMediaButtonEventReceiver(pendingIntent);
                } catch (NullPointerException unused) {
                    F = false;
                }
            }
            if (F) {
                return;
            }
            super.p(pendingIntent, componentName);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        void u(PlaybackStateCompat playbackStateCompat) {
            long jO = playbackStateCompat.o();
            float fM = playbackStateCompat.m();
            long jL = playbackStateCompat.l();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (playbackStateCompat.p() == 3) {
                long j = 0;
                if (jO > 0) {
                    if (jL > 0) {
                        j = jElapsedRealtime - jL;
                        if (fM > CropImageView.DEFAULT_ASPECT_RATIO && fM != 1.0f) {
                            j = (long) (j * fM);
                        }
                    }
                    jO += j;
                }
            }
            this.h.setPlaybackState(m(playbackStateCompat.p()), jO, fM);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        void w(PendingIntent pendingIntent, ComponentName componentName) {
            if (F) {
                this.g.unregisterMediaButtonEventReceiver(pendingIntent);
            } else {
                super.w(pendingIntent, componentName);
            }
        }
    }

    static class f extends e {

        class a implements RemoteControlClient.OnMetadataUpdateListener {
            a() {
            }

            @Override // android.media.RemoteControlClient.OnMetadataUpdateListener
            public void onMetadataUpdate(int i, Object obj) {
                if (i == 268435457 && (obj instanceof Rating)) {
                    f.this.o(19, -1, -1, RatingCompat.j(obj), null);
                }
            }
        }

        f(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            super(context, str, componentName, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.e, android.support.v4.media.session.MediaSessionCompat.i, android.support.v4.media.session.MediaSessionCompat.d
        public void h(c cVar, Handler handler) {
            super.h(cVar, handler);
            if (cVar == null) {
                this.h.setMetadataUpdateListener(null);
            } else {
                this.h.setMetadataUpdateListener(new a());
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.i
        RemoteControlClient.MetadataEditor l(Bundle bundle) {
            RemoteControlClient.MetadataEditor metadataEditorL = super.l(bundle);
            PlaybackStateCompat playbackStateCompat = this.t;
            if (((playbackStateCompat == null ? 0L : playbackStateCompat.k()) & 128) != 0) {
                metadataEditorL.addEditableKey(268435457);
            }
            if (bundle == null) {
                return metadataEditorL;
            }
            if (bundle.containsKey("android.media.metadata.YEAR")) {
                metadataEditorL.putLong(8, bundle.getLong("android.media.metadata.YEAR"));
            }
            if (bundle.containsKey("android.media.metadata.RATING")) {
                metadataEditorL.putObject(101, (Object) bundle.getParcelable("android.media.metadata.RATING"));
            }
            if (bundle.containsKey("android.media.metadata.USER_RATING")) {
                metadataEditorL.putObject(268435457, (Object) bundle.getParcelable("android.media.metadata.USER_RATING"));
            }
            return metadataEditorL;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.e, android.support.v4.media.session.MediaSessionCompat.i
        int n(long j) {
            int iN = super.n(j);
            return (j & 128) != 0 ? iN | 512 : iN;
        }
    }

    static class g implements d {
        final Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Token f37b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f38c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final RemoteCallbackList<android.support.v4.media.session.a> f39d = new RemoteCallbackList<>();
        PlaybackStateCompat e;
        List<QueueItem> f;
        MediaMetadataCompat g;
        int h;
        boolean i;
        int j;
        int k;

        class a extends b.a {
            a() {
            }

            @Override // android.support.v4.media.session.b
            public void A0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void B(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void C(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void E() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void F(android.support.v4.media.session.a aVar) {
                g gVar = g.this;
                if (gVar.f38c) {
                    return;
                }
                String strK = gVar.k();
                if (strK == null) {
                    strK = "android.media.session.MediaController";
                }
                g.this.f39d.register(aVar, new androidx.media.a(strK, Binder.getCallingPid(), Binder.getCallingUid()));
            }

            @Override // android.support.v4.media.session.b
            public void H(RatingCompat ratingCompat, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat I() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void I0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void J(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void K(android.support.v4.media.session.a aVar) {
                g.this.f39d.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public void K0(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void L(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public List<QueueItem> L0() {
                return null;
            }

            @Override // android.support.v4.media.session.b
            public String N() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean P() {
                return false;
            }

            @Override // android.support.v4.media.session.b
            public void Q(boolean z) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean Q0(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void R(RatingCompat ratingCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void S(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public long T() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void U(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void V(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public int W() {
                return g.this.j;
            }

            @Override // android.support.v4.media.session.b
            public void X(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void Y(boolean z) {
            }

            @Override // android.support.v4.media.session.b
            public void Z(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo d0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void f0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public Bundle g0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat i() {
                g gVar = g.this;
                return MediaSessionCompat.c(gVar.e, gVar.g);
            }

            @Override // android.support.v4.media.session.b
            public void i0(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void j0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean k0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void l0(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent m0() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public int n0() {
                return g.this.k;
            }

            @Override // android.support.v4.media.session.b
            public void next() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void o0(long j) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void p0(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void r(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void r0(int i) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public int s0() {
                return g.this.h;
            }

            @Override // android.support.v4.media.session.b
            public void stop() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void t() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public void t0(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public boolean u0() {
                return g.this.i;
            }

            @Override // android.support.v4.media.session.b
            public void w() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public CharSequence x() {
                throw new AssertionError();
            }

            @Override // android.support.v4.media.session.b
            public String x0() {
                throw new AssertionError();
            }
        }

        g(Context context, String str, Bundle bundle) {
            this.a = android.support.v4.media.session.d.b(context, str);
            this.f37b = new Token(android.support.v4.media.session.d.c(this.a), new a(), bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void a() {
            this.f38c = true;
            android.support.v4.media.session.d.d(this.a);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void b(PendingIntent pendingIntent) {
            android.support.v4.media.session.d.h(this.a, pendingIntent);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void c(boolean z) {
            android.support.v4.media.session.d.e(this.a, z);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public Token d() {
            return this.f37b;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public androidx.media.a e() {
            return null;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void f(androidx.media.a aVar) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void g(PlaybackStateCompat playbackStateCompat) {
            this.e = playbackStateCompat;
            for (int iBeginBroadcast = this.f39d.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.a) this.f39d.getBroadcastItem(iBeginBroadcast)).G0(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.f39d.finishBroadcast();
            android.support.v4.media.session.d.i(this.a, playbackStateCompat == null ? null : playbackStateCompat.n());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void h(c cVar, Handler handler) {
            android.support.v4.media.session.d.f(this.a, cVar == null ? null : cVar.a, handler);
            if (cVar != null) {
                cVar.C(this, handler);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public PlaybackStateCompat i() {
            return this.e;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void j(int i) {
            android.support.v4.media.session.d.g(this.a, i);
        }

        public String k() {
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            return android.support.v4.media.session.f.b(this.a);
        }
    }

    static class h extends g {
        h(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.g, android.support.v4.media.session.MediaSessionCompat.d
        public final androidx.media.a e() {
            return new androidx.media.a(((MediaSession) this.a).getCurrentControllerInfo());
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.g, android.support.v4.media.session.MediaSessionCompat.d
        public void f(androidx.media.a aVar) {
        }
    }

    static class i implements d {
        int A;
        Bundle B;
        int C;
        int D;
        androidx.media.e E;
        private final ComponentName a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final PendingIntent f40b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b f41c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Token f42d;
        final String e;
        final String f;
        final AudioManager g;
        final RemoteControlClient h;
        private c k;
        volatile c p;
        private androidx.media.a q;
        int r;
        MediaMetadataCompat s;
        PlaybackStateCompat t;
        PendingIntent u;
        List<QueueItem> v;
        CharSequence w;
        int x;
        boolean y;
        int z;
        final Object i = new Object();
        final RemoteCallbackList<android.support.v4.media.session.a> j = new RemoteCallbackList<>();
        boolean l = false;
        boolean m = false;
        private boolean n = false;
        private boolean o = false;

        private static final class a {
            public final String a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final Bundle f43b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ResultReceiver f44c;

            public a(String str, Bundle bundle, ResultReceiver resultReceiver) {
                this.a = str;
                this.f43b = bundle;
                this.f44c = resultReceiver;
            }
        }

        class b extends b.a {
            b() {
            }

            @Override // android.support.v4.media.session.b
            public void A0() {
                G(3);
            }

            @Override // android.support.v4.media.session.b
            public void B(String str, Bundle bundle) {
                R0(20, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void C(int i, int i2, String str) {
                i.this.k(i, i2);
            }

            @Override // android.support.v4.media.session.b
            public void E() {
                G(12);
            }

            void E0(int i, Object obj, int i2) {
                i.this.o(i, i2, 0, obj, null);
            }

            @Override // android.support.v4.media.session.b
            public void F(android.support.v4.media.session.a aVar) {
                if (i.this.l) {
                    try {
                        aVar.e();
                    } catch (Exception unused) {
                    }
                } else {
                    i.this.j.register(aVar, new androidx.media.a("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
                }
            }

            void G(int i) {
                i.this.o(i, 0, 0, null, null);
            }

            @Override // android.support.v4.media.session.b
            public void H(RatingCompat ratingCompat, Bundle bundle) {
                R0(31, ratingCompat, bundle);
            }

            @Override // android.support.v4.media.session.b
            public MediaMetadataCompat I() {
                return i.this.s;
            }

            @Override // android.support.v4.media.session.b
            public void I0() {
                G(7);
            }

            @Override // android.support.v4.media.session.b
            public void J(String str, Bundle bundle) {
                R0(4, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void K(android.support.v4.media.session.a aVar) {
                i.this.j.unregister(aVar);
            }

            @Override // android.support.v4.media.session.b
            public void K0(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                c0(1, new a(str, bundle, resultReceiverWrapper.f28b));
            }

            @Override // android.support.v4.media.session.b
            public void L(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                E0(26, mediaDescriptionCompat, i);
            }

            @Override // android.support.v4.media.session.b
            public List<QueueItem> L0() {
                List<QueueItem> list;
                synchronized (i.this.i) {
                    list = i.this.v;
                }
                return list;
            }

            @Override // android.support.v4.media.session.b
            public String N() {
                return i.this.f;
            }

            void O(int i, int i2) {
                i.this.o(i, i2, 0, null, null);
            }

            @Override // android.support.v4.media.session.b
            public boolean P() {
                return false;
            }

            @Override // android.support.v4.media.session.b
            public void Q(boolean z) {
                c0(29, Boolean.valueOf(z));
            }

            @Override // android.support.v4.media.session.b
            public boolean Q0(KeyEvent keyEvent) {
                boolean z = (i.this.r & 1) != 0;
                if (z) {
                    c0(21, keyEvent);
                }
                return z;
            }

            @Override // android.support.v4.media.session.b
            public void R(RatingCompat ratingCompat) {
                c0(19, ratingCompat);
            }

            void R0(int i, Object obj, Bundle bundle) {
                i.this.o(i, 0, 0, obj, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void S(String str, Bundle bundle) {
                R0(8, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public long T() {
                long j;
                synchronized (i.this.i) {
                    j = i.this.r;
                }
                return j;
            }

            @Override // android.support.v4.media.session.b
            public void U(int i, int i2, String str) {
                i.this.v(i, i2);
            }

            @Override // android.support.v4.media.session.b
            public void V(Uri uri, Bundle bundle) {
                R0(6, uri, bundle);
            }

            @Override // android.support.v4.media.session.b
            public int W() {
                return i.this.z;
            }

            @Override // android.support.v4.media.session.b
            public void X(long j) {
                c0(11, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.b
            public void Y(boolean z) {
            }

            @Override // android.support.v4.media.session.b
            public void Z(String str, Bundle bundle) {
                R0(9, str, bundle);
            }

            void c0(int i, Object obj) {
                i.this.o(i, 0, 0, obj, null);
            }

            @Override // android.support.v4.media.session.b
            public ParcelableVolumeInfo d0() {
                int i;
                int i2;
                int streamMaxVolume;
                int streamVolume;
                synchronized (i.this.i) {
                    i = i.this.C;
                    i2 = i.this.D;
                    androidx.media.e eVar = i.this.E;
                    if (i == 2) {
                        eVar.a();
                        throw null;
                    }
                    streamMaxVolume = i.this.g.getStreamMaxVolume(i2);
                    streamVolume = i.this.g.getStreamVolume(i2);
                }
                return new ParcelableVolumeInfo(i, i2, 2, streamMaxVolume, streamVolume);
            }

            @Override // android.support.v4.media.session.b
            public void f0() {
                G(16);
            }

            @Override // android.support.v4.media.session.b
            public Bundle g0() {
                Bundle bundle;
                synchronized (i.this.i) {
                    bundle = i.this.B;
                }
                return bundle;
            }

            @Override // android.support.v4.media.session.b
            public PlaybackStateCompat i() {
                PlaybackStateCompat playbackStateCompat;
                MediaMetadataCompat mediaMetadataCompat;
                synchronized (i.this.i) {
                    playbackStateCompat = i.this.t;
                    mediaMetadataCompat = i.this.s;
                }
                return MediaSessionCompat.c(playbackStateCompat, mediaMetadataCompat);
            }

            @Override // android.support.v4.media.session.b
            public void i0(Uri uri, Bundle bundle) {
                R0(10, uri, bundle);
            }

            @Override // android.support.v4.media.session.b
            public void j0(MediaDescriptionCompat mediaDescriptionCompat) {
                c0(27, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public boolean k0() {
                return (i.this.r & 2) != 0;
            }

            @Override // android.support.v4.media.session.b
            public void l0(MediaDescriptionCompat mediaDescriptionCompat) {
                c0(25, mediaDescriptionCompat);
            }

            @Override // android.support.v4.media.session.b
            public PendingIntent m0() {
                PendingIntent pendingIntent;
                synchronized (i.this.i) {
                    pendingIntent = i.this.u;
                }
                return pendingIntent;
            }

            @Override // android.support.v4.media.session.b
            public int n0() {
                return i.this.A;
            }

            @Override // android.support.v4.media.session.b
            public void next() {
                G(14);
            }

            @Override // android.support.v4.media.session.b
            public void o0(long j) {
                c0(18, Long.valueOf(j));
            }

            @Override // android.support.v4.media.session.b
            public void p0(int i) {
                O(30, i);
            }

            @Override // android.support.v4.media.session.b
            public void r(int i) {
                O(23, i);
            }

            @Override // android.support.v4.media.session.b
            public void r0(int i) {
                O(28, i);
            }

            @Override // android.support.v4.media.session.b
            public int s0() {
                return i.this.x;
            }

            @Override // android.support.v4.media.session.b
            public void stop() {
                G(13);
            }

            @Override // android.support.v4.media.session.b
            public void t() {
                G(15);
            }

            @Override // android.support.v4.media.session.b
            public void t0(String str, Bundle bundle) {
                R0(5, str, bundle);
            }

            @Override // android.support.v4.media.session.b
            public boolean u0() {
                return i.this.y;
            }

            @Override // android.support.v4.media.session.b
            public void w() {
                G(17);
            }

            @Override // android.support.v4.media.session.b
            public CharSequence x() {
                return i.this.w;
            }

            @Override // android.support.v4.media.session.b
            public String x0() {
                return i.this.e;
            }
        }

        class c extends Handler {
            public c(Looper looper) {
                super(looper);
            }

            private void a(KeyEvent keyEvent, c cVar) {
                if (keyEvent == null || keyEvent.getAction() != 0) {
                    return;
                }
                PlaybackStateCompat playbackStateCompat = i.this.t;
                long jK = playbackStateCompat == null ? 0L : playbackStateCompat.k();
                int keyCode = keyEvent.getKeyCode();
                if (keyCode == 126) {
                    if ((jK & 4) != 0) {
                        cVar.i();
                    }
                    return;
                }
                if (keyCode == 127) {
                    if ((jK & 2) != 0) {
                        cVar.h();
                        return;
                    }
                    return;
                }
                switch (keyCode) {
                    case 86:
                        if ((jK & 1) != 0) {
                            cVar.B();
                        }
                        break;
                    case 87:
                        if ((jK & 32) != 0) {
                            cVar.y();
                        }
                        break;
                    case 88:
                        if ((jK & 16) != 0) {
                            cVar.z();
                        }
                        break;
                    case 89:
                        if ((jK & 8) != 0) {
                            cVar.r();
                        }
                        break;
                    case 90:
                        if ((jK & 64) != 0) {
                            cVar.f();
                        }
                        break;
                }
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                c cVar = i.this.p;
                if (cVar == null) {
                    return;
                }
                Bundle data = message.getData();
                MediaSessionCompat.a(data);
                i.this.f(new androidx.media.a(data.getString("data_calling_pkg"), data.getInt("data_calling_pid"), data.getInt("data_calling_uid")));
                Bundle bundle = data.getBundle("data_extras");
                MediaSessionCompat.a(bundle);
                try {
                    switch (message.what) {
                        case 1:
                            a aVar = (a) message.obj;
                            cVar.d(aVar.a, aVar.f43b, aVar.f44c);
                            break;
                        case 2:
                            i.this.k(message.arg1, 0);
                            break;
                        case 3:
                            cVar.m();
                            break;
                        case 4:
                            cVar.n((String) message.obj, bundle);
                            break;
                        case 5:
                            cVar.o((String) message.obj, bundle);
                            break;
                        case 6:
                            cVar.p((Uri) message.obj, bundle);
                            break;
                        case 7:
                            cVar.i();
                            break;
                        case 8:
                            cVar.j((String) message.obj, bundle);
                            break;
                        case 9:
                            cVar.k((String) message.obj, bundle);
                            break;
                        case 10:
                            cVar.l((Uri) message.obj, bundle);
                            break;
                        case 11:
                            cVar.A(((Long) message.obj).longValue());
                            break;
                        case 12:
                            cVar.h();
                            break;
                        case 13:
                            cVar.B();
                            break;
                        case 14:
                            cVar.y();
                            break;
                        case 15:
                            cVar.z();
                            break;
                        case 16:
                            cVar.f();
                            break;
                        case 17:
                            cVar.r();
                            break;
                        case 18:
                            cVar.s(((Long) message.obj).longValue());
                            break;
                        case 19:
                            cVar.u((RatingCompat) message.obj);
                            break;
                        case 20:
                            cVar.e((String) message.obj, bundle);
                            break;
                        case 21:
                            KeyEvent keyEvent = (KeyEvent) message.obj;
                            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                            intent.putExtra("android.intent.extra.KEY_EVENT", keyEvent);
                            if (!cVar.g(intent)) {
                                a(keyEvent, cVar);
                            }
                            break;
                        case 22:
                            i.this.v(message.arg1, 0);
                            break;
                        case 23:
                            cVar.w(message.arg1);
                            break;
                        case 25:
                            cVar.b((MediaDescriptionCompat) message.obj);
                            break;
                        case 26:
                            cVar.c((MediaDescriptionCompat) message.obj, message.arg1);
                            break;
                        case 27:
                            cVar.q((MediaDescriptionCompat) message.obj);
                            break;
                        case 28:
                            if (i.this.v != null) {
                                QueueItem queueItem = (message.arg1 < 0 || message.arg1 >= i.this.v.size()) ? null : i.this.v.get(message.arg1);
                                if (queueItem != null) {
                                    cVar.q(queueItem.l());
                                }
                            }
                            break;
                        case 29:
                            cVar.t(((Boolean) message.obj).booleanValue());
                            break;
                        case 30:
                            cVar.x(message.arg1);
                            break;
                        case 31:
                            cVar.v((RatingCompat) message.obj, bundle);
                            break;
                    }
                } finally {
                    i.this.f(null);
                }
            }
        }

        public i(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
            if (componentName == null) {
                throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
            }
            this.e = context.getPackageName();
            this.g = (AudioManager) context.getSystemService("audio");
            this.f = str;
            this.a = componentName;
            this.f40b = pendingIntent;
            this.f41c = new b();
            this.f42d = new Token(this.f41c);
            this.x = 0;
            this.C = 1;
            this.D = 3;
            this.h = new RemoteControlClient(pendingIntent);
        }

        private void q(MediaMetadataCompat mediaMetadataCompat) {
            for (int iBeginBroadcast = this.j.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.a) this.j.getBroadcastItem(iBeginBroadcast)).M(mediaMetadataCompat);
                } catch (RemoteException unused) {
                }
            }
            this.j.finishBroadcast();
        }

        private void r() {
            for (int iBeginBroadcast = this.j.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.a) this.j.getBroadcastItem(iBeginBroadcast)).e();
                } catch (RemoteException unused) {
                }
            }
            this.j.finishBroadcast();
            this.j.kill();
        }

        private void s(PlaybackStateCompat playbackStateCompat) {
            for (int iBeginBroadcast = this.j.beginBroadcast() - 1; iBeginBroadcast >= 0; iBeginBroadcast--) {
                try {
                    ((android.support.v4.media.session.a) this.j.getBroadcastItem(iBeginBroadcast)).G0(playbackStateCompat);
                } catch (RemoteException unused) {
                }
            }
            this.j.finishBroadcast();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void a() {
            this.m = false;
            this.l = true;
            x();
            r();
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void b(PendingIntent pendingIntent) {
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void c(boolean z) {
            if (z == this.m) {
                return;
            }
            this.m = z;
            if (x()) {
                t(this.s);
                g(this.t);
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public Token d() {
            return this.f42d;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public androidx.media.a e() {
            androidx.media.a aVar;
            synchronized (this.i) {
                aVar = this.q;
            }
            return aVar;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void f(androidx.media.a aVar) {
            synchronized (this.i) {
                this.q = aVar;
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void g(PlaybackStateCompat playbackStateCompat) {
            synchronized (this.i) {
                this.t = playbackStateCompat;
            }
            s(playbackStateCompat);
            if (this.m) {
                if (playbackStateCompat == null) {
                    this.h.setPlaybackState(0);
                    this.h.setTransportControlFlags(0);
                } else {
                    u(playbackStateCompat);
                    this.h.setTransportControlFlags(n(playbackStateCompat.k()));
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void h(c cVar, Handler handler) {
            this.p = cVar;
            if (cVar != null) {
                if (handler == null) {
                    handler = new Handler();
                }
                synchronized (this.i) {
                    if (this.k != null) {
                        this.k.removeCallbacksAndMessages(null);
                    }
                    this.k = new c(handler.getLooper());
                    this.p.C(this, handler);
                }
            }
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public PlaybackStateCompat i() {
            PlaybackStateCompat playbackStateCompat;
            synchronized (this.i) {
                playbackStateCompat = this.t;
            }
            return playbackStateCompat;
        }

        @Override // android.support.v4.media.session.MediaSessionCompat.d
        public void j(int i) {
            synchronized (this.i) {
                this.r = i;
            }
            x();
        }

        void k(int i, int i2) {
            if (this.C != 2) {
                this.g.adjustStreamVolume(this.D, i, i2);
                return;
            }
            androidx.media.e eVar = this.E;
            if (eVar != null) {
                eVar.b(i);
            }
        }

        RemoteControlClient.MetadataEditor l(Bundle bundle) {
            RemoteControlClient.MetadataEditor metadataEditorEditMetadata = this.h.editMetadata(true);
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

        int m(int i) {
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

        int n(long j) {
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

        void o(int i, int i2, int i3, Object obj, Bundle bundle) {
            synchronized (this.i) {
                if (this.k != null) {
                    Message messageObtainMessage = this.k.obtainMessage(i, i2, i3, obj);
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

        void p(PendingIntent pendingIntent, ComponentName componentName) {
            this.g.registerMediaButtonEventReceiver(componentName);
        }

        public void t(MediaMetadataCompat mediaMetadataCompat) {
            if (mediaMetadataCompat != null) {
                mediaMetadataCompat = new MediaMetadataCompat.b(mediaMetadataCompat, MediaSessionCompat.f23c).a();
            }
            synchronized (this.i) {
                this.s = mediaMetadataCompat;
            }
            q(mediaMetadataCompat);
            if (this.m) {
                l(mediaMetadataCompat == null ? null : mediaMetadataCompat.l()).apply();
            }
        }

        void u(PlaybackStateCompat playbackStateCompat) {
            this.h.setPlaybackState(m(playbackStateCompat.p()));
        }

        void v(int i, int i2) {
            if (this.C != 2) {
                this.g.setStreamVolume(this.D, i, i2);
                return;
            }
            androidx.media.e eVar = this.E;
            if (eVar != null) {
                eVar.c(i);
            }
        }

        void w(PendingIntent pendingIntent, ComponentName componentName) {
            this.g.unregisterMediaButtonEventReceiver(componentName);
        }

        boolean x() {
            if (this.m) {
                if (!this.n && (this.r & 1) != 0) {
                    p(this.f40b, this.a);
                    this.n = true;
                } else if (this.n && (this.r & 1) == 0) {
                    w(this.f40b, this.a);
                    this.n = false;
                }
                if (!this.o && (this.r & 2) != 0) {
                    this.g.registerRemoteControlClient(this.h);
                    this.o = true;
                    return true;
                }
                if (this.o && (this.r & 2) == 0) {
                    this.h.setPlaybackState(0);
                    this.g.unregisterRemoteControlClient(this.h);
                    this.o = false;
                }
            } else {
                if (this.n) {
                    w(this.f40b, this.a);
                    this.n = false;
                }
                if (this.o) {
                    this.h.setPlaybackState(0);
                    this.g.unregisterRemoteControlClient(this.h);
                    this.o = false;
                }
            }
            return false;
        }
    }

    public interface j {
        void a();
    }

    public MediaSessionCompat(Context context, String str) {
        this(context, str, null, null);
    }

    public static void a(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(MediaSessionCompat.class.getClassLoader());
        }
    }

    static PlaybackStateCompat c(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long jM = -1;
        if (playbackStateCompat.o() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.p() != 3 && playbackStateCompat.p() != 4 && playbackStateCompat.p() != 5) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.l() <= 0) {
            return playbackStateCompat;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long jM2 = ((long) (playbackStateCompat.m() * (jElapsedRealtime - r0))) + playbackStateCompat.o();
        if (mediaMetadataCompat != null && mediaMetadataCompat.j("android.media.metadata.DURATION")) {
            jM = mediaMetadataCompat.m("android.media.metadata.DURATION");
        }
        long j2 = (jM < 0 || jM2 <= jM) ? jM2 < 0 ? 0L : jM2 : jM;
        PlaybackStateCompat.b bVar = new PlaybackStateCompat.b(playbackStateCompat);
        bVar.c(playbackStateCompat.p(), j2, playbackStateCompat.m(), jElapsedRealtime);
        return bVar.a();
    }

    public Token b() {
        return this.a.d();
    }

    public void d() {
        this.a.a();
    }

    public void e(boolean z) {
        this.a.c(z);
        Iterator<j> it = this.f24b.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
    }

    public void f(c cVar) {
        g(cVar, null);
    }

    public void g(c cVar, Handler handler) {
        if (cVar == null) {
            this.a.h(null, null);
            return;
        }
        d dVar = this.a;
        if (handler == null) {
            handler = new Handler();
        }
        dVar.h(cVar, handler);
    }

    public void h(int i2) {
        this.a.j(i2);
    }

    public void i(PlaybackStateCompat playbackStateCompat) {
        this.a.g(playbackStateCompat);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent) {
        this(context, str, componentName, pendingIntent, null);
    }

    private MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        this.f24b = new ArrayList<>();
        if (context != null) {
            if (!TextUtils.isEmpty(str)) {
                componentName = componentName == null ? androidx.media.f.a.a(context) : componentName;
                if (componentName != null && pendingIntent == null) {
                    Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                    intent.setComponent(componentName);
                    pendingIntent = PendingIntent.getBroadcast(context, 0, intent, 0);
                }
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 28) {
                    this.a = new h(context, str, bundle);
                    f(new a(this));
                    this.a.b(pendingIntent);
                } else if (i2 >= 21) {
                    this.a = new g(context, str, bundle);
                    f(new b(this));
                    this.a.b(pendingIntent);
                } else if (i2 >= 19) {
                    this.a = new f(context, str, componentName, pendingIntent);
                } else if (i2 >= 18) {
                    this.a = new e(context, str, componentName, pendingIntent);
                } else {
                    this.a = new i(context, str, componentName, pendingIntent);
                }
                new MediaControllerCompat(context, this);
                if (f23c == 0) {
                    f23c = (int) (TypedValue.applyDimension(1, 320.0f, context.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        throw new IllegalArgumentException("context must not be null");
    }

    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaDescriptionCompat f25b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final long f26c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Object f27d;

        static class a implements Parcelable.Creator<QueueItem> {
            a() {
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
            this.f25b = mediaDescriptionCompat;
            this.f26c = j;
            this.f27d = obj;
        }

        public static QueueItem j(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            return new QueueItem(obj, MediaDescriptionCompat.j(d.c.a(obj)), d.c.b(obj));
        }

        public static List<QueueItem> k(List<?> list) {
            if (list == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            Iterator<?> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(j(it.next()));
            }
            return arrayList;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public MediaDescriptionCompat l() {
            return this.f25b;
        }

        public String toString() {
            return "MediaSession.QueueItem {Description=" + this.f25b + ", Id=" + this.f26c + " }";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.f25b.writeToParcel(parcel, i);
            parcel.writeLong(this.f26c);
        }

        QueueItem(Parcel parcel) {
            this.f25b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.f26c = parcel.readLong();
        }
    }
}
