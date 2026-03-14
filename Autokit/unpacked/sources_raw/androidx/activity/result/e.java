package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
public final class e implements Parcelable {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final IntentSender f91b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Intent f92c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f93d;
    private final int e;

    class a implements Parcelable.Creator<e> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public e[] newArray(int i) {
            return new e[i];
        }
    }

    public static final class b {
        private IntentSender a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Intent f94b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f95c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f96d;

        public b(IntentSender intentSender) {
            this.a = intentSender;
        }

        public e a() {
            return new e(this.a, this.f94b, this.f95c, this.f96d);
        }

        public b b(Intent intent) {
            this.f94b = intent;
            return this;
        }

        public b c(int i, int i2) {
            this.f96d = i;
            this.f95c = i2;
            return this;
        }
    }

    e(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f91b = intentSender;
        this.f92c = intent;
        this.f93d = i;
        this.e = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent j() {
        return this.f92c;
    }

    public int k() {
        return this.f93d;
    }

    public int l() {
        return this.e;
    }

    public IntentSender m() {
        return this.f91b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f91b, i);
        parcel.writeParcelable(this.f92c, i);
        parcel.writeInt(this.f93d);
        parcel.writeInt(this.e);
    }

    e(Parcel parcel) {
        this.f91b = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f92c = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f93d = parcel.readInt();
        this.e = parcel.readInt();
    }
}
