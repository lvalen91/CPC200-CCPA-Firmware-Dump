package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.session.C0042g;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new C0034a();

    /* JADX INFO: renamed from: b */
    final int f120b;

    /* JADX INFO: renamed from: c */
    final long f121c;

    /* JADX INFO: renamed from: d */
    final long f122d;

    /* JADX INFO: renamed from: e */
    final float f123e;

    /* JADX INFO: renamed from: f */
    final long f124f;

    /* JADX INFO: renamed from: g */
    final int f125g;

    /* JADX INFO: renamed from: h */
    final CharSequence f126h;

    /* JADX INFO: renamed from: i */
    final long f127i;

    /* JADX INFO: renamed from: j */
    List<CustomAction> f128j;

    /* JADX INFO: renamed from: k */
    final long f129k;

    /* JADX INFO: renamed from: l */
    final Bundle f130l;

    /* JADX INFO: renamed from: m */
    private Object f131m;

    /* JADX INFO: renamed from: android.support.v4.media.session.PlaybackStateCompat$a */
    static class C0034a implements Parcelable.Creator<PlaybackStateCompat> {
        C0034a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat createFromParcel(Parcel parcel) {
            return new PlaybackStateCompat(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public PlaybackStateCompat[] newArray(int i) {
            return new PlaybackStateCompat[i];
        }
    }

    PlaybackStateCompat(int i, long j, long j2, float f, long j3, int i2, CharSequence charSequence, long j4, List<CustomAction> list, long j5, Bundle bundle) {
        this.f120b = i;
        this.f121c = j;
        this.f122d = j2;
        this.f123e = f;
        this.f124f = j3;
        this.f125g = i2;
        this.f126h = charSequence;
        this.f127i = j4;
        this.f128j = new ArrayList(list);
        this.f129k = j5;
        this.f130l = bundle;
    }

    /* JADX INFO: renamed from: j */
    public static PlaybackStateCompat m248j(Object obj) {
        ArrayList arrayList;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> listM289d = C0042g.m289d(obj);
        if (listM289d != null) {
            ArrayList arrayList2 = new ArrayList(listM289d.size());
            Iterator<Object> it = listM289d.iterator();
            while (it.hasNext()) {
                arrayList2.add(CustomAction.m255j(it.next()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(C0042g.m294i(obj), C0042g.m293h(obj), C0042g.m288c(obj), C0042g.m292g(obj), C0042g.m286a(obj), 0, C0042g.m290e(obj), C0042g.m291f(obj), arrayList, C0042g.m287b(obj), Build.VERSION.SDK_INT >= 22 ? C0043h.m301a(obj) : null);
        playbackStateCompat.f131m = obj;
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: k */
    public long m249k() {
        return this.f124f;
    }

    /* JADX INFO: renamed from: l */
    public long m250l() {
        return this.f127i;
    }

    /* JADX INFO: renamed from: m */
    public float m251m() {
        return this.f123e;
    }

    /* JADX INFO: renamed from: n */
    public Object m252n() {
        if (this.f131m == null && Build.VERSION.SDK_INT >= 21) {
            ArrayList arrayList = null;
            if (this.f128j != null) {
                arrayList = new ArrayList(this.f128j.size());
                Iterator<CustomAction> it = this.f128j.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().m256k());
                }
            }
            ArrayList arrayList2 = arrayList;
            if (Build.VERSION.SDK_INT >= 22) {
                this.f131m = C0043h.m302b(this.f120b, this.f121c, this.f122d, this.f123e, this.f124f, this.f126h, this.f127i, arrayList2, this.f129k, this.f130l);
            } else {
                this.f131m = C0042g.m295j(this.f120b, this.f121c, this.f122d, this.f123e, this.f124f, this.f126h, this.f127i, arrayList2, this.f129k);
            }
        }
        return this.f131m;
    }

    /* JADX INFO: renamed from: o */
    public long m253o() {
        return this.f121c;
    }

    /* JADX INFO: renamed from: p */
    public int m254p() {
        return this.f120b;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f120b + ", position=" + this.f121c + ", buffered position=" + this.f122d + ", speed=" + this.f123e + ", updated=" + this.f127i + ", actions=" + this.f124f + ", error code=" + this.f125g + ", error message=" + this.f126h + ", custom actions=" + this.f128j + ", active item id=" + this.f129k + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f120b);
        parcel.writeLong(this.f121c);
        parcel.writeFloat(this.f123e);
        parcel.writeLong(this.f127i);
        parcel.writeLong(this.f122d);
        parcel.writeLong(this.f124f);
        TextUtils.writeToParcel(this.f126h, parcel, i);
        parcel.writeTypedList(this.f128j);
        parcel.writeLong(this.f129k);
        parcel.writeBundle(this.f130l);
        parcel.writeInt(this.f125g);
    }

    /* JADX INFO: renamed from: android.support.v4.media.session.PlaybackStateCompat$b */
    public static final class C0035b {

        /* JADX INFO: renamed from: a */
        private final List<CustomAction> f137a;

        /* JADX INFO: renamed from: b */
        private int f138b;

        /* JADX INFO: renamed from: c */
        private long f139c;

        /* JADX INFO: renamed from: d */
        private long f140d;

        /* JADX INFO: renamed from: e */
        private float f141e;

        /* JADX INFO: renamed from: f */
        private long f142f;

        /* JADX INFO: renamed from: g */
        private int f143g;

        /* JADX INFO: renamed from: h */
        private CharSequence f144h;

        /* JADX INFO: renamed from: i */
        private long f145i;

        /* JADX INFO: renamed from: j */
        private long f146j;

        /* JADX INFO: renamed from: k */
        private Bundle f147k;

        public C0035b() {
            this.f137a = new ArrayList();
            this.f146j = -1L;
        }

        /* JADX INFO: renamed from: a */
        public PlaybackStateCompat m261a() {
            return new PlaybackStateCompat(this.f138b, this.f139c, this.f140d, this.f141e, this.f142f, this.f143g, this.f144h, this.f145i, this.f137a, this.f146j, this.f147k);
        }

        /* JADX INFO: renamed from: b */
        public C0035b m262b(int i, long j, float f) {
            m263c(i, j, f, SystemClock.elapsedRealtime());
            return this;
        }

        /* JADX INFO: renamed from: c */
        public C0035b m263c(int i, long j, float f, long j2) {
            this.f138b = i;
            this.f139c = j;
            this.f145i = j2;
            this.f141e = f;
            return this;
        }

        public C0035b(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.f137a = arrayList;
            this.f146j = -1L;
            this.f138b = playbackStateCompat.f120b;
            this.f139c = playbackStateCompat.f121c;
            this.f141e = playbackStateCompat.f123e;
            this.f145i = playbackStateCompat.f127i;
            this.f140d = playbackStateCompat.f122d;
            this.f142f = playbackStateCompat.f124f;
            this.f143g = playbackStateCompat.f125g;
            this.f144h = playbackStateCompat.f126h;
            List<CustomAction> list = playbackStateCompat.f128j;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.f146j = playbackStateCompat.f129k;
            this.f147k = playbackStateCompat.f130l;
        }
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new C0033a();

        /* JADX INFO: renamed from: b */
        private final String f132b;

        /* JADX INFO: renamed from: c */
        private final CharSequence f133c;

        /* JADX INFO: renamed from: d */
        private final int f134d;

        /* JADX INFO: renamed from: e */
        private final Bundle f135e;

        /* JADX INFO: renamed from: f */
        private Object f136f;

        /* JADX INFO: renamed from: android.support.v4.media.session.PlaybackStateCompat$CustomAction$a */
        static class C0033a implements Parcelable.Creator<CustomAction> {
            C0033a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CustomAction createFromParcel(Parcel parcel) {
                return new CustomAction(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public CustomAction[] newArray(int i) {
                return new CustomAction[i];
            }
        }

        CustomAction(String str, CharSequence charSequence, int i, Bundle bundle) {
            this.f132b = str;
            this.f133c = charSequence;
            this.f134d = i;
            this.f135e = bundle;
        }

        /* JADX INFO: renamed from: j */
        public static CustomAction m255j(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(C0042g.a.m296a(obj), C0042g.a.m299d(obj), C0042g.a.m298c(obj), C0042g.a.m297b(obj));
            customAction.f136f = obj;
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        /* JADX INFO: renamed from: k */
        public Object m256k() {
            if (this.f136f != null || Build.VERSION.SDK_INT < 21) {
                return this.f136f;
            }
            Object objM300e = C0042g.a.m300e(this.f132b, this.f133c, this.f134d, this.f135e);
            this.f136f = objM300e;
            return objM300e;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f133c) + ", mIcon=" + this.f134d + ", mExtras=" + this.f135e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f132b);
            TextUtils.writeToParcel(this.f133c, parcel, i);
            parcel.writeInt(this.f134d);
            parcel.writeBundle(this.f135e);
        }

        CustomAction(Parcel parcel) {
            this.f132b = parcel.readString();
            this.f133c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f134d = parcel.readInt();
            this.f135e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f120b = parcel.readInt();
        this.f121c = parcel.readLong();
        this.f123e = parcel.readFloat();
        this.f127i = parcel.readLong();
        this.f122d = parcel.readLong();
        this.f124f = parcel.readLong();
        this.f126h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f128j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f129k = parcel.readLong();
        this.f130l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.f125g = parcel.readInt();
    }
}
