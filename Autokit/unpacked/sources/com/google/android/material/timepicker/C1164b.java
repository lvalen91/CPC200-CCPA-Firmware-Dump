package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: renamed from: com.google.android.material.timepicker.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1164b implements Parcelable {
    public static final Parcelable.Creator<C1164b> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    final int f7477b;

    /* JADX INFO: renamed from: c */
    int f7478c;

    /* JADX INFO: renamed from: d */
    int f7479d;

    /* JADX INFO: renamed from: e */
    int f7480e;

    /* JADX INFO: renamed from: com.google.android.material.timepicker.b$a */
    static class a implements Parcelable.Creator<C1164b> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1164b createFromParcel(Parcel parcel) {
            return new C1164b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C1164b[] newArray(int i) {
            return new C1164b[i];
        }
    }

    public C1164b() {
        this(0);
    }

    /* JADX INFO: renamed from: j */
    public static String m8995j(Resources resources, CharSequence charSequence) {
        return m8996k(resources, charSequence, "%02d");
    }

    /* JADX INFO: renamed from: k */
    public static String m8996k(Resources resources, CharSequence charSequence, String str) {
        return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
    }

    /* JADX INFO: renamed from: l */
    private static int m8997l(int i) {
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
        if (!(obj instanceof C1164b)) {
            return false;
        }
        C1164b c1164b = (C1164b) obj;
        return this.f7478c == c1164b.f7478c && this.f7479d == c1164b.f7479d && this.f7477b == c1164b.f7477b && this.f7480e == c1164b.f7480e;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f7477b), Integer.valueOf(this.f7478c), Integer.valueOf(this.f7479d), Integer.valueOf(this.f7480e)});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f7478c);
        parcel.writeInt(this.f7479d);
        parcel.writeInt(this.f7480e);
        parcel.writeInt(this.f7477b);
    }

    public C1164b(int i) {
        this(0, 0, 10, i);
    }

    public C1164b(int i, int i2, int i3, int i4) {
        this.f7478c = i;
        this.f7479d = i2;
        this.f7480e = i3;
        this.f7477b = i4;
        m8997l(i);
    }

    protected C1164b(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
