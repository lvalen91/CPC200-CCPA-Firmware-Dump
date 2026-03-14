package android.support.v4.media.session;

import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.v4.media.session.g;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f48b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final long f49c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final long f50d;
    final float e;
    final long f;
    final int g;
    final CharSequence h;
    final long i;
    List<CustomAction> j;
    final long k;
    final Bundle l;
    private Object m;

    static class a implements Parcelable.Creator<PlaybackStateCompat> {
        a() {
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
        this.f48b = i;
        this.f49c = j;
        this.f50d = j2;
        this.e = f;
        this.f = j3;
        this.g = i2;
        this.h = charSequence;
        this.i = j4;
        this.j = new ArrayList(list);
        this.k = j5;
        this.l = bundle;
    }

    public static PlaybackStateCompat j(Object obj) {
        ArrayList arrayList;
        if (obj == null || Build.VERSION.SDK_INT < 21) {
            return null;
        }
        List<Object> listD = g.d(obj);
        if (listD != null) {
            ArrayList arrayList2 = new ArrayList(listD.size());
            Iterator<Object> it = listD.iterator();
            while (it.hasNext()) {
                arrayList2.add(CustomAction.j(it.next()));
            }
            arrayList = arrayList2;
        } else {
            arrayList = null;
        }
        PlaybackStateCompat playbackStateCompat = new PlaybackStateCompat(g.i(obj), g.h(obj), g.c(obj), g.g(obj), g.a(obj), 0, g.e(obj), g.f(obj), arrayList, g.b(obj), Build.VERSION.SDK_INT >= 22 ? h.a(obj) : null);
        playbackStateCompat.m = obj;
        return playbackStateCompat;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public long k() {
        return this.f;
    }

    public long l() {
        return this.i;
    }

    public float m() {
        return this.e;
    }

    public Object n() {
        if (this.m == null && Build.VERSION.SDK_INT >= 21) {
            ArrayList arrayList = null;
            if (this.j != null) {
                arrayList = new ArrayList(this.j.size());
                Iterator<CustomAction> it = this.j.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().k());
                }
            }
            ArrayList arrayList2 = arrayList;
            if (Build.VERSION.SDK_INT >= 22) {
                this.m = h.b(this.f48b, this.f49c, this.f50d, this.e, this.f, this.h, this.i, arrayList2, this.k, this.l);
            } else {
                this.m = g.j(this.f48b, this.f49c, this.f50d, this.e, this.f, this.h, this.i, arrayList2, this.k);
            }
        }
        return this.m;
    }

    public long o() {
        return this.f49c;
    }

    public int p() {
        return this.f48b;
    }

    public String toString() {
        return "PlaybackState {state=" + this.f48b + ", position=" + this.f49c + ", buffered position=" + this.f50d + ", speed=" + this.e + ", updated=" + this.i + ", actions=" + this.f + ", error code=" + this.g + ", error message=" + this.h + ", custom actions=" + this.j + ", active item id=" + this.k + "}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f48b);
        parcel.writeLong(this.f49c);
        parcel.writeFloat(this.e);
        parcel.writeLong(this.i);
        parcel.writeLong(this.f50d);
        parcel.writeLong(this.f);
        TextUtils.writeToParcel(this.h, parcel, i);
        parcel.writeTypedList(this.j);
        parcel.writeLong(this.k);
        parcel.writeBundle(this.l);
        parcel.writeInt(this.g);
    }

    public static final class b {
        private final List<CustomAction> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f54b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f55c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f56d;
        private float e;
        private long f;
        private int g;
        private CharSequence h;
        private long i;
        private long j;
        private Bundle k;

        public b() {
            this.a = new ArrayList();
            this.j = -1L;
        }

        public PlaybackStateCompat a() {
            return new PlaybackStateCompat(this.f54b, this.f55c, this.f56d, this.e, this.f, this.g, this.h, this.i, this.a, this.j, this.k);
        }

        public b b(int i, long j, float f) {
            c(i, j, f, SystemClock.elapsedRealtime());
            return this;
        }

        public b c(int i, long j, float f, long j2) {
            this.f54b = i;
            this.f55c = j;
            this.i = j2;
            this.e = f;
            return this;
        }

        public b(PlaybackStateCompat playbackStateCompat) {
            ArrayList arrayList = new ArrayList();
            this.a = arrayList;
            this.j = -1L;
            this.f54b = playbackStateCompat.f48b;
            this.f55c = playbackStateCompat.f49c;
            this.e = playbackStateCompat.e;
            this.i = playbackStateCompat.i;
            this.f56d = playbackStateCompat.f50d;
            this.f = playbackStateCompat.f;
            this.g = playbackStateCompat.g;
            this.h = playbackStateCompat.h;
            List<CustomAction> list = playbackStateCompat.j;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.j = playbackStateCompat.k;
            this.k = playbackStateCompat.l;
        }
    }

    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final String f51b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final CharSequence f52c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f53d;
        private final Bundle e;
        private Object f;

        static class a implements Parcelable.Creator<CustomAction> {
            a() {
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
            this.f51b = str;
            this.f52c = charSequence;
            this.f53d = i;
            this.e = bundle;
        }

        public static CustomAction j(Object obj) {
            if (obj == null || Build.VERSION.SDK_INT < 21) {
                return null;
            }
            CustomAction customAction = new CustomAction(g.a.a(obj), g.a.d(obj), g.a.c(obj), g.a.b(obj));
            customAction.f = obj;
            return customAction;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Object k() {
            if (this.f != null || Build.VERSION.SDK_INT < 21) {
                return this.f;
            }
            Object objE = g.a.e(this.f51b, this.f52c, this.f53d, this.e);
            this.f = objE;
            return objE;
        }

        public String toString() {
            return "Action:mName='" + ((Object) this.f52c) + ", mIcon=" + this.f53d + ", mExtras=" + this.e;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f51b);
            TextUtils.writeToParcel(this.f52c, parcel, i);
            parcel.writeInt(this.f53d);
            parcel.writeBundle(this.e);
        }

        CustomAction(Parcel parcel) {
            this.f51b = parcel.readString();
            this.f52c = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f53d = parcel.readInt();
            this.e = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        }
    }

    PlaybackStateCompat(Parcel parcel) {
        this.f48b = parcel.readInt();
        this.f49c = parcel.readLong();
        this.e = parcel.readFloat();
        this.i = parcel.readLong();
        this.f50d = parcel.readLong();
        this.f = parcel.readLong();
        this.h = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.j = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.k = parcel.readLong();
        this.l = parcel.readBundle(MediaSessionCompat.class.getClassLoader());
        this.g = parcel.readInt();
    }
}
