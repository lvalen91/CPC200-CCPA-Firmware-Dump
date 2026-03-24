package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f45b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f46c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f47d;
    public int e;
    public int f;

    static class a implements Parcelable.Creator<ParcelableVolumeInfo> {
        a() {
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
        this.f45b = i;
        this.f46c = i2;
        this.f47d = i3;
        this.e = i4;
        this.f = i5;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f45b);
        parcel.writeInt(this.f47d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.f46c);
    }

    public ParcelableVolumeInfo(Parcel parcel) {
        this.f45b = parcel.readInt();
        this.f47d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.f46c = parcel.readInt();
    }
}
