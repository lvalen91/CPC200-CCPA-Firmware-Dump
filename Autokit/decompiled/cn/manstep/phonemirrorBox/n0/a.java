package cn.manstep.phonemirrorBox.n0;

import android.content.Context;
import android.content.Intent;
import android.graphics.SurfaceTexture;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.opengl.GLES20;
import android.opengl.Matrix;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import cn.manstep.phonemirrorBox.FloatWindowService;
import cn.manstep.phonemirrorBox.util.i;
import cn.manstep.phonemirrorBox.util.s;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import d.a.a.b.a;
import d.a.a.b.f;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.UUID;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class a {
    public static boolean m;
    public WeakReference<Context> a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Timer f1791d;
    private h f;
    private Thread g;
    private Thread h;
    private d.b.a.b i;
    public d j;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public f f1789b = new f(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f1790c = false;
    private List<e> e = new ArrayList();
    private Runnable k = new RunnableC0092a();
    private Runnable l = new b();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$a, reason: collision with other inner class name */
    class RunnableC0092a implements Runnable {
        RunnableC0092a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-20);
            a.this.k();
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            a.this.l();
            if (a.this.i != null) {
                a.this.i.i();
                a.this.i = null;
            }
        }
    }

    public class d {
        public WeakReference<Context> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1798b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1799c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1800d = false;

        public d(a aVar, Context context) {
            this.a = new WeakReference<>(null);
            this.f1798b = false;
            this.a = new WeakReference<>(context);
            if (context == null || this.f1798b) {
                return;
            }
            context.startService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f1798b = true;
            s.c("init float window service");
        }

        public void a() {
            Context context = this.a.get();
            if (context == null || !this.f1798b) {
                return;
            }
            context.stopService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f1798b = false;
            s.c("destroy float window service");
        }

        public Surface b() {
            if (FloatWindowService.e == null) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    s.e(Log.getStackTraceString(e));
                }
            }
            return FloatWindowService.e;
        }

        public void c(boolean z) {
            FloatWindowService.d(z);
        }

        public void d(boolean z) {
            if (z && this.f1799c) {
                FloatWindowService.f(true);
            } else {
                FloatWindowService.f(false);
            }
            this.f1800d = z;
        }

        public void e(boolean z) {
            if (this.f1800d && z) {
                FloatWindowService.f(true);
            } else {
                FloatWindowService.f(false);
            }
            this.f1799c = z;
        }

        public void f(int i, int i2) {
            if (i == FloatWindowService.f && i2 == FloatWindowService.g) {
                return;
            }
            FloatWindowService.e(i, i2);
        }
    }

    public interface e {
        void d(int i);

        void f(boolean z);

        void g(a aVar);
    }

    private static class g extends Handler {
        private WeakReference<h> a;

        public g(h hVar) {
            this.a = new WeakReference<>(hVar);
        }

        public void a() {
            sendMessage(obtainMessage(4));
        }

        public void b() {
            sendMessage(obtainMessage(3));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            h hVar = this.a.get();
            if (hVar == null) {
                s.c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            if (i == 0) {
                hVar.q((SurfaceHolder) message.obj, message.arg1 != 0);
                return;
            }
            if (i == 1) {
                hVar.r(message.arg1, message.arg2);
                return;
            }
            if (i == 2) {
                a.m = false;
                hVar.s();
            } else if (i == 3) {
                a.m = false;
                hVar.p();
            } else if (i == 4) {
                hVar.l();
            } else {
                if (i != 5) {
                    return;
                }
                hVar.n(message.arg1, message.arg2);
            }
        }
    }

    public a(Context context) {
        this.a = new WeakReference<>(null);
        this.j = null;
        i(context);
        this.a = new WeakReference<>(context);
        this.f1789b.a = new WeakReference(this);
        if (o()) {
            this.j = new d(this, context);
        }
    }

    private String i(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String str = BuildConfig.FLAVOR + telephonyManager.getDeviceId();
        String str2 = "hwrd_" + new UUID((BuildConfig.FLAVOR + Settings.Secure.getString(context.getContentResolver(), "android_id")).hashCode(), ((long) (BuildConfig.FLAVOR + telephonyManager.getSimSerialNumber()).hashCode()) | (((long) str.hashCode()) << 32)).toString();
        s.c("uuid=" + str2);
        return str2;
    }

    private static String j(String str, String str2) {
        try {
            Class<?> clsLoadClass = ClassLoader.getSystemClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class, String.class).invoke(clsLoadClass, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    public static boolean o() {
        String strJ = j("ro.board.platform", null);
        s.c("model: " + strJ);
        if (!"ac8317,".contains(strJ)) {
            return false;
        }
        s.c("Need Use Float Window!");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        if (this.f1790c) {
            return;
        }
        s.c("iPhone startService");
        Context context = this.a.get();
        if (context != null) {
            new cn.manstep.phonemirrorBox.h().c(context);
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            s.c("ip:" + connectionInfo.getIpAddress() + "MAC:" + connectionInfo.getMacAddress());
            m(connectionInfo.getIpAddress(), connectionInfo.getMacAddress());
            h hVar = new h(this.j);
            this.f = hVar;
            hVar.start();
            this.f.u();
            Thread thread = new Thread(this.k, "dataRecver");
            this.g = thread;
            thread.start();
            Thread thread2 = new Thread(this.l, "audio_dataRecver");
            this.h = thread2;
            thread2.start();
            this.f1790c = true;
            s.c("iPhone Service started this" + this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r() {
        if (this.f1790c) {
            s.c("iPhone stopService()");
            Context context = this.a.get();
            if (context != null) {
                Intent intent = new Intent("cn.manstep.hidetitle");
                intent.putExtra("WPARAM", true);
                context.sendBroadcast(intent);
            }
            n();
            Thread thread = this.g;
            try {
                if (thread != null) {
                    try {
                        thread.join();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                        s.e(Log.getStackTraceString(e2));
                    }
                }
                Thread thread2 = this.h;
                if (thread2 != null) {
                    try {
                        try {
                            thread2.join();
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                            s.e(Log.getStackTraceString(e3));
                        }
                    } finally {
                        this.h = null;
                    }
                }
                h hVar = this.f;
                if (hVar != null) {
                    hVar.x.b();
                    try {
                        try {
                            this.f.join();
                        } finally {
                            this.f = null;
                        }
                    } catch (InterruptedException e4) {
                        e4.printStackTrace();
                        s.e(Log.getStackTraceString(e4));
                    }
                }
                this.f1790c = false;
            } finally {
                this.g = null;
            }
        }
    }

    public a f(e eVar) {
        if (!this.e.contains(eVar)) {
            this.e.add(eVar);
            eVar.g(this);
        }
        return this;
    }

    public void g(Context context) {
        synchronized (this) {
            this.a = new WeakReference<>(context);
        }
    }

    public void h() {
        q();
        r();
        d dVar = this.j;
        if (dVar != null) {
            dVar.a();
            this.j = null;
        }
    }

    void k() {
    }

    void l() {
    }

    void m(int i, String str) {
    }

    void n() {
    }

    public void q() {
        Timer timer = this.f1791d;
        if (timer != null) {
            timer.cancel();
            this.f1791d = null;
        }
    }

    private static class f extends Handler {
        private WeakReference<a> a;

        private f() {
            this.a = new WeakReference<>(null);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            a aVar = this.a.get();
            if (aVar == null) {
                s.c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            d dVar = aVar.j;
            if (i == 0) {
                boolean z = message.arg1 == 1;
                Iterator it = aVar.e.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).f(z);
                }
                if (z) {
                    aVar.p();
                    return;
                } else {
                    aVar.r();
                    return;
                }
            }
            if (i != 1) {
                if (i == 2) {
                    if (dVar != null) {
                        dVar.f(message.arg1, message.arg2);
                        return;
                    }
                    return;
                } else {
                    if (i == 3 && dVar != null) {
                        dVar.e(message.arg1 == 1);
                        return;
                    }
                    return;
                }
            }
            Iterator it2 = aVar.e.iterator();
            while (it2.hasNext()) {
                ((e) it2.next()).d(message.arg1);
            }
            if (dVar != null) {
                int i2 = message.arg1;
                if (i2 == 3) {
                    dVar.d(false);
                    return;
                }
                if (i2 == 4) {
                    dVar.d(true);
                } else if (i2 == 5) {
                    dVar.c(false);
                } else {
                    if (i2 != 6) {
                        return;
                    }
                    dVar.c(true);
                }
            }
        }

        /* synthetic */ f(RunnableC0092a runnableC0092a) {
            this();
        }
    }

    private static class c {
        boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        MediaCodec.BufferInfo f1794b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f1795c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MediaCodec f1796d;
        private Object e;
        private i f;
        private Thread g;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$c$a, reason: collision with other inner class name */
        class RunnableC0093a implements Runnable {
            RunnableC0093a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    c cVar = c.this;
                    if (!cVar.a) {
                        return;
                    }
                    synchronized (cVar.e) {
                        if (!c.this.f.e()) {
                            c.this.h(c.this.f.c());
                            c.this.f.f(0);
                        }
                        if (c.this.a) {
                            try {
                                if (c.this.f.g() <= 60) {
                                    c.this.e.wait(33L);
                                }
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                                s.e(Log.getStackTraceString(e));
                            }
                        }
                    }
                }
            }
        }

        private c() {
            this.a = false;
            this.f1794b = new MediaCodec.BufferInfo();
            this.f1795c = 0L;
            this.f1796d = null;
            this.e = new Object();
            this.g = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void g() {
            a.m = false;
            try {
                if (this.f1796d != null) {
                    l();
                    this.f1796d.release();
                }
            } catch (Exception e) {
                e.printStackTrace();
                s.e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void h(byte[] bArr) {
            i(bArr, 0, bArr.length);
        }

        private void i(byte[] bArr, int i, int i2) {
            boolean z = this.a;
            if (z && z) {
                try {
                    int iDequeueInputBuffer = this.f1796d.dequeueInputBuffer(100000L);
                    if (iDequeueInputBuffer >= 0) {
                        ByteBuffer byteBuffer = this.f1796d.getInputBuffers()[iDequeueInputBuffer];
                        byteBuffer.clear();
                        byteBuffer.put(bArr, i, i2);
                        this.f1796d.queueInputBuffer(iDequeueInputBuffer, 0, i2, ((this.f1795c * 1000) * 1000) / 60, 0);
                        this.f1795c++;
                    }
                    int iDequeueOutputBuffer = this.f1796d.dequeueOutputBuffer(this.f1794b, 100000L);
                    do {
                        if (iDequeueOutputBuffer != -1 && iDequeueOutputBuffer != -3) {
                            if (iDequeueOutputBuffer == -2) {
                                MediaFormat outputFormat = this.f1796d.getOutputFormat();
                                s.c("onOutputFormatChanged: " + outputFormat.getInteger("color-format") + ",size: " + outputFormat.getInteger("width") + "x" + outputFormat.getInteger("height"));
                            } else if (iDequeueOutputBuffer >= 0) {
                                this.f1796d.releaseOutputBuffer(iDequeueOutputBuffer, true);
                                iDequeueOutputBuffer = this.f1796d.dequeueOutputBuffer(this.f1794b, 0L);
                            }
                        }
                    } while (iDequeueOutputBuffer >= 0);
                } catch (Throwable th) {
                    th.printStackTrace();
                    s.c("inputBufferIndex Error");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j() {
            try {
                this.f1796d = MediaCodec.createDecoderByType("video/avc");
                s.c("initDecodeMediaCodec ----- video/avc");
                s.c("mediaCodec ----" + this.f1796d);
            } catch (IOException e) {
                e.printStackTrace();
                s.e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(Surface surface, int i, int i2) {
            if (this.a || i <= 0 || i2 <= 0) {
                return;
            }
            synchronized (this.e) {
                s.c("AvcDecoder start:" + i + "-" + i2);
                this.f = new i();
                this.f1796d.configure(MediaFormat.createVideoFormat("video/avc", i, i2), surface, (MediaCrypto) null, 0);
                this.f1796d.start();
                this.a = true;
                Thread thread = new Thread(new RunnableC0093a(), "decode");
                this.g = thread;
                thread.start();
            }
        }

        private void l() {
            if (this.a) {
                s.c("AvcDecoder stop");
                this.f1795c = 0L;
                this.a = false;
                try {
                    this.g.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    s.e(Log.getStackTraceString(e));
                }
                this.f1796d.flush();
                this.f1796d.stop();
            }
        }

        /* synthetic */ c(RunnableC0092a runnableC0092a) {
            this();
        }
    }

    private static class h extends Thread implements SurfaceTexture.OnFrameAvailableListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f1801b = 100.0f;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        float f1802c = 1.0f;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        float f1803d = CropImageView.DEFAULT_ASPECT_RATIO;
        int e;
        int f;
        private d.a.a.a g;
        private final d.a.a.b.e h;
        private boolean i;
        private c j;
        private d.a.a.b.b k;
        private d.a.a.b.g l;
        private int m;
        private int n;
        private d.a.a.b.f o;
        private float p;
        private float q;
        private SurfaceTexture r;
        private Object s;
        private Object t;
        private boolean u;
        private Object v;
        private boolean w;
        private g x;
        private float[] y;
        private d z;

        public h(d dVar) {
            this.e = 0;
            this.f = 0;
            d.a.a.a aVar = new d.a.a.a(a.b.RECTANGLE);
            this.g = aVar;
            this.h = new d.a.a.b.e(aVar);
            this.i = false;
            this.s = new Object();
            this.t = new Object();
            this.u = false;
            this.v = new Object();
            this.w = false;
            this.y = new float[16];
            this.z = null;
            this.z = dVar;
            this.e = 0;
            this.f = 0;
        }

        public static int h(int i) {
            return (i + 15) & 65520;
        }

        private void i(float f, float f2) {
            this.g.g(d.a.a.b.d.c(new float[]{CropImageView.DEFAULT_ASPECT_RATIO, f2, f, f2, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f, CropImageView.DEFAULT_ASPECT_RATIO}));
        }

        private void j() {
            d.a.a.b.d.a("draw start");
            GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
            GLES20.glClear(16384);
            this.h.a(this.o, this.y);
            this.l.f();
            d.a.a.b.d.a("draw done");
        }

        private void k() {
            int i = this.m;
            int i2 = this.n;
            if (i == i2 || i == 0) {
                return;
            }
            s.c("finishSurfaceSetup size=" + i + "x" + i2 + " camera=" + this.e + "x" + this.f);
            float f = (float) i;
            float f2 = (float) i2;
            Matrix.orthoM(this.y, 0, CropImageView.DEFAULT_ASPECT_RATIO, f, CropImageView.DEFAULT_ASPECT_RATIO, f2, -1.0f, 1.0f);
            this.p = f / 2.0f;
            this.q = f2 / 2.0f;
            GLES20.glViewport(0, 0, i, i2);
            t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void l() {
            this.i = true;
            synchronized (this.v) {
                if (this.u) {
                    this.i = false;
                    this.r.updateTexImage();
                    j();
                }
            }
        }

        public static boolean m() {
            if (!"rk3188 ,".contains(Build.MODEL)) {
                return false;
            }
            s.c("Need CLip!");
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n(int i, int i2) {
            s.c("newTexture " + i + " " + i2);
            this.e = i;
            this.f = i2;
            if (this.r == null) {
                this.r = new SurfaceTexture(10);
                this.h.g(10);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.r.setOnFrameAvailableListener(this, new Handler());
                } else {
                    this.r.setOnFrameAvailableListener(this);
                }
            }
            k();
            c cVar = this.j;
            RunnableC0092a runnableC0092a = null;
            if (cVar != null) {
                cVar.g();
                this.j = null;
            }
            if (this.r != null) {
                c cVar2 = new c(runnableC0092a);
                this.j = cVar2;
                if (cVar2 != null) {
                    cVar2.j();
                    d dVar = this.z;
                    if (dVar == null) {
                        this.j.k(new Surface(this.r), this.e, this.f);
                    } else {
                        this.j.k(dVar.b(), this.e, this.f);
                    }
                }
            }
            synchronized (this.t) {
                this.t.notify();
            }
        }

        private void o() {
            if (this.u) {
                d.a.a.b.d.a("releaseGl start");
                d.a.a.b.g gVar = this.l;
                if (gVar != null) {
                    gVar.g();
                    this.l = null;
                }
                d.a.a.b.f fVar = this.o;
                if (fVar != null) {
                    fVar.b();
                    this.o = null;
                }
                d.a.a.b.d.a("releaseGl done");
                this.k.e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p() {
            s.c("shutdown");
            if (Looper.myLooper() != null) {
                Looper.myLooper().quit();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void q(SurfaceHolder surfaceHolder, boolean z) {
            synchronized (this.v) {
                d.a.a.b.g gVar = new d.a.a.b.g(this.k, surfaceHolder.getSurface(), false);
                this.l = gVar;
                gVar.d();
                this.o = new d.a.a.b.f(f.b.TEXTURE_EXT);
                if (!z) {
                    this.m = this.l.c();
                    this.n = this.l.b();
                    s.c(BuildConfig.FLAVOR + this.e + " " + this.f);
                    k();
                }
                if (this.i) {
                    l();
                }
                this.u = true;
                this.v.notify();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r(int i, int i2) {
            s.c("RenderThread surfaceChanged " + i + "x" + i2);
            this.m = i;
            this.n = i2;
            k();
            if (this.i) {
                l();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s() {
            s.c("RenderThread surfaceDestroyed");
            synchronized (this.v) {
                o();
                this.u = false;
                this.v.notify();
            }
        }

        private void t() {
            int i = this.m;
            int i2 = this.n;
            int iH = m() ? h(this.e) : this.e;
            int iH2 = m() ? h(this.f) : this.f;
            float fMin = Math.min(i, i2) * (this.f1801b / 100.0f) * 1.0f;
            float f = iH;
            float f2 = iH2;
            int iRound = Math.round((f / f2) * fMin);
            int iRound2 = Math.round(fMin);
            float f3 = 1.0f - (this.f1802c / 100.0f);
            int iRound3 = Math.round((this.f1803d / 100.0f) * 360.0f);
            this.h.f(iRound, iRound2);
            this.h.d(this.p, this.q);
            this.h.e(iRound3);
            this.g.h(f3);
            float f4 = this.e / f;
            float f5 = this.f / f2;
            if (m()) {
                i(f4, f5);
            }
            s.c("updateGeometry setScale=" + iRound + "x" + iRound2 + "offset: " + f4 + "x" + f5);
        }

        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public void onFrameAvailable(SurfaceTexture surfaceTexture) {
            if (Build.VERSION.SDK_INT >= 21) {
                l();
            } else {
                this.x.a();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-20);
            Looper.prepare();
            this.x = new g(this);
            this.k = new d.a.a.b.b(null, 0);
            synchronized (this.s) {
                this.w = true;
                this.s.notify();
            }
            Looper.loop();
            c cVar = this.j;
            if (cVar != null) {
                cVar.g();
                this.j = null;
            }
            o();
            this.k.g();
            this.k = null;
            synchronized (this.s) {
                this.w = false;
            }
        }

        public void u() {
            synchronized (this.s) {
                while (!this.w) {
                    try {
                        this.s.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public h() {
            this.e = 0;
            this.f = 0;
            d.a.a.a aVar = new d.a.a.a(a.b.RECTANGLE);
            this.g = aVar;
            this.h = new d.a.a.b.e(aVar);
            this.i = false;
            this.s = new Object();
            this.t = new Object();
            this.u = false;
            this.v = new Object();
            this.w = false;
            this.y = new float[16];
            this.z = null;
            this.e = 0;
            this.f = 0;
        }
    }
}
