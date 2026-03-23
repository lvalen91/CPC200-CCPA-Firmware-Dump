package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0007a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f89b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Intent f90c;

    /* JADX INFO: renamed from: androidx.activity.result.a$a, reason: collision with other inner class name */
    class C0007a implements Parcelable.Creator<a> {
        C0007a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }
    }

    public a(int i, Intent intent) {
        this.f89b = i;
        this.f90c = intent;
    }

    public static String l(int i) {
        return i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent j() {
        return this.f90c;
    }

    public int k() {
        return this.f89b;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + l(this.f89b) + ", data=" + this.f90c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f89b);
        parcel.writeInt(this.f90c == null ? 0 : 1);
        Intent intent = this.f90c;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }

    a(Parcel parcel) {
        this.f89b = parcel.readInt();
        this.f90c = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
