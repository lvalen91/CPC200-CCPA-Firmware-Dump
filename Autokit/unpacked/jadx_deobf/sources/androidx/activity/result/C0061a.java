package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: androidx.activity.result.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
public final class C0061a implements Parcelable {
    public static final Parcelable.Creator<C0061a> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    private final int f206b;

    /* JADX INFO: renamed from: c */
    private final Intent f207c;

    /* JADX INFO: renamed from: androidx.activity.result.a$a */
    class a implements Parcelable.Creator<C0061a> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0061a createFromParcel(Parcel parcel) {
            return new C0061a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0061a[] newArray(int i) {
            return new C0061a[i];
        }
    }

    public C0061a(int i, Intent intent) {
        this.f206b = i;
        this.f207c = intent;
    }

    /* JADX INFO: renamed from: l */
    public static String m336l(int i) {
        return i != -1 ? i != 0 ? String.valueOf(i) : "RESULT_CANCELED" : "RESULT_OK";
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: j */
    public Intent m337j() {
        return this.f207c;
    }

    /* JADX INFO: renamed from: k */
    public int m338k() {
        return this.f206b;
    }

    public String toString() {
        return "ActivityResult{resultCode=" + m336l(this.f206b) + ", data=" + this.f207c + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f206b);
        parcel.writeInt(this.f207c == null ? 0 : 1);
        Intent intent = this.f207c;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }

    C0061a(Parcel parcel) {
        this.f206b = parcel.readInt();
        this.f207c = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }
}
