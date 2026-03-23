package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.C1075a;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.material.datepicker.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1080f implements C1075a.c {
    public static final Parcelable.Creator<C1080f> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    private final long f6878b;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.f$a */
    static class a implements Parcelable.Creator<C1080f> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1080f createFromParcel(Parcel parcel) {
            return new C1080f(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C1080f[] newArray(int i) {
            return new C1080f[i];
        }
    }

    /* synthetic */ C1080f(long j, a aVar) {
        this(j);
    }

    /* JADX INFO: renamed from: j */
    public static C1080f m8379j(long j) {
        return new C1080f(j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.C1075a.c
    /* JADX INFO: renamed from: e */
    public boolean mo8361e(long j) {
        return j >= this.f6878b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1080f) && this.f6878b == ((C1080f) obj).f6878b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f6878b)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f6878b);
    }

    private C1080f(long j) {
        this.f6878b = j;
    }
}
