package b.a.a.a;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import b.a.a.a.a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Handler f1002b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    b.a.a.a.a f1003c;

    class a implements Parcelable.Creator<b> {
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

    /* JADX INFO: renamed from: b.a.a.a.b$b, reason: collision with other inner class name */
    class BinderC0043b extends a.AbstractBinderC0041a {
        BinderC0043b() {
        }

        @Override // b.a.a.a.a
        public void M0(int i, Bundle bundle) {
            b bVar = b.this;
            Handler handler = bVar.f1002b;
            if (handler != null) {
                handler.post(bVar.new c(i, bundle));
            } else {
                bVar.j(i, bundle);
            }
        }
    }

    class c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Bundle f1005c;

        c(int i, Bundle bundle) {
            this.f1004b = i;
            this.f1005c = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.j(this.f1004b, this.f1005c);
        }
    }

    b(Parcel parcel) {
        this.f1003c = a.AbstractBinderC0041a.u(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected void j(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f1003c == null) {
                this.f1003c = new BinderC0043b();
            }
            parcel.writeStrongBinder(this.f1003c.asBinder());
        }
    }
}
