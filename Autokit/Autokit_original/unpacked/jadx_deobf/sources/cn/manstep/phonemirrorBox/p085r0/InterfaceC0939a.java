package cn.manstep.phonemirrorBox.p085r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC0939a extends IInterface {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.a$a */
    public static abstract class a extends Binder implements InterfaceC0939a {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.a$a$a, reason: collision with other inner class name */
        private static class C1356a implements InterfaceC0939a {

            /* JADX INFO: renamed from: b */
            public static InterfaceC0939a f5926b;

            /* JADX INFO: renamed from: a */
            private IBinder f5927a;

            C1356a(IBinder iBinder) {
                this.f5927a = iBinder;
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0939a
            /* JADX INFO: renamed from: D */
            public void mo6932D(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.f5927a.transact(3, parcelObtain, parcelObtain2, 0) || a.m6936G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6936G().mo6932D(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0939a
            /* JADX INFO: renamed from: J0 */
            public void mo6933J0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5927a.transact(2, parcelObtain, parcelObtain2, 0) || a.m6936G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6936G().mo6933J0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f5927a;
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0939a
            /* JADX INFO: renamed from: n */
            public void mo6934n(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5927a.transact(1, parcelObtain, parcelObtain2, 0) || a.m6936G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6936G().mo6934n(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0939a
            /* JADX INFO: renamed from: v */
            public void mo6935v(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.f5927a.transact(4, parcelObtain, parcelObtain2, 0) || a.m6936G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6936G().mo6935v(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* JADX INFO: renamed from: G */
        public static InterfaceC0939a m6936G() {
            return C1356a.f5926b;
        }

        /* JADX INFO: renamed from: u */
        public static InterfaceC0939a m6937u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0939a)) ? new C1356a(iBinder) : (InterfaceC0939a) iInterfaceQueryLocalInterface;
        }
    }

    /* JADX INFO: renamed from: D */
    void mo6932D(int i);

    /* JADX INFO: renamed from: J0 */
    void mo6933J0(String str);

    /* JADX INFO: renamed from: n */
    void mo6934n(String str);

    /* JADX INFO: renamed from: v */
    void mo6935v(int i);
}
