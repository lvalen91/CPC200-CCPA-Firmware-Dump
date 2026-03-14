package cn.manstep.phonemirrorBox.p085r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC0943e extends IInterface {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.e$a */
    public static abstract class a extends Binder implements InterfaceC0943e {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.e$a$a, reason: collision with other inner class name */
        private static class C1359a implements InterfaceC0943e {

            /* JADX INFO: renamed from: b */
            public static InterfaceC0943e f5932b;

            /* JADX INFO: renamed from: a */
            private IBinder f5933a;

            C1359a(IBinder iBinder) {
                this.f5933a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f5933a;
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0943e
            /* JADX INFO: renamed from: w0 */
            public void mo6967w0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IVaStateChangeListener");
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.f5933a.transact(1, parcelObtain, parcelObtain2, 0) || a.m6968G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6968G().mo6967w0(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* JADX INFO: renamed from: G */
        public static InterfaceC0943e m6968G() {
            return C1359a.f5932b;
        }

        /* JADX INFO: renamed from: u */
        public static InterfaceC0943e m6969u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.IVaStateChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0943e)) ? new C1359a(iBinder) : (InterfaceC0943e) iInterfaceQueryLocalInterface;
        }
    }

    /* JADX INFO: renamed from: w0 */
    void mo6967w0(boolean z);
}
