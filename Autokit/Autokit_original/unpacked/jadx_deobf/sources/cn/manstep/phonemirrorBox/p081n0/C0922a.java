package cn.manstep.phonemirrorBox.p081n0;

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
import cn.manstep.phonemirrorBox.C0851h;
import cn.manstep.phonemirrorBox.FloatWindowService;
import cn.manstep.phonemirrorBox.util.C0972i;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;
import java.util.UUID;
import p093d.p094a.p095a.C1190a;
import p093d.p094a.p095a.p096b.C1191a;
import p093d.p094a.p095a.p096b.C1192b;
import p093d.p094a.p095a.p096b.C1194d;
import p093d.p094a.p095a.p096b.C1195e;
import p093d.p094a.p095a.p096b.C1196f;
import p093d.p094a.p095a.p096b.C1197g;
import p093d.p097b.p098a.C1199b;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0922a {

    /* JADX INFO: renamed from: m */
    public static boolean f5799m;

    /* JADX INFO: renamed from: a */
    public WeakReference<Context> f5800a;

    /* JADX INFO: renamed from: d */
    private Timer f5803d;

    /* JADX INFO: renamed from: f */
    private h f5805f;

    /* JADX INFO: renamed from: g */
    private Thread f5806g;

    /* JADX INFO: renamed from: h */
    private Thread f5807h;

    /* JADX INFO: renamed from: i */
    private C1199b f5808i;

    /* JADX INFO: renamed from: j */
    public d f5809j;

    /* JADX INFO: renamed from: b */
    public f f5801b = new f(null);

    /* JADX INFO: renamed from: c */
    volatile boolean f5802c = false;

    /* JADX INFO: renamed from: e */
    private List<e> f5804e = new ArrayList();

    /* JADX INFO: renamed from: k */
    private Runnable f5810k = new a();

    /* JADX INFO: renamed from: l */
    private Runnable f5811l = new b();

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-20);
            C0922a.this.m6799k();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$b */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-19);
            C0922a.this.m6800l();
            if (C0922a.this.f5808i != null) {
                C0922a.this.f5808i.m9115i();
                C0922a.this.f5808i = null;
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$d */
    public class d {

        /* JADX INFO: renamed from: a */
        public WeakReference<Context> f5822a;

        /* JADX INFO: renamed from: b */
        private boolean f5823b;

        /* JADX INFO: renamed from: c */
        private boolean f5824c = false;

        /* JADX INFO: renamed from: d */
        private boolean f5825d = false;

        public d(C0922a c0922a, Context context) {
            this.f5822a = new WeakReference<>(null);
            this.f5823b = false;
            this.f5822a = new WeakReference<>(context);
            if (context == null || this.f5823b) {
                return;
            }
            context.startService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f5823b = true;
            C0982s.m7373c("init float window service");
        }

        /* JADX INFO: renamed from: a */
        public void m6816a() {
            Context context = this.f5822a.get();
            if (context == null || !this.f5823b) {
                return;
            }
            context.stopService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f5823b = false;
            C0982s.m7373c("destroy float window service");
        }

        /* JADX INFO: renamed from: b */
        public Surface m6817b() {
            if (FloatWindowService.f4569e == null) {
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
            }
            return FloatWindowService.f4569e;
        }

        /* JADX INFO: renamed from: c */
        public void m6818c(boolean z) {
            FloatWindowService.m5840d(z);
        }

        /* JADX INFO: renamed from: d */
        public void m6819d(boolean z) {
            if (z && this.f5824c) {
                FloatWindowService.m5842f(true);
            } else {
                FloatWindowService.m5842f(false);
            }
            this.f5825d = z;
        }

        /* JADX INFO: renamed from: e */
        public void m6820e(boolean z) {
            if (this.f5825d && z) {
                FloatWindowService.m5842f(true);
            } else {
                FloatWindowService.m5842f(false);
            }
            this.f5824c = z;
        }

        /* JADX INFO: renamed from: f */
        public void m6821f(int i, int i2) {
            if (i == FloatWindowService.f4570f && i2 == FloatWindowService.f4571g) {
                return;
            }
            FloatWindowService.m5841e(i, i2);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$e */
    public interface e {
        /* JADX INFO: renamed from: d */
        void mo6822d(int i);

        /* JADX INFO: renamed from: f */
        void mo6823f(boolean z);

        /* JADX INFO: renamed from: g */
        void mo6824g(C0922a c0922a);
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$g */
    private static class g extends Handler {

        /* JADX INFO: renamed from: a */
        private WeakReference<h> f5827a;

        public g(h hVar) {
            this.f5827a = new WeakReference<>(hVar);
        }

        /* JADX INFO: renamed from: a */
        public void m6826a() {
            sendMessage(obtainMessage(4));
        }

        /* JADX INFO: renamed from: b */
        public void m6827b() {
            sendMessage(obtainMessage(3));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            h hVar = this.f5827a.get();
            if (hVar == null) {
                C0982s.m7373c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            if (i == 0) {
                hVar.m6844q((SurfaceHolder) message.obj, message.arg1 != 0);
                return;
            }
            if (i == 1) {
                hVar.m6845r(message.arg1, message.arg2);
                return;
            }
            if (i == 2) {
                C0922a.f5799m = false;
                hVar.m6846s();
            } else if (i == 3) {
                C0922a.f5799m = false;
                hVar.m6843p();
            } else if (i == 4) {
                hVar.m6839l();
            } else {
                if (i != 5) {
                    return;
                }
                hVar.m6841n(message.arg1, message.arg2);
            }
        }
    }

    public C0922a(Context context) {
        this.f5800a = new WeakReference<>(null);
        this.f5809j = null;
        m6791i(context);
        this.f5800a = new WeakReference<>(context);
        this.f5801b.f5826a = new WeakReference(this);
        if (m6793o()) {
            this.f5809j = new d(this, context);
        }
    }

    /* JADX INFO: renamed from: i */
    private String m6791i(Context context) {
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        String str = BuildConfig.FLAVOR + telephonyManager.getDeviceId();
        String str2 = "hwrd_" + new UUID((BuildConfig.FLAVOR + Settings.Secure.getString(context.getContentResolver(), "android_id")).hashCode(), ((long) (BuildConfig.FLAVOR + telephonyManager.getSimSerialNumber()).hashCode()) | (((long) str.hashCode()) << 32)).toString();
        C0982s.m7373c("uuid=" + str2);
        return str2;
    }

    /* JADX INFO: renamed from: j */
    private static String m6792j(String str, String str2) {
        try {
            Class<?> clsLoadClass = ClassLoader.getSystemClassLoader().loadClass("android.os.SystemProperties");
            return (String) clsLoadClass.getMethod("get", String.class, String.class).invoke(clsLoadClass, str, str2);
        } catch (Exception unused) {
            return str2;
        }
    }

    /* JADX INFO: renamed from: o */
    public static boolean m6793o() {
        String strM6792j = m6792j("ro.board.platform", null);
        C0982s.m7373c("model: " + strM6792j);
        if (!"ac8317,".contains(strM6792j)) {
            return false;
        }
        C0982s.m7373c("Need Use Float Window!");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p */
    public void m6794p() {
        if (this.f5802c) {
            return;
        }
        C0982s.m7373c("iPhone startService");
        Context context = this.f5800a.get();
        if (context != null) {
            new C0851h().m6332c(context);
            WifiInfo connectionInfo = ((WifiManager) context.getSystemService("wifi")).getConnectionInfo();
            C0982s.m7373c("ip:" + connectionInfo.getIpAddress() + "MAC:" + connectionInfo.getMacAddress());
            m6801m(connectionInfo.getIpAddress(), connectionInfo.getMacAddress());
            h hVar = new h(this.f5809j);
            this.f5805f = hVar;
            hVar.start();
            this.f5805f.m6848u();
            Thread thread = new Thread(this.f5810k, "dataRecver");
            this.f5806g = thread;
            thread.start();
            Thread thread2 = new Thread(this.f5811l, "audio_dataRecver");
            this.f5807h = thread2;
            thread2.start();
            this.f5802c = true;
            C0982s.m7373c("iPhone Service started this" + this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r */
    public void m6795r() {
        if (this.f5802c) {
            C0982s.m7373c("iPhone stopService()");
            Context context = this.f5800a.get();
            if (context != null) {
                Intent intent = new Intent("cn.manstep.hidetitle");
                intent.putExtra("WPARAM", true);
                context.sendBroadcast(intent);
            }
            m6802n();
            Thread thread = this.f5806g;
            try {
                if (thread != null) {
                    try {
                        thread.join();
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                        C0982s.m7375e(Log.getStackTraceString(e2));
                    }
                }
                Thread thread2 = this.f5807h;
                if (thread2 != null) {
                    try {
                        try {
                            thread2.join();
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                            C0982s.m7375e(Log.getStackTraceString(e3));
                        }
                    } finally {
                        this.f5807h = null;
                    }
                }
                h hVar = this.f5805f;
                if (hVar != null) {
                    hVar.f5850x.m6827b();
                    try {
                        try {
                            this.f5805f.join();
                        } finally {
                            this.f5805f = null;
                        }
                    } catch (InterruptedException e4) {
                        e4.printStackTrace();
                        C0982s.m7375e(Log.getStackTraceString(e4));
                    }
                }
                this.f5802c = false;
            } finally {
                this.f5806g = null;
            }
        }
    }

    /* JADX INFO: renamed from: f */
    public C0922a m6796f(e eVar) {
        if (!this.f5804e.contains(eVar)) {
            this.f5804e.add(eVar);
            eVar.mo6824g(this);
        }
        return this;
    }

    /* JADX INFO: renamed from: g */
    public void m6797g(Context context) {
        synchronized (this) {
            this.f5800a = new WeakReference<>(context);
        }
    }

    /* JADX INFO: renamed from: h */
    public void m6798h() {
        m6803q();
        m6795r();
        d dVar = this.f5809j;
        if (dVar != null) {
            dVar.m6816a();
            this.f5809j = null;
        }
    }

    /* JADX INFO: renamed from: k */
    void m6799k() {
    }

    /* JADX INFO: renamed from: l */
    void m6800l() {
    }

    /* JADX INFO: renamed from: m */
    void m6801m(int i, String str) {
    }

    /* JADX INFO: renamed from: n */
    void m6802n() {
    }

    /* JADX INFO: renamed from: q */
    public void m6803q() {
        Timer timer = this.f5803d;
        if (timer != null) {
            timer.cancel();
            this.f5803d = null;
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$f */
    private static class f extends Handler {

        /* JADX INFO: renamed from: a */
        private WeakReference<C0922a> f5826a;

        private f() {
            this.f5826a = new WeakReference<>(null);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            C0922a c0922a = this.f5826a.get();
            if (c0922a == null) {
                C0982s.m7373c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            d dVar = c0922a.f5809j;
            if (i == 0) {
                boolean z = message.arg1 == 1;
                Iterator it = c0922a.f5804e.iterator();
                while (it.hasNext()) {
                    ((e) it.next()).mo6823f(z);
                }
                if (z) {
                    c0922a.m6794p();
                    return;
                } else {
                    c0922a.m6795r();
                    return;
                }
            }
            if (i != 1) {
                if (i == 2) {
                    if (dVar != null) {
                        dVar.m6821f(message.arg1, message.arg2);
                        return;
                    }
                    return;
                } else {
                    if (i == 3 && dVar != null) {
                        dVar.m6820e(message.arg1 == 1);
                        return;
                    }
                    return;
                }
            }
            Iterator it2 = c0922a.f5804e.iterator();
            while (it2.hasNext()) {
                ((e) it2.next()).mo6822d(message.arg1);
            }
            if (dVar != null) {
                int i2 = message.arg1;
                if (i2 == 3) {
                    dVar.m6819d(false);
                    return;
                }
                if (i2 == 4) {
                    dVar.m6819d(true);
                } else if (i2 == 5) {
                    dVar.m6818c(false);
                } else {
                    if (i2 != 6) {
                        return;
                    }
                    dVar.m6818c(true);
                }
            }
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$c */
    private static class c {

        /* JADX INFO: renamed from: a */
        boolean f5814a;

        /* JADX INFO: renamed from: b */
        MediaCodec.BufferInfo f5815b;

        /* JADX INFO: renamed from: c */
        private long f5816c;

        /* JADX INFO: renamed from: d */
        private MediaCodec f5817d;

        /* JADX INFO: renamed from: e */
        private Object f5818e;

        /* JADX INFO: renamed from: f */
        private C0972i f5819f;

        /* JADX INFO: renamed from: g */
        private Thread f5820g;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$c$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    c cVar = c.this;
                    if (!cVar.f5814a) {
                        return;
                    }
                    synchronized (cVar.f5818e) {
                        if (!c.this.f5819f.m7253e()) {
                            c.this.m6811h(c.this.f5819f.m7251c());
                            c.this.f5819f.m7254f(0);
                        }
                        if (c.this.f5814a) {
                            try {
                                if (c.this.f5819f.m7255g() <= 60) {
                                    c.this.f5818e.wait(33L);
                                }
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                                C0982s.m7375e(Log.getStackTraceString(e));
                            }
                        }
                    }
                }
            }
        }

        private c() {
            this.f5814a = false;
            this.f5815b = new MediaCodec.BufferInfo();
            this.f5816c = 0L;
            this.f5817d = null;
            this.f5818e = new Object();
            this.f5820g = null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g */
        public void m6810g() {
            C0922a.f5799m = false;
            try {
                if (this.f5817d != null) {
                    m6815l();
                    this.f5817d.release();
                }
            } catch (Exception e) {
                e.printStackTrace();
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: h */
        public void m6811h(byte[] bArr) {
            m6812i(bArr, 0, bArr.length);
        }

        /* JADX INFO: renamed from: i */
        private void m6812i(byte[] bArr, int i, int i2) {
            boolean z = this.f5814a;
            if (z && z) {
                try {
                    int iDequeueInputBuffer = this.f5817d.dequeueInputBuffer(100000L);
                    if (iDequeueInputBuffer >= 0) {
                        ByteBuffer byteBuffer = this.f5817d.getInputBuffers()[iDequeueInputBuffer];
                        byteBuffer.clear();
                        byteBuffer.put(bArr, i, i2);
                        this.f5817d.queueInputBuffer(iDequeueInputBuffer, 0, i2, ((this.f5816c * 1000) * 1000) / 60, 0);
                        this.f5816c++;
                    }
                    int iDequeueOutputBuffer = this.f5817d.dequeueOutputBuffer(this.f5815b, 100000L);
                    do {
                        if (iDequeueOutputBuffer != -1 && iDequeueOutputBuffer != -3) {
                            if (iDequeueOutputBuffer == -2) {
                                MediaFormat outputFormat = this.f5817d.getOutputFormat();
                                C0982s.m7373c("onOutputFormatChanged: " + outputFormat.getInteger("color-format") + ",size: " + outputFormat.getInteger("width") + "x" + outputFormat.getInteger("height"));
                            } else if (iDequeueOutputBuffer >= 0) {
                                this.f5817d.releaseOutputBuffer(iDequeueOutputBuffer, true);
                                iDequeueOutputBuffer = this.f5817d.dequeueOutputBuffer(this.f5815b, 0L);
                            }
                        }
                    } while (iDequeueOutputBuffer >= 0);
                } catch (Throwable th) {
                    th.printStackTrace();
                    C0982s.m7373c("inputBufferIndex Error");
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: j */
        public void m6813j() {
            try {
                this.f5817d = MediaCodec.createDecoderByType("video/avc");
                C0982s.m7373c("initDecodeMediaCodec ----- video/avc");
                C0982s.m7373c("mediaCodec ----" + this.f5817d);
            } catch (IOException e) {
                e.printStackTrace();
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: k */
        public void m6814k(Surface surface, int i, int i2) {
            if (this.f5814a || i <= 0 || i2 <= 0) {
                return;
            }
            synchronized (this.f5818e) {
                C0982s.m7373c("AvcDecoder start:" + i + "-" + i2);
                this.f5819f = new C0972i();
                this.f5817d.configure(MediaFormat.createVideoFormat("video/avc", i, i2), surface, (MediaCrypto) null, 0);
                this.f5817d.start();
                this.f5814a = true;
                Thread thread = new Thread(new a(), "decode");
                this.f5820g = thread;
                thread.start();
            }
        }

        /* JADX INFO: renamed from: l */
        private void m6815l() {
            if (this.f5814a) {
                C0982s.m7373c("AvcDecoder stop");
                this.f5816c = 0L;
                this.f5814a = false;
                try {
                    this.f5820g.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
                this.f5817d.flush();
                this.f5817d.stop();
            }
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.n0.a$h */
    private static class h extends Thread implements SurfaceTexture.OnFrameAvailableListener {

        /* JADX INFO: renamed from: b */
        float f5828b = 100.0f;

        /* JADX INFO: renamed from: c */
        float f5829c = 1.0f;

        /* JADX INFO: renamed from: d */
        float f5830d = CropImageView.DEFAULT_ASPECT_RATIO;

        /* JADX INFO: renamed from: e */
        int f5831e;

        /* JADX INFO: renamed from: f */
        int f5832f;

        /* JADX INFO: renamed from: g */
        private C1190a f5833g;

        /* JADX INFO: renamed from: h */
        private final C1195e f5834h;

        /* JADX INFO: renamed from: i */
        private boolean f5835i;

        /* JADX INFO: renamed from: j */
        private c f5836j;

        /* JADX INFO: renamed from: k */
        private C1192b f5837k;

        /* JADX INFO: renamed from: l */
        private C1197g f5838l;

        /* JADX INFO: renamed from: m */
        private int f5839m;

        /* JADX INFO: renamed from: n */
        private int f5840n;

        /* JADX INFO: renamed from: o */
        private C1196f f5841o;

        /* JADX INFO: renamed from: p */
        private float f5842p;

        /* JADX INFO: renamed from: q */
        private float f5843q;

        /* JADX INFO: renamed from: r */
        private SurfaceTexture f5844r;

        /* JADX INFO: renamed from: s */
        private Object f5845s;

        /* JADX INFO: renamed from: t */
        private Object f5846t;

        /* JADX INFO: renamed from: u */
        private boolean f5847u;

        /* JADX INFO: renamed from: v */
        private Object f5848v;

        /* JADX INFO: renamed from: w */
        private boolean f5849w;

        /* JADX INFO: renamed from: x */
        private g f5850x;

        /* JADX INFO: renamed from: y */
        private float[] f5851y;

        /* JADX INFO: renamed from: z */
        private d f5852z;

        public h(d dVar) {
            this.f5831e = 0;
            this.f5832f = 0;
            C1190a c1190a = new C1190a(C1191a.b.RECTANGLE);
            this.f5833g = c1190a;
            this.f5834h = new C1195e(c1190a);
            this.f5835i = false;
            this.f5845s = new Object();
            this.f5846t = new Object();
            this.f5847u = false;
            this.f5848v = new Object();
            this.f5849w = false;
            this.f5851y = new float[16];
            this.f5852z = null;
            this.f5852z = dVar;
            this.f5831e = 0;
            this.f5832f = 0;
        }

        /* JADX INFO: renamed from: h */
        public static int m6835h(int i) {
            return (i + 15) & 65520;
        }

        /* JADX INFO: renamed from: i */
        private void m6836i(float f, float f2) {
            this.f5833g.m9056g(C1194d.m9074c(new float[]{CropImageView.DEFAULT_ASPECT_RATIO, f2, f, f2, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, f, CropImageView.DEFAULT_ASPECT_RATIO}));
        }

        /* JADX INFO: renamed from: j */
        private void m6837j() {
            C1194d.m9072a("draw start");
            GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 1.0f);
            GLES20.glClear(16384);
            this.f5834h.m9078a(this.f5841o, this.f5851y);
            this.f5838l.m9071f();
            C1194d.m9072a("draw done");
        }

        /* JADX INFO: renamed from: k */
        private void m6838k() {
            int i = this.f5839m;
            int i2 = this.f5840n;
            if (i == i2 || i == 0) {
                return;
            }
            C0982s.m7373c("finishSurfaceSetup size=" + i + "x" + i2 + " camera=" + this.f5831e + "x" + this.f5832f);
            float f = (float) i;
            float f2 = (float) i2;
            Matrix.orthoM(this.f5851y, 0, CropImageView.DEFAULT_ASPECT_RATIO, f, CropImageView.DEFAULT_ASPECT_RATIO, f2, -1.0f, 1.0f);
            this.f5842p = f / 2.0f;
            this.f5843q = f2 / 2.0f;
            GLES20.glViewport(0, 0, i, i2);
            m6847t();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: l */
        public void m6839l() {
            this.f5835i = true;
            synchronized (this.f5848v) {
                if (this.f5847u) {
                    this.f5835i = false;
                    this.f5844r.updateTexImage();
                    m6837j();
                }
            }
        }

        /* JADX INFO: renamed from: m */
        public static boolean m6840m() {
            if (!"rk3188 ,".contains(Build.MODEL)) {
                return false;
            }
            C0982s.m7373c("Need CLip!");
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: n */
        public void m6841n(int i, int i2) {
            C0982s.m7373c("newTexture " + i + " " + i2);
            this.f5831e = i;
            this.f5832f = i2;
            if (this.f5844r == null) {
                this.f5844r = new SurfaceTexture(10);
                this.f5834h.m9083g(10);
                if (Build.VERSION.SDK_INT >= 21) {
                    this.f5844r.setOnFrameAvailableListener(this, new Handler());
                } else {
                    this.f5844r.setOnFrameAvailableListener(this);
                }
            }
            m6838k();
            c cVar = this.f5836j;
            a aVar = null;
            if (cVar != null) {
                cVar.m6810g();
                this.f5836j = null;
            }
            if (this.f5844r != null) {
                c cVar2 = new c(aVar);
                this.f5836j = cVar2;
                if (cVar2 != null) {
                    cVar2.m6813j();
                    d dVar = this.f5852z;
                    if (dVar == null) {
                        this.f5836j.m6814k(new Surface(this.f5844r), this.f5831e, this.f5832f);
                    } else {
                        this.f5836j.m6814k(dVar.m6817b(), this.f5831e, this.f5832f);
                    }
                }
            }
            synchronized (this.f5846t) {
                this.f5846t.notify();
            }
        }

        /* JADX INFO: renamed from: o */
        private void m6842o() {
            if (this.f5847u) {
                C1194d.m9072a("releaseGl start");
                C1197g c1197g = this.f5838l;
                if (c1197g != null) {
                    c1197g.m9088g();
                    this.f5838l = null;
                }
                C1196f c1196f = this.f5841o;
                if (c1196f != null) {
                    c1196f.m9085b();
                    this.f5841o = null;
                }
                C1194d.m9072a("releaseGl done");
                this.f5837k.m9061e();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: p */
        public void m6843p() {
            C0982s.m7373c("shutdown");
            if (Looper.myLooper() != null) {
                Looper.myLooper().quit();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: q */
        public void m6844q(SurfaceHolder surfaceHolder, boolean z) {
            synchronized (this.f5848v) {
                C1197g c1197g = new C1197g(this.f5837k, surfaceHolder.getSurface(), false);
                this.f5838l = c1197g;
                c1197g.m9069d();
                this.f5841o = new C1196f(C1196f.b.TEXTURE_EXT);
                if (!z) {
                    this.f5839m = this.f5838l.m9068c();
                    this.f5840n = this.f5838l.m9067b();
                    C0982s.m7373c(BuildConfig.FLAVOR + this.f5831e + " " + this.f5832f);
                    m6838k();
                }
                if (this.f5835i) {
                    m6839l();
                }
                this.f5847u = true;
                this.f5848v.notify();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: r */
        public void m6845r(int i, int i2) {
            C0982s.m7373c("RenderThread surfaceChanged " + i + "x" + i2);
            this.f5839m = i;
            this.f5840n = i2;
            m6838k();
            if (this.f5835i) {
                m6839l();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: s */
        public void m6846s() {
            C0982s.m7373c("RenderThread surfaceDestroyed");
            synchronized (this.f5848v) {
                m6842o();
                this.f5847u = false;
                this.f5848v.notify();
            }
        }

        /* JADX INFO: renamed from: t */
        private void m6847t() {
            int i = this.f5839m;
            int i2 = this.f5840n;
            int iM6835h = m6840m() ? m6835h(this.f5831e) : this.f5831e;
            int iM6835h2 = m6840m() ? m6835h(this.f5832f) : this.f5832f;
            float fMin = Math.min(i, i2) * (this.f5828b / 100.0f) * 1.0f;
            float f = iM6835h;
            float f2 = iM6835h2;
            int iRound = Math.round((f / f2) * fMin);
            int iRound2 = Math.round(fMin);
            float f3 = 1.0f - (this.f5829c / 100.0f);
            int iRound3 = Math.round((this.f5830d / 100.0f) * 360.0f);
            this.f5834h.m9082f(iRound, iRound2);
            this.f5834h.m9080d(this.f5842p, this.f5843q);
            this.f5834h.m9081e(iRound3);
            this.f5833g.m9050h(f3);
            float f4 = this.f5831e / f;
            float f5 = this.f5832f / f2;
            if (m6840m()) {
                m6836i(f4, f5);
            }
            C0982s.m7373c("updateGeometry setScale=" + iRound + "x" + iRound2 + "offset: " + f4 + "x" + f5);
        }

        @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
        public void onFrameAvailable(SurfaceTexture surfaceTexture) {
            if (Build.VERSION.SDK_INT >= 21) {
                m6839l();
            } else {
                this.f5850x.m6826a();
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-20);
            Looper.prepare();
            this.f5850x = new g(this);
            this.f5837k = new C1192b(null, 0);
            synchronized (this.f5845s) {
                this.f5849w = true;
                this.f5845s.notify();
            }
            Looper.loop();
            c cVar = this.f5836j;
            if (cVar != null) {
                cVar.m6810g();
                this.f5836j = null;
            }
            m6842o();
            this.f5837k.m9063g();
            this.f5837k = null;
            synchronized (this.f5845s) {
                this.f5849w = false;
            }
        }

        /* JADX INFO: renamed from: u */
        public void m6848u() {
            synchronized (this.f5845s) {
                while (!this.f5849w) {
                    try {
                        this.f5845s.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public h() {
            this.f5831e = 0;
            this.f5832f = 0;
            C1190a c1190a = new C1190a(C1191a.b.RECTANGLE);
            this.f5833g = c1190a;
            this.f5834h = new C1195e(c1190a);
            this.f5835i = false;
            this.f5845s = new Object();
            this.f5846t = new Object();
            this.f5847u = false;
            this.f5848v = new Object();
            this.f5849w = false;
            this.f5851y = new float[16];
            this.f5852z = null;
            this.f5831e = 0;
            this.f5832f = 0;
        }
    }
}
