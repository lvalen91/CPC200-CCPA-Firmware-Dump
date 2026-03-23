package p012b.p013a.p014a.p015a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: b.a.a.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC0491a extends IInterface {

    /* JADX INFO: renamed from: b.a.a.a.a$a */
    public static abstract class a extends Binder implements InterfaceC0491a {

        /* JADX INFO: renamed from: b.a.a.a.a$a$a, reason: collision with other inner class name */
        private static class C1346a implements InterfaceC0491a {

            /* JADX INFO: renamed from: b */
            public static InterfaceC0491a f3077b;

            /* JADX INFO: renamed from: a */
            private IBinder f3078a;

            C1346a(IBinder iBinder) {
                this.f3078a = iBinder;
            }

            @Override // p012b.p013a.p014a.p015a.InterfaceC0491a
            /* JADX INFO: renamed from: M0 */
            public void mo4039M0(int i, Bundle bundle) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.os.IResultReceiver");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f3078a.transact(1, parcelObtain, null, 1) || a.m4040G() == null) {
                        return;
                    }
                    a.m4040G().mo4039M0(i, bundle);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3078a;
            }
        }

        public a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        /* JADX INFO: renamed from: G */
        public static InterfaceC0491a m4040G() {
            return C1346a.f3077b;
        }

        /* JADX INFO: renamed from: u */
        public static InterfaceC0491a m4041u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0491a)) ? new C1346a(iBinder) : (InterfaceC0491a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                mo4039M0(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("android.support.v4.os.IResultReceiver");
            return true;
        }
    }

    /* JADX INFO: renamed from: M0 */
    void mo4039M0(int i, Bundle bundle);
}
