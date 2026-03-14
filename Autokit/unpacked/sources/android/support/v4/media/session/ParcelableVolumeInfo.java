package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new C0032a();

    /* JADX INFO: renamed from: b */
    public int f115b;

    /* JADX INFO: renamed from: c */
    public int f116c;

    /* JADX INFO: renamed from: d */
    public int f117d;

    /* JADX INFO: renamed from: e */
    public int f118e;

    /* JADX INFO: renamed from: f */
    public int f119f;

    /* JADX INFO: renamed from: android.support.v4.media.session.ParcelableVolumeInfo$a */
    static class C0032a implements Parcelable.Creator<ParcelableVolumeInfo> {
        C0032a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo createFromParcel(Parcel parcel) {
            return new ParcelableVolumeInfo(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ParcelableVolumeInfo[] newArray(int i) {
            return new ParcelableVolumeInfo[i];
        }
    }

    public ParcelableVolumeInfo(int i, int i2, int i3, int i4, int i5) {
        this.f115b = i;
        this.f116c = i2;
        this.f117d = i3;
        this.f118e = i4;
        this.f119f = i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f115b);
        parcel.writeInt(this.f117d);
        parcel.writeInt(this.f118e);
        parcel.writeInt(this.f119f);
        parcel.writeInt(this.f116c);
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f115b = parcel.readInt();
        this.f117d = parcel.readInt();
        this.f118e = parcel.readInt();
        this.f119f = parcel.readInt();
        this.f116c = parcel.readInt();
    }
}
