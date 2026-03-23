package cn.manstep.phonemirrorBox.v0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import cn.manstep.phonemirrorBox.BoxInterface.f;
import cn.manstep.phonemirrorBox.Main1Activity;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.d.a;
import cn.manstep.phonemirrorBox.n0.a;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.j;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class e implements a.d, a.e, d.g {
    private static e o;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    cn.manstep.phonemirrorBox.util.b f1943b;
    private WeakReference<Context> e;
    private cn.manstep.phonemirrorBox.d.a f;
    private cn.manstep.phonemirrorBox.n0.a g;
    private cn.manstep.phonemirrorBox.BoxInterface.d h;
    private Handler m;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f1944c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1945d = 0;
    private final List<d> i = new ArrayList();
    private final List<a.d> j = new ArrayList();
    private final List<a.e> k = new ArrayList();
    private final List<d.g> l = new ArrayList();
    private c n = new c();

    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                e.this.y(message.arg1);
                return;
            }
            if (1 == i) {
                int iIntValue = 0;
                Object obj = message.obj;
                if (obj != null) {
                    if (obj instanceof Integer) {
                        iIntValue = ((Integer) obj).intValue();
                    } else if (obj instanceof Bundle) {
                        e.this.u(message.arg1, message.arg2, (Bundle) obj);
                        return;
                    } else if (obj instanceof String) {
                        e.this.w(message.arg1, message.arg2, (String) obj);
                        return;
                    }
                }
                e.this.t(message.arg1, message.arg2, iIntValue);
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.h.M(501);
        }
    }

    class c {
        private BroadcastReceiver a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1947b = false;

        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                f fVar;
                f fVar2;
                if (intent.getAction().equals("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT")) {
                    int intExtra = intent.getIntExtra("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA", 0);
                    s.c("Uilogic,onReceive: KeyControl: cmd = " + intExtra);
                    if (intExtra == 2000) {
                        int intExtra2 = intent.getIntExtra("CMD", -1);
                        if (intExtra2 >= 0) {
                            cn.manstep.phonemirrorBox.BoxInterface.d.L(intExtra2);
                        }
                        return;
                    }
                    if (intExtra == 2001) {
                        e.this.m.sendMessage(e.this.m.obtainMessage(1, 4, 39));
                        return;
                    }
                    switch (intExtra) {
                        case 1:
                            e.H(5);
                            break;
                        case 2:
                            e.H(6);
                            break;
                        case 3:
                            e.H(100);
                            break;
                        case 4:
                            e.H(101);
                            break;
                        case 5:
                            e.H(102);
                            break;
                        case 6:
                            e.H(103);
                            break;
                        case 7:
                            e.H(104);
                            break;
                        case 8:
                            e.H(105);
                            break;
                        case 9:
                            e.H(200);
                            break;
                        case 10:
                            e.H(201);
                            break;
                        case 11:
                            e.H(202);
                            break;
                        case 12:
                            e.H(203);
                            break;
                        case 13:
                            e.H(204);
                            break;
                        case 14:
                            e.H(205);
                            break;
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                            e.H((intExtra - 15) + 300);
                            break;
                        case 29:
                            e.H(106);
                            break;
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                            e.H((intExtra - 30) + 400);
                            break;
                        case 34:
                            e.H(17);
                            break;
                        case 35:
                            e.H(16);
                            break;
                        default:
                            String str = BuildConfig.FLAVOR;
                            switch (intExtra) {
                                case 100:
                                    String stringExtra = intent.getStringExtra("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA_STRING");
                                    s.c("Uilogic,broadcastReceiverControl: sBluetooth = " + stringExtra);
                                    if (stringExtra != null) {
                                        str = stringExtra;
                                    }
                                    b0.r((Context) e.this.e.get(), str);
                                    if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && (fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l) != null) {
                                        fVar.n0(str.getBytes());
                                        break;
                                    }
                                    break;
                                case 101:
                                    s.c("broadcastReceiverControl,AudioRecoder: Receive AUTO_BOX_CONTROL_CMD_RECORD_START");
                                    d.b.a.c cVar = cn.manstep.phonemirrorBox.BoxInterface.a.h;
                                    if (cVar != null) {
                                        cVar.j(false);
                                    }
                                    break;
                                case 102:
                                    String stringExtra2 = intent.getStringExtra("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA_STRING");
                                    s.c("Uilogic,broadcastReceiverControl: Bluetooth Pin Code = " + stringExtra2);
                                    if (stringExtra2 != null) {
                                        str = stringExtra2;
                                    }
                                    b0.y((Context) e.this.e.get(), str);
                                    if (cn.manstep.phonemirrorBox.BoxInterface.d.i() && (fVar2 = cn.manstep.phonemirrorBox.BoxInterface.d.l) != null) {
                                        fVar2.p0(str.getBytes());
                                        break;
                                    }
                                    break;
                                case 103:
                                    f fVar3 = cn.manstep.phonemirrorBox.BoxInterface.d.l;
                                    if (fVar3 != null) {
                                        fVar3.m0();
                                    }
                                    break;
                                case 104:
                                    if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null && f.O) {
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 25);
                                        cn.manstep.phonemirrorBox.BoxInterface.d.l.b1();
                                        break;
                                    }
                                    break;
                                case 105:
                                    if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null && f.O) {
                                        cn.manstep.phonemirrorBox.BoxInterface.d.l.Q0();
                                        break;
                                    }
                                    break;
                                case 106:
                                    e.this.G();
                                    break;
                            }
                            break;
                    }
                }
            }
        }

        c() {
        }

        void a() {
            s.c("Uilogic,register: cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT");
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT");
            ((Context) e.this.e.get()).registerReceiver(this.a, intentFilter);
            this.f1947b = true;
        }

        void b() {
            s.c("Uilogic,unregister: cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT");
            if (this.f1947b) {
                try {
                    ((Context) e.this.e.get()).unregisterReceiver(this.a);
                } catch (Exception e) {
                    s.e(Log.getStackTraceString(e));
                }
                this.f1947b = false;
            }
        }
    }

    public interface d {
        void g(int i, int i2, int i3);

        void s(int i, int i2, Bundle bundle);

        void x(int i, int i2, String str);
    }

    private e(Context context) {
        this.e = new WeakReference<>(null);
        this.e = new WeakReference<>(context);
        this.n.a();
        this.m = new a(Looper.myLooper());
        cn.manstep.phonemirrorBox.v0.a.t().q(context);
    }

    public static e A() {
        return o;
    }

    public static void B(Context context) {
        if (o == null) {
            s.c("Uilogic getInstance");
            o = new e(context);
            s.c("Uilogic getInstance: " + o);
        } else {
            s.c("We have Uilogic already: " + o);
            if (!(context instanceof Main1Activity)) {
                r(context);
            }
        }
        x(5);
    }

    public static boolean C() {
        e eVar = o;
        if (eVar != null) {
            return eVar.f1944c;
        }
        return false;
    }

    public static String D(int i) {
        switch (i) {
            case 1:
                return "NOTICE_PHONE_PLUG";
            case 2:
                return "NOTICE_BOXMIC_WAIT";
            case 3:
                return "NOTICE_BOXMIC_CONNECTED";
            case 4:
                return "NOTICE_BOXMIC_DISCONNECTED";
            case 5:
                return "NOTICE_BOX_UPDATE";
            case 6:
                return "NOTICE_BOX_UPDATE_SUCCESS";
            case 7:
                return "NOTICE_BOX_UPDATE_FAILED";
            case 8:
                return "NOTICE_BOX_VERSION_ERROR";
            case 9:
                return "NOTICE_BOX_VERSION_SHOW";
            case 10:
                return "NOTICE_DECODE_CONFIGURE_ERR";
            case 11:
                return "NOTICE_BOX_OTA_UPDATE";
            case 12:
                return "NOTICE_BOX_OTA_UPDATE_SUCCESS";
            case 13:
                return "NOTICE_BOX_OTA_UPDATE_FAILED";
            case 14:
                return "NOTICE_BOX_PLUG_IN";
            case 15:
                return "NOTICE_PHONE_DISCONNECTED";
            case 16:
                return "NOTICE_FAKE_BOX_PLUG_IN";
            case 17:
                return "NOTICE_FAKE_BOX_PLUG_OUT";
            case 18:
                return "NOTICE_BOX_ENTER_U_MODE";
            case 19:
                return "NOTICE_SUPPORT_AUTO_CONNECT";
            case 20:
                return "NOTICE_SCANING_DEVICES";
            case 21:
                return "NOTICE_DEVICE_FOUND";
            case 22:
                return "NOTICE_DEVICE_NOT_FOUND";
            case 23:
                return "NOTICE_CONNECT_DEVICE_FAILED";
            case 24:
                return "NOTICE_BOX_BLUETOOTH_CONNECTED";
            case 25:
                return "NOTICE_BOX_BLUETOOTH_DISCONNECTED";
            case 26:
                return "NOTICE_BOX_WIFI_CONNECTED";
            case 27:
                return "NOTICE_BOX_WIFI_DISCONNECTED";
            case 28:
                return "NOTICE_BOX_BLUETOOTH_PAIR_START";
            case 29:
                return "NOTICE_UPDATE_BLUETOOTH_PAIRED_LIST";
            case 30:
                return "NOTICE_UPDATE_BLUETOOTH_ONLINE_LIST";
            case 31:
                return "NOTICE_MANUAL_DISCONNECT_PHONE";
            default:
                switch (i) {
                    case 33:
                        return "NOTICE_MIC_RECORDING";
                    case 34:
                        return "NOTICE_CAMERA_GET_CONFIG";
                    case 35:
                        return "NOTICE_CAMERA_SET_CONFIG";
                    case 36:
                        return "NOTICE_CAMERA_OPEN";
                    case 37:
                        return "NOTICE_CAMERA_CLOSE";
                    case 38:
                        return "NOTICE_BOX_REQUEST_VIDEO_FOCUS";
                    case 39:
                        return "NOTICE_BOX_RELEASE_VIDEO_FOCUS";
                    case 40:
                        return "NOTICE_UPDATE_CONNECTION_URL";
                    default:
                        switch (i) {
                            case 50:
                                return "NOTICE_HARDWARE_ERROR_BT";
                            case 51:
                                return "NOTICE_HARDWARE_ERROR_WIFI";
                            case 52:
                                return "NOTICE_BOX_PLUG_OUT";
                            case 53:
                                return "NOTICE_UPDATE_BOX_BLUETOOTH_NAME";
                            case 54:
                                return "NOTICE_WIFI_TRANS_ABNORMAL";
                            case 55:
                                return "NOTICE_WIFI_TRANS_NORMAL";
                            case 56:
                                return "NOTICE_BOX_INFO";
                            default:
                                return "Unknown: " + i;
                        }
                }
        }
    }

    public static String E(int i) {
        switch (i) {
            case 1:
                return "PAGE_IDLE";
            case 2:
                return "PAGE_ANDROID_AUTH";
            case 3:
                return "PAGE_ANDROID_WORK";
            case 4:
                return "PAGE_AutoBox_WORK";
            case 5:
                return "PAGE_WAIT";
            case 6:
                return "PAGE_CARLIFE_Download";
            default:
                return "Unknown Page(" + i + ")";
        }
    }

    public static void F() {
        s.c("Uilogic,releaseInstance");
        e eVar = o;
        if (eVar != null) {
            eVar.s();
            o = null;
        }
        cn.manstep.phonemirrorBox.v0.a.t().E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void G() {
        if (cn.manstep.phonemirrorBox.BoxInterface.d.G()) {
            cn.manstep.phonemirrorBox.v0.a.t().a();
        }
    }

    public static void H(int i) {
        s.c("Uilogic,sendCarControl: ctrlCmd = " + i);
        e eVar = o;
        if (eVar == null || eVar.h == null) {
            return;
        }
        if (i >= 200 && i <= 205) {
            if (cn.manstep.phonemirrorBox.v0.a.t().w()) {
                if (i == 202) {
                    cn.manstep.phonemirrorBox.BoxInterface.a.L(true, true);
                    o.h.K(i);
                    return;
                }
                return;
            }
            if (i == 203) {
                cn.manstep.phonemirrorBox.f0.c.n().u();
                cn.manstep.phonemirrorBox.BoxInterface.a.L(true, false);
            } else if (i == 202) {
                cn.manstep.phonemirrorBox.BoxInterface.a.L(true, true);
            } else if (i == 201 || i == 204 || i == 205) {
                cn.manstep.phonemirrorBox.f0.c.n().u();
                cn.manstep.phonemirrorBox.BoxInterface.a.L(false, true);
            }
        }
        o.h.K(i);
    }

    public static void I(int i) {
        s.c("Uilogic,sendCarControlByKey: cmd = " + i);
        switch (i) {
            case 1:
                if (!u.z().U()) {
                    if (cn.manstep.phonemirrorBox.v0.a.t().v()) {
                        H(300);
                    }
                } else if (cn.manstep.phonemirrorBox.v0.a.t().w() || cn.manstep.phonemirrorBox.v0.a.t().v()) {
                    H(301);
                }
                H(205);
                break;
            case 2:
                if (!u.z().U()) {
                    if (cn.manstep.phonemirrorBox.v0.a.t().w() || cn.manstep.phonemirrorBox.v0.a.t().v()) {
                        H(301);
                    }
                } else if (cn.manstep.phonemirrorBox.v0.a.t().v()) {
                    H(300);
                }
                H(204);
                break;
            case 3:
                H(201);
                break;
            case 4:
                H(202);
                break;
            case 5:
                H(203);
                break;
            case 6:
                H(204);
                break;
            case 7:
                H(205);
                break;
            case 8:
                H(5);
                H(6);
                break;
            case 9:
                H(200);
                break;
            case 10:
                H(106);
                break;
            case 11:
                if (!C()) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 1);
                } else {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 0);
                }
                break;
            case 12:
                H(104);
                H(105);
                break;
            case 13:
                H(100);
                break;
            case 14:
                H(101);
                break;
            case 15:
                H(102);
                break;
            case 16:
                H(103);
                break;
            case 17:
                H(300);
                break;
            case 18:
                H(301);
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
                H(i + 283);
                break;
            default:
                s.c("Uilogic,sendCarControlByKey: Unknown cmd = " + i);
                break;
        }
    }

    public static void J(int i) {
        cn.manstep.phonemirrorBox.BoxInterface.d dVar;
        e eVar = o;
        if (eVar == null || (dVar = eVar.h) == null) {
            return;
        }
        if (i == 10) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 0);
        } else {
            dVar.N(i);
        }
    }

    public static void K(cn.manstep.phonemirrorBox.BoxInterface.e eVar) {
        cn.manstep.phonemirrorBox.BoxInterface.d dVar;
        e eVar2 = o;
        if (eVar2 == null || (dVar = eVar2.h) == null) {
            return;
        }
        dVar.Q(eVar);
    }

    public static void L(int i, int i2, int i3, int i4) {
        cn.manstep.phonemirrorBox.BoxInterface.d dVar;
        e eVar = o;
        if (eVar == null || (dVar = eVar.h) == null) {
            return;
        }
        dVar.V(i, i2, i3, i4);
    }

    public static cn.manstep.phonemirrorBox.BoxInterface.d M(d.g gVar) {
        s.c("UiLogic,setBoxInterfaceListener: " + gVar);
        e eVar = o;
        if (eVar == null) {
            return null;
        }
        if (!eVar.l.contains(gVar)) {
            o.l.add(gVar);
        }
        cn.manstep.phonemirrorBox.BoxInterface.d dVar = o.h;
        dVar.g(gVar);
        return dVar;
    }

    private void N(Context context) {
        this.e = null;
        this.e = new WeakReference<>(context);
    }

    public static void O(d dVar) {
        e eVar = o;
        if (eVar != null) {
            eVar.i.add(dVar);
        }
    }

    public static void P(boolean z) {
        s.p("Uilogic", "setUsbEnable: " + z);
        e eVar = o;
        if (eVar == null) {
            s.f("Uilogic", "setUsbEnable: instance = null");
            return;
        }
        cn.manstep.phonemirrorBox.BoxInterface.d dVar = eVar.h;
        if (dVar != null) {
            dVar.X(z);
        } else {
            s.f("Uilogic", "setUsbEnable: instance.mboxInterface = null");
        }
    }

    public static void Q(boolean z) {
        e eVar = o;
        if (eVar != null) {
            eVar.R(z);
        }
    }

    private void R(boolean z) {
        s.c("Uilogic,setVisibleInner: setVisible = " + z);
        if (z) {
            cn.manstep.phonemirrorBox.v0.a.t().j();
        } else {
            cn.manstep.phonemirrorBox.v0.a.t().n();
        }
        this.f1944c = z;
        s.c("Uilogic,setVisibleInner: boxWorkMan = " + this.f1943b);
        cn.manstep.phonemirrorBox.util.b bVar = this.f1943b;
        if (bVar != null) {
            bVar.b(z);
            throw null;
        }
        if (this.f1944c) {
            cn.manstep.phonemirrorBox.BoxInterface.d dVar = this.h;
            if (dVar != null) {
                dVar.Y();
                return;
            }
            return;
        }
        cn.manstep.phonemirrorBox.n0.a aVar = this.g;
        if (aVar != null) {
            aVar.q();
        }
        cn.manstep.phonemirrorBox.d.a aVar2 = this.f;
        if (aVar2 != null) {
            aVar2.l();
        }
        if (this.h == null || !cn.manstep.phonemirrorBox.BoxInterface.d.t()) {
            return;
        }
        j.c().e("AndroidAuto", 800L, new b());
    }

    public static void S(d.g gVar) {
        e eVar = o;
        if (eVar != null) {
            eVar.l.remove(gVar);
            o.h.c0(gVar);
            if (gVar == o.e.get()) {
                o.n.b();
            }
        }
    }

    public static void T(d dVar) {
        e eVar = o;
        if (eVar != null) {
            eVar.i.remove(dVar);
        }
    }

    public static void r(Context context) {
        s.c("Uilogic changeInstance: context = " + context + "," + o);
        e eVar = o;
        if (eVar != null) {
            eVar.n.b();
            o.N(context);
            o.n.a();
            cn.manstep.phonemirrorBox.n0.a aVar = o.g;
            if (aVar != null) {
                aVar.g(context);
            }
            cn.manstep.phonemirrorBox.d.a aVar2 = o.f;
            if (aVar2 != null) {
                aVar2.f(context);
            }
            cn.manstep.phonemirrorBox.BoxInterface.d dVar = o.h;
            if (dVar != null) {
                dVar.l(context);
            }
        }
        cn.manstep.phonemirrorBox.v0.a.t().q(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(int i, int i2, int i3) {
        Iterator<d> it = this.i.iterator();
        while (it.hasNext()) {
            it.next().g(i, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void u(int i, int i2, Bundle bundle) {
        Iterator<d> it = this.i.iterator();
        while (it.hasNext()) {
            it.next().s(i, i2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w(int i, int i2, String str) {
        Iterator<d> it = this.i.iterator();
        while (it.hasNext()) {
            it.next().x(i, i2, str);
        }
    }

    public static void x(int i) {
        s.c("enterModeInner: instance=" + o + " val=" + i);
        e eVar = o;
        if (eVar != null) {
            eVar.y(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void y(int i) {
        s.c("Uilogic,enterModeInner: iModeNow=" + this.f1945d + " ModeTo=" + i);
        if (i == this.f1945d) {
            return;
        }
        cn.manstep.phonemirrorBox.BoxInterface.d dVar = this.h;
        if (dVar == null || dVar.D()) {
            this.f1945d = i;
            if (i == 1) {
                cn.manstep.phonemirrorBox.n0.a aVar = this.g;
                if (aVar != null) {
                    aVar.h();
                    this.g = null;
                }
                cn.manstep.phonemirrorBox.util.b bVar = this.f1943b;
                if (bVar != null) {
                    bVar.a();
                    throw null;
                }
                cn.manstep.phonemirrorBox.BoxInterface.d dVar2 = this.h;
                if (dVar2 != null) {
                    dVar2.p();
                    this.h = null;
                }
                if (this.f == null) {
                    cn.manstep.phonemirrorBox.d.a aVar2 = new cn.manstep.phonemirrorBox.d.a(this.e.get());
                    this.f = aVar2;
                    aVar2.e(this);
                    Iterator<a.d> it = this.j.iterator();
                    while (it.hasNext()) {
                        this.f.e(it.next());
                    }
                    return;
                }
                return;
            }
            if (i == 2) {
                cn.manstep.phonemirrorBox.d.a aVar3 = this.f;
                if (aVar3 != null) {
                    aVar3.g();
                    this.f = null;
                }
                cn.manstep.phonemirrorBox.util.b bVar2 = this.f1943b;
                if (bVar2 != null) {
                    bVar2.a();
                    throw null;
                }
                cn.manstep.phonemirrorBox.BoxInterface.d dVar3 = this.h;
                if (dVar3 != null) {
                    dVar3.p();
                    this.h = null;
                }
                if (this.g == null) {
                    cn.manstep.phonemirrorBox.n0.a aVar4 = new cn.manstep.phonemirrorBox.n0.a(this.e.get());
                    this.g = aVar4;
                    aVar4.f(this);
                    Iterator<a.e> it2 = this.k.iterator();
                    while (it2.hasNext()) {
                        this.g.f(it2.next());
                    }
                    return;
                }
                return;
            }
            if (i == 3) {
                cn.manstep.phonemirrorBox.n0.a aVar5 = this.g;
                if (aVar5 != null) {
                    aVar5.h();
                    this.g = null;
                }
                cn.manstep.phonemirrorBox.d.a aVar6 = this.f;
                if (aVar6 != null) {
                    aVar6.g();
                    this.f = null;
                }
                cn.manstep.phonemirrorBox.util.b bVar3 = this.f1943b;
                if (bVar3 != null) {
                    bVar3.a();
                    throw null;
                }
                cn.manstep.phonemirrorBox.BoxInterface.d dVar4 = this.h;
                if (dVar4 != null) {
                    dVar4.p();
                    this.h = null;
                    return;
                }
                return;
            }
            if (i != 4) {
                if (i != 5) {
                    return;
                }
                cn.manstep.phonemirrorBox.d.a aVar7 = this.f;
                if (aVar7 != null) {
                    aVar7.g();
                    this.f = null;
                }
                cn.manstep.phonemirrorBox.n0.a aVar8 = this.g;
                if (aVar8 != null) {
                    aVar8.h();
                    this.g = null;
                }
                if (this.h == null) {
                    s.c("Uilogic,enterModeInner: new BoxInterface");
                    cn.manstep.phonemirrorBox.BoxInterface.d dVar5 = new cn.manstep.phonemirrorBox.BoxInterface.d(this.e.get());
                    this.h = dVar5;
                    dVar5.g(this);
                    Iterator<d.g> it3 = this.l.iterator();
                    while (it3.hasNext()) {
                        this.h.g(it3.next());
                    }
                }
                Q(this.f1944c);
                return;
            }
            if (this.f == null) {
                cn.manstep.phonemirrorBox.d.a aVar9 = new cn.manstep.phonemirrorBox.d.a(this.e.get());
                this.f = aVar9;
                aVar9.e(this);
                Iterator<a.d> it4 = this.j.iterator();
                while (it4.hasNext()) {
                    this.f.e(it4.next());
                }
            }
            if (this.g == null) {
                cn.manstep.phonemirrorBox.n0.a aVar10 = new cn.manstep.phonemirrorBox.n0.a(this.e.get());
                this.g = aVar10;
                aVar10.f(this);
                Iterator<a.e> it5 = this.k.iterator();
                while (it5.hasNext()) {
                    this.g.f(it5.next());
                }
            }
            if (this.h == null) {
                s.c("Uilogic,enterModeInner: new BoxInterface");
                cn.manstep.phonemirrorBox.BoxInterface.d dVar6 = new cn.manstep.phonemirrorBox.BoxInterface.d(this.e.get());
                this.h = dVar6;
                dVar6.g(this);
                Iterator<d.g> it6 = this.l.iterator();
                while (it6.hasNext()) {
                    this.h.g(it6.next());
                }
            }
        }
    }

    public static Context z() {
        e eVar = o;
        if (eVar != null) {
            return eVar.e.get();
        }
        return null;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        int iIntValue;
        if (i == 120) {
            iIntValue = obj != null ? ((Integer) obj).intValue() : 0;
            Handler handler = this.m;
            handler.sendMessage(handler.obtainMessage(1, 4, 70, Integer.valueOf(iIntValue)));
            return;
        }
        if (i == 26) {
            iIntValue = obj != null ? ((Integer) obj).intValue() : 0;
            Handler handler2 = this.m;
            handler2.sendMessage(handler2.obtainMessage(1, 4, 32, Integer.valueOf(iIntValue)));
            return;
        }
        if (i == 216) {
            Handler handler3 = this.m;
            handler3.sendMessage(handler3.obtainMessage(1, 4, 60, obj));
            return;
        }
        if (i == 217) {
            Handler handler4 = this.m;
            handler4.sendMessage(handler4.obtainMessage(1, 4, 61, obj));
        } else if (i == 218) {
            Handler handler5 = this.m;
            handler5.sendMessage(handler5.obtainMessage(1, 4, 62, obj));
        } else if (i == 219) {
            Handler handler6 = this.m;
            handler6.sendMessage(handler6.obtainMessage(1, 4, 63, obj));
        }
    }

    @Override // cn.manstep.phonemirrorBox.d.a.d
    public void b(int i) {
        s.c("Uilogic on_Android_Parse :" + i);
        if (i == 0) {
            Handler handler = this.m;
            handler.sendMessage(handler.obtainMessage(1, 1, 1));
            Handler handler2 = this.m;
            handler2.sendMessage(handler2.obtainMessage(0, 3, 0));
            Handler handler3 = this.m;
            handler3.sendMessage(handler3.obtainMessage(0, 4, 0));
            return;
        }
        if (i == 1) {
            Handler handler4 = this.m;
            handler4.sendMessage(handler4.obtainMessage(1, 1, 5));
            Handler handler5 = this.m;
            handler5.sendMessage(handler5.obtainMessage(0, 1, 0));
            return;
        }
        if (i == 2) {
            Handler handler6 = this.m;
            handler6.sendMessage(handler6.obtainMessage(1, 1, 2));
        } else {
            if (i != 3) {
                return;
            }
            Handler handler7 = this.m;
            handler7.sendMessage(handler7.obtainMessage(1, 1, 3));
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.n0.a.e
    public void d(int i) {
        s.c("Uilogic on_iPhone_Parse :" + i);
        if (i != 0) {
            if (i != 2) {
                return;
            }
            Handler handler = this.m;
            handler.sendMessage(handler.obtainMessage(1, 1, 4));
            return;
        }
        Handler handler2 = this.m;
        handler2.sendMessage(handler2.obtainMessage(1, 1, 1));
        Handler handler3 = this.m;
        handler3.sendMessage(handler3.obtainMessage(0, 3, 0));
        Handler handler4 = this.m;
        handler4.sendMessage(handler4.obtainMessage(0, 4, 0));
    }

    @Override // cn.manstep.phonemirrorBox.d.a.d
    public void e(cn.manstep.phonemirrorBox.d.a aVar) {
    }

    @Override // cn.manstep.phonemirrorBox.n0.a.e
    public void f(boolean z) {
    }

    @Override // cn.manstep.phonemirrorBox.n0.a.e
    public void g(cn.manstep.phonemirrorBox.n0.a aVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(cn.manstep.phonemirrorBox.BoxInterface.d dVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        s.e("Uilogic,on_Box_Phase: (" + i + ")" + cn.manstep.phonemirrorBox.BoxInterface.d.q(i));
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        switch (i) {
                            case 12:
                                Handler handler = this.m;
                                handler.sendMessage(handler.obtainMessage(1, 4, 52));
                                Handler handler2 = this.m;
                                handler2.sendMessage(handler2.obtainMessage(1, 1, 1));
                                Handler handler3 = this.m;
                                handler3.sendMessage(handler3.obtainMessage(0, 3, 0));
                                Handler handler4 = this.m;
                                handler4.sendMessage(handler4.obtainMessage(0, 5, 0));
                                break;
                            case 13:
                                Handler handler5 = this.m;
                                handler5.sendMessage(handler5.obtainMessage(1, 1, 1));
                                Handler handler6 = this.m;
                                handler6.sendMessage(handler6.obtainMessage(1, 4, 14));
                                break;
                            case 14:
                                Handler handler7 = this.m;
                                handler7.sendMessage(handler7.obtainMessage(1, 1, 3));
                                break;
                            case 15:
                                Handler handler8 = this.m;
                                handler8.sendMessage(handler8.obtainMessage(1, 1, 4));
                                break;
                            case 16:
                                Handler handler9 = this.m;
                                handler9.sendMessage(handler9.obtainMessage(1, 1, 6));
                                break;
                            case 17:
                                Handler handler10 = this.m;
                                handler10.sendMessage(handler10.obtainMessage(1, 5, 0));
                                break;
                            case 18:
                                Handler handler11 = this.m;
                                handler11.sendMessage(handler11.obtainMessage(1, 4, 10));
                                break;
                            default:
                                switch (i) {
                                    case 21:
                                        Handler handler12 = this.m;
                                        handler12.sendMessage(handler12.obtainMessage(1, 6, 0));
                                        break;
                                    case 22:
                                        Handler handler13 = this.m;
                                        handler13.sendMessage(handler13.obtainMessage(1, 1, 1));
                                        Handler handler14 = this.m;
                                        handler14.sendMessage(handler14.obtainMessage(1, 4, 16));
                                        break;
                                    case 23:
                                        Handler handler15 = this.m;
                                        handler15.sendMessage(handler15.obtainMessage(1, 1, 1));
                                        Handler handler16 = this.m;
                                        handler16.sendMessage(handler16.obtainMessage(1, 4, 17));
                                        break;
                                    case 24:
                                        Handler handler17 = this.m;
                                        handler17.sendMessage(handler17.obtainMessage(1, 1, 1));
                                        Handler handler18 = this.m;
                                        handler18.sendMessage(handler18.obtainMessage(1, 4, 18));
                                        break;
                                    case 25:
                                        Handler handler19 = this.m;
                                        handler19.sendMessage(handler19.obtainMessage(1, 1, 1));
                                        Handler handler20 = this.m;
                                        handler20.sendMessage(handler20.obtainMessage(1, 4, 31));
                                        s.f("Uilogic", "on_Box_Phase: EVT_MANUAL_DISCONNECT_PHONE");
                                        break;
                                    default:
                                        switch (i) {
                                            case 27:
                                                Handler handler21 = this.m;
                                                handler21.sendMessage(handler21.obtainMessage(1, 4, 33));
                                                break;
                                            case 28:
                                                Handler handler22 = this.m;
                                                handler22.sendMessage(handler22.obtainMessage(1, 4, 34));
                                                break;
                                            case 29:
                                                Handler handler23 = this.m;
                                                handler23.sendMessage(handler23.obtainMessage(1, 4, 35));
                                                break;
                                            case 30:
                                                Handler handler24 = this.m;
                                                handler24.sendMessage(handler24.obtainMessage(1, 4, 36));
                                                break;
                                            case 31:
                                                Handler handler25 = this.m;
                                                handler25.sendMessage(handler25.obtainMessage(1, 4, 37));
                                                break;
                                            case 32:
                                                Handler handler26 = this.m;
                                                handler26.sendMessage(handler26.obtainMessage(1, 8, 2));
                                                break;
                                            case 33:
                                                Handler handler27 = this.m;
                                                handler27.sendMessage(handler27.obtainMessage(1, 8, 1));
                                                break;
                                            case 34:
                                                Handler handler28 = this.m;
                                                handler28.sendMessage(handler28.obtainMessage(1, 8, 3));
                                                break;
                                            case 35:
                                                Handler handler29 = this.m;
                                                handler29.sendMessage(handler29.obtainMessage(1, 4, 56));
                                                break;
                                            default:
                                                switch (i) {
                                                    case 50:
                                                        Handler handler30 = this.m;
                                                        handler30.sendMessage(handler30.obtainMessage(1, 4, 50));
                                                        break;
                                                    case 51:
                                                        Handler handler31 = this.m;
                                                        handler31.sendMessage(handler31.obtainMessage(1, 4, 51));
                                                        break;
                                                    case 52:
                                                        Handler handler32 = this.m;
                                                        handler32.sendMessage(handler32.obtainMessage(1, 4, 54));
                                                        break;
                                                    case 53:
                                                        Handler handler33 = this.m;
                                                        handler33.sendMessage(handler33.obtainMessage(1, 4, 55));
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case 116:
                                                                Handler handler34 = this.m;
                                                                handler34.sendMessage(handler34.obtainMessage(1, 4, 1));
                                                                break;
                                                            case 117:
                                                                Handler handler35 = this.m;
                                                                handler35.sendMessage(handler35.obtainMessage(1, 4, 2));
                                                                break;
                                                            case 118:
                                                                Handler handler36 = this.m;
                                                                handler36.sendMessage(handler36.obtainMessage(1, 4, 3));
                                                                break;
                                                            case 119:
                                                                Handler handler37 = this.m;
                                                                handler37.sendMessage(handler37.obtainMessage(1, 4, 4));
                                                                break;
                                                            case 120:
                                                                Handler handler38 = this.m;
                                                                handler38.sendMessage(handler38.obtainMessage(1, 4, 5));
                                                                break;
                                                            case 121:
                                                                Handler handler39 = this.m;
                                                                handler39.sendMessage(handler39.obtainMessage(1, 4, 6));
                                                                break;
                                                            case 122:
                                                                Handler handler40 = this.m;
                                                                handler40.sendMessage(handler40.obtainMessage(1, 4, 7));
                                                                break;
                                                            case 123:
                                                                Handler handler41 = this.m;
                                                                handler41.sendMessage(handler41.obtainMessage(1, 4, 8));
                                                                break;
                                                            case 124:
                                                                Handler handler42 = this.m;
                                                                handler42.sendMessage(handler42.obtainMessage(1, 4, 9));
                                                                break;
                                                            case 125:
                                                                Handler handler43 = this.m;
                                                                handler43.sendMessage(handler43.obtainMessage(1, 4, 11));
                                                                break;
                                                            case 126:
                                                                Handler handler44 = this.m;
                                                                handler44.sendMessage(handler44.obtainMessage(1, 4, 12));
                                                                break;
                                                            case 127:
                                                                Handler handler45 = this.m;
                                                                handler45.sendMessage(handler45.obtainMessage(1, 4, 13));
                                                                break;
                                                            default:
                                                                switch (i) {
                                                                    case 200:
                                                                        Handler handler46 = this.m;
                                                                        handler46.sendMessage(handler46.obtainMessage(1, 4, 19));
                                                                        break;
                                                                    case 201:
                                                                        Handler handler47 = this.m;
                                                                        handler47.sendMessage(handler47.obtainMessage(1, 4, 20));
                                                                        break;
                                                                    case 202:
                                                                        Handler handler48 = this.m;
                                                                        handler48.sendMessage(handler48.obtainMessage(1, 4, 21));
                                                                        break;
                                                                    case 203:
                                                                        Handler handler49 = this.m;
                                                                        handler49.sendMessage(handler49.obtainMessage(1, 4, 22));
                                                                        break;
                                                                    case 204:
                                                                        Handler handler50 = this.m;
                                                                        handler50.sendMessage(handler50.obtainMessage(1, 4, 23));
                                                                        break;
                                                                    case 205:
                                                                        Handler handler51 = this.m;
                                                                        handler51.sendMessage(handler51.obtainMessage(1, 4, 24));
                                                                        break;
                                                                    case 206:
                                                                        Handler handler52 = this.m;
                                                                        handler52.sendMessage(handler52.obtainMessage(1, 4, 25));
                                                                        break;
                                                                    case 207:
                                                                        Handler handler53 = this.m;
                                                                        handler53.sendMessage(handler53.obtainMessage(1, 4, 26));
                                                                        break;
                                                                    case 208:
                                                                        s.p("Uilogic", "on_Box_Phase: EVT_BOX_WIFI_DISCONNECTED phoneIsConnected=" + cn.manstep.phonemirrorBox.BoxInterface.d.G());
                                                                        Handler handler54 = this.m;
                                                                        handler54.sendMessage(handler54.obtainMessage(1, 4, 27));
                                                                        break;
                                                                    case 209:
                                                                        Handler handler55 = this.m;
                                                                        handler55.sendMessage(handler55.obtainMessage(1, 4, 28));
                                                                        break;
                                                                    case 210:
                                                                        Handler handler56 = this.m;
                                                                        handler56.sendMessage(handler56.obtainMessage(1, 4, 29));
                                                                        break;
                                                                    case 211:
                                                                        Handler handler57 = this.m;
                                                                        handler57.sendMessage(handler57.obtainMessage(1, 4, 30));
                                                                        break;
                                                                    case 212:
                                                                        Handler handler58 = this.m;
                                                                        handler58.sendMessage(handler58.obtainMessage(1, 4, 38));
                                                                        break;
                                                                    case 213:
                                                                        Handler handler59 = this.m;
                                                                        handler59.sendMessage(handler59.obtainMessage(1, 4, 39));
                                                                        break;
                                                                    case 214:
                                                                        Handler handler60 = this.m;
                                                                        handler60.sendMessage(handler60.obtainMessage(1, 4, 40));
                                                                        break;
                                                                    case 215:
                                                                        Handler handler61 = this.m;
                                                                        handler61.sendMessage(handler61.obtainMessage(1, 4, 53));
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                        break;
                                }
                                break;
                        }
                    }
                }
            }
            Handler handler62 = this.m;
            handler62.sendMessage(handler62.obtainMessage(1, 1, 5));
            return;
        }
        s.e("UiLogic on_Box_Phase EVT_PHONE_PLUG_OUT");
        Handler handler63 = this.m;
        handler63.sendMessage(handler63.obtainMessage(1, 1, 1));
        Handler handler64 = this.m;
        handler64.sendMessage(handler64.obtainMessage(1, 4, 15));
    }

    public void s() {
        y(3);
        this.i.clear();
        this.n.b();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
    }
}
