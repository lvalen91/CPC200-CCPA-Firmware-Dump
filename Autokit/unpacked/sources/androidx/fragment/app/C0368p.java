package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.AbstractC0366n;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.fragment.app.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
final class C0368p implements Parcelable {
    public static final Parcelable.Creator<C0368p> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    ArrayList<C0372t> f2343b;

    /* JADX INFO: renamed from: c */
    ArrayList<String> f2344c;

    /* JADX INFO: renamed from: d */
    C0350b[] f2345d;

    /* JADX INFO: renamed from: e */
    int f2346e;

    /* JADX INFO: renamed from: f */
    String f2347f;

    /* JADX INFO: renamed from: g */
    ArrayList<String> f2348g;

    /* JADX INFO: renamed from: h */
    ArrayList<Bundle> f2349h;

    /* JADX INFO: renamed from: i */
    ArrayList<AbstractC0366n.m> f2350i;

    /* JADX INFO: renamed from: androidx.fragment.app.p$a */
    class a implements Parcelable.Creator<C0368p> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0368p createFromParcel(Parcel parcel) {
            return new C0368p(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0368p[] newArray(int i) {
            return new C0368p[i];
        }
    }

    public C0368p() {
        this.f2347f = null;
        this.f2348g = new ArrayList<>();
        this.f2349h = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeTypedList(this.f2343b);
        parcel.writeStringList(this.f2344c);
        parcel.writeTypedArray(this.f2345d, i);
        parcel.writeInt(this.f2346e);
        parcel.writeString(this.f2347f);
        parcel.writeStringList(this.f2348g);
        parcel.writeTypedList(this.f2349h);
        parcel.writeTypedList(this.f2350i);
    }

    public C0368p(Parcel parcel) {
        this.f2347f = null;
        this.f2348g = new ArrayList<>();
        this.f2349h = new ArrayList<>();
        this.f2343b = parcel.createTypedArrayList(C0372t.CREATOR);
        this.f2344c = parcel.createStringArrayList();
        this.f2345d = (C0350b[]) parcel.createTypedArray(C0350b.CREATOR);
        this.f2346e = parcel.readInt();
        this.f2347f = parcel.readString();
        this.f2348g = parcel.createStringArrayList();
        this.f2349h = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f2350i = parcel.createTypedArrayList(AbstractC0366n.m.CREATOR);
    }
}
