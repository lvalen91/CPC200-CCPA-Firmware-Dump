package cn.manstep.phonemirrorBox.r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public interface b extends IInterface {

    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.b$a$a, reason: collision with other inner class name */
        private static class C0097a implements b {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static b f1824b;
            private IBinder a;

            C0097a(IBinder iBinder) {
                this.a = iBinder;
            }

            @Override // cn.manstep.phonemirrorBox.r0.b
            public void a0(int i) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("cn.manstep.phonemirrorBox.sdk.IConnectStateChangeListener");
                    parcelObtain.writeInt(i);
                    if (this.a.transact(1, parcelObtain, parcelObtain2, 0) || a.G() == null) {
                        parcelObtain2.readException();
                    } else {
                        a.G().a0(i);
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
        }

        public static b G() {
            return C0097a.f1824b;
        }

        public static b u(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("cn.manstep.phonemirrorBox.sdk.IConnectStateChangeListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof b)) ? new C0097a(iBinder) : (b) iInterfaceQueryLocalInterface;
        }
    }

    void a0(int i);
}
