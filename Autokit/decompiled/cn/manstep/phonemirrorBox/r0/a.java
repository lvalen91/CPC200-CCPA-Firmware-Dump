package cn.manstep.phonemirrorBox.r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.a$a, reason: collision with other inner class name */
    public static abstract class AbstractBinderC0095a extends Binder implements a {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.a$a$a, reason: collision with other inner class name */
        private static class C0096a implements a {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static a f1823b;
            private IBinder a;

            C0096a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // cn.manstep.phonemirrorBox.r0.a
            public void D(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.a.transact(3, parcelObtain, parcelObtain2, 0) || AbstractBinderC0095a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0095a.G().D(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.a
            public void J0(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(2, parcelObtain, parcelObtain2, 0) || AbstractBinderC0095a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0095a.G().J0(str);
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

            @Override // cn.manstep.phonemirrorBox.r0.a
            public void n(String str) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeString(str);
                    if (this.a.transact(1, parcelObtain, parcelObtain2, 0) || AbstractBinderC0095a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0095a.G().n(str);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // cn.manstep.phonemirrorBox.r0.a
            public void v(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.a.transact(4, parcelObtain, parcelObtain2, 0) || AbstractBinderC0095a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        AbstractBinderC0095a.G().v(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static a G() {
            return C0096a.f1823b;
        }

        public static a u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.ICallInfoChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0096a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }
    }

    void D(int i);

    void J0(String str);

    void n(String str);

    void v(int i);
}
