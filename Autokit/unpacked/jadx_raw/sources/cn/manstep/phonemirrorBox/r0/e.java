package cn.manstep.phonemirrorBox.r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface e extends IInterface {

    public static abstract class a extends Binder implements e {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.e$a$a, reason: collision with other inner class name */
        private static class C0099a implements e {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static e f1826b;
            private IBinder a;

            C0099a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // cn.manstep.phonemirrorBox.r0.e
            public void w0(boolean z) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IVaStateChangeListener");
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.a.transact(1, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().w0(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static e G() {
            return C0099a.f1826b;
        }

        public static e u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.IVaStateChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof e)) ? new C0099a(iBinder) : (e) iInterfaceQueryLocalInterface;
        }
    }

    void w0(boolean z);
}
