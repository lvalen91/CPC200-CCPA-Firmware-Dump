package com.yalantis.ucrop.model;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AspectRatio implements Parcelable {
    public static final Parcelable.Creator<AspectRatio> CREATOR = new Parcelable.Creator<AspectRatio>() { // from class: com.yalantis.ucrop.model.AspectRatio.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AspectRatio createFromParcel(Parcel parcel) {
            return new AspectRatio(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AspectRatio[] newArray(int i) {
            return new AspectRatio[i];
        }
    };
    private final String mAspectRatioTitle;
    private final float mAspectRatioX;
    private final float mAspectRatioY;

    public AspectRatio(String str, float f, float f2) {
        this.mAspectRatioTitle = str;
        this.mAspectRatioX = f;
        this.mAspectRatioY = f2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAspectRatioTitle() {
        return this.mAspectRatioTitle;
    }

    public float getAspectRatioX() {
        return this.mAspectRatioX;
    }

    public float getAspectRatioY() {
        return this.mAspectRatioY;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.mAspectRatioTitle);
        parcel.writeFloat(this.mAspectRatioX);
        parcel.writeFloat(this.mAspectRatioY);
    }

    protected AspectRatio(Parcel parcel) {
        this.mAspectRatioTitle = parcel.readString();
        this.mAspectRatioX = parcel.readFloat();
        this.mAspectRatioY = parcel.readFloat();
    }
}
