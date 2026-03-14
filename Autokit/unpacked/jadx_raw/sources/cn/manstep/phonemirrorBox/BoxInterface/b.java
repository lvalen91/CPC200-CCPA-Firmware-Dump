package cn.manstep.phonemirrorBox.BoxInterface;

import android.content.Context;
import android.content.Intent;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.view.Surface;
import android.view.SurfaceHolder;
import cn.manstep.phonemirrorBox.AutoBoxMirrorTextureView;
import cn.manstep.phonemirrorBox.FloatWindowService;
import cn.manstep.phonemirrorBox.OpenH264Decoder;
import cn.manstep.phonemirrorBox.p;
import cn.manstep.phonemirrorBox.u;
import cn.manstep.phonemirrorBox.util.s;
import cn.manstep.phonemirrorBox.util.x;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.lang.Thread;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b {
    public static d g = new d();
    public static boolean h = false;
    private static OpenH264Decoder i = null;
    public static boolean j = a();
    public WeakReference<Context> a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile f f1418d;
    public c f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public i f1416b = new i();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    volatile boolean f1417c = false;
    public boolean e = false;

    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b, reason: collision with other inner class name */
    private static class C0074b {
        private static long p;
        private h f;
        public int a = p.C;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f1419b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f1420c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MediaCodec f1421d = null;
        private Object e = new Object();
        private Thread g = null;
        private long h = 0;
        private long i = 0;
        private long j = 0;
        private Thread k = null;
        private List<Long> l = new ArrayList();
        private ScheduledExecutorService m = null;
        private TimerTask n = null;
        private long o = 0;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                while (true) {
                    C0074b c0074b = C0074b.this;
                    if (!c0074b.f1419b) {
                        return;
                    }
                    byte[] bArrC = null;
                    long jD = 0;
                    synchronized (c0074b.e) {
                        if (C0074b.this.f.e()) {
                            try {
                                C0074b.this.e.wait(10L);
                            } catch (InterruptedException e) {
                                s.e(Log.getStackTraceString(e));
                            }
                        } else {
                            bArrC = C0074b.this.f.c();
                            jD = C0074b.this.f.d();
                            if (z) {
                                if ((bArrC[4] & 31) != 7 && (bArrC[4] & 31) != 8 && (bArrC[4] & 31) != 5) {
                                }
                                s.f("AvcDecoder", "SoftDecoder I Frame Coming!!!");
                                z = false;
                            }
                            if (C0074b.this.f.f() > C0074b.this.a * 2) {
                                s.f("AvcDecoder", "SoftDecoder buffer frame cnt = " + C0074b.this.f.f());
                                cn.manstep.phonemirrorBox.v0.e.H(12);
                                C0074b.this.f.b();
                                z = true;
                            }
                        }
                        if (bArrC != null) {
                            C0074b.this.w(bArrC, jD);
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b$b, reason: collision with other inner class name */
        class RunnableC0075b implements Runnable {
            RunnableC0075b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                while (true) {
                    C0074b c0074b = C0074b.this;
                    if (!c0074b.f1419b) {
                        return;
                    }
                    byte[] bArrC = null;
                    long jD = 0;
                    synchronized (c0074b.e) {
                        if (!C0074b.this.f.e()) {
                            bArrC = C0074b.this.f.c();
                            jD = C0074b.this.f.d();
                            if (z) {
                                if ((bArrC[4] & 31) != 7 && (bArrC[4] & 31) != 8 && (bArrC[4] & 31) != 5) {
                                }
                                s.f("AvcDecoder", "Async Decode I Frame Coming!!!");
                                z = false;
                            }
                            if (C0074b.this.f.f() > C0074b.this.a * 2) {
                                s.f("AvcDecoder", "Async Decode buffer frame cnt = " + C0074b.this.f.f());
                                cn.manstep.phonemirrorBox.v0.e.H(12);
                                C0074b.this.f.b();
                                z = true;
                            }
                        }
                        if (bArrC != null) {
                            C0074b.this.w(bArrC, jD);
                        }
                        synchronized (C0074b.this.e) {
                            try {
                                if (C0074b.this.f.f() < p.F) {
                                    C0074b.this.e.wait(10L);
                                }
                            } catch (InterruptedException e) {
                                s.e(Log.getStackTraceString(e));
                            }
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b$c */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                Process.setThreadPriority(-19);
                boolean z = false;
                while (true) {
                    int i = 0;
                    while (true) {
                        C0074b c0074b = C0074b.this;
                        if (!c0074b.f1419b) {
                            return;
                        }
                        try {
                            int iDequeueOutputBuffer = c0074b.f1421d.dequeueOutputBuffer(bufferInfo, 100000L);
                            if (iDequeueOutputBuffer == -1) {
                                if (C0074b.this.f1420c - C0074b.this.j >= 30 && C0074b.this.j == 0) {
                                    s.c("(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)");
                                    if (!z) {
                                        s.c("(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)");
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 19);
                                        z = true;
                                    }
                                }
                            } else if (iDequeueOutputBuffer != -3) {
                                if (iDequeueOutputBuffer == -2) {
                                    MediaFormat outputFormat = C0074b.this.f1421d.getOutputFormat();
                                    s.d("AvcDecoder", "onOutputFormatChanged: " + outputFormat.getInteger("color-format") + ",size: " + outputFormat.getInteger("width") + "x" + outputFormat.getInteger("height"));
                                    break;
                                }
                                if (iDequeueOutputBuffer >= 0) {
                                    if (C0074b.this.j == 0) {
                                        C0074b.this.i = SystemClock.uptimeMillis();
                                        s.f("AvcDecoder", "decode latency: " + (C0074b.this.i - C0074b.this.h));
                                    }
                                    C0074b.h(C0074b.this);
                                    long j = C0074b.this.i - C0074b.this.h;
                                    long jUptimeMillis = SystemClock.uptimeMillis() - C0074b.this.i;
                                    synchronized (C0074b.this.l) {
                                        if (C0074b.this.l.size() > 0) {
                                            ((Long) C0074b.this.l.get(0)).longValue();
                                            C0074b.this.l.remove(0);
                                        }
                                    }
                                    if (jUptimeMillis < ((long) p.D) - j) {
                                        C0074b.this.f1421d.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                    } else {
                                        C0074b.this.f1421d.releaseOutputBuffer(iDequeueOutputBuffer, C0074b.this.j >= 4);
                                    }
                                }
                            }
                        } catch (Exception e) {
                            if (i < 10) {
                                i++;
                            } else if (!z) {
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 19);
                                z = true;
                            }
                            if (C0074b.this.f1420c - C0074b.this.j >= 30 && C0074b.this.j <= 30 && !z) {
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 19);
                                z = true;
                            }
                            s.f("AvcDecoder", s.g(e));
                        }
                    }
                }
            }
        }

        public C0074b() {
            s.c("New AvcDecoder");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void A(byte[] bArr, int i, int i2, long j) {
            if (p.g) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, i, bArr2, 0, i2);
                synchronized (this.e) {
                    this.f.a(bArr2, j);
                }
                return;
            }
            if (p.F <= 0) {
                v(bArr, i, i2, j);
                return;
            }
            byte[] bArr3 = new byte[i2];
            System.arraycopy(bArr, i, bArr3, 0, i2);
            synchronized (this.e) {
                this.f.a(bArr3, j);
                if (this.f.f() == p.F) {
                    this.e.notifyAll();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void B(Surface surface, int i, int i2) {
            s.c("AvcDecoder,start: decode h264 size:" + i + "x" + i2);
            a aVar = null;
            if (this.m == null) {
                this.m = new ScheduledThreadPoolExecutor(1);
                d dVar = new d(this, aVar);
                this.n = dVar;
                this.m.scheduleAtFixedRate(dVar, 1000L, 1000L, TimeUnit.MILLISECONDS);
            }
            if (this.f1419b || i <= 0 || i2 <= 0) {
                return;
            }
            synchronized (this.e) {
                if (!p.g) {
                    if (this.f1421d != null) {
                        s.c("AvcDecoder,start: AvcDecoder start:" + i + "-" + i2);
                        this.f = new h(320);
                        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
                        try {
                            y(mediaFormatCreateVideoFormat, surface);
                        } catch (Exception e) {
                            s.f("AvcDecoder", "start: surface=" + surface + "\n" + s.g(e));
                            try {
                                this.f1421d.release();
                                this.f1421d = null;
                                this.f1421d = MediaCodec.createDecoderByType("video/avc");
                                y(mediaFormatCreateVideoFormat, surface);
                            } catch (Exception e2) {
                                s.e("AvcDecoder,start:\n" + s.g(e2));
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 18);
                            }
                        }
                        Thread thread = new Thread(new RunnableC0075b(), "hdv");
                        this.g = thread;
                        if (p.F > 0) {
                            thread.start();
                        }
                        this.j = 0L;
                        this.k = new Thread(new c(), "render");
                    }
                }
                this.f = new h(320);
                this.f1419b = true;
                Thread thread2 = new Thread(new a(), "sdv");
                this.g = thread2;
                thread2.start();
            }
        }

        private void C() {
            if (this.f1419b) {
                s.c("AvcDecoder stop");
                this.f1419b = false;
                try {
                    if (this.g != null) {
                        this.g.join();
                        this.g = null;
                    }
                    if (this.k != null) {
                        this.k.join();
                        this.k = null;
                    }
                    this.f1420c = 0L;
                } catch (InterruptedException e) {
                    s.e(Log.getStackTraceString(e));
                }
                try {
                    if (this.f1421d != null) {
                        this.f1421d.flush();
                        this.f1421d.stop();
                    }
                } catch (Exception e2) {
                    s.e(Log.getStackTraceString(e2));
                }
            }
            ScheduledExecutorService scheduledExecutorService = this.m;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
            }
            this.m = null;
            this.n = null;
        }

        static /* synthetic */ long h(C0074b c0074b) {
            long j = c0074b.j;
            c0074b.j = 1 + j;
            return j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void u() {
            b.h = false;
            C();
            if (p.g) {
                b.i.a();
                return;
            }
            try {
                if (this.f1421d != null) {
                    s.c("release mediaCodec ----" + this.f1421d);
                    this.f1421d.release();
                    this.f1421d = null;
                }
            } catch (Exception e) {
                s.e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(byte[] bArr, int i, int i2, long j) {
            int i3;
            long j2;
            if (this.f1419b) {
                this.o += (long) i2;
                if (p.g) {
                    b.i.c(bArr, i, i2);
                    this.f1420c++;
                    return;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (this.f1420c == 0) {
                    this.h = SystemClock.uptimeMillis();
                }
                long jUptimeMillis2 = SystemClock.uptimeMillis() - this.h;
                boolean z = false;
                int i4 = 0;
                while (!z) {
                    try {
                        if (!this.f1419b) {
                            break;
                        }
                        int iDequeueInputBuffer = this.f1421d.dequeueInputBuffer(100000L);
                        if (iDequeueInputBuffer >= 0) {
                            ByteBuffer byteBuffer = this.f1421d.getInputBuffers()[iDequeueInputBuffer];
                            byteBuffer.clear();
                            byteBuffer.put(bArr, i, i2);
                            if (j <= 0) {
                                j2 = (b.j || p.i) ? (this.f1420c * 1000000) / ((long) this.a) : 1000 * jUptimeMillis2;
                            } else {
                                j2 = j;
                            }
                            this.f1421d.queueInputBuffer(iDequeueInputBuffer, 0, i2, j2, 0);
                            if (this.f1420c == 0) {
                                this.l.clear();
                                if (this.k.getState() == Thread.State.NEW) {
                                    this.k.start();
                                } else {
                                    s.d("AvcDecoder", "decode: renderThread has already started.");
                                }
                            }
                            this.f1420c++;
                            synchronized (this.l) {
                                this.l.add(Long.valueOf(jUptimeMillis2));
                            }
                            z = true;
                            i4 = 0;
                            i3 = 1;
                        } else {
                            i3 = 1;
                            i4++;
                            s.f("AvcDecoder", "decode: Get decoder inputBuffer error: " + iDequeueInputBuffer + " " + i4);
                            if (iDequeueInputBuffer == -1) {
                                s.f("AvcDecoder", "decode: -1 if no such buffer is currently available.");
                            }
                        }
                        if (i4 > 30) {
                            this.f1419b = false;
                            cn.manstep.phonemirrorBox.BoxInterface.d.O(i3, 18);
                        }
                    } catch (Throwable th) {
                        s.f("AvcDecoder", "inputBufferIndex Error:" + s.g(th));
                    }
                }
                if (SystemClock.uptimeMillis() - jUptimeMillis > 60) {
                    s.f("AvcDecoder", "Decode use time too much:" + (SystemClock.uptimeMillis() - jUptimeMillis));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(byte[] bArr, long j) {
            v(bArr, 0, bArr.length, j);
        }

        private void y(MediaFormat mediaFormat, Surface surface) {
            this.f1421d.configure(mediaFormat, surface, (MediaCrypto) null, 0);
            this.f1421d.start();
            if (cn.manstep.phonemirrorBox.BoxInterface.d.u() && u.z().T()) {
                this.f1421d.setVideoScalingMode(2);
            }
            this.f1419b = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void z() {
            if (p.g) {
                b.i.b();
                return;
            }
            int i = 5;
            while (true) {
                i--;
                if (i <= 0) {
                    return;
                }
                try {
                    MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
                    this.f1421d = mediaCodecCreateDecoderByType;
                    if (mediaCodecCreateDecoderByType == null) {
                        s.e("AvcDecoder,AvcDecoder->open:mediaCodec ----NULL");
                    }
                    s.c("AvcDecoder,AvcDecoder->open:initDecodeMediaCodec ----- video/avc");
                    if (Build.VERSION.SDK_INT >= 18) {
                        s.c("AvcDecoder,AvcDecoder->open:mediaCodec ----" + this.f1421d.getName());
                        return;
                    }
                    s.c("AvcDecoder,AvcDecoder->open:mediaCodec ----" + this.f1421d);
                    return;
                } catch (IOException e) {
                    s.e("AvcDecoder,AvcDecoder->open:Create decoder Exception!!!\n" + s.g(e));
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e2) {
                        s.e("AvcDecoder,AvcDecoder->open:\n" + Log.getStackTraceString(e2));
                    }
                }
            }
        }

        public boolean x() {
            s.d("AvcDecoder", "isBelowMinRenderFrameCnt: render_frame_cnt=" + this.j);
            return SystemClock.uptimeMillis() - this.h >= ((long) p.D) && this.j < 4;
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b$d */
        private class d extends TimerTask {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            StringBuilder f1425b;

            private d() {
                this.f1425b = new StringBuilder();
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (C0074b.this.f1420c > C0074b.p) {
                    StringBuilder sb = this.f1425b;
                    sb.append(C0074b.this.f1420c - C0074b.p);
                    sb.append("fps");
                    sb.append(", cnt: ");
                    sb.append(C0074b.this.f1420c);
                    sb.append(", render_cnt: ");
                    sb.append(C0074b.this.j);
                    sb.append(", bitrate: ");
                    double d2 = C0074b.this.o;
                    Double.isNaN(d2);
                    sb.append(d2 / 1024.0d);
                    s.h("AvcDecoder,FrameRate:" + this.f1425b.toString());
                    this.f1425b.setLength(0);
                }
                long unused = C0074b.p = C0074b.this.f1420c;
                C0074b.this.o = 0L;
            }

            /* synthetic */ d(C0074b c0074b, a aVar) {
                this();
            }
        }
    }

    public class c {
        public WeakReference<Context> a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1427b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1428c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f1429d = false;

        public c(b bVar, Context context) {
            this.a = new WeakReference<>(null);
            this.f1427b = false;
            this.a = new WeakReference<>(context);
            if (context == null || this.f1427b) {
                return;
            }
            context.startService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f1427b = true;
            s.c("init float window service");
        }

        public void a() {
            Context context = this.a.get();
            if (context == null || !this.f1427b) {
                return;
            }
            context.stopService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f1427b = false;
            s.c("destroy float window service");
        }

        public void b(boolean z) {
            FloatWindowService.d(z);
        }

        public void c(boolean z) {
            if (z && this.f1428c) {
                FloatWindowService.f(true);
            } else {
                FloatWindowService.f(false);
            }
            this.f1429d = z;
        }

        public void d(boolean z) {
            if (this.f1429d && z) {
                FloatWindowService.f(true);
            } else {
                FloatWindowService.f(false);
            }
            this.f1428c = z;
        }

        public void e(int i, int i2) {
            if (i == FloatWindowService.f && i2 == FloatWindowService.g) {
                return;
            }
            FloatWindowService.e(i, i2);
        }
    }

    public static class d extends Handler {
        private WeakReference<b> a = new WeakReference<>(null);

        public void b(boolean z) {
            sendMessage(obtainMessage(0, z ? 1 : 0, 0));
        }

        public void c(int i) {
            sendMessage(obtainMessage(1, i, 0));
        }

        public void d(int i) {
            sendMessage(obtainMessage(3, i, 0));
        }

        public void e(int i, int i2) {
            sendMessage(obtainMessage(2, i, i2));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            s.c("RenderHandler [" + this + "]: what=" + i);
            b bVar = this.a.get();
            if (bVar == null) {
                s.c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            c cVar = bVar.f;
            if (i == 0) {
                if (message.arg1 == 1) {
                    bVar.m();
                    return;
                } else {
                    bVar.o();
                    return;
                }
            }
            if (i != 1) {
                if (i == 2) {
                    if (cVar != null) {
                        cVar.e(message.arg1, message.arg2);
                        return;
                    }
                    return;
                } else {
                    if (i == 3 && cVar != null) {
                        cVar.d(message.arg1 == 1);
                        return;
                    }
                    return;
                }
            }
            if (cVar != null) {
                int i2 = message.arg1;
                if (i2 == 3) {
                    cVar.c(false);
                    return;
                }
                if (i2 == 4) {
                    cVar.c(true);
                } else if (i2 == 5) {
                    cVar.b(false);
                } else {
                    if (i2 != 6) {
                        return;
                    }
                    cVar.b(true);
                }
            }
        }
    }

    public static class e extends Handler {
        private WeakReference<f> a;

        public e(f fVar) {
            this.a = new WeakReference<>(fVar);
        }

        public void a() {
            sendMessage(obtainMessage(3));
        }

        public void b(int i, int i2, int i3) {
            sendMessage(obtainMessage(1, i2, i3));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            f fVar = this.a.get();
            if (fVar == null) {
                s.c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            if (i == 0) {
                fVar.v((SurfaceHolder) message.obj, message.arg1 != 0);
                return;
            }
            if (i == 1) {
                fVar.w(message.arg1, message.arg2);
                return;
            }
            if (i == 2) {
                b.h = false;
                fVar.x();
            } else if (i == 3) {
                b.h = false;
                fVar.u();
            } else if (i == 4) {
                fVar.o();
            } else {
                if (i != 5) {
                    return;
                }
                fVar.p(message.arg1, message.arg2);
            }
        }
    }

    public b(Context context) {
        this.a = new WeakReference<>(null);
        this.f = null;
        this.a = new WeakReference<>(context);
        g.a = new WeakReference(this);
        if (f()) {
            this.f = new c(this, context);
        }
        i = new OpenH264Decoder();
        n();
    }

    public static boolean a() {
        String strC = p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        p.c("ro.board.platform", null);
        String str = Build.MODEL;
        int codecCount = MediaCodecList.getCodecCount();
        for (int i2 = 0; i2 < codecCount; i2++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i2);
            if (!codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equals("video/avc")) {
                        s.f("MediaCodecList", "@@@@@@@@ Found " + codecInfoAt.getName() + " supporting video/avc");
                        if (p.v) {
                            p.F = 1;
                            return true;
                        }
                        if (strC.toLowerCase().equals("alps") || str.contains("ac83xx_evb")) {
                            s.f("MediaCodecList", "Bad decoder, set low framerate!!!!");
                            p.F = 1;
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static boolean f() {
        String strC = p.c("ro.board.platform", null);
        s.c("model: " + strC);
        if ("ac8317,".contains(strC)) {
            s.c("Need Use Float Window!");
            p.D = 300;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        s.c("BoxCarplay startThread, bServiceRuning = " + this.f1417c);
        if (this.f1417c) {
            return;
        }
        s.c("box startThread");
        if (this.a.get() != null) {
            this.f1418d = new f(this.f);
            this.f1418d.start();
            this.f1418d.y();
            this.f1417c = true;
            s.c("box Service started this" + this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        if (this.f1417c) {
            s.c("box stopThread()");
            if (this.f1418d != null) {
                this.f1418d.f1431c.a();
                try {
                    try {
                        this.f1418d.join();
                    } catch (InterruptedException e2) {
                        s.e(Log.getStackTraceString(e2));
                    }
                } finally {
                    this.f1418d = null;
                }
            }
            this.f1417c = false;
        }
    }

    public void e() {
        o();
        h = false;
        c cVar = this.f;
        if (cVar != null) {
            cVar.a();
            this.f = null;
        }
    }

    public void g(int i2, int i3, int i4, byte[] bArr, int i5) {
        h(i2, i3, i4, bArr, i5, 0L);
    }

    public void h(int i2, int i3, int i4, byte[] bArr, int i5, long j2) {
        if (this.f1418d == null) {
            return;
        }
        if (i2 == 0) {
            g.e(0, 0);
            g.d(0);
            g.c(0);
            if (this.f1418d != null) {
                this.f1418d.l();
            }
            if (p.f1806d) {
                this.f1416b.c();
                return;
            }
            return;
        }
        if (i2 == 1) {
            f.n = false;
            f.p = false;
            g.c(1);
            g.d(1);
            return;
        }
        if (i2 == 2) {
            this.e = true;
            g.c(2);
            g.c(6);
            return;
        }
        if (i2 == 3) {
            this.e = true;
            g.c(3);
            s.c("Screen closed!");
            return;
        }
        if (i2 == 4) {
            if (this.e) {
                this.e = false;
                g.c(4);
                return;
            }
            return;
        }
        if (i2 != 7) {
            if (i2 != 8) {
                return;
            }
            h = true;
            if (p.f1806d) {
                this.f1416b.a(bArr, 20, i5);
            }
            this.f1418d.m(bArr, 20, i5, j2);
            return;
        }
        this.f1418d.t(i3, i4);
        g.e(i3, i4);
        s.c("BoxCarPlay,onDataOut: VideoSize=" + i3 + "x" + i4);
        if (p.f1806d) {
            this.f1416b.b(i3, i4);
        }
    }

    public void i() {
        if (this.f1418d != null) {
            s.e("BoxCarPlay,sendDecoderReset: reset decoder");
            this.f1418d.q();
        }
    }

    public void j(SurfaceHolder surfaceHolder, boolean z) {
        s.c("BoxCarPlay,sendSurfaceAvailable:mRenderThread=" + this.f1418d);
        if (this.f1418d != null) {
            this.f1418d.z(surfaceHolder, z);
            g.d(1);
        }
    }

    public void k(int i2, int i3, int i4) {
        if (this.f1418d == null || this.f1418d.f1431c == null) {
            return;
        }
        this.f1418d.f1431c.b(i2, i3, i4);
    }

    public void l() {
        if (this.f1418d != null) {
            this.f1418d.A();
            g.d(0);
        }
    }

    public void n() {
        d dVar = g;
        if (dVar != null) {
            dVar.b(true);
        }
    }

    public static class f extends Thread {
        public static byte[] l;
        public static byte[] m;
        public static boolean n;
        public static boolean o;
        public static boolean p;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private C0074b f1430b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private e f1431c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Surface f1432d;
        private int e;
        private int f;
        private ScheduledExecutorService i;
        private Timer j;
        private Object g = new Object();
        private boolean h = false;
        public h k = new h(320);

        class a implements Runnable {
            a(f fVar) {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (p.g) {
                    return;
                }
                cn.manstep.phonemirrorBox.v0.e.H(12);
                f.n = false;
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$f$b, reason: collision with other inner class name */
        static class C0076b extends TimerTask {
            C0076b() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (b.h) {
                    s.e("Send control cmd for get new frame!!!");
                    cn.manstep.phonemirrorBox.v0.e.H(101);
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                        s.f("BoxCarPlay", s.g(e));
                    }
                    cn.manstep.phonemirrorBox.v0.e.H(100);
                }
            }
        }

        class c extends TimerTask {
            c() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                synchronized (f.this.g) {
                    f.this.n();
                    f.this.j = null;
                }
            }
        }

        public f(c cVar) {
        }

        private void k(Surface surface) {
            try {
                d.a.a.b.b bVar = new d.a.a.b.b(null, 1);
                try {
                    d.a.a.b.g gVar = new d.a.a.b.g(bVar, surface, false);
                    gVar.d();
                    GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
                    GLES20.glClear(16384);
                    gVar.f();
                    gVar.g();
                    bVar.g();
                } catch (Exception e) {
                    s.e(Log.getStackTraceString(e));
                }
            } catch (Exception e2) {
                s.e(Log.getStackTraceString(e2));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void n() {
            cn.manstep.phonemirrorBox.q0.g gVarJ;
            cn.manstep.phonemirrorBox.BoxInterface.f fVar = cn.manstep.phonemirrorBox.BoxInterface.d.l;
            if (fVar == null || (gVarJ = fVar.J()) == null) {
                return;
            }
            int iC = gVarJ.c();
            int iL = gVarJ.l(cn.manstep.phonemirrorBox.BoxInterface.f.R);
            s.d("BoxCarPlay", "decodeRepeatFrames: minFrameCache=" + iC + ", repeatTimes=" + iL + ", size=" + this.k.f());
            if (gVarJ.h() == 5 && u.z().L()) {
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, 5000, 6555);
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, 5000, 6555);
            }
            if (this.k.f() >= iC) {
                if (this.f1430b != null) {
                    while (iL > 0 && this.f1430b.x()) {
                        for (int i = 0; i < this.k.f(); i++) {
                            byte[] bArr = this.k.a.get(i);
                            this.f1430b.A(bArr, 0, bArr.length, this.k.f1474b.get(i).longValue());
                            try {
                                Thread.sleep(33L);
                            } catch (InterruptedException e) {
                                s.f("BoxCarPlay", "decodeRepeatFrames: " + s.g(e));
                            }
                        }
                        iL--;
                    }
                }
                o = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(int i, int i2) {
            s.c("newTexture " + i + " " + i2);
        }

        private void s(byte[] bArr, int i, int i2, long j) {
            int i3;
            s.c("BoxCarPlay,saveSpsPpsIframeData: offset=" + i + ", len=" + i2 + " " + bArr.length);
            int i4 = i;
            while (true) {
                i3 = i2 + i;
                if (i4 < i3) {
                    if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 0 && bArr[i4 + 3] == 1 && (bArr[i4 + 4] & 31) == 5) {
                        s.c("BoxCarPlay,saveSpsPpsIframeData: I frame was found.");
                        break;
                    }
                    i4++;
                } else {
                    break;
                }
            }
            int i5 = i4 - i;
            int i6 = i3 - i4;
            if (i5 > 0) {
                byte[] bArr2 = new byte[i5];
                l = bArr2;
                System.arraycopy(bArr, i, bArr2, 0, i5);
                byte[] bArr3 = new byte[i6];
                m = bArr3;
                System.arraycopy(bArr, i + i5, bArr3, 0, i6);
            }
            if (i6 > 0) {
                r(m, 0, i6, j);
            }
            s.c("BoxCarPlay,saveSpsPpsIframeData: spsppsDataLen :" + i5);
            s.c("BoxCarPlay,saveSpsPpsIframeData: iframeDataLen :" + i6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void u() {
            s.c("shutdown");
            if (Looper.myLooper() != null) {
                Looper.myLooper().quit();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void v(SurfaceHolder surfaceHolder, boolean z) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void w(int i, int i2) {
            s.d("BoxCarPlay", "surfaceChanged: RenderThread surfaceChanged " + i + "x" + i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void x() {
            s.c("RenderThread surfaceDestroyed");
        }

        public void A() {
            s.c("RenderThread ask surfaceDestroyed");
            this.f1432d = null;
            l();
            n = true;
        }

        public void l() {
            synchronized (this.g) {
                if (this.f1430b != null) {
                    s.e("BoxCarPlay,close decoder");
                    this.f1430b.u();
                    this.f1430b = null;
                }
                if (this.i != null) {
                    this.i.shutdown();
                    this.i = null;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:66:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0131 A[Catch: all -> 0x01bf, TryCatch #0 {, blocks: (B:31:0x0052, B:33:0x0058, B:34:0x005a, B:36:0x005e, B:37:0x0066, B:39:0x006a, B:41:0x006e, B:42:0x0083, B:96:0x01bd, B:43:0x0090, B:45:0x0096, B:47:0x009c, B:50:0x00a3, B:52:0x00aa, B:54:0x00c4, B:56:0x00c8, B:58:0x00cc, B:60:0x00ed, B:67:0x012d, B:69:0x0131, B:71:0x0135, B:80:0x016b, B:82:0x0171, B:86:0x017f, B:88:0x0185, B:90:0x018b, B:91:0x018e, B:93:0x0192, B:95:0x0196, B:84:0x017b, B:72:0x0141, B:73:0x014d, B:75:0x0151, B:77:0x015c, B:79:0x0166, B:61:0x00f0, B:63:0x010f, B:65:0x0113), top: B:103:0x0052 }] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x014d A[Catch: all -> 0x01bf, TryCatch #0 {, blocks: (B:31:0x0052, B:33:0x0058, B:34:0x005a, B:36:0x005e, B:37:0x0066, B:39:0x006a, B:41:0x006e, B:42:0x0083, B:96:0x01bd, B:43:0x0090, B:45:0x0096, B:47:0x009c, B:50:0x00a3, B:52:0x00aa, B:54:0x00c4, B:56:0x00c8, B:58:0x00cc, B:60:0x00ed, B:67:0x012d, B:69:0x0131, B:71:0x0135, B:80:0x016b, B:82:0x0171, B:86:0x017f, B:88:0x0185, B:90:0x018b, B:91:0x018e, B:93:0x0192, B:95:0x0196, B:84:0x017b, B:72:0x0141, B:73:0x014d, B:75:0x0151, B:77:0x015c, B:79:0x0166, B:61:0x00f0, B:63:0x010f, B:65:0x0113), top: B:103:0x0052 }] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0192 A[Catch: all -> 0x01bf, TryCatch #0 {, blocks: (B:31:0x0052, B:33:0x0058, B:34:0x005a, B:36:0x005e, B:37:0x0066, B:39:0x006a, B:41:0x006e, B:42:0x0083, B:96:0x01bd, B:43:0x0090, B:45:0x0096, B:47:0x009c, B:50:0x00a3, B:52:0x00aa, B:54:0x00c4, B:56:0x00c8, B:58:0x00cc, B:60:0x00ed, B:67:0x012d, B:69:0x0131, B:71:0x0135, B:80:0x016b, B:82:0x0171, B:86:0x017f, B:88:0x0185, B:90:0x018b, B:91:0x018e, B:93:0x0192, B:95:0x0196, B:84:0x017b, B:72:0x0141, B:73:0x014d, B:75:0x0151, B:77:0x015c, B:79:0x0166, B:61:0x00f0, B:63:0x010f, B:65:0x0113), top: B:103:0x0052 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m(byte[] bArr, int i, int i2, long j) {
            if (!p.g && this.f1432d == null && cn.manstep.phonemirrorBox.v0.e.C() && (bArr[i + 4] & 31) == 7) {
                int i3 = 300;
                while (this.f1432d == null) {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e) {
                        s.e(Log.getStackTraceString(e));
                    }
                    i3 -= 10;
                    if (i3 <= 0) {
                        break;
                    }
                }
                if (p.i && this.f1432d == null) {
                    this.f1432d = AutoBoxMirrorTextureView.getSurface();
                }
                if (this.f1432d == null) {
                    s.e("BoxCarPlay,decode: Can't wait surface available, need request key frame!!");
                    n = true;
                }
            }
            synchronized (this.g) {
                int i4 = i + 4;
                if ((bArr[i4] & 31) == 7) {
                    p = true;
                }
                if (this.i != null) {
                    this.i.shutdownNow();
                    this.i = null;
                }
                if (!p.g) {
                    if (this.f1430b != null) {
                        if (this.f1430b == null) {
                            if (p.F > 0) {
                                this.f1430b.A(bArr, i, i2, j);
                            } else {
                                this.f1430b.v(bArr, i, i2, j);
                            }
                        } else if (this.f1432d != null) {
                            s.e("BoxCarPlay,decode: mdecoder = null, should request Key frame!!!!!!");
                            if (cn.manstep.phonemirrorBox.BoxInterface.d.s() != null && cn.manstep.phonemirrorBox.BoxInterface.d.s().d()) {
                                cn.manstep.phonemirrorBox.v0.e.H(12);
                            }
                        }
                        if (((cn.manstep.phonemirrorBox.BoxInterface.d.s() == null && cn.manstep.phonemirrorBox.BoxInterface.d.s().f()) || o) && (bArr[i4] & 31) != 7 && (bArr[i4] & 31) != 8) {
                            r(bArr, i, i2, j);
                        }
                        if (o && this.j == null) {
                            s.c("BoxCarPlay,decode: bNeedDecodeRepeatFrame=" + o);
                            Timer timer = new Timer();
                            this.j = timer;
                            timer.schedule(new c(), 200L);
                        }
                    } else {
                        if ((bArr[i4] & 31) == 7 || (bArr[i4] & 31) == 8) {
                            s.c("BoxCarPlay,decode: RenderThread, is SPS PPS frame coming: mSurface=" + this.f1432d);
                            s(bArr, i, i2, j);
                            if (this.f1432d != null && this.f1430b == null) {
                                C0074b c0074b = new C0074b();
                                this.f1430b = c0074b;
                                c0074b.z();
                                this.f1430b.B(this.f1432d, this.e, this.f);
                                o = true;
                            }
                        } else if ((bArr[i4] & 31) == 5) {
                            s.c("BoxCarPlay,decode: RenderThread, is I frame coming: mSurface=" + this.f1432d);
                            if (this.f1432d != null && this.f1430b == null) {
                                if (l != null) {
                                    C0074b c0074b2 = new C0074b();
                                    this.f1430b = c0074b2;
                                    c0074b2.z();
                                    this.f1430b.B(this.f1432d, this.e, this.f);
                                    this.f1430b.w(l, j);
                                }
                                o = true;
                            }
                        }
                        if (this.f1430b == null) {
                        }
                        if (cn.manstep.phonemirrorBox.BoxInterface.d.s() == null) {
                            r(bArr, i, i2, j);
                            if (o) {
                                s.c("BoxCarPlay,decode: bNeedDecodeRepeatFrame=" + o);
                                Timer timer2 = new Timer();
                                this.j = timer2;
                                timer2.schedule(new c(), 200L);
                            }
                        } else {
                            r(bArr, i, i2, j);
                            if (o) {
                            }
                        }
                    }
                }
                if (this.f1430b == null) {
                    C0074b c0074b3 = new C0074b();
                    this.f1430b = c0074b3;
                    c0074b3.z();
                    this.f1430b.B(this.f1432d, this.e, this.f);
                }
                this.f1430b.A(bArr, i, i2, j);
            }
        }

        public void q() {
            if (this.f1432d == null || this.f1430b == null) {
                return;
            }
            l();
            if (cn.manstep.phonemirrorBox.BoxInterface.d.l.J().d() && this.i == null) {
                C0076b c0076b = new C0076b();
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
                this.i = scheduledThreadPoolExecutor;
                scheduledThreadPoolExecutor.schedule(c0076b, 500L, TimeUnit.MILLISECONDS);
            }
            new Handler().postDelayed(new a(this), 100L);
        }

        public void r(byte[] bArr, int i, int i2, long j) {
            if ((bArr[i + 4] & 31) == 5) {
                s.c("BoxCarPlay,saveH264Data:new I frame coming, clear cache :" + this.k.f());
                this.k.b();
            }
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            this.k.a(bArr2, j);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-20);
            Looper.prepare();
            this.f1431c = new e(this);
            synchronized (this.g) {
                this.h = true;
                this.g.notify();
            }
            Looper.loop();
            l();
        }

        public void t(int i, int i2) {
            s.c("BoxCarPlay,sendNewTexture: RenderThread VideoSize: " + i + "x" + i2);
            this.e = i;
            this.f = i2;
            l();
            this.k.b();
            cn.manstep.phonemirrorBox.BoxInterface.d.P(6, 501, new x(i, i2));
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 15);
        }

        public void y() {
            synchronized (this.g) {
                while (!this.h) {
                    try {
                        this.g.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        public void z(SurfaceHolder surfaceHolder, boolean z) {
            s.h("BoxCarPlay,waitforSurfaceAvailable:RenderThread ask SurfaceAvailable: Config.bUseTextureView = " + p.i);
            if (p) {
                n = true;
            }
            if (p.i) {
                this.f1432d = AutoBoxMirrorTextureView.getSurface();
            } else if (surfaceHolder == null) {
                return;
            } else {
                this.f1432d = surfaceHolder.getSurface();
            }
            s.d("BoxCarPlay", "waitforSurfaceAvailable: surface=" + this.f1432d);
            if (Build.VERSION.SDK_INT >= 17 && !p.i) {
                k(this.f1432d);
                s.e("flush black surface, avoid show last frame");
            }
            synchronized (this.g) {
                if (n) {
                    cn.manstep.phonemirrorBox.v0.e.H(12);
                    if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J() != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J().d() && this.i == null) {
                        C0076b c0076b = new C0076b();
                        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
                        this.i = scheduledThreadPoolExecutor;
                        scheduledThreadPoolExecutor.schedule(c0076b, 500L, TimeUnit.MILLISECONDS);
                    }
                    n = false;
                }
                if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J() != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J().f() && !this.k.e() && this.f1430b == null) {
                    C0074b c0074b = new C0074b();
                    this.f1430b = c0074b;
                    c0074b.z();
                    this.f1430b.B(this.f1432d, this.e, this.f);
                    this.f1430b.w(l, 0L);
                    for (int i = 0; i < this.k.f(); i++) {
                        byte[] bArr = this.k.a.get(i);
                        this.f1430b.A(bArr, 0, bArr.length, this.k.f1474b.get(i).longValue());
                    }
                }
            }
        }

        public f() {
        }
    }
}
