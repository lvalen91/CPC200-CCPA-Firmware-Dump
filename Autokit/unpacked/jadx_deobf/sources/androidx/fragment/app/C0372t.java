package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: androidx.fragment.app.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
final class C0372t implements Parcelable {
    public static final Parcelable.Creator<C0372t> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    final String f2359b;

    /* JADX INFO: renamed from: c */
    final String f2360c;

    /* JADX INFO: renamed from: d */
    final boolean f2361d;

    /* JADX INFO: renamed from: e */
    final int f2362e;

    /* JADX INFO: renamed from: f */
    final int f2363f;

    /* JADX INFO: renamed from: g */
    final String f2364g;

    /* JADX INFO: renamed from: h */
    final boolean f2365h;

    /* JADX INFO: renamed from: i */
    final boolean f2366i;

    /* JADX INFO: renamed from: j */
    final boolean f2367j;

    /* JADX INFO: renamed from: k */
    final Bundle f2368k;

    /* JADX INFO: renamed from: l */
    final boolean f2369l;

    /* JADX INFO: renamed from: m */
    final int f2370m;

    /* JADX INFO: renamed from: n */
    Bundle f2371n;

    /* JADX INFO: renamed from: androidx.fragment.app.t$a */
    class a implements Parcelable.Creator<C0372t> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0372t createFromParcel(Parcel parcel) {
            return new C0372t(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0372t[] newArray(int i) {
            return new C0372t[i];
        }
    }

    C0372t(Fragment fragment) {
        this.f2359b = fragment.getClass().getName();
        this.f2360c = fragment.f2076g;
        this.f2361d = fragment.f2084o;
        this.f2362e = fragment.f2093x;
        this.f2363f = fragment.f2094y;
        this.f2364g = fragment.f2095z;
        this.f2365h = fragment.f2048C;
        this.f2366i = fragment.f2083n;
        this.f2367j = fragment.f2047B;
        this.f2368k = fragment.f2077h;
        this.f2369l = fragment.f2046A;
        this.f2370m = fragment.f2063R.ordinal();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f2359b);
        sb.append(" (");
        sb.append(this.f2360c);
        sb.append(")}:");
        if (this.f2361d) {
            sb.append(" fromLayout");
        }
        if (this.f2363f != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.f2363f));
        }
        String str = this.f2364g;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(this.f2364g);
        }
        if (this.f2365h) {
            sb.append(" retainInstance");
        }
        if (this.f2366i) {
            sb.append(" removing");
        }
        if (this.f2367j) {
            sb.append(" detached");
        }
        if (this.f2369l) {
            sb.append(" hidden");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f2359b);
        parcel.writeString(this.f2360c);
        parcel.writeInt(this.f2361d ? 1 : 0);
        parcel.writeInt(this.f2362e);
        parcel.writeInt(this.f2363f);
        parcel.writeString(this.f2364g);
        parcel.writeInt(this.f2365h ? 1 : 0);
        parcel.writeInt(this.f2366i ? 1 : 0);
        parcel.writeInt(this.f2367j ? 1 : 0);
        parcel.writeBundle(this.f2368k);
        parcel.writeInt(this.f2369l ? 1 : 0);
        parcel.writeBundle(this.f2371n);
        parcel.writeInt(this.f2370m);
    }

    C0372t(Parcel parcel) {
        this.f2359b = parcel.readString();
        this.f2360c = parcel.readString();
        this.f2361d = parcel.readInt() != 0;
        this.f2362e = parcel.readInt();
        this.f2363f = parcel.readInt();
        this.f2364g = parcel.readString();
        this.f2365h = parcel.readInt() != 0;
        this.f2366i = parcel.readInt() != 0;
        this.f2367j = parcel.readInt() != 0;
        this.f2368k = parcel.readBundle();
        this.f2369l = parcel.readInt() != 0;
        this.f2371n = parcel.readBundle();
        this.f2370m = parcel.readInt();
    }
}
