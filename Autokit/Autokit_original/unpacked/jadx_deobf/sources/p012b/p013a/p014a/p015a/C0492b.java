package p012b.p013a.p014a.p015a;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.Parcelable;
import p012b.p013a.p014a.p015a.InterfaceC0491a;

/* JADX INFO: renamed from: b.a.a.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
public class C0492b implements Parcelable {
    public static final Parcelable.Creator<C0492b> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    final Handler f3079b = null;

    /* JADX INFO: renamed from: c */
    InterfaceC0491a f3080c;

    /* JADX INFO: renamed from: b.a.a.a.b$a */
    class a implements Parcelable.Creator<C0492b> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0492b createFromParcel(Parcel parcel) {
            return new C0492b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0492b[] newArray(int i) {
            return new C0492b[i];
        }
    }

    /* JADX INFO: renamed from: b.a.a.a.b$b */
    class b extends InterfaceC0491a.a {
        b() {
        }

        @Override // p012b.p013a.p014a.p015a.InterfaceC0491a
        /* JADX INFO: renamed from: M0 */
        public void mo4039M0(int i, Bundle bundle) {
            C0492b c0492b = C0492b.this;
            Handler handler = c0492b.f3079b;
            if (handler != null) {
                handler.post(c0492b.new c(i, bundle));
            } else {
                c0492b.mo1j(i, bundle);
            }
        }
    }

    /* JADX INFO: renamed from: b.a.a.a.b$c */
    class c implements Runnable {

        /* JADX INFO: renamed from: b */
        final int f3082b;

        /* JADX INFO: renamed from: c */
        final Bundle f3083c;

        c(int i, Bundle bundle) {
            this.f3082b = i;
            this.f3083c = bundle;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0492b.this.mo1j(this.f3082b, this.f3083c);
        }
    }

    C0492b(Parcel parcel) {
        this.f3080c = InterfaceC0491a.a.m4041u(parcel.readStrongBinder());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: j */
    protected void mo1j(int i, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            if (this.f3080c == null) {
                this.f3080c = new b();
            }
            parcel.writeStrongBinder(this.f3080c.asBinder());
        }
    }
}
