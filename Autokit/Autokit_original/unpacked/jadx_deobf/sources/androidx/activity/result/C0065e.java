package androidx.activity.result;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: androidx.activity.result.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
public final class C0065e implements Parcelable {
    public static final Parcelable.Creator<C0065e> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    private final IntentSender f208b;

    /* JADX INFO: renamed from: c */
    private final Intent f209c;

    /* JADX INFO: renamed from: d */
    private final int f210d;

    /* JADX INFO: renamed from: e */
    private final int f211e;

    /* JADX INFO: renamed from: androidx.activity.result.e$a */
    class a implements Parcelable.Creator<C0065e> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0065e createFromParcel(Parcel parcel) {
            return new C0065e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0065e[] newArray(int i) {
            return new C0065e[i];
        }
    }

    /* JADX INFO: renamed from: androidx.activity.result.e$b */
    public static final class b {

        /* JADX INFO: renamed from: a */
        private IntentSender f212a;

        /* JADX INFO: renamed from: b */
        private Intent f213b;

        /* JADX INFO: renamed from: c */
        private int f214c;

        /* JADX INFO: renamed from: d */
        private int f215d;

        public b(IntentSender intentSender) {
            this.f212a = intentSender;
        }

        /* JADX INFO: renamed from: a */
        public C0065e m349a() {
            return new C0065e(this.f212a, this.f213b, this.f214c, this.f215d);
        }

        /* JADX INFO: renamed from: b */
        public b m350b(Intent intent) {
            this.f213b = intent;
            return this;
        }

        /* JADX INFO: renamed from: c */
        public b m351c(int i, int i2) {
            this.f215d = i;
            this.f214c = i2;
            return this;
        }
    }

    C0065e(IntentSender intentSender, Intent intent, int i, int i2) {
        this.f208b = intentSender;
        this.f209c = intent;
        this.f210d = i;
        this.f211e = i2;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: j */
    public Intent m343j() {
        return this.f209c;
    }

    /* JADX INFO: renamed from: k */
    public int m344k() {
        return this.f210d;
    }

    /* JADX INFO: renamed from: l */
    public int m345l() {
        return this.f211e;
    }

    /* JADX INFO: renamed from: m */
    public IntentSender m346m() {
        return this.f208b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f208b, i);
        parcel.writeParcelable(this.f209c, i);
        parcel.writeInt(this.f210d);
        parcel.writeInt(this.f211e);
    }

    C0065e(Parcel parcel) {
        this.f208b = (IntentSender) parcel.readParcelable(IntentSender.class.getClassLoader());
        this.f209c = (Intent) parcel.readParcelable(Intent.class.getClassLoader());
        this.f210d = parcel.readInt();
        this.f211e = parcel.readInt();
    }
}
