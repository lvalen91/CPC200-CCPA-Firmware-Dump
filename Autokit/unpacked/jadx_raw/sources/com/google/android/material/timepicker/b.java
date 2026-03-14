package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int f2236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f2237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f2238d;
    int e;

    static class a implements Parcelable.Creator<b> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i) {
            return new b[i];
        }
    }

    public b() {
        this(0);
    }

    public static String j(Resources resources, CharSequence charSequence) {
        return k(resources, charSequence, "%02d");
    }

    public static String k(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    private static int l(int i) {
        return i >= 12 ? 1 : 0;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2237c == bVar.f2237c && this.f2238d == bVar.f2238d && this.f2236b == bVar.f2236b && this.e == bVar.e;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2236b), Integer.valueOf(this.f2237c), Integer.valueOf(this.f2238d), Integer.valueOf(this.e)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2237c);
        parcel.writeInt(this.f2238d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f2236b);
    }

    public b(int i) {
        this(0, 0, 10, i);
    }

    public b(int i, int i2, int i3, int i4) {
        this.f2237c = i;
        this.f2238d = i2;
        this.e = i3;
        this.f2236b = i4;
        l(i);
    }

    protected b(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
