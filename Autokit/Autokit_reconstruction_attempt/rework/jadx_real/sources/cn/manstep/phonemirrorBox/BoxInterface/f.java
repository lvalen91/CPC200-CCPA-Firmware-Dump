package cn.manstep.phonemirrorBox.BoxInterface;

import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import cn.manstep.phonemirrorBox.MainActivity;
import cn.manstep.phonemirrorBox.b0;
import cn.manstep.phonemirrorBox.m;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.c0;
import cn.manstep.phonemirrorBox.util.n;
import cn.manstep.phonemirrorBox.util.s;
import cn.manstep.phonemirrorBox.util.z;
import cn.manstep.phonemirrorBox.x;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class f {
    private static int N = 2;
    public static boolean O;
    public static boolean P;
    public static boolean Q;
    public static boolean R;
    private h A;
    private List<cn.manstep.phonemirrorBox.BoxInterface.a> B;
    private boolean C;
    private int D;
    private int E;
    private int F;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1450d;
    private int e;
    private cn.manstep.phonemirrorBox.q0.g o;
    private k q;
    private z<Boolean> r;
    private Thread s;
    private Thread t;
    private Thread u;
    private ScheduledExecutorService v;
    private Thread w;
    private boolean x;
    public WeakReference<Context> y;
    public cn.manstep.phonemirrorBox.BoxInterface.b z;
    private boolean a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1448b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1449c = 0;
    public boolean f = false;
    public boolean g = true;
    private boolean h = false;
    private String i = BuildConfig.FLAVOR;
    private String j = BuildConfig.FLAVOR;
    private String k = BuildConfig.FLAVOR;
    private String l = BuildConfig.FLAVOR;
    private boolean m = false;
    private int n = 0;
    private boolean p = false;
    private int G = -1;
    private boolean H = false;
    private final AtomicBoolean I = new AtomicBoolean(false);
    private boolean J = false;
    private byte[] K = new byte[20];
    private int L = 0;
    private boolean M = true;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.a0();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.e("iosAudioThread_ id=" + Thread.currentThread().getId());
            Process.setThreadPriority(-19);
            while (!f.this.C) {
                try {
                    l lVarA = f.this.A.a();
                    if (lVarA != null) {
                        Iterator it = f.this.B.iterator();
                        while (it.hasNext()) {
                            ((cn.manstep.phonemirrorBox.BoxInterface.a) it.next()).t(lVarA);
                        }
                    }
                } catch (InterruptedException e) {
                    s.e(Log.getStackTraceString(e));
                    return;
                }
            }
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            s.e("audioRecordThread_ id=" + Thread.currentThread().getId());
            Process.setThreadPriority(-19);
            while (!f.this.C) {
                synchronized (cn.manstep.phonemirrorBox.BoxInterface.a.h) {
                    if (!f.this.x) {
                        try {
                            cn.manstep.phonemirrorBox.BoxInterface.a.h.wait();
                            Thread.sleep(p.G);
                        } catch (InterruptedException e) {
                            s.e(Log.getStackTraceString(e));
                        }
                    }
                }
                if (f.this.C) {
                    break;
                }
                if (f.this.x && cn.manstep.phonemirrorBox.BoxInterface.a.h.c() != 0) {
                    cn.manstep.phonemirrorBox.BoxInterface.a.h.i();
                    l lVar = f.this.new l(cn.manstep.phonemirrorBox.BoxInterface.a.h.c() + 12);
                    lVar.a.f1463c = 7;
                    lVar.c();
                    ByteBuffer byteBufferD = lVar.d();
                    byteBufferD.putInt(0, cn.manstep.phonemirrorBox.BoxInterface.a.i);
                    byteBufferD.putFloat(4, CropImageView.DEFAULT_ASPECT_RATIO);
                    byteBufferD.putInt(8, 3);
                    while (!f.this.C && f.this.x) {
                        if (cn.manstep.phonemirrorBox.BoxInterface.a.h.f(lVar.e(), 12, lVar.f() - 12)) {
                            f.this.R0(lVar);
                        } else {
                            try {
                                Thread.sleep(10L);
                            } catch (InterruptedException e2) {
                                s.e(Log.getStackTraceString(e2));
                            }
                        }
                    }
                    cn.manstep.phonemirrorBox.BoxInterface.a.h.k();
                }
            }
            s.e("audioRecordThread_ Exit");
        }
    }

    class d implements Runnable {

        class a extends TimerTask {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ ScheduledExecutorService f1455b;

            a(ScheduledExecutorService scheduledExecutorService) {
                this.f1455b = scheduledExecutorService;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (f.this.C) {
                    s.c("checkOpenThread_ bThreadExit ");
                    this.f1455b.shutdown();
                    return;
                }
                if (((Boolean) f.this.r.a()).booleanValue()) {
                    s.c("bOpened_ = true , cancel timer");
                    f.this.y0();
                    this.f1455b.shutdown();
                    f.this.t = null;
                    return;
                }
                s.c("bOpened_ = false");
                boolean zX0 = f.this.X0();
                try {
                    Thread.sleep(1000L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                s.c("Send g_Open  = " + zX0 + " !!!");
            }
        }

        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.manstep.phonemirrorBox.h0.b bVar = new cn.manstep.phonemirrorBox.h0.b();
            bVar.f("send_g_open");
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, bVar.b());
            scheduledThreadPoolExecutor.scheduleAtFixedRate(new a(scheduledThreadPoolExecutor), 0L, 1000L, TimeUnit.MILLISECONDS);
        }
    }

    class e extends TimerTask {
        e() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (f.this.C) {
                s.c("bThreadExit ");
                f.this.v.shutdown();
                f.this.v = null;
            } else if (f.this.v0(170)) {
                s.h("send heart beat Start");
            } else {
                s.e("send heart beat err");
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.f$f, reason: collision with other inner class name */
    class RunnableC0078f implements Runnable {
        RunnableC0078f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!f.this.I.compareAndSet(false, true)) {
                s.p("BoxProtocol", "send_g_open_async->run: send_g_open() is already running. Ignoring this call.");
                return;
            }
            try {
                f.this.X0();
            } finally {
                f.this.I.set(false);
            }
        }
    }

    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.Z0();
        }
    }

    class h {
        private l a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private cn.manstep.phonemirrorBox.util.i f1460b = new cn.manstep.phonemirrorBox.util.i();

        public h() {
            this.a = f.this.new l();
        }

        public synchronized l a() {
            l lVar;
            lVar = null;
            while (this.f1460b.g() > 10) {
                s.e("dataVec_.size = " + this.f1460b.g());
                this.f1460b.f(0);
            }
            if (this.f1460b.e()) {
                wait(100L);
            } else {
                this.a.a.f1462b = this.f1460b.c().length;
                this.a.f1472c.rewind();
                this.a.f1472c.put(this.f1460b.c());
                this.f1460b.f(0);
                lVar = this.a;
            }
            return lVar;
        }

        public synchronized void b() {
            notify();
        }
    }

    class i {
        private int a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f1462b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f1463c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f1464d = 0;

        public i(f fVar) {
        }

        public void a() {
            this.a = 1438340539;
        }

        public boolean b() {
            return 1438340539 == this.a;
        }

        public boolean c() {
            int i = this.a;
            return (1437226410 == i || 1438340539 == i) && this.f1464d == (this.f1463c ^ (-1));
        }

        public void d() {
            this.f1464d = this.f1463c ^ (-1);
            this.a = b() ? 1438340539 : 1437226410;
        }

        public int m() {
            return 16;
        }
    }

    public static class j {
        public int a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1465b = 0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1466c = 1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1467d = 2;
        public int e = 0;
        public int f = 0;
        public int g = 0;
        private ByteBuffer h;

        public j() {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(a());
            this.h = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        }

        public static int a() {
            return 28;
        }

        public void b(ByteBuffer byteBuffer) {
            this.a = byteBuffer.getInt(0);
            this.f1465b = byteBuffer.getInt(4);
            this.f1466c = byteBuffer.getInt(8);
            this.f1467d = byteBuffer.getInt(12);
            this.e = byteBuffer.getInt(16);
            this.f = byteBuffer.getInt(20);
            this.g = byteBuffer.getInt(24);
        }
    }

    public static class k {
        static int h = 2;
        static int i = 1;
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f1468b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1469c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1470d;
        int e;
        int f;
        private ByteBuffer g;

        public k() {
            if (p.g) {
                s.e("use soft-decode, framerate = 25 !!!!!!!!!!!!!!!");
                p.C = 25;
            }
            this.a = 0;
            this.f1468b = 0;
            this.f1469c = p.C;
            s.d("BoxProtocol", "videoFrameRate = " + this.f1469c);
            this.f1470d = 5;
            this.e = 16384;
            this.f = 0;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(g());
            this.g = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        }

        public static String a(int i2) {
            if (i2 == 0) {
                return "AndroidInvalid(" + i2 + ")";
            }
            if (i2 == 1) {
                return "AndroidAuto(" + i2 + ")";
            }
            if (i2 == 2) {
                return "CarLife(" + i2 + ")";
            }
            if (i2 == 3) {
                return "AndroidMirror(" + i2 + ")";
            }
            if (i2 == 4) {
                return "HiCar(" + i2 + ")";
            }
            if (i2 != 5) {
                return "AndroidUnknown(" + i2 + ")";
            }
            return "ICCOA(" + i2 + ")";
        }

        public static void b(int i2) {
            i = i2;
            s.c("BoxProtocol,changeAndroidWorkMode: " + i2);
        }

        public static void c(int i2) {
            if (i2 < 0) {
                return;
            }
            if (i2 == 1) {
                i2 = 2;
            }
            h = i2;
            s.c("BoxProtocol,changeIphoneWorkMode: " + i2);
        }

        public static int d() {
            return i;
        }

        public static int f() {
            return h;
        }

        public static int g() {
            return 28;
        }

        public static String h(int i2) {
            if (i2 == 0) {
                return "iPhoneInvalid(" + i2 + ")";
            }
            if (i2 == 1) {
                return "AirPlay(" + i2 + ")";
            }
            if (i2 == 2) {
                return "CarPlay(" + i2 + ")";
            }
            if (i2 == 3) {
                return "NonAirPlay(" + i2 + ")";
            }
            if (i2 != 4) {
                return "iPhoneUnknown(" + i2 + ")";
            }
            return "iPhoneCharge(" + i2 + ")";
        }

        public static boolean i() {
            return i == 4;
        }

        public byte[] e() {
            this.g.putInt(0, this.a);
            this.g.putInt(4, this.f1468b);
            this.g.putInt(8, this.f1469c);
            this.g.putInt(12, this.f1470d);
            this.g.putInt(16, this.e);
            this.g.putInt(20, this.f);
            this.g.putInt(24, h);
            s.e("BoxProtocol,StOpen,getBytes: phoneWorkMode=" + h);
            return this.g.array();
        }

        public void j(ByteBuffer byteBuffer) {
            this.a = byteBuffer.getInt(0);
            this.f1468b = byteBuffer.getInt(4);
            this.f1469c = byteBuffer.getInt(8);
            this.f1470d = byteBuffer.getInt(12);
            this.e = byteBuffer.getInt(16);
            this.f = byteBuffer.getInt(20);
            h = byteBuffer.getInt(24);
        }
    }

    public f(Context context) {
        this.f1450d = 0;
        this.e = 0;
        s.c("BoxProtocol,BoxProtocol: ===***===");
        O();
        P(context);
        this.C = false;
        this.f1450d = 0;
        this.e = 0;
        this.q = new k();
        z<Boolean> zVar = new z<>();
        this.r = zVar;
        zVar.b(Boolean.FALSE);
        this.y = new WeakReference<>(context);
        this.A = new h();
        Q();
        u1();
        v1();
        if (this.s == null) {
            this.s = new Thread(new a(), "readUsb");
        }
        if (this.u == null) {
            this.u = new Thread(new b(), "iosAudio");
        }
        if (this.w == null) {
            this.w = new Thread(new c(), "audioRecord");
            this.x = false;
        }
        this.z = new cn.manstep.phonemirrorBox.BoxInterface.b(context);
        this.t.start();
        s.c("checkOpenThread_ started");
        this.s.start();
        s.c("readThread_ started");
        this.w.start();
    }

    private boolean A0(int i2, String str, boolean z) {
        byte[] bytes = str.getBytes();
        return C0(i2, bytes, bytes.length, z);
    }

    private boolean B0(int i2, byte[] bArr, int i3) {
        return C0(i2, bArr, i3, true);
    }

    private boolean C0(int i2, byte[] bArr, int i3, boolean z) {
        s.c("BoxProtocol,sendDevInfo: " + bArr.length + " " + i3 + " " + this.r.a());
        if (!this.r.a().booleanValue() && z) {
            return false;
        }
        s.c("BoxProtocol,sendDevInfo: cmd=" + i2);
        l lVar = new l(i3);
        lVar.a.f1463c = i2;
        lVar.a.f1462b = i3;
        lVar.c();
        System.arraycopy(bArr, 0, lVar.e(), 0, i3);
        lVar.j();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                s.e("BoxProtocol,sendDevInfo: Write device info head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                s.e("BoxProtocol,sendDevInfo: sendDevInfo() success ");
                return true;
            }
            s.e("BoxProtocol,sendDevInfo: Write device info data err");
            return false;
        }
    }

    private void M(l lVar) {
        if (lVar.f() >= 4) {
            int i2 = lVar.d().getInt(0);
            if (i2 == 2) {
                if (lVar.f() - 4 == this.K.length) {
                    k1(lVar.e(), 4);
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 29);
                    return;
                }
                return;
            }
            if (i2 == 3) {
                s.c("Open camera");
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 30);
            } else {
                if (i2 != 4) {
                    return;
                }
                s.c("Close camera");
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 31);
            }
        }
    }

    private void N(l lVar) {
        if (lVar.f() >= 4) {
            int i2 = lVar.d().getInt(0);
            try {
                if (i2 == 1) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 216, new String(lVar.e(), 4, (lVar.f() - 4) - 1, "UTF-8"));
                } else if (i2 == 2 || i2 == 3) {
                    byte[] bArr = new byte[(lVar.f() - 4) - 1];
                    System.arraycopy(lVar.e(), 4, bArr, 0, (lVar.f() - 4) - 1);
                    Bundle bundle = new Bundle();
                    bundle.putByteArray("COVER", bArr);
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 218, bundle);
                } else if (i2 == 100) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 217, new String(lVar.e(), 4, (lVar.f() - 4) - 1, "UTF-8"));
                } else if (i2 != 200) {
                } else {
                    cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 219, new String(lVar.e(), 4, (lVar.f() - 4) - 1, "UTF-8"));
                }
            } catch (UnsupportedEncodingException e2) {
                s.f("BoxProtocol", "handleDashboardData: " + s.g(e2));
            }
        }
    }

    private void O() {
        O = false;
        N = -2;
    }

    private void P(Context context) {
        this.B = new ArrayList();
        cn.manstep.phonemirrorBox.BoxInterface.a.l(context);
        cn.manstep.phonemirrorBox.BoxInterface.a aVar = new cn.manstep.phonemirrorBox.BoxInterface.a(2, 1, context);
        aVar.J(0);
        this.B.add(aVar);
        cn.manstep.phonemirrorBox.BoxInterface.a aVar2 = new cn.manstep.phonemirrorBox.BoxInterface.a(2, 2, context);
        aVar2.J(1);
        this.B.add(aVar2);
        cn.manstep.phonemirrorBox.BoxInterface.a aVar3 = new cn.manstep.phonemirrorBox.BoxInterface.a(3, 1, context);
        aVar3.J(2);
        this.B.add(aVar3);
        cn.manstep.phonemirrorBox.BoxInterface.a aVar4 = new cn.manstep.phonemirrorBox.BoxInterface.a(4, 1, context);
        aVar4.J(3);
        this.B.add(aVar4);
        if (p.u) {
            cn.manstep.phonemirrorBox.BoxInterface.a aVar5 = new cn.manstep.phonemirrorBox.BoxInterface.a(7, 1, context);
            aVar5.J(4);
            this.B.add(aVar5);
        } else {
            cn.manstep.phonemirrorBox.BoxInterface.a aVar6 = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 1, context);
            aVar6.J(4);
            this.B.add(aVar6);
        }
        cn.manstep.phonemirrorBox.BoxInterface.a aVar7 = new cn.manstep.phonemirrorBox.BoxInterface.a(6, 1, context);
        aVar7.J(5);
        this.B.add(aVar7);
        cn.manstep.phonemirrorBox.BoxInterface.a aVar8 = new cn.manstep.phonemirrorBox.BoxInterface.a(5, 2, context);
        aVar8.J(6);
        this.B.add(aVar8);
        cn.manstep.phonemirrorBox.BoxInterface.a aVar9 = new cn.manstep.phonemirrorBox.BoxInterface.a(4, 2, context);
        aVar9.J(7);
        this.B.add(aVar9);
    }

    private void R(int i2) {
        if (i2 == 1) {
            this.o = new cn.manstep.phonemirrorBox.q0.b(i2);
            cn.manstep.phonemirrorBox.v0.a.t().c("AndroidMirror", R);
            return;
        }
        if (i2 == 3) {
            p.F = 1;
            this.o = new cn.manstep.phonemirrorBox.q0.c(i2);
            cn.manstep.phonemirrorBox.v0.a.t().c("CarPlay", R);
            return;
        }
        if (i2 == 4) {
            this.o = new cn.manstep.phonemirrorBox.q0.f(i2);
            cn.manstep.phonemirrorBox.v0.a.t().c("iPhoneMirror", R);
            return;
        }
        if (i2 == 5) {
            this.o = new cn.manstep.phonemirrorBox.q0.a(i2);
            cn.manstep.phonemirrorBox.v0.a.t().c("AndroidAuto", R);
            return;
        }
        if (i2 == 6) {
            p.F = 1;
            this.o = new cn.manstep.phonemirrorBox.q0.e(i2);
            cn.manstep.phonemirrorBox.v0.a.t().c("HiCar", R);
        } else if (i2 != 7) {
            p.F = 1;
            this.o = new cn.manstep.phonemirrorBox.q0.d(i2);
            cn.manstep.phonemirrorBox.v0.a.t().c("Unknown", R);
        } else {
            p.F = 1;
            this.o = new cn.manstep.phonemirrorBox.q0.e(i2);
            cn.manstep.phonemirrorBox.v0.a.t().c("Carlink", R);
        }
    }

    private void X(int i2) {
        if (i2 == 1) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 120);
            return;
        }
        if (i2 == 2) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 121);
            return;
        }
        if (i2 == 3) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 122);
            return;
        }
        if (i2 == 5) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 125);
        } else if (i2 == 6) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 126);
        } else {
            if (i2 != 7) {
                return;
            }
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 127);
        }
    }

    private void Y(l lVar) {
        cn.manstep.phonemirrorBox.BoxInterface.b bVar;
        cn.manstep.phonemirrorBox.BoxInterface.b bVar2;
        cn.manstep.phonemirrorBox.BoxInterface.b bVar3;
        String str;
        String str2;
        int i2 = lVar.a.f1463c;
        if (i2 == 1) {
            if (k.g() != lVar.f()) {
                if (lVar.f() != 0) {
                    s.c("NULL!!!!!!");
                    return;
                } else {
                    X0();
                    s.f("BoxProtocol", "onCmd: Resend g_Open!! #####################");
                    return;
                }
            }
            this.r.b(Boolean.TRUE);
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 36);
            this.q.j(lVar.d());
            k kVar = this.q;
            int i3 = kVar.a;
            int i4 = kVar.f1468b;
            s.e("BoxProtocol,onCmd: Recv CMD_OPEN:  " + lVar.f() + " " + this.q.a + "x" + this.q.f1468b + "@" + this.q.f1469c + "fps " + this.q.f1470d + " " + this.q.e + " " + k.h);
            k kVar2 = this.q;
            if (kVar2.a > 4000 || kVar2.f1468b > 4000 || kVar2.f1469c > 60) {
                s.e("BoxProtocol,onCmd: Recv CMD_OPEN: data exception!!!");
                return;
            }
            if (kVar2.f == 0) {
                n1(true);
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
            } else if (cn.manstep.phonemirrorBox.BoxInterface.c.e().t(0, m.a)) {
                s.f("BoxProtocol", "onCmd: PID ERROR");
                n1(true);
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
            } else if (this.m) {
                n1(false);
                h0();
            } else {
                s.e("BoxProtocol,box not support crypt!!!" + cn.manstep.phonemirrorBox.BoxInterface.c.e().p());
                if ("2024.07.08.0000".compareTo(cn.manstep.phonemirrorBox.BoxInterface.c.e().p()) < 0) {
                    n1(true);
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
                }
            }
            if (this.f && cn.manstep.phonemirrorBox.BoxInterface.a.g) {
                F0(b0.i().m("MicType", 0));
            }
            s.e("BoxProtocol,onCmd: Recv CMD_OPEN: g_Open.iBoxversion = " + this.q.f);
            return;
        }
        if (i2 == 2) {
            if (this.J) {
                b1();
                return;
            }
            this.f1449c = 0;
            this.f1448b = 2;
            this.f1450d = 0;
            this.e = 0;
            if (lVar.f() == 4) {
                int i5 = lVar.d().getInt(0);
                N = i5;
                R = false;
                R(i5);
            } else if (lVar.f() == 8) {
                N = lVar.d().getInt(0);
                R = lVar.d().getInt(4) == 1;
                s.c("BoxProtocol,onCmd: Recv bWifiDeviceConected: " + R);
                R(N);
            }
            s.c("BoxProtocol,onCmd: Recv CMD_PLUG, Phone Type: " + N + ",WorkMode:" + cn.manstep.phonemirrorBox.v0.a.t().u());
            cn.manstep.phonemirrorBox.q0.g gVar = this.o;
            if (gVar != null) {
                p.G = gVar.j();
            }
            Z();
            return;
        }
        if (i2 == 3) {
            if (4 == lVar.f()) {
                int i6 = lVar.d().getInt(0);
                s.c("BoxProtocol,onCmd: Recv CMD_PHASE iPhase = " + i6);
                if (this.J) {
                    b1();
                    return;
                }
                if (i6 != 3) {
                    if (i6 == 4) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 5);
                        return;
                    }
                    if (i6 == 5) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 6);
                        return;
                    }
                    if (i6 != 6) {
                        if (i6 != 8) {
                            if (i6 == 13) {
                                s.f("BoxProtocol", "onCmd: PHASE_LinkFailed phoneType=" + N + ",bPhoneConnected=" + O);
                                if (N != -2 || O) {
                                    return;
                                }
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 204);
                                return;
                            }
                            if (i6 != 10) {
                                if (i6 == 11) {
                                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 16);
                                    return;
                                }
                                switch (i6) {
                                    case 1001:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 50);
                                        s.e("BoxProtocol,onCmd: Hardware Error: Bluetooth");
                                        return;
                                    case 1002:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 51);
                                        s.e("BoxProtocol,onCmd: Hardware Error: Wifi");
                                        return;
                                    case 1003:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 52);
                                        return;
                                    case 1004:
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 53);
                                        return;
                                    default:
                                        return;
                                }
                            }
                        }
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 9);
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 15);
                        this.z.g(2, this.f1450d, this.e, null, 0);
                        O = true;
                        s.f("BoxProtocol", "onCmd: #PHASE_CARPLAY_WORING/PHASE_NonAIRPLAY_WORING");
                        return;
                    }
                }
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 15);
                O = true;
                s.f("BoxProtocol", "onCmd: #PHASE_IOS_WORING/PHASE_ANDROID_WORKING");
                return;
            }
            return;
        }
        if (i2 == 4) {
            s.f("BoxProtocol", "onCmd: #CMD_PLUGOUT.");
            if (lVar.f() == 4 && lVar.d().getInt(0) == 1) {
                s.c("BoxProtocol,onCmd: CMD_PLUGOUT: Manually disconnected by the user on the phone end.");
                if (this.y.get().getResources().getBoolean(2131034126)) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 0);
                }
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 25);
            }
            if (N != -1 && (bVar = this.z) != null) {
                bVar.g(0, this.f1450d, this.e, null, 0);
            }
            O = false;
            R = false;
            s.f("BoxProtocol", "onCmd: #CMD_PLUGOUT Phone Disconnected.");
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, N != -1 ? 2 : 0);
            t1();
            cn.manstep.phonemirrorBox.BoxInterface.c.e().v();
            N = -2;
            return;
        }
        if (i2 == 6) {
            if (this.r.a().booleanValue()) {
                int i7 = lVar.d().getInt(0);
                int i8 = lVar.d().getInt(4);
                int i9 = lVar.d().getInt(8);
                long j2 = cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo("2024.12.13.1130") >= 0 ? lVar.d().getInt(12) : 0L;
                int i10 = i9 & 1;
                int i11 = (i9 >> 2) & 3;
                if (i11 == 0) {
                    i11 = 2;
                } else if (i11 == 1) {
                    i11 = 1;
                } else if (i11 == 2) {
                    i11 = 4;
                }
                if (i11 != this.f1448b) {
                    this.f1448b = i11;
                    if (1 == i11 || 4 == i11) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(2, 0);
                    } else {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(2, 1);
                    }
                }
                if (this.f1449c != i10) {
                    this.f1449c = i10;
                    if (this.q.f1470d == 5) {
                        if (i10 == 0) {
                            if (N != -1 && (bVar3 = this.z) != null) {
                                bVar3.g(3, i7, i8, null, 0);
                            }
                        } else if (N != -1 && (bVar2 = this.z) != null) {
                            bVar2.g(4, i7, i8, null, 0);
                        }
                        s.c("COMPRESS_METHORD_H264  boffscreen= " + this.f1449c);
                    }
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, this.f1449c == 1 ? 10 : 11);
                }
                if (i7 != this.f1450d || i8 != this.e) {
                    this.f1450d = i7;
                    this.e = i8;
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(3, 0);
                    if (this.q.f1470d == 5 && N != -1 && this.z != null) {
                        s.e("new w h " + i7 + "x" + i8);
                        this.z.g(7, i7, i8, null, 0);
                    }
                }
                if (lVar.f() > 20 && this.a) {
                    int i12 = this.q.f1470d;
                    if (i12 == 3) {
                        if (N == -1) {
                            int iF = lVar.f() - 20;
                            byte[] bArr = new byte[iF + 32];
                            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
                            byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
                            byteBufferWrap.putInt(4, iF + 36);
                            byteBufferWrap.putInt(8, i7);
                            byteBufferWrap.putInt(12, i8);
                            byteBufferWrap.putInt(24, 131072);
                            System.arraycopy(lVar.e(), 20, bArr, 32, iF);
                            cn.manstep.phonemirrorBox.BoxInterface.d.F(bArr);
                            return;
                        }
                        return;
                    }
                    if (i12 != 5) {
                        return;
                    }
                    int i13 = N;
                    if (i13 != -1) {
                        int iF2 = lVar.f() - 20;
                        cn.manstep.phonemirrorBox.BoxInterface.b bVar4 = this.z;
                        if (bVar4 != null) {
                            bVar4.h(8, i7, i8, lVar.e(), iF2, j2);
                            return;
                        }
                        return;
                    }
                    if (i13 == -1) {
                        int iF3 = lVar.f() - 20;
                        byte[] bArr2 = new byte[iF3 + 32];
                        ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr2);
                        byteBufferWrap2.order(ByteOrder.LITTLE_ENDIAN);
                        byteBufferWrap2.putInt(4, iF3 + 36);
                        byteBufferWrap2.putInt(8, i7);
                        byteBufferWrap2.putInt(12, i8);
                        byteBufferWrap2.putInt(24, 65536);
                        System.arraycopy(lVar.e(), 20, bArr2, 32, iF3);
                        cn.manstep.phonemirrorBox.BoxInterface.d.F(bArr2);
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (i2 != 7) {
            if (i2 == 8) {
                int i14 = lVar.d().getInt(0);
                s.e("BoxProtocol,onCmd: Recv CarPlay_CMD: " + i14);
                if (i14 == 1) {
                    if (cn.manstep.phonemirrorBox.BoxInterface.a.g) {
                        this.x = true;
                        synchronized (cn.manstep.phonemirrorBox.BoxInterface.a.h) {
                            cn.manstep.phonemirrorBox.BoxInterface.a.h.notify();
                            s.f("BoxProtocol", "onCmd: Start record audio========");
                        }
                        return;
                    }
                    return;
                }
                if (i14 == 2) {
                    if (cn.manstep.phonemirrorBox.BoxInterface.a.g) {
                        this.x = false;
                        s.f("BoxProtocol", "onCmd: Stop record audio========");
                        return;
                    }
                    return;
                }
                if (i14 == 3) {
                    s.c("recv  CarPlay_RequestHostUI...");
                    cn.manstep.phonemirrorBox.v0.a.t().n();
                    if (!new File("/sdcard/carplay.png").exists()) {
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(4, 0);
                    }
                    if (N != 5 || cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo("2022") >= 0) {
                        return;
                    }
                    cn.manstep.phonemirrorBox.v0.e.H(200);
                    return;
                }
                if (i14 == 15) {
                    s.e("Config.bUseBoxMic: " + p.s);
                    s.c("BoxProtocol,onCmd: ======Box Mic======");
                    this.f = true;
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 116);
                    cn.manstep.phonemirrorBox.BoxInterface.a.g = !p.s;
                    return;
                }
                if (i14 == 500) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 212);
                    return;
                }
                if (i14 == 501) {
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 213);
                    return;
                }
                if (i14 == 1000) {
                    s.c("BoxProtocol,onCmd: Recv CarPlay_SupportWifi");
                    P = true;
                    cn.manstep.phonemirrorBox.BoxInterface.c.e().A(true);
                    return;
                }
                if (i14 == 1001) {
                    Q = true;
                    this.g = true;
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 200);
                    return;
                }
                switch (i14) {
                    case 7:
                        cn.manstep.phonemirrorBox.BoxInterface.a.g = true;
                        s.c("BoxProtocol,onCmd: ======Car Mic======");
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 116);
                        return;
                    case 8:
                        cn.manstep.phonemirrorBox.BoxInterface.a.g = false;
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 117);
                        return;
                    case 9:
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 118);
                        return;
                    case 10:
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 119);
                        T0(11);
                        return;
                    default:
                        switch (i14) {
                            case 1003:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 201);
                                return;
                            case 1004:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 202);
                                return;
                            case 1005:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 203);
                                return;
                            case 1006:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 204);
                                return;
                            case 1007:
                                this.h = true;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 205);
                                return;
                            case 1008:
                                this.h = false;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 206);
                                return;
                            case 1009:
                                this.g = true;
                                R = true;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 207);
                                return;
                            case 1010:
                                R = false;
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 208);
                                return;
                            case 1011:
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 209);
                                return;
                            case 1012:
                                s.c("BoxProtocol,onCmd: Recv CarPlay_SupportWifiNeedKo=======================");
                                return;
                            default:
                                return;
                        }
                }
            }
            if (i2 == 13) {
                if (lVar.f() <= 16) {
                    String str3 = BuildConfig.FLAVOR;
                    try {
                        str = new String(lVar.e(), 0, lVar.f() - 1, "UTF-8");
                    } catch (Exception e2) {
                        e = e2;
                    }
                    try {
                        this.k = str;
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 215);
                    } catch (Exception e3) {
                        e = e3;
                        str3 = str;
                        s.e(Log.getStackTraceString(e));
                        str = str3;
                    }
                    s.e("BoxProtocol,onCmd: Recv CMD_BOX_BLUETOOTH_NAME: " + str + ", len=" + (lVar.f() - 1));
                    return;
                }
                return;
            }
            if (i2 == 14) {
                if (lVar.f() <= 16) {
                    String str4 = BuildConfig.FLAVOR;
                    try {
                        str2 = new String(lVar.e(), 0, lVar.f() - 1, "UTF-8");
                    } catch (Exception e4) {
                        e = e4;
                    }
                    try {
                        this.l = str2;
                    } catch (Exception e5) {
                        e = e5;
                        str4 = str2;
                        s.e(Log.getStackTraceString(e));
                        str2 = str4;
                    }
                    s.e("BoxProtocol,onCmd: Recv CMD_BOX_WIFI_NAME: " + str2 + ", len=" + (lVar.f() - 1));
                    return;
                }
                return;
            }
            if (i2 == 18) {
                if (this.J) {
                    b1();
                    return;
                } else {
                    e0(lVar);
                    return;
                }
            }
            if (i2 == 19) {
                try {
                    this.j = new String(lVar.e(), 0, lVar.f() - 1, "UTF-8");
                    s.e("BoxProtocol,onCmd: Recv CMD_BLUETOOTH_ONLINE_LIST: " + this.j);
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 211);
                    return;
                } catch (Exception e6) {
                    s.e(Log.getStackTraceString(e6));
                    return;
                }
            }
            if (i2 == 24) {
                s1(lVar);
                return;
            }
            if (i2 == 25) {
                if (lVar.f() >= 4) {
                    try {
                        String str5 = new String(lVar.e(), 0, lVar.f(), "UTF-8");
                        s.c("BoxProtocol,onCmd->BoxInfo: " + str5);
                        cn.manstep.phonemirrorBox.BoxInterface.c.e().w(str5);
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 35);
                        return;
                    } catch (Exception e7) {
                        s.f("BoxProtocol", "onCmd: " + s.g(e7));
                        return;
                    }
                }
                return;
            }
            if (i2 == 42) {
                N(lVar);
                return;
            }
            if (i2 == 43) {
                r1(lVar);
                return;
            }
            switch (i2) {
                case 11:
                    if (j.a() == lVar.f()) {
                        j jVar = new j();
                        jVar.b(lVar.d());
                        s.e("BoxProtocol,onCmd: Recv CMD_CARPLAY_MODE_CHANGE:  " + lVar.f() + " " + jVar.a + " " + jVar.f1465b + " " + jVar.f1466c + " " + jVar.f1467d + " " + jVar.e + " " + jVar.f + " " + jVar.g);
                        return;
                    }
                    return;
                case 22:
                    M(lVar);
                    return;
                case 119:
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 34);
                    return;
                case 136:
                    s.e("BoxProtocol,onCmd: recv  CMD_DEBUG_TEST: " + lVar.d().getInt(0));
                    return;
                case 153:
                    f0(lVar);
                    return;
                case 161:
                    cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 32);
                    return;
                case 177:
                    if (4 == lVar.f()) {
                        int i15 = lVar.d().getInt(0);
                        s.e("BoxProtocol,onCmd: CMD_UPDATE_PROGRESS progress: " + i15);
                        cn.manstep.phonemirrorBox.BoxInterface.d.P(1, 120, Integer.valueOf(i15));
                        return;
                    }
                    return;
                case 187:
                    if (4 == lVar.f()) {
                        int i16 = lVar.d().getInt(0);
                        s.e("BoxProtocol,onCmd: CMD_UPDATE iStatus: " + i16);
                        X(i16);
                        return;
                    }
                    return;
                case 204:
                    if (32 == lVar.f()) {
                        String str6 = "unknown";
                        try {
                            str6 = new String(lVar.e(), 0, 18, "ISO-8859-1");
                        } catch (UnsupportedEncodingException e8) {
                            s.e(Log.getStackTraceString(e8));
                        }
                        s.e("BoxProtocol,onCmd: Recv CMD_BOX_SOFTWARE_VERSION: " + str6);
                        t(str6);
                        p.f1804b = "BOX:" + str6;
                        cn.manstep.phonemirrorBox.BoxInterface.c.e().x(str6);
                        if (P) {
                            p.f1804b += "W";
                        }
                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 124);
                        return;
                    }
                    return;
                case 240:
                    s.e("BoxProtocol,onCmd: recv  CMD_ENABLE_CRYPT");
                    this.m = true;
                    return;
                case 255:
                    return;
                default:
                    s.c("BoxProtocol,onCmd: Unknown cmd = " + lVar.a.f1463c);
                    return;
            }
        }
    }

    private void Z() {
        cn.manstep.phonemirrorBox.BoxInterface.b bVar;
        cn.manstep.phonemirrorBox.BoxInterface.a.A(this.y.get(), true);
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 4);
        for (int i2 = 0; i2 < 10 && !MainActivity.b0; i2++) {
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e2) {
                s.f("BoxProtocol", "phonePlugIn: " + s.g(e2));
            }
        }
        if (N == -1) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 1);
        } else if (this.M) {
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 3);
            this.M = true;
        } else {
            this.M = false;
        }
        if (N == -1 || (bVar = this.z) == null) {
            return;
        }
        bVar.g(1, this.f1450d, this.e, null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a0() {
        s.d("BoxProtocol", "readThreadRun: start " + this);
        l lVar = new l();
        long j2 = 0;
        long jElapsedRealtime = 0;
        long jElapsedRealtime2 = 0;
        while (true) {
            if (!this.C) {
                if (j2 < 10) {
                    jElapsedRealtime = SystemClock.elapsedRealtime();
                    s.i("BoxProtocol", "readThreadRun: time1=" + jElapsedRealtime);
                }
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.H(lVar.g(), lVar.h())) {
                    s.f("BoxProtocol", "readThreadRun: readThread err 1");
                    break;
                }
                lVar.l();
                if (lVar.a.c()) {
                    lVar.c();
                    if (j2 < 10) {
                        jElapsedRealtime2 = SystemClock.elapsedRealtime();
                        s.i("BoxProtocol", "readThreadRun: time2=" + jElapsedRealtime2);
                    }
                    if (!cn.manstep.phonemirrorBox.BoxInterface.d.H(lVar.e(), lVar.f())) {
                        s.f("BoxProtocol", "readThreadRun: readThread err 2");
                        break;
                    }
                    lVar.k();
                    if (7 == lVar.a.f1463c) {
                        if (N == -2) {
                            s.f("BoxProtocol", "readThreadRun: (phoneType == PHONE_TYPE_UNKNOWN), CMD_AUDIO_FRAME decode_type=" + lVar.d().getInt(0));
                        }
                        if (!this.H && N != -2) {
                            Iterator<cn.manstep.phonemirrorBox.BoxInterface.a> it = this.B.iterator();
                            while (it.hasNext()) {
                                it.next().t(lVar);
                            }
                        }
                    } else {
                        Y(lVar);
                    }
                    if (6 == lVar.a.f1463c) {
                        j2++;
                    } else if (4 == lVar.a.f1463c || 2 == lVar.a.f1463c) {
                        j2 = 0;
                    }
                    if (j2 < 10) {
                        s.i("BoxProtocol", "readThreadRun: readHead=" + (jElapsedRealtime2 - jElapsedRealtime) + ",readData=" + (SystemClock.elapsedRealtime() - jElapsedRealtime2));
                    }
                } else {
                    s.f("BoxProtocol", "readThreadRun: receive error head!!!");
                    this.r.b(Boolean.FALSE);
                    c1();
                    jElapsedRealtime = 0;
                }
            } else {
                break;
            }
        }
        this.r.b(Boolean.FALSE);
        s.d("BoxProtocol", "readThreadRun: end readThread------:" + this);
    }

    private void e0(l lVar) {
        s.d("BoxProtocol", "saveBluetoothPairList: ###");
        Context context = this.y.get();
        if (context == null) {
            return;
        }
        File filesDir = context.getFilesDir();
        if (filesDir.exists() && filesDir.isDirectory()) {
            try {
                int iF = lVar.f() - 1;
                String str = new String(lVar.e(), 0, iF, "UTF-8");
                if (iF > 0) {
                    j1(str.split("\n").length);
                } else {
                    j1(0);
                }
                s.c("BoxProtocol,saveBluetoothPairList: " + str);
                s.c("BoxProtocol,saveBluetoothPairList: " + iF);
                FileOutputStream fileOutputStream = new FileOutputStream(filesDir.getAbsolutePath() + "/bluetooth_pair_list");
                fileOutputStream.write(str.getBytes(), 0, iF);
                fileOutputStream.close();
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 210);
            } catch (Exception e2) {
                s.f("BoxProtocol", "saveBluetoothPairList: " + s.g(e2));
            }
        }
    }

    private void f0(l lVar) {
        Context context = this.y.get();
        if (context == null) {
            return;
        }
        String strR = n.r(context);
        try {
            boolean z = false;
            int i2 = lVar.d().getInt(0);
            String str = new String(lVar.e(), 4, i2 - 1, "ISO-8859-1");
            int i3 = i2 + 4;
            int i4 = lVar.d().getInt(i3);
            int i5 = i3 + 4;
            String strSubstring = str.substring(str.lastIndexOf("/") + 1);
            String strF = strR + "/" + strSubstring;
            if (strSubstring.toLowerCase().contains("log")) {
                strF = strR + "/hwbox.log";
                p.e = strF;
            } else if (strSubstring.toLowerCase().contains("apk")) {
                strF = c0.f(this.y.get());
                z = true;
            }
            s.m("BoxProtocol,saveFileFromBox: Recv file " + strSubstring + " from Box, file content " + i4 + " byte");
            n.f(strF);
            n.x(lVar.e(), i5, i4, strF);
            if (z) {
                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 33);
            }
        } catch (Exception e2) {
            s.e("BoxProtocol, saveFileFromBox: \n" + Log.getStackTraceString(e2));
        }
    }

    private boolean g1(byte[] bArr) {
        return B0(162, bArr, bArr.length);
    }

    private void k1(byte[] bArr, int i2) {
        byte[] bArr2 = this.K;
        System.arraycopy(bArr, i2, bArr2, 0, bArr2.length);
    }

    private void r1(l lVar) {
        if (W()) {
            return;
        }
        if (lVar.f() >= 4) {
            try {
                int i2 = lVar.d().getInt(0);
                String str = new String(lVar.e(), 4, (lVar.f() - 4) - 1, "ISO-8859-1");
                s.c("BoxProtocol,showConnectionPinCode: phoneType=" + i2 + ", Pincode: " + str);
                if (i2 == 6 || i2 == 7) {
                    p1(str);
                }
            } catch (Exception e2) {
                s.f("BoxProtocol", "showConnectionPinCode: " + s.g(e2));
            }
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 230);
    }

    private void s1(l lVar) {
        if (W()) {
            return;
        }
        if (lVar.f() >= 4) {
            try {
                int i2 = lVar.d().getInt(0);
                String str = new String(lVar.e(), 4, (lVar.f() - 4) - 1, "ISO-8859-1");
                if (!k.i()) {
                    str = BuildConfig.FLAVOR;
                }
                s.c("BoxProtocol,showConnectionUrl: phoneType=" + i2 + ", HiCarURL: " + str);
                if (i2 == 6) {
                    q1(str);
                }
            } catch (Exception e2) {
                s.f("BoxProtocol", "showConnectionUrl: " + s.g(e2));
            }
        }
        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 214);
    }

    private void t(String str) {
        if (TextUtils.isEmpty(str) || "unknown".equalsIgnoreCase(str)) {
            return;
        }
        s.c("BoxProtocol,checkBoxVersion: " + str);
        if (str.length() != 18) {
            n1(true);
        } else {
            n1(!"Y".equals(str.substring(17, 18)));
        }
    }

    private void t1() {
        if (cn.manstep.phonemirrorBox.BoxInterface.a.g) {
            this.x = false;
        }
        s.d("BoxProtocol", "stopAllAudio: AudioPlayerCount=" + this.B.size());
        Iterator<cn.manstep.phonemirrorBox.BoxInterface.a> it = this.B.iterator();
        while (it.hasNext()) {
            it.next().K();
        }
    }

    private boolean u(Context context, String str) {
        return v(context, str, "/tmp/" + str + "\u0000");
    }

    private boolean v(Context context, String str, String str2) {
        boolean z;
        try {
            InputStream inputStreamOpen = context.getAssets().open(str);
            int iAvailable = inputStreamOpen.available();
            byte[] bArr = new byte[iAvailable];
            int i2 = inputStreamOpen.read(bArr);
            if (i2 != iAvailable) {
                s.e("filename = " + str + " readCount = " + i2 + ", length = " + iAvailable);
                z = false;
            } else {
                z = true;
            }
            w1(str2, bArr);
            inputStreamOpen.close();
            return z;
        } catch (Exception e2) {
            s.e("BoxProtocol,copyAssetFiletoBox: \n" + Log.getStackTraceString(e2));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean v0(int i2) {
        boolean zBooleanValue = this.r.a().booleanValue();
        if (zBooleanValue) {
            l lVar = new l(0);
            lVar.a.f1463c = i2;
            lVar.a.f1462b = 0;
            lVar.c();
            lVar.j();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                    s.c("BoxProtocol,sendCmd: cmd = " + i2 + ", ret = false");
                    zBooleanValue = false;
                }
            }
        } else {
            s.e("BoxProtocol,sendCmd: bOpened_ = false, cmd = " + i2);
        }
        return zBooleanValue;
    }

    private boolean w(String str, String str2) {
        File file = new File(str);
        if (file.exists() && file.isFile()) {
            int length = (int) file.length();
            s.c("BoxProtocol,copyLocalFileToBox: " + str + ", length = " + length);
            if (length > 102400) {
                s.c("BoxProtocol,copyLocalFileToBox: The local file that needs to be sent to the box is larger than 100kb!!! ");
                return false;
            }
            try {
                byte[] bArr = new byte[length];
                FileInputStream fileInputStream = new FileInputStream(file);
                fileInputStream.read(bArr);
                fileInputStream.close();
                return w1(str2, bArr);
            } catch (Exception e2) {
                s.e("BoxProtocol,copyLocalFileToBox: " + Log.getStackTraceString(e2));
            }
        }
        return false;
    }

    private boolean w0(int i2, int i3) {
        boolean zBooleanValue = this.r.a().booleanValue();
        if (zBooleanValue) {
            l lVar = new l(4);
            lVar.a.f1463c = i2;
            lVar.a.f1462b = 4;
            lVar.c();
            lVar.d().putInt(0, i3);
            lVar.j();
            synchronized (this) {
                zBooleanValue = cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h()) ? cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f()) : false;
                s.c("BoxProtocol,sendCmd: " + i2 + " " + i3 + " " + zBooleanValue);
            }
        } else {
            s.e("BoxProtocol,sendCmd: bOpened_ = false, cmd = " + i2 + "," + i3);
        }
        return zBooleanValue;
    }

    private String x(int i2) {
        if (i2 == 16) {
            return "CarPlay_StartNightMode";
        }
        if (i2 == 17) {
            return "CarPlay_StopNightMode";
        }
        if (i2 == 30) {
            return "CarPlay_StartBleAdv";
        }
        if (i2 == 31) {
            return "CarPlay_StopBleAdv";
        }
        return BuildConfig.FLAVOR + i2;
    }

    private boolean z0(String str, int i2) {
        try {
            return w1(str + "\u0000", new byte[]{(byte) (i2 & 255), (byte) ((i2 >> 8) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 24) & 255)});
        } catch (Exception e2) {
            s.e(Log.getStackTraceString(e2));
            return false;
        }
    }

    public boolean A() {
        s.c("BoxProtocol,getBluetoothOnlineList: 1013");
        return T0(1013);
    }

    String B() {
        return this.k;
    }

    public String C() {
        return !BuildConfig.FLAVOR.equals(this.k) ? this.k : "Auto Box";
    }

    public String D() {
        return this.l;
    }

    public boolean D0(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, obj);
            String string = jSONObject.toString();
            s.d("BoxProtocol", "sendInfo: " + string);
            return h1(string.getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    public String E() {
        return this.j;
    }

    public boolean E0() {
        s.d("BoxProtocol", "sendManualDisconnectTemp: isUnauthorized=" + this.J);
        return v0(15);
    }

    public int F() {
        return this.L;
    }

    public boolean F0(int i2) {
        return i2 == 1 ? T0(15) : i2 == 2 ? T0(21) : T0(7);
    }

    public byte[] G() {
        return this.K;
    }

    public void G0(cn.manstep.phonemirrorBox.BoxInterface.e eVar) {
        if (this.r.a().booleanValue()) {
            l lVar = new l(eVar.a());
            lVar.a.f1463c = 23;
            lVar.c();
            eVar.c(lVar.d(), 0);
            lVar.j();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                    s.e("Send multi touch head err");
                } else if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                    s.e("Send multi touch data err");
                }
            }
        }
    }

    public cn.manstep.phonemirrorBox.BoxInterface.a H() {
        int i2 = this.G;
        if (i2 == -1) {
            return null;
        }
        return z(i2);
    }

    public void H0() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("pid", Process.myPid());
        } catch (JSONException e2) {
            s.d("BoxProtocol", "sendPid: " + s.g(e2));
        }
        String string = jSONObject.toString();
        s.d("BoxProtocol", "sendPid: " + string);
        A0(160, string, false);
    }

    public int I() {
        return 0;
    }

    public void I0(int i2, int i3, int i4, int i5) {
        if (this.r.a().booleanValue()) {
            l lVar = new l(16);
            lVar.a.f1463c = 5;
            lVar.c();
            if (i2 == 0) {
                lVar.d().putInt(0, 14);
            } else if (i2 == 1) {
                lVar.d().putInt(0, 15);
            } else if (i2 == 2) {
                lVar.d().putInt(0, 16);
            }
            lVar.d().putInt(0, (i3 << 8) | lVar.d().getInt(0));
            lVar.d().putInt(4, i4);
            lVar.d().putInt(8, i5);
            lVar.d().putInt(12, this.f1448b | (this.f1449c << 16));
            lVar.j();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                    s.e("Send touch head err");
                } else if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                    s.e("Send touch data err");
                }
            }
        }
    }

    public cn.manstep.phonemirrorBox.q0.g J() {
        return this.o;
    }

    public boolean J0(String str, int i2) {
        if (i2 > 0) {
            return D0(str, Integer.valueOf(i2));
        }
        return false;
    }

    public int K() {
        return N;
    }

    public boolean K0(int i2) {
        return i2 == 5 ? T0(25) : T0(24);
    }

    public String L() {
        return this.i;
    }

    public boolean L0(int i2) {
        s.e("BoxProtocol,send_AndroidWorkMode: mode = " + i2);
        return z0("/etc/android_work_mode", i2);
    }

    public boolean M0(int i2) {
        s.d("BoxProtocol", "send_CarplayLogoType: type=" + i2);
        return w0(9, i2);
    }

    public boolean N0(int i2) {
        s.c("BoxProtocol,send_NightMode: " + i2 + " (0:day 1:night)");
        if (i2 == 0) {
            T0(17);
        } else if (1 == i2) {
            T0(16);
        } else {
            f1("DayNightMode", 2);
        }
        return z0("/tmp/night_mode", i2);
    }

    public boolean O0() {
        return P0(cn.manstep.phonemirrorBox.BoxInterface.d.A() ? cn.manstep.phonemirrorBox.c0.i().h() : cn.manstep.phonemirrorBox.c0.i().f());
    }

    public boolean P0(int i2) {
        s.c("BoxProtocol,send_ScreenDPI: " + i2);
        return z0("/tmp/screen_dpi", i2);
    }

    public void Q() {
        this.D = cn.manstep.phonemirrorBox.c0.t().f1934b;
        this.E = cn.manstep.phonemirrorBox.c0.t().f1935c;
        s.c("BoxProtocol,initBoundSize: " + this.D + "x" + this.E);
    }

    public boolean Q0() {
        return v0(21);
    }

    public boolean R0(l lVar) {
        lVar.j();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                s.e("BoxProtocol,send_audio_record: Write audioRecord head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                return true;
            }
            s.e("BoxProtocol,send_audio_record: Write audioRecord data err");
            return false;
        }
    }

    public boolean S() {
        return N == 5;
    }

    public boolean S0(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        l lVar = new l(0);
        lVar.a.f1463c = 22;
        lVar.a.f1462b = bArr.length + 4;
        lVar.c();
        lVar.d().putInt(0, 1);
        System.arraycopy(bArr, 0, lVar.e(), 4, bArr.length);
        lVar.j();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                s.e("BoxProtocol,send_camera_info: Write head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                return true;
            }
            s.e("BoxProtocol,send_camera_info: Write data err");
            return false;
        }
    }

    public boolean T() {
        return N == 3;
    }

    public boolean T0(int i2) {
        s.d("BoxProtocol", "send_carplay_cmd: " + x(i2));
        return w0(8, i2);
    }

    public boolean U() {
        return N == 6;
    }

    public boolean U0(int i2) {
        return w0(136, i2);
    }

    public boolean V() {
        return k.h == 0;
    }

    public boolean V0() {
        boolean zD0;
        while (this.n <= 0) {
            this.n = new Random().nextInt(Integer.MAX_VALUE);
        }
        l lVar = new l(4);
        lVar.a.f1463c = 240;
        lVar.a.f1462b = 4;
        lVar.c();
        lVar.d().putInt(0, this.n);
        lVar.j();
        cn.manstep.phonemirrorBox.BoxInterface.d.W(this.n);
        synchronized (this) {
            zD0 = cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h()) ? cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f()) : false;
            s.c("BoxProtocol,sendCmd CMD_ENABLE_CRYPT: " + this.n + ", ret = " + zD0);
        }
        return zD0;
    }

    public boolean W() {
        return this.J;
    }

    public boolean W0(int i2) {
        return w0(119, i2);
    }

    public boolean X0() {
        if (W()) {
            return false;
        }
        H0();
        k kVar = this.q;
        kVar.f1469c = p.C;
        if (p.g) {
            kVar.a = this.D;
            kVar.f1468b = this.E;
            this.F = 160;
            kVar.f1469c = 25;
        } else {
            kVar.a = this.D;
            kVar.f1468b = this.E;
            if (cn.manstep.phonemirrorBox.BoxInterface.d.A()) {
                this.F = b0.i().m("DPI", cn.manstep.phonemirrorBox.c0.i().h());
            } else {
                this.F = b0.i().m("DPI", cn.manstep.phonemirrorBox.c0.i().f());
            }
        }
        V0();
        P0(this.F);
        s.h("BoxProtocol,send_g_open: AutoPlay Video resolution and frame rate: " + (BuildConfig.FLAVOR + this.q.a + "x" + this.q.f1468b + "@" + this.q.f1469c + "fps, dpi=" + this.F) + ", Config.bUseSoftDecode = " + p.g);
        L0(k.d());
        int i2 = p.r;
        if (i2 < 0) {
            this.q.f = p.a();
        } else {
            this.q.f = i2;
        }
        s.c("BoxProtocol,send_g_open: g_Open.iBoxversion = " + this.q.f);
        int i3 = k.h;
        if (i3 > 4 || i3 < 0) {
            s.e("BoxProtocol,send_g_open: error phoneWorkMode=" + k.h);
            k.h = 2;
        }
        s.e("BoxProtocol,send_g_open: phoneWorkMode=" + k.h(k.h) + ",androidWorkMode=" + k.a(k.i));
        l lVar = new l(k.g());
        lVar.a.f1463c = 1;
        lVar.a.f1462b = k.g();
        lVar.c();
        byte[] bArrE = this.q.e();
        System.arraycopy(bArrE, 0, lVar.e(), 0, bArrE.length);
        lVar.j();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                s.e("BoxProtocol,send_g_open: Write g_Open head err");
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                s.e("BoxProtocol,send_g_open: success ");
                return true;
            }
            s.e("BoxProtocol,send_g_open: Write g_Open data err");
            return false;
        }
    }

    public void Y0() {
        new Thread(new RunnableC0078f(), "send_g_open_async").start();
    }

    public boolean Z0() {
        return w1("/tmp/iphone_work_mode\u0000", new byte[]{0});
    }

    public boolean a(Context context) {
        if (context != null) {
            return cn.manstep.phonemirrorBox.BoxInterface.c.e().p().compareTo("2022") > 0 ? u(context, "other_link.hwfs") : u(context, "adb") && u(context, "adb.pub") && u(context, "helloworld0") && u(context, "helloworld1") && u(context, "helloworld2") && u(context, "libby265n.so") && u(context, "libby265n_x86.so") && u(context, "libscreencap40.so") && u(context, "libscreencap41.so") && u(context, "libscreencap43.so") && u(context, "libscreencap50.so") && u(context, "libscreencap50_x86.so") && u(context, "libscreencap442.so") && u(context, "libscreencap422.so") && u(context, "mirrorcoper.apk") && u(context, "libscreencap60.so") && u(context, "libscreencap70.so") && u(context, "libscreencap71.so") && u(context, "libscreencap80.so") && u(context, "libscreencap90.so") && u(context, "libscreencap100.so") && u(context, "HWTouch.dex");
        }
        s.e("BoxProtocol,UploadAssets: context==null");
        return false;
    }

    public void a1() {
        new Thread(new g(), "send_invalidMode").start();
    }

    public void b() {
    }

    public void b0() {
        s.d("BoxProtocol", "reset: " + this);
        this.f = false;
        P = false;
        N = -2;
        Q = false;
        this.g = true;
        O = false;
        this.m = false;
        this.h = false;
        int i2 = k.h;
    }

    public boolean b1() {
        this.g = false;
        O = false;
        N = -2;
        s.d("BoxProtocol", "send_manualDisconnect: isUnauthorized=" + this.J);
        return v0(15);
    }

    public void c(Context context) {
        if (context == null || b0.i().m("CarPlayLogoType", 1) == 2) {
            return;
        }
        b0 b0VarI = b0.i();
        String str = BuildConfig.FLAVOR;
        String strN = b0VarI.n("CarPlayOEMIconName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strN) && !strN.toLowerCase().contains("default") && !strN.toLowerCase().contains("custom")) {
            str = "oemIconLabel = " + strN + "\n";
        }
        w1("/etc/airplay.conf\u0000", ("oemIconVisible = 1\n" + str + ("name = " + C() + "\n") + "model = Magic-Car-Link-1.00\noemIconPath = /etc/oem_icon.png\n").getBytes());
    }

    public boolean c0(int i2) {
        k kVar = this.q;
        p.C = i2;
        kVar.f1469c = i2;
        return X0();
    }

    public boolean c1() {
        boolean z = false;
        l lVar = new l(0);
        lVar.a.f1463c = 206;
        lVar.c();
        lVar.j();
        synchronized (this) {
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                z = true;
            } else {
                s.e("BoxProtocol,sendCmd: CMD_BOX_REBOOT , ret = false");
            }
        }
        return z;
    }

    public void d() {
    }

    public boolean d0(int i2, int i3) {
        this.D = i2;
        this.E = i3;
        return X0();
    }

    public void d1(boolean z) {
        cn.manstep.phonemirrorBox.BoxInterface.a.I(z);
    }

    public void e() {
        f(this.y.get());
    }

    public boolean e1(byte[] bArr) {
        s.c("BoxProtocol,setBoxBluetoothName: " + bArr.length);
        if (bArr.length <= 15) {
            return B0(13, bArr, bArr.length);
        }
        s.c("BoxProtocol,setBoxBluetoothName: Bluetooth name is too long.");
        return false;
    }

    public void f(Context context) {
        String strN;
        int iM;
        if (context == null) {
            return;
        }
        int iM2 = b0.i().m("CarPlayLogoType", 1);
        if (iM2 == 2) {
            strN = "carplay";
            iM = 0;
        } else {
            strN = b0.i().n("CarPlayOEMIconPath", BuildConfig.FLAVOR);
            iM = b0.i().m("CarBrandId", 0);
        }
        t0(iM, 0);
        s.c("BoxProtocol,UploadLocalLogoPNGPublic: filePath = " + strN);
        if (TextUtils.isEmpty(strN)) {
            M0(1);
            if (v(context, "CarLogo/default.png", "/etc/icon_120x120.png\u0000")) {
                v(context, "CarLogo/default.png", "/etc/icon_180x180.png\u0000");
                v(context, "CarLogo/default.png", "/etc/icon_256x256.png\u0000");
                return;
            }
            return;
        }
        if (strN.contains("custom")) {
            w(strN, "/etc/icon_120x120.png\u0000");
            w(strN, "/etc/icon_180x180.png\u0000");
            w(strN, "/etc/icon_256x256.png\u0000");
            c(this.y.get());
            return;
        }
        v(context, strN, "/etc/icon_120x120.png\u0000");
        v(context, strN, "/etc/icon_180x180.png\u0000");
        v(context, strN, "/etc/icon_256x256.png\u0000");
        if (iM2 == 2) {
            M0(2);
        } else {
            M0(1);
            c(this.y.get());
        }
    }

    public boolean f1(String str, int i2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, i2);
            String string = jSONObject.toString();
            s.i("BoxProtocol", "setBoxConfig: " + string);
            return g1(string.getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    public boolean g0(int i2, int i3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("androidAutoSizeW", i2);
            jSONObject.put("androidAutoSizeH", i3);
            String string = jSONObject.toString();
            s.c("BoxProtocol,sendAndroidAutoSize: " + string);
            return h1(string.getBytes());
        } catch (JSONException e2) {
            s.d("BoxProtocol", "sendAndroidAutoSize: \n" + s.g(e2));
            return false;
        }
    }

    public boolean h0() {
        if ((k.d() == 3 || k.f() == 3) && !this.p) {
            if (a(this.y.get())) {
                this.p = true;
            } else {
                s.e("BoxProtocol,sendAndroidWorkModeAssets: UploadAssets failed!");
            }
        }
        return this.p;
    }

    public boolean h1(byte[] bArr) {
        return B0(25, bArr, bArr.length);
    }

    public boolean i0() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("version", "2025.03.19.1126");
            jSONObject.put("code", 37);
            jSONObject.put("lang", BuildConfig.FLAVOR + x.c());
            jSONObject.put("uuid", u.z().I());
            jSONObject.put("size", BuildConfig.FLAVOR + p.k + "x" + p.l);
            jSONObject.put("model", Build.MODEL);
            jSONObject.put("platform", p.c("ro.board.platform", BuildConfig.FLAVOR));
            jSONObject.put("android", BuildConfig.FLAVOR + Build.VERSION.RELEASE + "(" + Build.VERSION.SDK_INT + ")");
            jSONObject.put("huid", u.z().w());
        } catch (JSONException e2) {
            s.d("BoxProtocol", "sendAppInfo: " + s.g(e2));
        }
        return j0(jSONObject.toString().getBytes());
    }

    public boolean i1(byte[] bArr) {
        s.c("BoxProtocol,setBoxWifiName: " + bArr.length);
        if (bArr.length <= 15) {
            return B0(14, bArr, bArr.length);
        }
        s.c("BoxProtocol,setBoxWifiName: Wifi name is too long.");
        return false;
    }

    public boolean j0(byte[] bArr) {
        return B0(160, bArr, bArr.length);
    }

    public void j1(int i2) {
        s.c("BoxProtocol,setBtPairedCount: count = " + i2);
        this.L = i2;
    }

    public boolean k0(boolean z) {
        this.H = z;
        return z ? T0(22) : T0(23);
    }

    public boolean l0(byte[] bArr) {
        s.c("BoxProtocol,sendAutoConnByBtAddr: " + bArr.length);
        if (bArr.length != 17) {
            return false;
        }
        return B0(17, bArr, 17);
    }

    public void l1(int i2) {
        this.G = i2;
    }

    public boolean m0() {
        s.c("BoxProtocol,sendAutoConnect: cmd=1002," + this.g + ", bOpened_=" + this.r.a());
        if (W() || !this.g) {
            return false;
        }
        if (!this.h) {
            return T0(1002);
        }
        s.f("BoxProtocol", "sendAutoConnect: bBluetoothConnected=true");
        return false;
    }

    public void m1(int i2) {
    }

    public boolean n0(byte[] bArr) {
        s.c("BoxProtocol,sendBluetoothAddr: " + bArr.length);
        if (bArr.length != 17) {
            return false;
        }
        return B0(10, bArr, 17);
    }

    public void n1(boolean z) {
        this.J = z;
        if (z) {
            s.e("BoxProtocol,setUnauthorized: " + z);
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 123);
        }
    }

    public boolean o0(byte[] bArr, int i2) {
        s.d("BoxProtocol", "sendBluetoothPairedList: " + i2);
        return B0(18, bArr, i2);
    }

    public boolean o1(int i2) {
        return f1("WiFiChannel", i2);
    }

    public boolean p0(byte[] bArr) {
        s.c("BoxProtocol,sendBluetoothPinCode: " + bArr.length);
        if (bArr.length != 4) {
            return false;
        }
        return B0(12, bArr, 4);
    }

    public void p1(String str) {
    }

    public boolean q0() {
        int iM = b0.i().m("mediaDelay", 300);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("syncTime", TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()));
            jSONObject.put("mediaDelay", iM);
            jSONObject.put("drivePosition", b0.i().o("IsLeftDrive", true) ? 0 : 1);
            cn.manstep.phonemirrorBox.util.x xVarB = cn.manstep.phonemirrorBox.c0.b(b0.i().m("vandroidautoh", 720));
            jSONObject.put("androidAutoSizeW", xVarB.f1934b);
            jSONObject.put("androidAutoSizeH", xVarB.f1935c);
            jSONObject.put("HiCarConnectMode", I());
            jSONObject.put("GNSSCapability", 7);
            jSONObject.put("DashboardInfo", 1);
            if (u.z().b0()) {
                jSONObject.put("UseBTPhone", 1);
            } else {
                jSONObject.put("UseBTPhone", 0);
            }
            String string = jSONObject.toString();
            s.c("BoxProtocol,sendBoxAllSettings: " + string);
            return h1(string.getBytes());
        } catch (JSONException e2) {
            s.f("BoxProtocol", "sendBoxAllSettings: " + s.g(e2));
            return false;
        }
    }

    public void q1(String str) {
        this.i = str;
    }

    public boolean r0(byte[] bArr) {
        if (bArr.length <= 16) {
            return w1("/etc/box_name\u0000", bArr);
        }
        s.c("BoxProtocol,sendBoxName: Box name is too long.");
        return false;
    }

    public boolean s0(String str, Object obj) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(str, obj);
            return h1(jSONObject.toString().getBytes());
        } catch (JSONException unused) {
            return false;
        }
    }

    public boolean t0(int i2, int i3) {
        s.c("BoxProtocol,sendCarManufacturerInfo: " + i2 + ", " + i3);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
        byteBufferAllocate.putInt(0, i2);
        byteBufferAllocate.putInt(4, i3);
        return B0(20, byteBufferAllocate.array(), 8);
    }

    public boolean u0(int i2) {
        s.c("BoxProtocol,sendChargeMode: " + i2);
        return z0("/tmp/charge_mode", i2);
    }

    public void u1() {
        if (this.t == null) {
            this.t = new Thread(new d(), "checkOpen");
        }
    }

    public void v1() {
        if (this.v == null) {
            cn.manstep.phonemirrorBox.h0.b bVar = new cn.manstep.phonemirrorBox.h0.b();
            bVar.f("heartBeat-%d");
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, bVar.b());
            this.v = scheduledThreadPoolExecutor;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(new e(), 0L, 2000L, TimeUnit.MILLISECONDS);
        }
    }

    public boolean w1(String str, byte[] bArr) {
        if (bArr.length > 52428800) {
            s.f("BoxProtocol", "upload_file_to_box: The file is too large. size=" + bArr.length);
            return false;
        }
        byte[] bytes = str.getBytes();
        int length = bytes.length;
        int length2 = bArr.length;
        int i2 = length + 4 + 4 + length2;
        l lVar = new l(i2);
        lVar.a.f1463c = 153;
        lVar.a.f1462b = i2;
        lVar.c();
        lVar.d().putInt(0, length);
        int i3 = 0;
        int i4 = 4;
        while (i3 < bytes.length) {
            lVar.d().put(i4, bytes[i3]);
            i3++;
            i4++;
        }
        lVar.d().putInt(i4, length2);
        System.arraycopy(bArr, 0, lVar.e(), i4 + 4, length2);
        lVar.j();
        synchronized (this) {
            if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                s.e("BoxProtocol,upload_file_to_box: Write carplay_cmd head err, boxFileName: " + str);
                return false;
            }
            if (cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                s.e("BoxProtocol,upload_file_to_box: send_carplay_cmd() success , boxFileName: " + str);
                return true;
            }
            s.e("BoxProtocol,upload_file_to_box: Write carplay_cmd data err, boxFileName: " + str);
            return false;
        }
    }

    public void x0(int i2) {
        if (this.r.a().booleanValue()) {
            l lVar = new l(16);
            lVar.a.f1462b = 16;
            lVar.a.f1463c = 5;
            lVar.c();
            if (i2 == 0) {
                lVar.d().putInt(0, 11);
            } else if (i2 == 1) {
                lVar.d().putInt(0, 12);
            } else if (i2 != 2) {
                return;
            } else {
                lVar.d().putInt(0, 13);
            }
            lVar.j();
            synchronized (this) {
                if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.g(), lVar.h())) {
                    s.e("Send commadn head err");
                } else if (!cn.manstep.phonemirrorBox.BoxInterface.d.d0(lVar.e(), lVar.f())) {
                    s.e("Send command data err");
                }
            }
        }
    }

    public void y() {
        this.C = true;
        this.f1450d = 0;
        this.e = 0;
        h hVar = this.A;
        if (hVar != null) {
            hVar.b();
            this.A = null;
        }
        n1(false);
        try {
            try {
                if (this.v != null) {
                    this.v.shutdown();
                }
                if (this.t != null) {
                    this.t.join(800L);
                }
                if (this.s != null) {
                    this.s.join(800L);
                }
                if (this.u != null) {
                    this.u.join(800L);
                }
                if (this.w != null) {
                    synchronized (cn.manstep.phonemirrorBox.BoxInterface.a.h) {
                        cn.manstep.phonemirrorBox.BoxInterface.a.h.notify();
                    }
                    this.w.join(800L);
                }
            } catch (InterruptedException e2) {
                s.e(Log.getStackTraceString(e2));
            }
            this.v = null;
            this.s = null;
            this.t = null;
            this.u = null;
            this.w = null;
            Iterator<cn.manstep.phonemirrorBox.BoxInterface.a> it = this.B.iterator();
            while (it.hasNext()) {
                it.next().h();
            }
            this.B.clear();
            cn.manstep.phonemirrorBox.BoxInterface.b bVar = this.z;
            if (bVar != null) {
                bVar.e();
            }
            this.z = null;
            b0();
            s.e("BoxProtocol destroy()");
        } catch (Throwable th) {
            this.v = null;
            this.s = null;
            this.t = null;
            this.u = null;
            this.w = null;
            throw th;
        }
    }

    public void y0() {
        s.c("BoxProtocol,sendConfig: ");
        q0();
        i0();
        d();
        e();
        b();
        N0(b0.i().m("NightMode", 2));
        u0(b0.i().m("ChargeMode", 0));
        if (s.a) {
            U0(1);
        }
        String strN = b0.i().n("BtName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strN)) {
            s.d("BoxProtocol", "sendConfig: btName=" + strN);
            e1(strN.getBytes());
        }
        String strN2 = b0.i().n("WifiName", BuildConfig.FLAVOR);
        if (!TextUtils.isEmpty(strN2)) {
            i1(strN2.getBytes());
        }
        r0(C().getBytes());
        F0(b0.i().m("MicType", 0));
        K0(b0.i().m("wifi_type", 5));
        k0(b0.i().o("AudioTransferMode", false));
        if (b0.i().o("MediaPlaying_" + K(), false)) {
            T0(201);
        }
    }

    public cn.manstep.phonemirrorBox.BoxInterface.a z(int i2) {
        List<cn.manstep.phonemirrorBox.BoxInterface.a> list = this.B;
        if (list == null || list.size() <= 0 || i2 < 0) {
            return null;
        }
        if (i2 < this.B.size()) {
            return this.B.get(i2);
        }
        return this.B.get(r3.size() - 1);
    }

    class l {
        private i a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ByteBuffer f1471b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private ByteBuffer f1472c;

        public l() {
            i iVar = new i(f.this);
            this.a = iVar;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iVar.m());
            this.f1471b = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(1048576);
            this.f1472c = byteBufferAllocate2;
            byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
        }

        private void i(boolean z) {
            int i = this.a.f1462b;
            if (!f.this.m || this.a.f1462b == 0) {
                return;
            }
            int i2 = this.a.f1463c;
            if (z && i2 != 6 && i2 != 7) {
                this.a.a();
            }
            if (this.a.b()) {
                try {
                    byte[] bArr = new byte[16];
                    for (int i3 = 0; i3 < 16; i3++) {
                        bArr[i3] = (byte) "SkBRDy3gmrw1ieH0".charAt((f.this.n + i3) % 16);
                    }
                    byte[] bArr2 = new byte[16];
                    bArr2[1] = (byte) (f.this.n & 255);
                    bArr2[4] = (byte) ((f.this.n >> 8) & 255);
                    bArr2[9] = (byte) ((f.this.n >> 16) & 255);
                    bArr2[12] = (byte) ((f.this.n >> 24) & 255);
                    byte[] bArrE = e();
                    if (!z) {
                        bArrE = new byte[f()];
                        System.arraycopy(e(), 0, bArrE, 0, i);
                    }
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr2);
                    Cipher cipher = Cipher.getInstance("AES/CFB/NoPadding");
                    if (z) {
                        cipher.init(1, secretKeySpec, ivParameterSpec);
                    } else {
                        cipher.init(2, secretKeySpec, ivParameterSpec);
                    }
                    System.arraycopy(cipher.doFinal(bArrE), 0, e(), 0, i);
                } catch (Exception e) {
                    s.d("BoxProtocol", "handleCryptData: " + s.g(e));
                }
            }
        }

        public void c() {
            if (this.a.f1462b > this.f1472c.capacity()) {
                s.e("Out of dataBuffer.capacity");
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(this.a.f1462b);
                this.f1472c = byteBufferAllocate;
                byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            }
        }

        public ByteBuffer d() {
            return this.f1472c;
        }

        public byte[] e() {
            return this.f1472c.array();
        }

        public int f() {
            return this.a.f1462b;
        }

        public byte[] g() {
            return this.f1471b.array();
        }

        public int h() {
            return this.a.m();
        }

        public void j() {
            i(true);
            this.a.d();
            this.f1471b.putInt(0, this.a.a);
            this.f1471b.putInt(4, this.a.f1462b);
            this.f1471b.putInt(8, this.a.f1463c);
            this.f1471b.putInt(12, this.a.f1464d);
        }

        public void k() {
            i(false);
        }

        public void l() {
            this.a.a = this.f1471b.getInt(0);
            this.a.f1462b = this.f1471b.getInt(4);
            this.a.f1463c = this.f1471b.getInt(8);
            this.a.f1464d = this.f1471b.getInt(12);
        }

        public l(int i) {
            i iVar = new i(f.this);
            this.a = iVar;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(iVar.m());
            this.f1471b = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(i);
            this.f1472c = byteBufferAllocate2;
            byteBufferAllocate2.order(ByteOrder.LITTLE_ENDIAN);
            this.a.f1462b = i;
        }
    }
}
