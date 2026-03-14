package cn.manstep.phonemirrorBox.BoxInterface;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.view.SurfaceHolder;
import cn.manstep.phonemirrorBox.BoxInterface.C0735f;
import cn.manstep.phonemirrorBox.C0795b0;
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.p084q0.InterfaceC0937g;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0960a0;
import cn.manstep.phonemirrorBox.util.C0969f;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TimerTask;
import java.util.Vector;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0733d {

    /* JADX INFO: renamed from: k */
    private static Handler f4427k;

    /* JADX INFO: renamed from: l */
    public static C0735f f4428l;

    /* JADX INFO: renamed from: p */
    private static C0739j f4432p;

    /* JADX INFO: renamed from: a */
    public WeakReference<Context> f4434a;

    /* JADX INFO: renamed from: c */
    private BroadcastReceiver f4436c;

    /* JADX INFO: renamed from: d */
    private PendingIntent f4437d;

    /* JADX INFO: renamed from: i */
    private C0960a0 f4442i;

    /* JADX INFO: renamed from: m */
    private static List<g> f4429m = new ArrayList();

    /* JADX INFO: renamed from: n */
    private static Socket f4430n = null;

    /* JADX INFO: renamed from: o */
    private static final Vector<e> f4431o = new Vector<>();

    /* JADX INFO: renamed from: q */
    private static boolean f4433q = false;

    /* JADX INFO: renamed from: b */
    private boolean f4435b = false;

    /* JADX INFO: renamed from: e */
    private Boolean f4438e = Boolean.FALSE;

    /* JADX INFO: renamed from: f */
    private ScheduledExecutorService f4439f = new ScheduledThreadPoolExecutor(1);

    /* JADX INFO: renamed from: g */
    private TimerTask f4440g = null;

    /* JADX INFO: renamed from: h */
    private Thread f4441h = null;

    /* JADX INFO: renamed from: j */
    private boolean f4443j = true;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$a */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (1 != i) {
                if (2 == i) {
                    int i2 = message.arg1;
                    Iterator it = C0733d.f4429m.iterator();
                    while (it.hasNext()) {
                        ((g) it.next()).mo5276c(message.arg1);
                    }
                    return;
                }
                if (3 == i) {
                    return;
                }
                if (4 == i) {
                    Intent intent = new Intent("cn.manstep.phonemirror.MirrorService.INTENT_MSG_OUT");
                    intent.putExtra("WPARAM", 3);
                    intent.putExtra("LPARAM", message.arg1);
                    C0733d.this.f4434a.get().sendBroadcast(intent);
                    return;
                }
                if (6 == i) {
                    Iterator it2 = C0733d.f4429m.iterator();
                    while (it2.hasNext()) {
                        ((g) it2.next()).mo5274a(message.arg1, message.obj);
                    }
                    return;
                }
                return;
            }
            int i3 = message.arg1;
            if (i3 == 0) {
                C0982s.m7375e("EVT_ANDROID_PLUG_OUT");
            } else if (i3 == 2) {
                C0982s.m7375e("EVT_IPHONE_PLUG_OUT");
            } else if (i3 == 12) {
                C0982s.m7375e("EVT_OTG_PLUG_OUT: stopMirror");
                C0733d.this.m5619b0();
            } else if (i3 == 13) {
                C0982s.m7375e("EVT_OTG_PLUG_IN: startMirror");
                C0733d.this.m5617Z();
            }
            if (C0733d.f4429m.size() <= 0) {
                C0982s.m7375e("BoxInterface,handleMessage: MSG_PHASE mlisteners.size()=" + C0733d.f4429m.size());
            }
            for (g gVar : C0733d.f4429m) {
                Object obj = message.obj;
                if (obj == null) {
                    gVar.mo5278o(message.arg1);
                } else {
                    gVar.mo5274a(message.arg1, obj);
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$b */
    class b extends Thread {
        b(C0733d c0733d) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (C0733d.f4428l != null) {
                synchronized (C0733d.f4431o) {
                    try {
                        C0733d.f4431o.wait(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    while (!C0733d.f4431o.isEmpty()) {
                        try {
                            OutputStream outputStream = C0733d.f4430n.getOutputStream();
                            e eVar = (e) C0733d.f4431o.firstElement();
                            outputStream.write(eVar.f4448b, 0, eVar.f4447a);
                            C0733d.f4431o.remove(0);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$c */
    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("cn.manstep.phonemirror.USB_PERMISSION".equals(intent.getAction())) {
                C0982s.m7375e("User have clicked USB_PERMISSION dialog");
                C0733d.this.f4438e = Boolean.FALSE;
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$d */
    class d implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f4446b;

        d(C0733d c0733d, int i) {
            this.f4446b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            C0982s.m7374d("BoxInterface", "sendCarControl: cmd=" + this.f4446b + ", " + C0733d.f4428l.m5699T0(this.f4446b));
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$e */
    private static class e {

        /* JADX INFO: renamed from: a */
        public int f4447a;

        /* JADX INFO: renamed from: b */
        public byte[] f4448b;
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$f */
    class f extends TimerTask {

        /* JADX INFO: renamed from: b */
        private boolean f4449b = false;

        /* JADX INFO: renamed from: c */
        private int f4450c = 0;

        f() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            boolean zM5824l = C0733d.f4432p.m5824l();
            if (zM5824l == this.f4449b) {
                if (zM5824l) {
                    this.f4450c = 0;
                } else {
                    if (C0969f.m7237c(C0733d.this.f4434a.get())) {
                        return;
                    }
                    int i = this.f4450c + 1;
                    this.f4450c = i;
                    C0733d.this.m5623n(i);
                }
                if (zM5824l != this.f4449b) {
                    this.f4449b = zM5824l;
                    C0733d.f4427k.sendMessage(C0733d.f4427k.obtainMessage(1, zM5824l ? 13 : 12, 0));
                    return;
                }
                return;
            }
            C0982s.m7375e("BoxInterface,DetectUsbTask sendMsg  usbConnected=" + zM5824l);
            this.f4449b = zM5824l;
            C0733d.f4427k.sendMessage(C0733d.f4427k.obtainMessage(1, zM5824l ? 13 : 12, 0));
            if (zM5824l) {
                return;
            }
            C0925p.f5881r = -1;
            C0735f c0735f = C0733d.f4428l;
            if (c0735f != null) {
                c0735f.m5712b0();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$g */
    public interface g {
        /* JADX INFO: renamed from: a */
        void mo5274a(int i, Object obj);

        /* JADX INFO: renamed from: c */
        void mo5276c(int i);

        /* JADX INFO: renamed from: n */
        void mo5277n(C0733d c0733d);

        /* JADX INFO: renamed from: o */
        void mo5278o(int i);

        /* JADX INFO: renamed from: v */
        void mo5279v(byte[] bArr);
    }

    public C0733d(Context context) {
        this.f4434a = new WeakReference<>(null);
        C0982s.m7374d("BoxInterface", "new BoxInterface()");
        this.f4434a = new WeakReference<>(context);
        f4432p = new C0739j(context);
        f4427k = new a();
        this.f4442i = new C0960a0(500L, new Handler(Looper.myLooper()));
        m5616Y();
    }

    /* JADX INFO: renamed from: A */
    public static boolean m5569A() {
        return m5570B(C0735f.k.m5775d());
    }

    /* JADX INFO: renamed from: B */
    public static boolean m5570B(int i) {
        return i == 4;
    }

    /* JADX INFO: renamed from: C */
    public static boolean m5571C() {
        return C0735f.k.m5776f() == 0;
    }

    /* JADX INFO: renamed from: E */
    public static boolean m5572E() {
        if (m5591i()) {
            return !C0731b.f4351h;
        }
        return false;
    }

    /* JADX INFO: renamed from: F */
    public static void m5573F(byte[] bArr) {
        Iterator<g> it = f4429m.iterator();
        while (it.hasNext()) {
            it.next().mo5279v(bArr);
        }
    }

    /* JADX INFO: renamed from: G */
    public static boolean m5574G() {
        if (m5591i()) {
            return C0735f.f4458O;
        }
        return false;
    }

    /* JADX INFO: renamed from: H */
    public static boolean m5575H(byte[] bArr, int i) {
        return f4432p.m5825p(bArr, i);
    }

    /* JADX INFO: renamed from: I */
    public static boolean m5576I() {
        if (m5591i()) {
            return f4428l.m5705W0(0);
        }
        return false;
    }

    /* JADX INFO: renamed from: J */
    public static void m5577J(boolean z) {
        C0739j c0739j = f4432p;
        if (c0739j != null) {
            c0739j.m5827r(z);
        }
    }

    /* JADX INFO: renamed from: L */
    public static void m5578L(int i) {
        if (m5574G()) {
            f4428l.m5699T0(i);
        }
    }

    /* JADX INFO: renamed from: O */
    public static boolean m5579O(int i, int i2) {
        Handler handler = f4427k;
        if (handler != null) {
            return handler.sendMessage(handler.obtainMessage(i, i2, 0));
        }
        return false;
    }

    /* JADX INFO: renamed from: P */
    public static boolean m5580P(int i, int i2, Object obj) {
        Handler handler = f4427k;
        if (handler != null) {
            return handler.sendMessage(handler.obtainMessage(i, i2, 0, obj));
        }
        return false;
    }

    /* JADX INFO: renamed from: R */
    public static void m5581R() {
        C0735f c0735f;
        C0982s.m7373c("BoxInterface,sendResetOnceDecoder");
        if (f4433q || (c0735f = f4428l) == null) {
            return;
        }
        c0735f.f4500z.m5469i();
        f4433q = true;
    }

    /* JADX INFO: renamed from: W */
    public static void m5582W(int i) {
        C0739j c0739j = f4432p;
        if (c0739j != null) {
            c0739j.m5828s(i);
        }
    }

    /* JADX INFO: renamed from: d0 */
    public static boolean m5587d0(byte[] bArr, int i) {
        return f4432p.m5829u(bArr, i);
    }

    /* JADX INFO: renamed from: h */
    public static boolean m5590h() {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            return c0735f.f4480f;
        }
        return false;
    }

    /* JADX INFO: renamed from: i */
    public static boolean m5591i() {
        if (f4428l == null) {
            return false;
        }
        return f4432p.m5824l();
    }

    /* JADX INFO: renamed from: j */
    public static void m5592j() {
        C0735f.k.m5774c(0);
    }

    /* JADX INFO: renamed from: k */
    public static void m5593k(int i) {
        C0735f.k.m5773b(i);
    }

    /* JADX INFO: renamed from: m */
    public static void m5594m(int i) {
        C0735f.k.m5774c(i);
    }

    /* JADX INFO: renamed from: o */
    public static boolean m5595o() {
        if (!m5591i()) {
            return false;
        }
        byte[] bytes = "\u0000".getBytes();
        return f4428l.m5738o0(bytes, bytes.length);
    }

    /* JADX INFO: renamed from: q */
    public static String m5596q(int i) {
        if (i == 27) {
            return "EVT_MIC_RECORDING";
        }
        if (i == 230) {
            return "EVT_UPDATE_CONNECTION_PIN_CODE";
        }
        if (i == 52) {
            return "EVT_WIFI_TRANS_ABNORMAL";
        }
        if (i == 53) {
            return "EVT_WIFI_TRANS_NORMAL";
        }
        switch (i) {
            case 0:
                return "EVT_ANDROID_PLUG_OUT";
            case 1:
                return "EVT_ANDROID_PLUG_IN";
            case 2:
                return "EVT_IPHONE_PLUG_OUT";
            case 3:
                return "EVT_IPHONE_PLUG_IN";
            case 4:
                return "EVT_PHONE_PLUG_IN";
            case 5:
                return "EVT_WAIT_HOTPOT";
            case 6:
                return "EVT_WAIT_AIRPLAY";
            case 7:
                return "EVT_PERMMISION_ASKING";
            case 8:
                return "EVT_NOT_REGIST";
            case 9:
                return "EVT_REG";
            case 10:
                return "EVT_SCREEN_ON";
            case 11:
                return "EVT_SCREEN_OFF";
            case 12:
                return "EVT_OTG_PLUG_OUT";
            case 13:
                return "EVT_OTG_PLUG_IN";
            case 14:
                return "EVT_ANDROID_WORKING";
            case 15:
                return "EVT_IPHONE_WORKING";
            case 16:
                return "EVT_CARLIFE_DOWNLOAD";
            case 17:
                return "EVT_SET_PERMISSION";
            case 18:
                return "EVT_DECODE_CONFIGURE_ERR";
            case 19:
                return "EVT_DECODE_OUTPUT_ERR";
            case 20:
                return "EVT_SETTINGS_PAGE_ENTER";
            case 21:
                return "EVT_SETTINGS_PAGE_BACK";
            case 22:
                return "EVT_FAKE_OTG_PLUG_IN";
            case 23:
                return "EVT_FAKE_OTG_PLUG_OUT";
            case 24:
                return "EVT_BOX_ENTER_U_MODE";
            case 25:
                return "EVT_MANUAL_DISCONNECT_PHONE";
            default:
                switch (i) {
                    case 32:
                        return "EVT_APP_LOG_GET";
                    case 33:
                        return "EVT_APP_UPDATE";
                    case 34:
                        return "EVT_APP_RESET";
                    case 35:
                        return "EVT_BOX_INFO";
                    default:
                        switch (i) {
                            case 116:
                                return "EVT_BOX_READY";
                            case 117:
                                return "EVT_BOXMIC_DETECTED";
                            case 118:
                                return "EVT_BOXMIC_CONNECTED";
                            case 119:
                                return "EVT_BOXMIC_DISCONNECTED";
                            case 120:
                                return "EVT_BOX_UPDATE";
                            case 121:
                                return "EVT_BOX_UPDATE_SUCCESS";
                            case 122:
                                return "EVT_BOX_UPDATE_FAILED";
                            case 123:
                                return "EVT_BOX_VERSION_ERROR";
                            case 124:
                                return "EVT_BOX_VERSION_SHOW";
                            case 125:
                                return "EVT_BOX_OTA_UPDATE";
                            case 126:
                                return "EVT_BOX_OTA_UPDATE_SUCCESS";
                            case 127:
                                return "EVT_BOX_OTA_UPDATE_FAILED";
                            default:
                                switch (i) {
                                    case 200:
                                        return "EVT_BOX_SUPPORT_AUTO_CONNECT";
                                    case 201:
                                        return "EVT_BOX_SCANING_DEVICES";
                                    case 202:
                                        return "EVT_BOX_DEVICE_FOUND";
                                    case 203:
                                        return "EVT_BOX_DEVICE_NOT_FOUND";
                                    case 204:
                                        return "EVT_BOX_CONNECT_DEVICE_FAILED";
                                    case 205:
                                        return "EVT_BOX_BLUETOOTH_CONNECTED";
                                    case 206:
                                        return "EVT_BOX_BLUETOOTH_DISCONNECTED";
                                    case 207:
                                        return "EVT_BOX_WIFI_CONNECTED";
                                    case 208:
                                        return "EVT_BOX_WIFI_DISCONNECTED";
                                    case 209:
                                        return "EVT_BOX_BLUETOOTH_PAIR_START";
                                    case 210:
                                        return "EVT_UPDATE_BLUETOOTH_PAIRED_LIST";
                                    case 211:
                                        return "EVT_UPDATE_BLUETOOTH_ONLINE_LIST";
                                    case 212:
                                        return "EVT_BOX_REQUEST_VIDEO_FOCUS";
                                    case 213:
                                        return "EVT_BOX_RELEASE_VIDEO_FOCUS";
                                    case 214:
                                        return "EVT_UPDATE_CONNECTION_URL";
                                    case 215:
                                        return "EVT_UPDATE_BOX_BLUETOOTH_NAME";
                                    default:
                                        return "Unknown: " + i;
                                }
                        }
                }
        }
    }

    /* JADX INFO: renamed from: r */
    public static String m5597r() {
        return m5591i() ? f4428l.m5669B() : BuildConfig.FLAVOR;
    }

    /* JADX INFO: renamed from: s */
    public static InterfaceC0937g m5598s() {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            return c0735f.m5683J();
        }
        return null;
    }

    /* JADX INFO: renamed from: t */
    public static boolean m5599t() {
        if (m5601v() && m5574G()) {
            return f4428l.m5696S();
        }
        return false;
    }

    /* JADX INFO: renamed from: u */
    public static boolean m5600u() {
        if ("2022.06.02.1010".compareTo(C0732c.m5542e().m5558p()) > 0) {
            return false;
        }
        return m5599t();
    }

    /* JADX INFO: renamed from: v */
    public static boolean m5601v() {
        return m5602w(C0735f.k.m5775d());
    }

    /* JADX INFO: renamed from: w */
    public static boolean m5602w(int i) {
        return i == 1;
    }

    /* JADX INFO: renamed from: x */
    public static boolean m5603x() {
        return m5604y(C0735f.k.m5776f());
    }

    /* JADX INFO: renamed from: y */
    public static boolean m5604y(int i) {
        return i == 2;
    }

    /* JADX INFO: renamed from: z */
    public static boolean m5605z() {
        if (m5601v() && m5574G()) {
            return f4428l.m5700U();
        }
        return false;
    }

    /* JADX INFO: renamed from: D */
    public boolean m5606D() {
        return this.f4443j;
    }

    /* JADX INFO: renamed from: K */
    public void m5607K(int i) {
        if (f4428l != null) {
            this.f4442i.m7158c(i, new d(this, i));
        }
    }

    /* JADX INFO: renamed from: M */
    public void m5608M(int i) {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            c0735f.m5699T0(i);
        }
    }

    /* JADX INFO: renamed from: N */
    public void m5609N(int i) {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            c0735f.m5751x0(i);
        }
    }

    /* JADX INFO: renamed from: Q */
    public void m5610Q(C0734e c0734e) {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            c0735f.m5678G0(c0734e);
        }
    }

    /* JADX INFO: renamed from: S */
    public void m5611S(SurfaceHolder surfaceHolder, boolean z) {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            c0735f.f4500z.m5470j(surfaceHolder, z);
        }
    }

    /* JADX INFO: renamed from: T */
    public void m5612T(int i, int i2, int i3) {
        C0731b c0731b;
        C0735f c0735f = f4428l;
        if (c0735f == null || (c0731b = c0735f.f4500z) == null) {
            return;
        }
        c0731b.m5471k(i, i2, i3);
    }

    /* JADX INFO: renamed from: U */
    public void m5613U() {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            c0735f.f4500z.m5472l();
        }
    }

    /* JADX INFO: renamed from: V */
    public void m5614V(int i, int i2, int i3, int i4) {
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            c0735f.m5682I0(i, i2, i3, i4);
        }
    }

    /* JADX INFO: renamed from: X */
    public void m5615X(boolean z) {
        this.f4443j = z;
    }

    /* JADX INFO: renamed from: Y */
    public void m5616Y() {
        Context context = this.f4434a.get();
        if (context == null || this.f4440g != null) {
            return;
        }
        this.f4440g = new f();
        C0982s.m7373c("BoxInterface,startDetect: Start schedule detect usb");
        if (this.f4439f == null) {
            this.f4439f = new ScheduledThreadPoolExecutor(1);
        }
        int iM6091m = SystemClock.elapsedRealtime() - MyApplication.m5997b().f4698b < 300000 ? C0795b0.m6071i().m6091m("BootDelay", 0) * 1000 : 8000;
        C0982s.m7386p("BoxInterface", "startDetect: delay=" + iM6091m);
        this.f4439f.scheduleAtFixedRate(this.f4440g, (long) iM6091m, 2000L, TimeUnit.MILLISECONDS);
        this.f4436c = new c();
        this.f4437d = PendingIntent.getBroadcast(context, 0, new Intent("cn.manstep.phonemirror.USB_PERMISSION"), 0);
        IntentFilter intentFilter = new IntentFilter("cn.manstep.phonemirror.USB_PERMISSION");
        for (int i = 0; i < 5; i++) {
            try {
                context.registerReceiver(this.f4436c, intentFilter);
                this.f4435b = true;
                return;
            } catch (Exception e2) {
                C0982s.m7375e(Log.getStackTraceString(e2));
            }
        }
    }

    /* JADX INFO: renamed from: Z */
    public void m5617Z() {
        C0982s.m7373c("BoxInterfacestartMirror: ####");
        Context context = this.f4434a.get();
        if (context != null) {
            if (f4428l == null) {
                f4428l = new C0735f(context);
            } else {
                C0982s.m7375e("startMirror: boxProtol not null  " + f4428l);
            }
            if (this.f4441h == null) {
                b bVar = new b(this);
                this.f4441h = bVar;
                bVar.setName("touch");
                this.f4441h.start();
            }
        }
    }

    /* JADX INFO: renamed from: a0 */
    public void m5618a0() {
        BroadcastReceiver broadcastReceiver;
        C0982s.m7386p("BoxInterface", "stopDetect: ");
        TimerTask timerTask = this.f4440g;
        if (timerTask != null) {
            timerTask.cancel();
            this.f4440g = null;
            Context context = this.f4434a.get();
            if (context != null && (broadcastReceiver = this.f4436c) != null) {
                try {
                    context.unregisterReceiver(broadcastReceiver);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e2));
                }
                this.f4436c = null;
            }
            this.f4437d = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.f4439f;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.f4439f = null;
        }
        f4432p.m5823b();
    }

    /* JADX INFO: renamed from: b0 */
    public void m5619b0() {
        C0982s.m7373c("BoxInterface,stopMirror: boxProtocol=" + f4428l);
        f4432p.m5823b();
        C0735f c0735f = f4428l;
        if (c0735f != null) {
            c0735f.m5752y();
            f4428l = null;
        }
    }

    /* JADX INFO: renamed from: c0 */
    public void m5620c0(g gVar) {
        f4429m.remove(gVar);
    }

    /* JADX INFO: renamed from: g */
    public C0733d m5621g(g gVar) {
        if (!f4429m.contains(gVar)) {
            f4429m.add(gVar);
            gVar.mo5277n(this);
        }
        return this;
    }

    /* JADX INFO: renamed from: l */
    public void m5622l(Context context) {
        synchronized (this) {
            if (this.f4436c != null) {
                try {
                    if (this.f4435b) {
                        this.f4434a.get().unregisterReceiver(this.f4436c);
                        this.f4435b = false;
                    }
                    context.registerReceiver(this.f4436c, new IntentFilter("cn.manstep.phonemirror.USB_PERMISSION"));
                    this.f4435b = true;
                } catch (Exception e2) {
                    C0982s.m7375e(Log.getStackTraceString(e2));
                }
                this.f4434a = new WeakReference<>(context);
            } else {
                this.f4434a = new WeakReference<>(context);
            }
        }
    }

    /* JADX INFO: renamed from: n */
    public void m5623n(int i) {
        C0739j c0739j;
        if (this.f4443j && (c0739j = f4432p) != null) {
            int iM5822a = c0739j.m5822a();
            C0982s.m7374d("BoxInterface", "checkUsbConnected: checkUsbConnected=" + iM5822a);
            switch (iM5822a) {
                case 1:
                    m5579O(1, 123);
                    break;
                case 2:
                    if (C0995e.m7430C()) {
                        if (i % 5 == 0) {
                            this.f4438e = Boolean.FALSE;
                        }
                        if (!this.f4438e.booleanValue()) {
                            f4432p.m5826q(this.f4437d);
                            this.f4438e = Boolean.TRUE;
                        }
                    }
                    break;
                case 3:
                    m5579O(1, 22);
                    break;
                case 4:
                    m5579O(1, 23);
                    break;
                case 5:
                    m5579O(1, 24);
                    break;
                case 6:
                    m5579O(1, 12);
                    break;
            }
        }
    }

    /* JADX INFO: renamed from: p */
    public void m5624p() {
        C0982s.m7373c("BoxInterface,destroy: mlisteners.size=" + f4429m.size());
        f4433q = false;
        f4429m.clear();
        m5618a0();
        m5619b0();
    }
}
