package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.n;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
final class p implements Parcelable {
    public static final Parcelable.Creator<p> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    ArrayList<t> f753b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ArrayList<String> f754c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    b[] f755d;
    int e;
    String f;
    ArrayList<String> g;
    ArrayList<Bundle> h;
    ArrayList<n.m> i;

    class a implements Parcelable.Creator<p> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public p createFromParcel(Parcel parcel) {
            return new p(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public p[] newArray(int i) {
            return new p[i];
        }
    }

    public p() {
        this.f = null;
        this.g = new ArrayList<>();
        this.h = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f753b);
        parcel.writeStringList(this.f754c);
        parcel.writeTypedArray(this.f755d, i);
        parcel.writeInt(this.e);
        parcel.writeString(this.f);
        parcel.writeStringList(this.g);
        parcel.writeTypedList(this.h);
        parcel.writeTypedList(this.i);
    }

    public p(Parcel parcel) {
        this.f = null;
        this.g = new ArrayList<>();
        this.h = new ArrayList<>();
        this.f753b = parcel.createTypedArrayList(t.CREATOR);
        this.f754c = parcel.createStringArrayList();
        this.f755d = (b[]) parcel.createTypedArray(b.CREATOR);
        this.e = parcel.readInt();
        this.f = parcel.readString();
        this.g = parcel.createStringArrayList();
        this.h = parcel.createTypedArrayList(Bundle.CREATOR);
        this.i = parcel.createTypedArrayList(n.m.CREATOR);
    }
}
