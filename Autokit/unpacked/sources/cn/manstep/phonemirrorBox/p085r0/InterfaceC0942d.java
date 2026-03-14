package cn.manstep.phonemirrorBox.p085r0;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0939a;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0940b;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0941c;
import cn.manstep.phonemirrorBox.p085r0.InterfaceC0943e;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceC0942d extends IInterface {

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r0.d$a */
    public static abstract class a extends Binder implements InterfaceC0942d {
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
                    mo6954O0(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6960j(InterfaceC0940b.a.m6940u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6965q(InterfaceC0943e.a.m6969u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6959h(InterfaceC0941c.a.m6953u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6962l(InterfaceC0939a.a.m6937u(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    String strMo6963m = mo6963m();
                    parcel2.writeNoException();
                    parcel2.writeString(strMo6963m);
                    return true;
                case 7:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    int iMo6956d = mo6956d();
                    parcel2.writeNoException();
                    parcel2.writeInt(iMo6956d);
                    return true;
                case 8:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6966v0(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6955b(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6958g(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    mo6961k(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    boolean zMo6957f = mo6957f();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo6957f ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface("cn.manstep.phonemirrorBox.sdk.IRemoteService");
                    boolean zMo6964p = mo6964p();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMo6964p ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    /* JADX INFO: renamed from: O0 */
    void mo6954O0(String str);

    /* JADX INFO: renamed from: b */
    void mo6955b(int i);

    /* JADX INFO: renamed from: d */
    int mo6956d();

    /* JADX INFO: renamed from: f */
    boolean mo6957f();

    /* JADX INFO: renamed from: g */
    void mo6958g(int i);

    /* JADX INFO: renamed from: h */
    void mo6959h(InterfaceC0941c interfaceC0941c);

    /* JADX INFO: renamed from: j */
    void mo6960j(InterfaceC0940b interfaceC0940b);

    /* JADX INFO: renamed from: k */
    void mo6961k(String str);

    /* JADX INFO: renamed from: l */
    void mo6962l(InterfaceC0939a interfaceC0939a);

    /* JADX INFO: renamed from: m */
    String mo6963m();

    /* JADX INFO: renamed from: p */
    boolean mo6964p();

    /* JADX INFO: renamed from: q */
    void mo6965q(InterfaceC0943e interfaceC0943e);

    /* JADX INFO: renamed from: v0 */
    void mo6966v0(int i);
}
