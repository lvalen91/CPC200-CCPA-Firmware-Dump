package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.a;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f implements a.c {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f2084b;

    static class a implements Parcelable.Creator<f> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public f createFromParcel(Parcel parcel) {
            return new f(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public f[] newArray(int i) {
            return new f[i];
        }
    }

    /* synthetic */ f(long j, a aVar) {
        this(j);
    }

    public static f j(long j) {
        return new f(j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.a.c
    public boolean e(long j) {
        return j >= this.f2084b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && this.f2084b == ((f) obj).f2084b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f2084b)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2084b);
    }

    private f(long j) {
        this.f2084b = j;
    }
}
