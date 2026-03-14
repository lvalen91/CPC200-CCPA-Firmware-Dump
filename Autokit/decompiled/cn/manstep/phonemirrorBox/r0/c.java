package cn.manstep.phonemirrorBox.r0;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public interface c extends IInterface {

    public static abstract class a extends Binder implements c {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.c$a$a, reason: collision with other inner class name */
        private static class C0098a implements c {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static c f1825b;
            private IBinder a;

            C0098a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void A(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(7, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().A(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void D0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(5, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().D0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void F0(byte[] bArr) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeByteArray(bArr);
                    if (this.a.transact(10, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().F0(bArr);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void N0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(6, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().N0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.a;
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void b0(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.a.transact(2, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().b0(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void h0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(8, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().h0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void n(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(1, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().n(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void y(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.a.transact(4, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().y(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void y0(Uri uri) {
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
                    if (this.a.transact(11, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().y0(uri);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void z(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.a.transact(3, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().z(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.c
            public void z0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(9, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().z0(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static c G() {
            return C0098a.f1825b;
        }

        public static c u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.IMusicInfoChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c)) ? new C0098a(iBinder) : (c) iInterfaceQueryLocalInterface;
        }
    }

    void A(String str);

    void D0(String str);

    void F0(byte[] bArr);

    void N0(String str);

    void b0(int i);

    void h0(String str);

    void n(String str);

    void y(int i);

    void y0(Uri uri);

    void z(int i);

    void z0(String str);
}
