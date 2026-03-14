package cn.manstep.phonemirrorBox.r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.manstep.phonemirrorBox.r0.a;
import cn.manstep.phonemirrorBox.r0.b;
import cn.manstep.phonemirrorBox.r0.c;
import cn.manstep.phonemirrorBox.r0.e;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface d extends IInterface {

    public static abstract class a extends Binder implements d {
        public a() {
            attachInterface(this, "cn.manstep.phonemirrorBox.sdk.IRemoteService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i == 1598968902) {
                parcel2.writeString("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    O0(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    j(b.a.u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    q(e.a.u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    h(c.a.u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    l(a.AbstractBinderC0095a.u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    String strM = m();
                    parcel2.writeNoException();
                    parcel2.writeString(strM);
                    return true;
                case 7:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    int iD = d();
                    parcel2.writeNoException();
                    parcel2.writeInt(iD);
                    return true;
                case 8:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    v0(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    b(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    g(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    k(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    boolean zF = f();
                    parcel2.writeNoException();
                    parcel2.writeInt(zF ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    boolean zP = p();
                    parcel2.writeNoException();
                    parcel2.writeInt(zP ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void O0(String str);

    void b(int i);

    int d();

    boolean f();

    void g(int i);

    void h(c cVar);

    void j(b bVar);

    void k(String str);

    void l(cn.manstep.phonemirrorBox.r0.a aVar);

    String m();

    boolean p();

    void q(e eVar);

    void v0(int i);
}
