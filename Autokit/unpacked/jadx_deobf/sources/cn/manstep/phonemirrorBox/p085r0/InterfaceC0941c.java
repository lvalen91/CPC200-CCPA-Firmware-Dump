package cn.manstep.phonemirrorBox.p085r0;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC0941c extends IInterface {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.c$a */
    public static abstract class a extends Binder implements InterfaceC0941c {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.c$a$a, reason: collision with other inner class name */
        private static class C1358a implements InterfaceC0941c {

            /* JADX INFO: renamed from: b */
            public static InterfaceC0941c f5930b;

            /* JADX INFO: renamed from: a */
            private IBinder f5931a;

            C1358a(IBinder iBinder) {
                this.f5931a = iBinder;
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: A */
            public void mo6941A(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5931a.transact(7, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6941A(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: D0 */
            public void mo6942D0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5931a.transact(5, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6942D0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: F0 */
            public void mo6943F0(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeByteArray(bArr);
                    if (this.f5931a.transact(10, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6943F0(bArr);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: N0 */
            public void mo6944N0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5931a.transact(6, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6944N0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f5931a;
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: b0 */
            public void mo6945b0(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.f5931a.transact(2, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6945b0(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: h0 */
            public void mo6946h0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5931a.transact(8, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6946h0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: n */
            public void mo6947n(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5931a.transact(1, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6947n(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: y */
            public void mo6948y(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.f5931a.transact(4, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6948y(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: y0 */
            public void mo6949y0(Uri uri) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f5931a.transact(11, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6949y0(uri);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: z */
            public void mo6950z(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.f5931a.transact(3, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6950z(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c
            /* JADX INFO: renamed from: z0 */
            public void mo6951z0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.f5931a.transact(9, parcelObtain, parcelObtain2, 0) || a.m6952G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.m6952G().mo6951z0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        /* JADX INFO: renamed from: G */
        public static InterfaceC0941c m6952G() {
            return C1358a.f5930b;
        }

        /* JADX INFO: renamed from: u */
        public static InterfaceC0941c m6953u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof InterfaceC0941c)) ? new C1358a(iBinder) : (InterfaceC0941c) iInterfaceQueryLocalInterface;
        }
    }

    /* JADX INFO: renamed from: A */
    void mo6941A(String str);

    /* JADX INFO: renamed from: D0 */
    void mo6942D0(String str);

    /* JADX INFO: renamed from: F0 */
    void mo6943F0(byte[] bArr);

    /* JADX INFO: renamed from: N0 */
    void mo6944N0(String str);

    /* JADX INFO: renamed from: b0 */
    void mo6945b0(int i);

    /* JADX INFO: renamed from: h0 */
    void mo6946h0(String str);

    /* JADX INFO: renamed from: n */
    void mo6947n(String str);

    /* JADX INFO: renamed from: y */
    void mo6948y(int i);

    /* JADX INFO: renamed from: y0 */
    void mo6949y0(Uri uri);

    /* JADX INFO: renamed from: z */
    void mo6950z(int i);

    /* JADX INFO: renamed from: z0 */
    void mo6951z0(String str);
}
