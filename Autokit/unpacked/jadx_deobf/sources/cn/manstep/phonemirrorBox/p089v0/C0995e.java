package cn.manstep.phonemirrorBox.p089v0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import cn.manstep.phonemirrorBox.BoxInterface.C0730a;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.BoxInterface.C0734e;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.Main1Activity;
import cn.manstep.phonemirrorBox.p069d.C0799a;
import cn.manstep.phonemirrorBox.p072f0.C0827c;
import cn.manstep.phonemirrorBox.p081n0.C0922a;
import cn.manstep.phonemirrorBox.util.C0961b;
import cn.manstep.phonemirrorBox.util.C0973j;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p093d.p097b.p098a.C1200c;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0995e implements C0799a.d, C0922a.e, C0733d.g {

    /* JADX INFO: renamed from: o */
    private static C0995e f6179o;

    /* JADX INFO: renamed from: b */
    C0961b f6180b;

    /* JADX INFO: renamed from: e */
    private WeakReference<Context> f6183e;

    /* JADX INFO: renamed from: f */
    private C0799a f6184f;

    /* JADX INFO: renamed from: g */
    private C0922a f6185g;

    /* JADX INFO: renamed from: h */
    private C0733d f6186h;

    /* JADX INFO: renamed from: m */
    private Handler f6191m;

    /* JADX INFO: renamed from: c */
    private boolean f6181c = false;

    /* JADX INFO: renamed from: d */
    private int f6182d = 0;

    /* JADX INFO: renamed from: i */
    private final List<d> f6187i = new ArrayList();

    /* JADX INFO: renamed from: j */
    private final List<C0799a.d> f6188j = new ArrayList();

    /* JADX INFO: renamed from: k */
    private final List<C0922a.e> f6189k = new ArrayList();

    /* JADX INFO: renamed from: l */
    private final List<C0733d.g> f6190l = new ArrayList();

    /* JADX INFO: renamed from: n */
    private c f6192n = new c();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.e$a */
    class a extends Handler {
        a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (i == 0) {
                C0995e.this.m7461y(message.arg1);
                return;
            }
            if (1 == i) {
                int iIntValue = 0;
                Object obj = message.obj;
                if (obj != null) {
                    if (obj instanceof Integer) {
                        iIntValue = ((Integer) obj).intValue();
                    } else if (obj instanceof Bundle) {
                        C0995e.this.m7458u(message.arg1, message.arg2, (Bundle) obj);
                        return;
                    } else if (obj instanceof String) {
                        C0995e.this.m7459w(message.arg1, message.arg2, (String) obj);
                        return;
                    }
                }
                C0995e.this.m7457t(message.arg1, message.arg2, iIntValue);
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.e$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0995e.this.f6186h.m5608M(501);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.e$c */
    class c {

        /* JADX INFO: renamed from: a */
        private BroadcastReceiver f6195a = new a();

        /* JADX INFO: renamed from: b */
        private boolean f6196b = false;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.e$c$a */
        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                C0735f c0735f;
                C0735f c0735f2;
                if (intent.getAction().equals("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT")) {
                    int intExtra = intent.getIntExtra("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA", 0);
                    C0982s.m7373c("Uilogic,onReceive: KeyControl: cmd = " + intExtra);
                    if (intExtra == 2000) {
                        int intExtra2 = intent.getIntExtra("CMD", -1);
                        if (intExtra2 >= 0) {
                            C0733d.m5578L(intExtra2);
                        }
                        return;
                    }
                    if (intExtra == 2001) {
                        C0995e.this.f6191m.sendMessage(C0995e.this.f6191m.obtainMessage(1, 4, 39));
                        return;
                    }
                    switch (intExtra) {
                        case 1:
                            C0995e.m7435H(5);
                            break;
                        case 2:
                            C0995e.m7435H(6);
                            break;
                        case 3:
                            C0995e.m7435H(100);
                            break;
                        case 4:
                            C0995e.m7435H(101);
                            break;
                        case 5:
                            C0995e.m7435H(102);
                            break;
                        case 6:
                            C0995e.m7435H(103);
                            break;
                        case 7:
                            C0995e.m7435H(104);
                            break;
                        case 8:
                            C0995e.m7435H(105);
                            break;
                        case 9:
                            C0995e.m7435H(200);
                            break;
                        case 10:
                            C0995e.m7435H(201);
                            break;
                        case 11:
                            C0995e.m7435H(202);
                            break;
                        case 12:
                            C0995e.m7435H(203);
                            break;
                        case 13:
                            C0995e.m7435H(204);
                            break;
                        case 14:
                            C0995e.m7435H(205);
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
                            C0995e.m7435H((intExtra - 15) + 300);
                            break;
                        case 29:
                            C0995e.m7435H(106);
                            break;
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                            C0995e.m7435H((intExtra - 30) + 400);
                            break;
                        case 34:
                            C0995e.m7435H(17);
                            break;
                        case 35:
                            C0995e.m7435H(16);
                            break;
                        default:
                            String str = BuildConfig.FLAVOR;
                            switch (intExtra) {
                                case 100:
                                    String stringExtra = intent.getStringExtra("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA_STRING");
                                    C0982s.m7373c("Uilogic,broadcastReceiverControl: sBluetooth = " + stringExtra);
                                    if (stringExtra != null) {
                                        str = stringExtra;
                                    }
                                    C0795b0.m6073r((Context) C0995e.this.f6183e.get(), str);
                                    if (C0733d.m5591i() && (c0735f = C0733d.f4428l) != null) {
                                        c0735f.m5736n0(str.getBytes());
                                        break;
                                    }
                                    break;
                                case 101:
                                    C0982s.m7373c("broadcastReceiverControl,AudioRecoder: Receive AUTO_BOX_CONTROL_CMD_RECORD_START");
                                    C1200c c1200c = C0730a.f4322h;
                                    if (c1200c != null) {
                                        c1200c.m9130j(false);
                                    }
                                    break;
                                case 102:
                                    String stringExtra2 = intent.getStringExtra("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_DATA_STRING");
                                    C0982s.m7373c("Uilogic,broadcastReceiverControl: Bluetooth Pin Code = " + stringExtra2);
                                    if (stringExtra2 != null) {
                                        str = stringExtra2;
                                    }
                                    C0795b0.m6080y((Context) C0995e.this.f6183e.get(), str);
                                    if (C0733d.m5591i() && (c0735f2 = C0733d.f4428l) != null) {
                                        c0735f2.m5740p0(str.getBytes());
                                        break;
                                    }
                                    break;
                                case 103:
                                    C0735f c0735f3 = C0733d.f4428l;
                                    if (c0735f3 != null) {
                                        c0735f3.m5734m0();
                                    }
                                    break;
                                case 104:
                                    if (C0733d.f4428l != null && C0735f.f4458O) {
                                        C0733d.m5579O(1, 25);
                                        C0733d.f4428l.m5713b1();
                                        break;
                                    }
                                    break;
                                case 105:
                                    if (C0733d.f4428l != null && C0735f.f4458O) {
                                        C0733d.f4428l.m5694Q0();
                                        break;
                                    }
                                    break;
                                case 106:
                                    C0995e.this.m7434G();
                                    break;
                            }
                            break;
                    }
                }
            }
        }

        c() {
        }

        /* JADX INFO: renamed from: a */
        void m7464a() {
            C0982s.m7373c("Uilogic,register: cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT");
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT");
            ((Context) C0995e.this.f6183e.get()).registerReceiver(this.f6195a, intentFilter);
            this.f6196b = true;
        }

        /* JADX INFO: renamed from: b */
        void m7465b() {
            C0982s.m7373c("Uilogic,unregister: cn.manstep.phonemirrorBox.AUTO_BOX_CONTROL_CMD_EVT");
            if (this.f6196b) {
                try {
                    ((Context) C0995e.this.f6183e.get()).unregisterReceiver(this.f6195a);
                } catch (Exception e) {
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
                this.f6196b = false;
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.v0.e$d */
    public interface d {
        /* JADX INFO: renamed from: g */
        void mo5834g(int i, int i2, int i3);

        /* JADX INFO: renamed from: s */
        void mo5835s(int i, int i2, Bundle bundle);

        /* JADX INFO: renamed from: x */
        void mo5836x(int i, int i2, String str);
    }

    private C0995e(Context context) {
        this.f6183e = new WeakReference<>(null);
        this.f6183e = new WeakReference<>(context);
        this.f6192n.m7464a();
        this.f6191m = new a(Looper.myLooper());
        C0991a.m7412t().mo7153q(context);
    }

    /* JADX INFO: renamed from: A */
    public static C0995e m7428A() {
        return f6179o;
    }

    /* JADX INFO: renamed from: B */
    public static void m7429B(Context context) {
        if (f6179o == null) {
            C0982s.m7373c("Uilogic getInstance");
            f6179o = new C0995e(context);
            C0982s.m7373c("Uilogic getInstance: " + f6179o);
        } else {
            C0982s.m7373c("We have Uilogic already: " + f6179o);
            if (!(context instanceof Main1Activity)) {
                m7456r(context);
            }
        }
        m7460x(5);
    }

    /* JADX INFO: renamed from: C */
    public static boolean m7430C() {
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            return c0995e.f6181c;
        }
        return false;
    }

    /* JADX INFO: renamed from: D */
    public static String m7431D(int i) {
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

    /* JADX INFO: renamed from: E */
    public static String m7432E(int i) {
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

    /* JADX INFO: renamed from: F */
    public static void m7433F() {
        C0982s.m7373c("Uilogic,releaseInstance");
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            c0995e.m7463s();
            f6179o = null;
        }
        C0991a.m7412t().m7417E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: G */
    public void m7434G() {
        if (C0733d.m5574G()) {
            C0991a.m7412t().mo7137a();
        }
    }

    /* JADX INFO: renamed from: H */
    public static void m7435H(int i) {
        C0982s.m7373c("Uilogic,sendCarControl: ctrlCmd = " + i);
        C0995e c0995e = f6179o;
        if (c0995e == null || c0995e.f6186h == null) {
            return;
        }
        if (i >= 200 && i <= 205) {
            if (C0991a.m7412t().m7423w()) {
                if (i == 202) {
                    C0730a.m5426L(true, true);
                    f6179o.f6186h.m5607K(i);
                    return;
                }
                return;
            }
            if (i == 203) {
                C0827c.m6227n().m6236u();
                C0730a.m5426L(true, false);
            } else if (i == 202) {
                C0730a.m5426L(true, true);
            } else if (i == 201 || i == 204 || i == 205) {
                C0827c.m6227n().m6236u();
                C0730a.m5426L(false, true);
            }
        }
        f6179o.f6186h.m5607K(i);
    }

    /* JADX INFO: renamed from: I */
    public static void m7436I(int i) {
        C0982s.m7373c("Uilogic,sendCarControlByKey: cmd = " + i);
        switch (i) {
            case 1:
                if (!C0953u.m7001z().m7022U()) {
                    if (C0991a.m7412t().m7422v()) {
                        m7435H(300);
                    }
                } else if (C0991a.m7412t().m7423w() || C0991a.m7412t().m7422v()) {
                    m7435H(301);
                }
                m7435H(205);
                break;
            case 2:
                if (!C0953u.m7001z().m7022U()) {
                    if (C0991a.m7412t().m7423w() || C0991a.m7412t().m7422v()) {
                        m7435H(301);
                    }
                } else if (C0991a.m7412t().m7422v()) {
                    m7435H(300);
                }
                m7435H(204);
                break;
            case 3:
                m7435H(201);
                break;
            case 4:
                m7435H(202);
                break;
            case 5:
                m7435H(203);
                break;
            case 6:
                m7435H(204);
                break;
            case 7:
                m7435H(205);
                break;
            case 8:
                m7435H(5);
                m7435H(6);
                break;
            case 9:
                m7435H(200);
                break;
            case 10:
                m7435H(106);
                break;
            case 11:
                if (!m7430C()) {
                    C0733d.m5579O(4, 1);
                } else {
                    C0733d.m5579O(4, 0);
                }
                break;
            case 12:
                m7435H(104);
                m7435H(105);
                break;
            case 13:
                m7435H(100);
                break;
            case 14:
                m7435H(101);
                break;
            case 15:
                m7435H(102);
                break;
            case 16:
                m7435H(103);
                break;
            case 17:
                m7435H(300);
                break;
            case 18:
                m7435H(301);
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
                m7435H(i + 283);
                break;
            default:
                C0982s.m7373c("Uilogic,sendCarControlByKey: Unknown cmd = " + i);
                break;
        }
    }

    /* JADX INFO: renamed from: J */
    public static void m7437J(int i) {
        C0733d c0733d;
        C0995e c0995e = f6179o;
        if (c0995e == null || (c0733d = c0995e.f6186h) == null) {
            return;
        }
        if (i == 10) {
            C0733d.m5579O(4, 0);
        } else {
            c0733d.m5609N(i);
        }
    }

    /* JADX INFO: renamed from: K */
    public static void m7438K(C0734e c0734e) {
        C0733d c0733d;
        C0995e c0995e = f6179o;
        if (c0995e == null || (c0733d = c0995e.f6186h) == null) {
            return;
        }
        c0733d.m5610Q(c0734e);
    }

    /* JADX INFO: renamed from: L */
    public static void m7439L(int i, int i2, int i3, int i4) {
        C0733d c0733d;
        C0995e c0995e = f6179o;
        if (c0995e == null || (c0733d = c0995e.f6186h) == null) {
            return;
        }
        c0733d.m5614V(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: M */
    public static C0733d m7440M(C0733d.g gVar) {
        C0982s.m7373c("UiLogic,setBoxInterfaceListener: " + gVar);
        C0995e c0995e = f6179o;
        if (c0995e == null) {
            return null;
        }
        if (!c0995e.f6190l.contains(gVar)) {
            f6179o.f6190l.add(gVar);
        }
        C0733d c0733d = f6179o.f6186h;
        c0733d.m5621g(gVar);
        return c0733d;
    }

    /* JADX INFO: renamed from: N */
    private void m7441N(Context context) {
        this.f6183e = null;
        this.f6183e = new WeakReference<>(context);
    }

    /* JADX INFO: renamed from: O */
    public static void m7442O(d dVar) {
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            c0995e.f6187i.add(dVar);
        }
    }

    /* JADX INFO: renamed from: P */
    public static void m7443P(boolean z) {
        C0982s.m7386p("Uilogic", "setUsbEnable: " + z);
        C0995e c0995e = f6179o;
        if (c0995e == null) {
            C0982s.m7376f("Uilogic", "setUsbEnable: instance = null");
            return;
        }
        C0733d c0733d = c0995e.f6186h;
        if (c0733d != null) {
            c0733d.m5615X(z);
        } else {
            C0982s.m7376f("Uilogic", "setUsbEnable: instance.mboxInterface = null");
        }
    }

    /* JADX INFO: renamed from: Q */
    public static void m7444Q(boolean z) {
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            c0995e.m7445R(z);
        }
    }

    /* JADX INFO: renamed from: R */
    private void m7445R(boolean z) {
        C0982s.m7373c("Uilogic,setVisibleInner: setVisible = " + z);
        if (z) {
            C0991a.m7412t().mo7146j();
        } else {
            C0991a.m7412t().mo7150n();
        }
        this.f6181c = z;
        C0982s.m7373c("Uilogic,setVisibleInner: boxWorkMan = " + this.f6180b);
        C0961b c0961b = this.f6180b;
        if (c0961b != null) {
            c0961b.m7160b(z);
            throw null;
        }
        if (this.f6181c) {
            C0733d c0733d = this.f6186h;
            if (c0733d != null) {
                c0733d.m5616Y();
                return;
            }
            return;
        }
        C0922a c0922a = this.f6185g;
        if (c0922a != null) {
            c0922a.m6803q();
        }
        C0799a c0799a = this.f6184f;
        if (c0799a != null) {
            c0799a.m6172l();
        }
        if (this.f6186h == null || !C0733d.m5599t()) {
            return;
        }
        C0973j.m7257c().m7260e("AndroidAuto", 800L, new b());
    }

    /* JADX INFO: renamed from: S */
    public static void m7446S(C0733d.g gVar) {
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            c0995e.f6190l.remove(gVar);
            f6179o.f6186h.m5620c0(gVar);
            if (gVar == f6179o.f6183e.get()) {
                f6179o.f6192n.m7465b();
            }
        }
    }

    /* JADX INFO: renamed from: T */
    public static void m7447T(d dVar) {
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            c0995e.f6187i.remove(dVar);
        }
    }

    /* JADX INFO: renamed from: r */
    public static void m7456r(Context context) {
        C0982s.m7373c("Uilogic changeInstance: context = " + context + "," + f6179o);
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            c0995e.f6192n.m7465b();
            f6179o.m7441N(context);
            f6179o.f6192n.m7464a();
            C0922a c0922a = f6179o.f6185g;
            if (c0922a != null) {
                c0922a.m6797g(context);
            }
            C0799a c0799a = f6179o.f6184f;
            if (c0799a != null) {
                c0799a.m6167f(context);
            }
            C0733d c0733d = f6179o.f6186h;
            if (c0733d != null) {
                c0733d.m5622l(context);
            }
        }
        C0991a.m7412t().mo7153q(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t */
    public void m7457t(int i, int i2, int i3) {
        Iterator<d> it = this.f6187i.iterator();
        while (it.hasNext()) {
            it.next().mo5834g(i, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u */
    public void m7458u(int i, int i2, Bundle bundle) {
        Iterator<d> it = this.f6187i.iterator();
        while (it.hasNext()) {
            it.next().mo5835s(i, i2, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w */
    public void m7459w(int i, int i2, String str) {
        Iterator<d> it = this.f6187i.iterator();
        while (it.hasNext()) {
            it.next().mo5836x(i, i2, str);
        }
    }

    /* JADX INFO: renamed from: x */
    public static void m7460x(int i) {
        C0982s.m7373c("enterModeInner: instance=" + f6179o + " val=" + i);
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            c0995e.m7461y(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y */
    public void m7461y(int i) {
        C0982s.m7373c("Uilogic,enterModeInner: iModeNow=" + this.f6182d + " ModeTo=" + i);
        if (i == this.f6182d) {
            return;
        }
        C0733d c0733d = this.f6186h;
        if (c0733d == null || c0733d.m5606D()) {
            this.f6182d = i;
            if (i == 1) {
                C0922a c0922a = this.f6185g;
                if (c0922a != null) {
                    c0922a.m6798h();
                    this.f6185g = null;
                }
                C0961b c0961b = this.f6180b;
                if (c0961b != null) {
                    c0961b.m7159a();
                    throw null;
                }
                C0733d c0733d2 = this.f6186h;
                if (c0733d2 != null) {
                    c0733d2.m5624p();
                    this.f6186h = null;
                }
                if (this.f6184f == null) {
                    C0799a c0799a = new C0799a(this.f6183e.get());
                    this.f6184f = c0799a;
                    c0799a.m6166e(this);
                    Iterator<C0799a.d> it = this.f6188j.iterator();
                    while (it.hasNext()) {
                        this.f6184f.m6166e(it.next());
                    }
                    return;
                }
                return;
            }
            if (i == 2) {
                C0799a c0799a2 = this.f6184f;
                if (c0799a2 != null) {
                    c0799a2.m6168g();
                    this.f6184f = null;
                }
                C0961b c0961b2 = this.f6180b;
                if (c0961b2 != null) {
                    c0961b2.m7159a();
                    throw null;
                }
                C0733d c0733d3 = this.f6186h;
                if (c0733d3 != null) {
                    c0733d3.m5624p();
                    this.f6186h = null;
                }
                if (this.f6185g == null) {
                    C0922a c0922a2 = new C0922a(this.f6183e.get());
                    this.f6185g = c0922a2;
                    c0922a2.m6796f(this);
                    Iterator<C0922a.e> it2 = this.f6189k.iterator();
                    while (it2.hasNext()) {
                        this.f6185g.m6796f(it2.next());
                    }
                    return;
                }
                return;
            }
            if (i == 3) {
                C0922a c0922a3 = this.f6185g;
                if (c0922a3 != null) {
                    c0922a3.m6798h();
                    this.f6185g = null;
                }
                C0799a c0799a3 = this.f6184f;
                if (c0799a3 != null) {
                    c0799a3.m6168g();
                    this.f6184f = null;
                }
                C0961b c0961b3 = this.f6180b;
                if (c0961b3 != null) {
                    c0961b3.m7159a();
                    throw null;
                }
                C0733d c0733d4 = this.f6186h;
                if (c0733d4 != null) {
                    c0733d4.m5624p();
                    this.f6186h = null;
                    return;
                }
                return;
            }
            if (i != 4) {
                if (i != 5) {
                    return;
                }
                C0799a c0799a4 = this.f6184f;
                if (c0799a4 != null) {
                    c0799a4.m6168g();
                    this.f6184f = null;
                }
                C0922a c0922a4 = this.f6185g;
                if (c0922a4 != null) {
                    c0922a4.m6798h();
                    this.f6185g = null;
                }
                if (this.f6186h == null) {
                    C0982s.m7373c("Uilogic,enterModeInner: new BoxInterface");
                    C0733d c0733d5 = new C0733d(this.f6183e.get());
                    this.f6186h = c0733d5;
                    c0733d5.m5621g(this);
                    Iterator<C0733d.g> it3 = this.f6190l.iterator();
                    while (it3.hasNext()) {
                        this.f6186h.m5621g(it3.next());
                    }
                }
                m7444Q(this.f6181c);
                return;
            }
            if (this.f6184f == null) {
                C0799a c0799a5 = new C0799a(this.f6183e.get());
                this.f6184f = c0799a5;
                c0799a5.m6166e(this);
                Iterator<C0799a.d> it4 = this.f6188j.iterator();
                while (it4.hasNext()) {
                    this.f6184f.m6166e(it4.next());
                }
            }
            if (this.f6185g == null) {
                C0922a c0922a5 = new C0922a(this.f6183e.get());
                this.f6185g = c0922a5;
                c0922a5.m6796f(this);
                Iterator<C0922a.e> it5 = this.f6189k.iterator();
                while (it5.hasNext()) {
                    this.f6185g.m6796f(it5.next());
                }
            }
            if (this.f6186h == null) {
                C0982s.m7373c("Uilogic,enterModeInner: new BoxInterface");
                C0733d c0733d6 = new C0733d(this.f6183e.get());
                this.f6186h = c0733d6;
                c0733d6.m5621g(this);
                Iterator<C0733d.g> it6 = this.f6190l.iterator();
                while (it6.hasNext()) {
                    this.f6186h.m5621g(it6.next());
                }
            }
        }
    }

    /* JADX INFO: renamed from: z */
    public static Context m7462z() {
        C0995e c0995e = f6179o;
        if (c0995e != null) {
            return c0995e.f6183e.get();
        }
        return null;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
        int iIntValue;
        if (i == 120) {
            iIntValue = obj != null ? ((Integer) obj).intValue() : 0;
            Handler handler = this.f6191m;
            handler.sendMessage(handler.obtainMessage(1, 4, 70, Integer.valueOf(iIntValue)));
            return;
        }
        if (i == 26) {
            iIntValue = obj != null ? ((Integer) obj).intValue() : 0;
            Handler handler2 = this.f6191m;
            handler2.sendMessage(handler2.obtainMessage(1, 4, 32, Integer.valueOf(iIntValue)));
            return;
        }
        if (i == 216) {
            Handler handler3 = this.f6191m;
            handler3.sendMessage(handler3.obtainMessage(1, 4, 60, obj));
            return;
        }
        if (i == 217) {
            Handler handler4 = this.f6191m;
            handler4.sendMessage(handler4.obtainMessage(1, 4, 61, obj));
        } else if (i == 218) {
            Handler handler5 = this.f6191m;
            handler5.sendMessage(handler5.obtainMessage(1, 4, 62, obj));
        } else if (i == 219) {
            Handler handler6 = this.f6191m;
            handler6.sendMessage(handler6.obtainMessage(1, 4, 63, obj));
        }
    }

    @Override // cn.manstep.phonemirrorBox.p069d.C0799a.d
    /* JADX INFO: renamed from: b */
    public void mo6174b(int i) {
        C0982s.m7373c("Uilogic on_Android_Parse :" + i);
        if (i == 0) {
            Handler handler = this.f6191m;
            handler.sendMessage(handler.obtainMessage(1, 1, 1));
            Handler handler2 = this.f6191m;
            handler2.sendMessage(handler2.obtainMessage(0, 3, 0));
            Handler handler3 = this.f6191m;
            handler3.sendMessage(handler3.obtainMessage(0, 4, 0));
            return;
        }
        if (i == 1) {
            Handler handler4 = this.f6191m;
            handler4.sendMessage(handler4.obtainMessage(1, 1, 5));
            Handler handler5 = this.f6191m;
            handler5.sendMessage(handler5.obtainMessage(0, 1, 0));
            return;
        }
        if (i == 2) {
            Handler handler6 = this.f6191m;
            handler6.sendMessage(handler6.obtainMessage(1, 1, 2));
        } else {
            if (i != 3) {
                return;
            }
            Handler handler7 = this.f6191m;
            handler7.sendMessage(handler7.obtainMessage(1, 1, 3));
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.p081n0.C0922a.e
    /* JADX INFO: renamed from: d */
    public void mo6822d(int i) {
        C0982s.m7373c("Uilogic on_iPhone_Parse :" + i);
        if (i != 0) {
            if (i != 2) {
                return;
            }
            Handler handler = this.f6191m;
            handler.sendMessage(handler.obtainMessage(1, 1, 4));
            return;
        }
        Handler handler2 = this.f6191m;
        handler2.sendMessage(handler2.obtainMessage(1, 1, 1));
        Handler handler3 = this.f6191m;
        handler3.sendMessage(handler3.obtainMessage(0, 3, 0));
        Handler handler4 = this.f6191m;
        handler4.sendMessage(handler4.obtainMessage(0, 4, 0));
    }

    @Override // cn.manstep.phonemirrorBox.p069d.C0799a.d
    /* JADX INFO: renamed from: e */
    public void mo6175e(C0799a c0799a) {
    }

    @Override // cn.manstep.phonemirrorBox.p081n0.C0922a.e
    /* JADX INFO: renamed from: f */
    public void mo6823f(boolean z) {
    }

    @Override // cn.manstep.phonemirrorBox.p081n0.C0922a.e
    /* JADX INFO: renamed from: g */
    public void mo6824g(C0922a c0922a) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        C0982s.m7375e("Uilogic,on_Box_Phase: (" + i + ")" + C0733d.m5596q(i));
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        switch (i) {
                            case 12:
                                Handler handler = this.f6191m;
                                handler.sendMessage(handler.obtainMessage(1, 4, 52));
                                Handler handler2 = this.f6191m;
                                handler2.sendMessage(handler2.obtainMessage(1, 1, 1));
                                Handler handler3 = this.f6191m;
                                handler3.sendMessage(handler3.obtainMessage(0, 3, 0));
                                Handler handler4 = this.f6191m;
                                handler4.sendMessage(handler4.obtainMessage(0, 5, 0));
                                break;
                            case 13:
                                Handler handler5 = this.f6191m;
                                handler5.sendMessage(handler5.obtainMessage(1, 1, 1));
                                Handler handler6 = this.f6191m;
                                handler6.sendMessage(handler6.obtainMessage(1, 4, 14));
                                break;
                            case 14:
                                Handler handler7 = this.f6191m;
                                handler7.sendMessage(handler7.obtainMessage(1, 1, 3));
                                break;
                            case 15:
                                Handler handler8 = this.f6191m;
                                handler8.sendMessage(handler8.obtainMessage(1, 1, 4));
                                break;
                            case 16:
                                Handler handler9 = this.f6191m;
                                handler9.sendMessage(handler9.obtainMessage(1, 1, 6));
                                break;
                            case 17:
                                Handler handler10 = this.f6191m;
                                handler10.sendMessage(handler10.obtainMessage(1, 5, 0));
                                break;
                            case 18:
                                Handler handler11 = this.f6191m;
                                handler11.sendMessage(handler11.obtainMessage(1, 4, 10));
                                break;
                            default:
                                switch (i) {
                                    case 21:
                                        Handler handler12 = this.f6191m;
                                        handler12.sendMessage(handler12.obtainMessage(1, 6, 0));
                                        break;
                                    case 22:
                                        Handler handler13 = this.f6191m;
                                        handler13.sendMessage(handler13.obtainMessage(1, 1, 1));
                                        Handler handler14 = this.f6191m;
                                        handler14.sendMessage(handler14.obtainMessage(1, 4, 16));
                                        break;
                                    case 23:
                                        Handler handler15 = this.f6191m;
                                        handler15.sendMessage(handler15.obtainMessage(1, 1, 1));
                                        Handler handler16 = this.f6191m;
                                        handler16.sendMessage(handler16.obtainMessage(1, 4, 17));
                                        break;
                                    case 24:
                                        Handler handler17 = this.f6191m;
                                        handler17.sendMessage(handler17.obtainMessage(1, 1, 1));
                                        Handler handler18 = this.f6191m;
                                        handler18.sendMessage(handler18.obtainMessage(1, 4, 18));
                                        break;
                                    case 25:
                                        Handler handler19 = this.f6191m;
                                        handler19.sendMessage(handler19.obtainMessage(1, 1, 1));
                                        Handler handler20 = this.f6191m;
                                        handler20.sendMessage(handler20.obtainMessage(1, 4, 31));
                                        C0982s.m7376f("Uilogic", "on_Box_Phase: EVT_MANUAL_DISCONNECT_PHONE");
                                        break;
                                    default:
                                        switch (i) {
                                            case 27:
                                                Handler handler21 = this.f6191m;
                                                handler21.sendMessage(handler21.obtainMessage(1, 4, 33));
                                                break;
                                            case 28:
                                                Handler handler22 = this.f6191m;
                                                handler22.sendMessage(handler22.obtainMessage(1, 4, 34));
                                                break;
                                            case 29:
                                                Handler handler23 = this.f6191m;
                                                handler23.sendMessage(handler23.obtainMessage(1, 4, 35));
                                                break;
                                            case 30:
                                                Handler handler24 = this.f6191m;
                                                handler24.sendMessage(handler24.obtainMessage(1, 4, 36));
                                                break;
                                            case 31:
                                                Handler handler25 = this.f6191m;
                                                handler25.sendMessage(handler25.obtainMessage(1, 4, 37));
                                                break;
                                            case 32:
                                                Handler handler26 = this.f6191m;
                                                handler26.sendMessage(handler26.obtainMessage(1, 8, 2));
                                                break;
                                            case 33:
                                                Handler handler27 = this.f6191m;
                                                handler27.sendMessage(handler27.obtainMessage(1, 8, 1));
                                                break;
                                            case 34:
                                                Handler handler28 = this.f6191m;
                                                handler28.sendMessage(handler28.obtainMessage(1, 8, 3));
                                                break;
                                            case 35:
                                                Handler handler29 = this.f6191m;
                                                handler29.sendMessage(handler29.obtainMessage(1, 4, 56));
                                                break;
                                            default:
                                                switch (i) {
                                                    case 50:
                                                        Handler handler30 = this.f6191m;
                                                        handler30.sendMessage(handler30.obtainMessage(1, 4, 50));
                                                        break;
                                                    case 51:
                                                        Handler handler31 = this.f6191m;
                                                        handler31.sendMessage(handler31.obtainMessage(1, 4, 51));
                                                        break;
                                                    case 52:
                                                        Handler handler32 = this.f6191m;
                                                        handler32.sendMessage(handler32.obtainMessage(1, 4, 54));
                                                        break;
                                                    case 53:
                                                        Handler handler33 = this.f6191m;
                                                        handler33.sendMessage(handler33.obtainMessage(1, 4, 55));
                                                        break;
                                                    default:
                                                        switch (i) {
                                                            case 116:
                                                                Handler handler34 = this.f6191m;
                                                                handler34.sendMessage(handler34.obtainMessage(1, 4, 1));
                                                                break;
                                                            case 117:
                                                                Handler handler35 = this.f6191m;
                                                                handler35.sendMessage(handler35.obtainMessage(1, 4, 2));
                                                                break;
                                                            case 118:
                                                                Handler handler36 = this.f6191m;
                                                                handler36.sendMessage(handler36.obtainMessage(1, 4, 3));
                                                                break;
                                                            case 119:
                                                                Handler handler37 = this.f6191m;
                                                                handler37.sendMessage(handler37.obtainMessage(1, 4, 4));
                                                                break;
                                                            case 120:
                                                                Handler handler38 = this.f6191m;
                                                                handler38.sendMessage(handler38.obtainMessage(1, 4, 5));
                                                                break;
                                                            case 121:
                                                                Handler handler39 = this.f6191m;
                                                                handler39.sendMessage(handler39.obtainMessage(1, 4, 6));
                                                                break;
                                                            case 122:
                                                                Handler handler40 = this.f6191m;
                                                                handler40.sendMessage(handler40.obtainMessage(1, 4, 7));
                                                                break;
                                                            case 123:
                                                                Handler handler41 = this.f6191m;
                                                                handler41.sendMessage(handler41.obtainMessage(1, 4, 8));
                                                                break;
                                                            case 124:
                                                                Handler handler42 = this.f6191m;
                                                                handler42.sendMessage(handler42.obtainMessage(1, 4, 9));
                                                                break;
                                                            case 125:
                                                                Handler handler43 = this.f6191m;
                                                                handler43.sendMessage(handler43.obtainMessage(1, 4, 11));
                                                                break;
                                                            case 126:
                                                                Handler handler44 = this.f6191m;
                                                                handler44.sendMessage(handler44.obtainMessage(1, 4, 12));
                                                                break;
                                                            case 127:
                                                                Handler handler45 = this.f6191m;
                                                                handler45.sendMessage(handler45.obtainMessage(1, 4, 13));
                                                                break;
                                                            default:
                                                                switch (i) {
                                                                    case 200:
                                                                        Handler handler46 = this.f6191m;
                                                                        handler46.sendMessage(handler46.obtainMessage(1, 4, 19));
                                                                        break;
                                                                    case 201:
                                                                        Handler handler47 = this.f6191m;
                                                                        handler47.sendMessage(handler47.obtainMessage(1, 4, 20));
                                                                        break;
                                                                    case 202:
                                                                        Handler handler48 = this.f6191m;
                                                                        handler48.sendMessage(handler48.obtainMessage(1, 4, 21));
                                                                        break;
                                                                    case 203:
                                                                        Handler handler49 = this.f6191m;
                                                                        handler49.sendMessage(handler49.obtainMessage(1, 4, 22));
                                                                        break;
                                                                    case 204:
                                                                        Handler handler50 = this.f6191m;
                                                                        handler50.sendMessage(handler50.obtainMessage(1, 4, 23));
                                                                        break;
                                                                    case 205:
                                                                        Handler handler51 = this.f6191m;
                                                                        handler51.sendMessage(handler51.obtainMessage(1, 4, 24));
                                                                        break;
                                                                    case 206:
                                                                        Handler handler52 = this.f6191m;
                                                                        handler52.sendMessage(handler52.obtainMessage(1, 4, 25));
                                                                        break;
                                                                    case 207:
                                                                        Handler handler53 = this.f6191m;
                                                                        handler53.sendMessage(handler53.obtainMessage(1, 4, 26));
                                                                        break;
                                                                    case 208:
                                                                        C0982s.m7386p("Uilogic", "on_Box_Phase: EVT_BOX_WIFI_DISCONNECTED phoneIsConnected=" + C0733d.m5574G());
                                                                        Handler handler54 = this.f6191m;
                                                                        handler54.sendMessage(handler54.obtainMessage(1, 4, 27));
                                                                        break;
                                                                    case 209:
                                                                        Handler handler55 = this.f6191m;
                                                                        handler55.sendMessage(handler55.obtainMessage(1, 4, 28));
                                                                        break;
                                                                    case 210:
                                                                        Handler handler56 = this.f6191m;
                                                                        handler56.sendMessage(handler56.obtainMessage(1, 4, 29));
                                                                        break;
                                                                    case 211:
                                                                        Handler handler57 = this.f6191m;
                                                                        handler57.sendMessage(handler57.obtainMessage(1, 4, 30));
                                                                        break;
                                                                    case 212:
                                                                        Handler handler58 = this.f6191m;
                                                                        handler58.sendMessage(handler58.obtainMessage(1, 4, 38));
                                                                        break;
                                                                    case 213:
                                                                        Handler handler59 = this.f6191m;
                                                                        handler59.sendMessage(handler59.obtainMessage(1, 4, 39));
                                                                        break;
                                                                    case 214:
                                                                        Handler handler60 = this.f6191m;
                                                                        handler60.sendMessage(handler60.obtainMessage(1, 4, 40));
                                                                        break;
                                                                    case 215:
                                                                        Handler handler61 = this.f6191m;
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
            Handler handler62 = this.f6191m;
            handler62.sendMessage(handler62.obtainMessage(1, 1, 5));
            return;
        }
        C0982s.m7375e("UiLogic on_Box_Phase EVT_PHONE_PLUG_OUT");
        Handler handler63 = this.f6191m;
        handler63.sendMessage(handler63.obtainMessage(1, 1, 1));
        Handler handler64 = this.f6191m;
        handler64.sendMessage(handler64.obtainMessage(1, 4, 15));
    }

    /* JADX INFO: renamed from: s */
    public void m7463s() {
        m7461y(3);
        this.f6187i.clear();
        this.f6192n.m7465b();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }
}
