package cn.manstep.phonemirrorBox.p085r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC0940b extends IInterface {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.b$a */
    public static abstract class a extends Binder implements InterfaceC0940b {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.b$a$a, reason: collision with other inner class name */
        private static class C1357a implements InterfaceC0940b {

            /* JADX INFO: renamed from: b */
            public static InterfaceC0940b f5928b;

            /* JADX INFO: renamed from: a */
            private IBinder f5929a;

            C1357a(IBinder iBinder) {
                this.f5929a = iBinder;
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0940b
            /* JADX INFO: renamed from: a0 */
            public void mo6938a0(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IConnectStateChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.f5929a.transact(1, parcelObtain, parcelObtain2, 0) || a.m6939G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6939G().mo6938a0(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f5929a;
            }
        }

        /* JADX INFO: renamed from: G */
        public static InterfaceC0940b m6939G() {
            return C1357a.f5928b;
        }

        /* JADX INFO: renamed from: u */
        public static InterfaceC0940b m6940u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.IConnectStateChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0940b)) ? new C1357a(iBinder) : (InterfaceC0940b) iInterfaceQueryLocalInterface;
        }
    }

    /* JADX INFO: renamed from: a0 */
    void mo6938a0(int i);
}
