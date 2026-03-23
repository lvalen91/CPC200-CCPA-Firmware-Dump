package b.a.a.a;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: b.a.a.a.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0041a extends Binder implements a {

        /* JADX INFO: renamed from: b.a.a.a.a$a$a, reason: collision with other inner class name */
        private static class C0042a implements a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static a f1001b;
            private IBinder a;

            C0042a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // b.a.a.a.a
            public void M0(int i, Bundle bundle) {
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
                    if (this.a.transact(1, parcelObtain, null, 1) || AbstractBinderC0041a.G() == null) {
                        return;
                    }
                    AbstractBinderC0041a.G().M0(i, bundle);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }
        }

        public AbstractBinderC0041a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
        }

        public static a G() {
            return C0042a.f1001b;
        }

        public static a u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0042a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1) {
                parcel.enforceInterface("android.support.v4.os.IResultReceiver");
                M0(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                return true;
            }
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("android.support.v4.os.IResultReceiver");
            return true;
        }
    }

    void M0(int i, Bundle bundle);
}
