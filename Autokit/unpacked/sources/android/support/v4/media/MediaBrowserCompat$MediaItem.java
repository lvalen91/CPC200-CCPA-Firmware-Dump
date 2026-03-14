package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MediaBrowserCompat$MediaItem implements Parcelable {
    public static final Parcelable.Creator<MediaBrowserCompat$MediaItem> CREATOR = new C0001a();

    /* JADX INFO: renamed from: b */
    private final int f5b;

    /* JADX INFO: renamed from: c */
    private final MediaDescriptionCompat f6c;

    /* JADX INFO: renamed from: android.support.v4.media.MediaBrowserCompat$MediaItem$a */
    static class C0001a implements Parcelable.Creator<MediaBrowserCompat$MediaItem> {
        C0001a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MediaBrowserCompat$MediaItem createFromParcel(Parcel parcel) {
            return new MediaBrowserCompat$MediaItem(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public MediaBrowserCompat$MediaItem[] newArray(int i) {
            return new MediaBrowserCompat$MediaItem[i];
        }
    }

    MediaBrowserCompat$MediaItem(Parcel parcel) {
        this.f5b = parcel.readInt();
        this.f6c = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return "MediaItem{mFlags=" + this.f5b + ", mDescription=" + this.f6c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f5b);
        this.f6c.writeToParcel(parcel, i);
    }
}
