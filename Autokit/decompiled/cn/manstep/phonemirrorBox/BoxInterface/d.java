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
import cn.manstep.phonemirrorBox.BoxInterface.f;
import cn.manstep.phonemirrorBox.MyApplication;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.util.a0;
import cn.manstep.phonemirrorBox.util.s;
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

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class d {
    private static Handler k;
    public static cn.manstep.phonemirrorBox.BoxInterface.f l;
    private static j p;
    public WeakReference<Context> a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private BroadcastReceiver f1438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private PendingIntent f1439d;
    private a0 i;
    private static List<g> m = new ArrayList();
    private static Socket n = null;
    private static final Vector<e> o = new Vector<>();
    private static boolean q = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1437b = false;
    private Boolean e = Boolean.FALSE;
    private ScheduledExecutorService f = new ScheduledThreadPoolExecutor(1);
    private TimerTask g = null;
    private Thread h = null;
    private boolean j = true;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            if (1 != i) {
                if (2 == i) {
                    int i2 = message.arg1;
                    Iterator it = d.m.iterator();
                    while (it.hasNext()) {
                        ((g) it.next()).c(message.arg1);
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
                    d.this.a.get().sendBroadcast(intent);
                    return;
                }
                if (6 == i) {
                    Iterator it2 = d.m.iterator();
                    while (it2.hasNext()) {
                        ((g) it2.next()).a(message.arg1, message.obj);
                    }
                    return;
                }
                return;
            }
            int i3 = message.arg1;
            if (i3 == 0) {
                s.e("EVT_ANDROID_PLUG_OUT");
            } else if (i3 == 2) {
                s.e("EVT_IPHONE_PLUG_OUT");
            } else if (i3 == 12) {
                s.e("EVT_OTG_PLUG_OUT: stopMirror");
                d.this.b0();
            } else if (i3 == 13) {
                s.e("EVT_OTG_PLUG_IN: startMirror");
                d.this.Z();
            }
            if (d.m.size() <= 0) {
                s.e("BoxInterface,handleMessage: MSG_PHASE mlisteners.size()=" + d.m.size());
            }
            for (g gVar : d.m) {
                Object obj = message.obj;
                if (obj == null) {
                    gVar.o(message.arg1);
                } else {
                    gVar.a(message.arg1, obj);
                }
            }
        }
    }

    class b extends Thread {
        b(d dVar) {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (d.l != null) {
                synchronized (d.o) {
                    try {
                        d.o.wait(1000L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                    while (!d.o.isEmpty()) {
                        try {
                            OutputStream outputStream = d.n.getOutputStream();
                            e eVar = (e) d.o.firstElement();
                            outputStream.write(eVar.f1441b, 0, eVar.a);
                            d.o.remove(0);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
    }

    class c extends BroadcastReceiver {
        c() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("cn.manstep.phonemirror.USB_PERMISSION".equals(intent.getAction())) {
                s.e("User have clicked USB_PERMISSION dialog");
                d.this.e = Boolean.FALSE;
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.d$d, reason: collision with other inner class name */
    class RunnableC0077d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1440b;

        RunnableC0077d(d dVar, int i) {
            this.f1440b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            s.d("BoxInterface", "sendCarControl: cmd=" + this.f1440b + ", " + d.l.T0(this.f1440b));
        }
    }

    private static class e {
        public int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[] f1441b;
    }

    class f extends TimerTask {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1442b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1443c = 0;

        f() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            boolean zL = d.p.l();
            if (zL == this.f1442b) {
                if (zL) {
                    this.f1443c = 0;
                } else {
                    if (cn.manstep.phonemirrorBox.util.f.c(d.this.a.get())) {
                        return;
                    }
                    int i = this.f1443c + 1;
                    this.f1443c = i;
                    d.this.n(i);
                }
                if (zL != this.f1442b) {
                    this.f1442b = zL;
                    d.k.sendMessage(d.k.obtainMessage(1, zL ? 13 : 12, 0));
                    return;
                }
                return;
            }
            s.e("BoxInterface,DetectUsbTask sendMsg  usbConnected=" + zL);
            this.f1442b = zL;
            d.k.sendMessage(d.k.obtainMessage(1, zL ? 13 : 12, 0));
            if (zL) {
                return;
            }
            p.r = -1;
            cn.manstep.phonemirrorBox.BoxInterface.f fVar = d.l;
            if (fVar != null) {
                fVar.b0();
            }
        }
    }

    public interface g {
        void a(int i, Object obj);

        void c(int i);

        void n(d dVar);

        void o(int i);

        void v(byte[] bArr);
    }

    public d(Context context) {
        this.a = new WeakReference<>(null);
        s.d("BoxInterface", "new BoxInterface()");
        this.a = new WeakReference<>(context);
        p = new j(context);
        k = new a();
        this.i = new a0(500L, new Handler(Looper.myLooper()));
        Y();
    }

    public static boolean A() {
        return B(f.k.d());
    }

    public static boolean B(int i) {
        return i == 4;
    }

    public static boolean C() {
        return f.k.f() == 0;
    }

    public static boolean E() {
        if (i()) {
            return !cn.manstep.phonemirrorBox.BoxInterface.b.h;
        }
        return false;
    }

    public static void F(byte[] bArr) {
        Iterator<g> it = m.iterator();
        while (it.hasNext()) {
            it.next().v(bArr);
        }
    }

    public static boolean G() {
        if (i()) {
            return cn.manstep.phonemirrorBox.BoxInterface.f.O;
        }
        return false;
    }

    public static boolean H(byte[] bArr, int i) {
        return p.p(bArr, i);
    }

    public static boolean I() {
        if (i()) {
            return l.W0(0);
        }
        return false;
    }

    public static void J(boolean z) {
        j jVar = p;
        if (jVar != null) {
            jVar.r(z);
        }
    }

    public static void L(int i) {
        if (G()) {
            l.T0(i);
        }
    }

    public static boolean O(int i, int i2) {
        Handler handler = k;
        if (handler != null) {
            return handler.sendMessage(handler.obtainMessage(i, i2, 0));
        }
        return false;
    }

    public static boolean P(int i, int i2, Object obj) {
        Handler handler = k;
        if (handler != null) {
            return handler.sendMessage(handler.obtainMessage(i, i2, 0, obj));
        }
        return false;
    }

    public static void R() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar;
        s.c("BoxInterface,sendResetOnceDecoder");
        if (q || (fVar = l) == null) {
            return;
        }
        fVar.z.i();
        q = true;
    }

    public static void W(int i) {
        j jVar = p;
        if (jVar != null) {
            jVar.s(i);
        }
    }

    public static boolean d0(byte[] bArr, int i) {
        return p.u(bArr, i);
    }

    public static boolean h() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            return fVar.f;
        }
        return false;
    }

    public static boolean i() {
        if (l == null) {
            return false;
        }
        return p.l();
    }

    public static void j() {
        f.k.c(0);
    }

    public static void k(int i) {
        f.k.b(i);
    }

    public static void m(int i) {
        f.k.c(i);
    }

    public static boolean o() {
        if (!i()) {
            return false;
        }
        byte[] bytes = "\u0000".getBytes();
        return l.o0(bytes, bytes.length);
    }

    public static String q(int i) {
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

    public static String r() {
        return i() ? l.B() : BuildConfig.FLAVOR;
    }

    public static cn.manstep.phonemirrorBox.q0.g s() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            return fVar.J();
        }
        return null;
    }

    public static boolean t() {
        if (v() && G()) {
            return l.S();
        }
        return false;
    }

    public static boolean u() {
        if ("2022.06.02.1010".compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()) > 0) {
            return false;
        }
        return t();
    }

    public static boolean v() {
        return w(f.k.d());
    }

    public static boolean w(int i) {
        return i == 1;
    }

    public static boolean x() {
        return y(f.k.f());
    }

    public static boolean y(int i) {
        return i == 2;
    }

    public static boolean z() {
        if (v() && G()) {
            return l.U();
        }
        return false;
    }

    public boolean D() {
        return this.j;
    }

    public void K(int i) {
        if (l != null) {
            this.i.c(i, new RunnableC0077d(this, i));
        }
    }

    public void M(int i) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            fVar.T0(i);
        }
    }

    public void N(int i) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            fVar.x0(i);
        }
    }

    public void Q(cn.manstep.phonemirrorBox.BoxInterface.e eVar) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            fVar.G0(eVar);
        }
    }

    public void S(SurfaceHolder surfaceHolder, boolean z) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            fVar.z.j(surfaceHolder, z);
        }
    }

    public void T(int i, int i2, int i3) {
        cn.manstep.phonemirrorBox.BoxInterface.b bVar;
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar == null || (bVar = fVar.z) == null) {
            return;
        }
        bVar.k(i, i2, i3);
    }

    public void U() {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            fVar.z.l();
        }
    }

    public void V(int i, int i2, int i3, int i4) {
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            fVar.I0(i, i2, i3, i4);
        }
    }

    public void X(boolean z) {
        this.j = z;
    }

    public void Y() {
        Context context = this.a.get();
        if (context == null || this.g != null) {
            return;
        }
        this.g = new f();
        s.c("BoxInterface,startDetect: Start schedule detect usb");
        if (this.f == null) {
            this.f = new ScheduledThreadPoolExecutor(1);
        }
        int iM = SystemClock.elapsedRealtime() - MyApplication.b().f1543b < 300000 ? b0.i().m("BootDelay", 0) * 1000 : 8000;
        s.p("BoxInterface", "startDetect: delay=" + iM);
        this.f.scheduleAtFixedRate(this.g, (long) iM, 2000L, TimeUnit.MILLISECONDS);
        this.f1438c = new c();
        this.f1439d = PendingIntent.getBroadcast(context, 0, new Intent("cn.manstep.phonemirror.USB_PERMISSION"), 0);
        IntentFilter intentFilter = new IntentFilter("cn.manstep.phonemirror.USB_PERMISSION");
        for (int i = 0; i < 5; i++) {
            try {
                context.registerReceiver(this.f1438c, intentFilter);
                this.f1437b = true;
                return;
            } catch (Exception e2) {
                s.e(Log.getStackTraceString(e2));
            }
        }
    }

    public void Z() {
        s.c("BoxInterfacestartMirror: ####");
        Context context = this.a.get();
        if (context != null) {
            if (l == null) {
                l = new cn.manstep.phonemirrorBox.BoxInterface.f(context);
            } else {
                s.e("startMirror: boxProtol not null  " + l);
            }
            if (this.h == null) {
                b bVar = new b(this);
                this.h = bVar;
                bVar.setName("touch");
                this.h.start();
            }
        }
    }

    public void a0() {
        BroadcastReceiver broadcastReceiver;
        s.p("BoxInterface", "stopDetect: ");
        TimerTask timerTask = this.g;
        if (timerTask != null) {
            timerTask.cancel();
            this.g = null;
            Context context = this.a.get();
            if (context != null && (broadcastReceiver = this.f1438c) != null) {
                try {
                    context.unregisterReceiver(broadcastReceiver);
                } catch (Exception e2) {
                    e2.printStackTrace();
                    s.e(Log.getStackTraceString(e2));
                }
                this.f1438c = null;
            }
            this.f1439d = null;
        }
        ScheduledExecutorService scheduledExecutorService = this.f;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.shutdown();
            this.f = null;
        }
        p.b();
    }

    public void b0() {
        s.c("BoxInterface,stopMirror: boxProtocol=" + l);
        p.b();
        cn.manstep.phonemirrorBox.BoxInterface.f fVar = l;
        if (fVar != null) {
            fVar.y();
            l = null;
        }
    }

    public void c0(g gVar) {
        m.remove(gVar);
    }

    public d g(g gVar) {
        if (!m.contains(gVar)) {
            m.add(gVar);
            gVar.n(this);
        }
        return this;
    }

    public void l(Context context) {
        synchronized (this) {
            if (this.f1438c != null) {
                try {
                    if (this.f1437b) {
                        this.a.get().unregisterReceiver(this.f1438c);
                        this.f1437b = false;
                    }
                    context.registerReceiver(this.f1438c, new IntentFilter("cn.manstep.phonemirror.USB_PERMISSION"));
                    this.f1437b = true;
                } catch (Exception e2) {
                    s.e(Log.getStackTraceString(e2));
                }
                this.a = new WeakReference<>(context);
            } else {
                this.a = new WeakReference<>(context);
            }
        }
    }

    public void n(int i) {
        j jVar;
        if (this.j && (jVar = p) != null) {
            int iA = jVar.a();
            s.d("BoxInterface", "checkUsbConnected: checkUsbConnected=" + iA);
            switch (iA) {
                case 1:
                    O(1, 123);
                    break;
                case 2:
                    if (cn.manstep.phonemirrorBox.v0.e.C()) {
                        if (i % 5 == 0) {
                            this.e = Boolean.FALSE;
                        }
                        if (!this.e.booleanValue()) {
                            p.q(this.f1439d);
                            this.e = Boolean.TRUE;
                        }
                    }
                    break;
                case 3:
                    O(1, 22);
                    break;
                case 4:
                    O(1, 23);
                    break;
                case 5:
                    O(1, 24);
                    break;
                case 6:
                    O(1, 12);
                    break;
            }
        }
    }

    public void p() {
        s.c("BoxInterface,destroy: mlisteners.size=" + m.size());
        q = false;
        m.clear();
        a0();
        b0();
    }
}
