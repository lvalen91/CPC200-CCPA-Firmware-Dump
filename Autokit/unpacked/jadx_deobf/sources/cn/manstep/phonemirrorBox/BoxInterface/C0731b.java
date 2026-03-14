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
import cn.manstep.phonemirrorBox.C0925p;
import cn.manstep.phonemirrorBox.C0953u;
import cn.manstep.phonemirrorBox.FloatWindowService;
import cn.manstep.phonemirrorBox.OpenH264Decoder;
import cn.manstep.phonemirrorBox.p084q0.InterfaceC0937g;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import cn.manstep.phonemirrorBox.util.C0987x;
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
import p093d.p094a.p095a.p096b.C1192b;
import p093d.p094a.p095a.p096b.C1197g;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0731b {

    /* JADX INFO: renamed from: g */
    public static d f4350g = new d();

    /* JADX INFO: renamed from: h */
    public static boolean f4351h = false;

    /* JADX INFO: renamed from: i */
    private static OpenH264Decoder f4352i = null;

    /* JADX INFO: renamed from: j */
    public static boolean f4353j = m5459a();

    /* JADX INFO: renamed from: a */
    public WeakReference<Context> f4354a;

    /* JADX INFO: renamed from: d */
    public volatile f f4357d;

    /* JADX INFO: renamed from: f */
    public c f4359f;

    /* JADX INFO: renamed from: b */
    public C0738i f4355b = new C0738i();

    /* JADX INFO: renamed from: c */
    volatile boolean f4356c = false;

    /* JADX INFO: renamed from: e */
    public boolean f4358e = false;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$a */
    static /* synthetic */ class a {
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b */
    private static class b {

        /* JADX INFO: renamed from: p */
        private static long f4360p;

        /* JADX INFO: renamed from: f */
        private C0737h f4366f;

        /* JADX INFO: renamed from: a */
        public int f4361a = C0925p.f5856C;

        /* JADX INFO: renamed from: b */
        boolean f4362b = false;

        /* JADX INFO: renamed from: c */
        private long f4363c = 0;

        /* JADX INFO: renamed from: d */
        private MediaCodec f4364d = null;

        /* JADX INFO: renamed from: e */
        private Object f4365e = new Object();

        /* JADX INFO: renamed from: g */
        private Thread f4367g = null;

        /* JADX INFO: renamed from: h */
        private long f4368h = 0;

        /* JADX INFO: renamed from: i */
        private long f4369i = 0;

        /* JADX INFO: renamed from: j */
        private long f4370j = 0;

        /* JADX INFO: renamed from: k */
        private Thread f4371k = null;

        /* JADX INFO: renamed from: l */
        private List<Long> f4372l = new ArrayList();

        /* JADX INFO: renamed from: m */
        private ScheduledExecutorService f4373m = null;

        /* JADX INFO: renamed from: n */
        private TimerTask f4374n = null;

        /* JADX INFO: renamed from: o */
        private long f4375o = 0;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                while (true) {
                    b bVar = b.this;
                    if (!bVar.f4362b) {
                        return;
                    }
                    byte[] bArrM5802c = null;
                    long jM5803d = 0;
                    synchronized (bVar.f4365e) {
                        if (b.this.f4366f.m5804e()) {
                            try {
                                b.this.f4365e.wait(10L);
                            } catch (InterruptedException e) {
                                C0982s.m7375e(Log.getStackTraceString(e));
                            }
                        } else {
                            bArrM5802c = b.this.f4366f.m5802c();
                            jM5803d = b.this.f4366f.m5803d();
                            if (z) {
                                if ((bArrM5802c[4] & 31) != 7 && (bArrM5802c[4] & 31) != 8 && (bArrM5802c[4] & 31) != 5) {
                                }
                                C0982s.m7376f("AvcDecoder", "SoftDecoder I Frame Coming!!!");
                                z = false;
                            }
                            if (b.this.f4366f.m5805f() > b.this.f4361a * 2) {
                                C0982s.m7376f("AvcDecoder", "SoftDecoder buffer frame cnt = " + b.this.f4366f.m5805f());
                                C0995e.m7435H(12);
                                b.this.f4366f.m5801b();
                                z = true;
                            }
                        }
                        if (bArrM5802c != null) {
                            b.this.m5499w(bArrM5802c, jM5803d);
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b$b, reason: collision with other inner class name */
        class RunnableC1351b implements Runnable {
            RunnableC1351b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean z = false;
                while (true) {
                    b bVar = b.this;
                    if (!bVar.f4362b) {
                        return;
                    }
                    byte[] bArrM5802c = null;
                    long jM5803d = 0;
                    synchronized (bVar.f4365e) {
                        if (!b.this.f4366f.m5804e()) {
                            bArrM5802c = b.this.f4366f.m5802c();
                            jM5803d = b.this.f4366f.m5803d();
                            if (z) {
                                if ((bArrM5802c[4] & 31) != 7 && (bArrM5802c[4] & 31) != 8 && (bArrM5802c[4] & 31) != 5) {
                                }
                                C0982s.m7376f("AvcDecoder", "Async Decode I Frame Coming!!!");
                                z = false;
                            }
                            if (b.this.f4366f.m5805f() > b.this.f4361a * 2) {
                                C0982s.m7376f("AvcDecoder", "Async Decode buffer frame cnt = " + b.this.f4366f.m5805f());
                                C0995e.m7435H(12);
                                b.this.f4366f.m5801b();
                                z = true;
                            }
                        }
                        if (bArrM5802c != null) {
                            b.this.m5499w(bArrM5802c, jM5803d);
                        }
                        synchronized (b.this.f4365e) {
                            try {
                                if (b.this.f4366f.m5805f() < C0925p.f5859F) {
                                    b.this.f4365e.wait(10L);
                                }
                            } catch (InterruptedException e) {
                                C0982s.m7375e(Log.getStackTraceString(e));
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
                        b bVar = b.this;
                        if (!bVar.f4362b) {
                            return;
                        }
                        try {
                            int iDequeueOutputBuffer = bVar.f4364d.dequeueOutputBuffer(bufferInfo, 100000L);
                            if (iDequeueOutputBuffer == -1) {
                                if (b.this.f4363c - b.this.f4370j >= 30 && b.this.f4370j == 0) {
                                    C0982s.m7373c("(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)");
                                    if (!z) {
                                        C0982s.m7373c("(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)");
                                        C0733d.m5579O(1, 19);
                                        z = true;
                                    }
                                }
                            } else if (iDequeueOutputBuffer != -3) {
                                if (iDequeueOutputBuffer == -2) {
                                    MediaFormat outputFormat = b.this.f4364d.getOutputFormat();
                                    C0982s.m7374d("AvcDecoder", "onOutputFormatChanged: " + outputFormat.getInteger("color-format") + ",size: " + outputFormat.getInteger("width") + "x" + outputFormat.getInteger("height"));
                                    break;
                                }
                                if (iDequeueOutputBuffer >= 0) {
                                    if (b.this.f4370j == 0) {
                                        b.this.f4369i = SystemClock.uptimeMillis();
                                        C0982s.m7376f("AvcDecoder", "decode latency: " + (b.this.f4369i - b.this.f4368h));
                                    }
                                    b.m5484h(b.this);
                                    long j = b.this.f4369i - b.this.f4368h;
                                    long jUptimeMillis = SystemClock.uptimeMillis() - b.this.f4369i;
                                    synchronized (b.this.f4372l) {
                                        if (b.this.f4372l.size() > 0) {
                                            ((Long) b.this.f4372l.get(0)).longValue();
                                            b.this.f4372l.remove(0);
                                        }
                                    }
                                    if (jUptimeMillis < ((long) C0925p.f5857D) - j) {
                                        b.this.f4364d.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                    } else {
                                        b.this.f4364d.releaseOutputBuffer(iDequeueOutputBuffer, b.this.f4370j >= 4);
                                    }
                                }
                            }
                        } catch (Exception e) {
                            if (i < 10) {
                                i++;
                            } else if (!z) {
                                C0733d.m5579O(1, 19);
                                z = true;
                            }
                            if (b.this.f4363c - b.this.f4370j >= 30 && b.this.f4370j <= 30 && !z) {
                                C0733d.m5579O(1, 19);
                                z = true;
                            }
                            C0982s.m7376f("AvcDecoder", C0982s.m7377g(e));
                        }
                    }
                }
            }
        }

        public b() {
            C0982s.m7373c("New AvcDecoder");
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: A */
        public void m5474A(byte[] bArr, int i, int i2, long j) {
            if (C0925p.f5870g) {
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, i, bArr2, 0, i2);
                synchronized (this.f4365e) {
                    this.f4366f.m5800a(bArr2, j);
                }
                return;
            }
            if (C0925p.f5859F <= 0) {
                m5498v(bArr, i, i2, j);
                return;
            }
            byte[] bArr3 = new byte[i2];
            System.arraycopy(bArr, i, bArr3, 0, i2);
            synchronized (this.f4365e) {
                this.f4366f.m5800a(bArr3, j);
                if (this.f4366f.m5805f() == C0925p.f5859F) {
                    this.f4365e.notifyAll();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: B */
        public void m5475B(Surface surface, int i, int i2) {
            C0982s.m7373c("AvcDecoder,start: decode h264 size:" + i + "x" + i2);
            a aVar = null;
            if (this.f4373m == null) {
                this.f4373m = new ScheduledThreadPoolExecutor(1);
                d dVar = new d(this, aVar);
                this.f4374n = dVar;
                this.f4373m.scheduleAtFixedRate(dVar, 1000L, 1000L, TimeUnit.MILLISECONDS);
            }
            if (this.f4362b || i <= 0 || i2 <= 0) {
                return;
            }
            synchronized (this.f4365e) {
                if (!C0925p.f5870g) {
                    if (this.f4364d != null) {
                        C0982s.m7373c("AvcDecoder,start: AvcDecoder start:" + i + "-" + i2);
                        this.f4366f = new C0737h(320);
                        MediaFormat mediaFormatCreateVideoFormat = MediaFormat.createVideoFormat("video/avc", i, i2);
                        try {
                            m5500y(mediaFormatCreateVideoFormat, surface);
                        } catch (Exception e) {
                            C0982s.m7376f("AvcDecoder", "start: surface=" + surface + "\n" + C0982s.m7377g(e));
                            try {
                                this.f4364d.release();
                                this.f4364d = null;
                                this.f4364d = MediaCodec.createDecoderByType("video/avc");
                                m5500y(mediaFormatCreateVideoFormat, surface);
                            } catch (Exception e2) {
                                C0982s.m7375e("AvcDecoder,start:\n" + C0982s.m7377g(e2));
                                C0733d.m5579O(1, 18);
                            }
                        }
                        Thread thread = new Thread(new RunnableC1351b(), "hdv");
                        this.f4367g = thread;
                        if (C0925p.f5859F > 0) {
                            thread.start();
                        }
                        this.f4370j = 0L;
                        this.f4371k = new Thread(new c(), "render");
                    }
                }
                this.f4366f = new C0737h(320);
                this.f4362b = true;
                Thread thread2 = new Thread(new a(), "sdv");
                this.f4367g = thread2;
                thread2.start();
            }
        }

        /* JADX INFO: renamed from: C */
        private void m5476C() {
            if (this.f4362b) {
                C0982s.m7373c("AvcDecoder stop");
                this.f4362b = false;
                try {
                    if (this.f4367g != null) {
                        this.f4367g.join();
                        this.f4367g = null;
                    }
                    if (this.f4371k != null) {
                        this.f4371k.join();
                        this.f4371k = null;
                    }
                    this.f4363c = 0L;
                } catch (InterruptedException e) {
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
                try {
                    if (this.f4364d != null) {
                        this.f4364d.flush();
                        this.f4364d.stop();
                    }
                } catch (Exception e2) {
                    C0982s.m7375e(Log.getStackTraceString(e2));
                }
            }
            ScheduledExecutorService scheduledExecutorService = this.f4373m;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdown();
            }
            this.f4373m = null;
            this.f4374n = null;
        }

        /* JADX INFO: renamed from: h */
        static /* synthetic */ long m5484h(b bVar) {
            long j = bVar.f4370j;
            bVar.f4370j = 1 + j;
            return j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: u */
        public void m5497u() {
            C0731b.f4351h = false;
            m5476C();
            if (C0925p.f5870g) {
                C0731b.f4352i.m6008a();
                return;
            }
            try {
                if (this.f4364d != null) {
                    C0982s.m7373c("release mediaCodec ----" + this.f4364d);
                    this.f4364d.release();
                    this.f4364d = null;
                }
            } catch (Exception e) {
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: v */
        public void m5498v(byte[] bArr, int i, int i2, long j) {
            int i3;
            long j2;
            if (this.f4362b) {
                this.f4375o += (long) i2;
                if (C0925p.f5870g) {
                    C0731b.f4352i.m6010c(bArr, i, i2);
                    this.f4363c++;
                    return;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                if (this.f4363c == 0) {
                    this.f4368h = SystemClock.uptimeMillis();
                }
                long jUptimeMillis2 = SystemClock.uptimeMillis() - this.f4368h;
                boolean z = false;
                int i4 = 0;
                while (!z) {
                    try {
                        if (!this.f4362b) {
                            break;
                        }
                        int iDequeueInputBuffer = this.f4364d.dequeueInputBuffer(100000L);
                        if (iDequeueInputBuffer >= 0) {
                            ByteBuffer byteBuffer = this.f4364d.getInputBuffers()[iDequeueInputBuffer];
                            byteBuffer.clear();
                            byteBuffer.put(bArr, i, i2);
                            if (j <= 0) {
                                j2 = (C0731b.f4353j || C0925p.f5872i) ? (this.f4363c * 1000000) / ((long) this.f4361a) : 1000 * jUptimeMillis2;
                            } else {
                                j2 = j;
                            }
                            this.f4364d.queueInputBuffer(iDequeueInputBuffer, 0, i2, j2, 0);
                            if (this.f4363c == 0) {
                                this.f4372l.clear();
                                if (this.f4371k.getState() == Thread.State.NEW) {
                                    this.f4371k.start();
                                } else {
                                    C0982s.m7374d("AvcDecoder", "decode: renderThread has already started.");
                                }
                            }
                            this.f4363c++;
                            synchronized (this.f4372l) {
                                this.f4372l.add(Long.valueOf(jUptimeMillis2));
                            }
                            z = true;
                            i4 = 0;
                            i3 = 1;
                        } else {
                            i3 = 1;
                            i4++;
                            C0982s.m7376f("AvcDecoder", "decode: Get decoder inputBuffer error: " + iDequeueInputBuffer + " " + i4);
                            if (iDequeueInputBuffer == -1) {
                                C0982s.m7376f("AvcDecoder", "decode: -1 if no such buffer is currently available.");
                            }
                        }
                        if (i4 > 30) {
                            this.f4362b = false;
                            C0733d.m5579O(i3, 18);
                        }
                    } catch (Throwable th) {
                        C0982s.m7376f("AvcDecoder", "inputBufferIndex Error:" + C0982s.m7377g(th));
                    }
                }
                if (SystemClock.uptimeMillis() - jUptimeMillis > 60) {
                    C0982s.m7376f("AvcDecoder", "Decode use time too much:" + (SystemClock.uptimeMillis() - jUptimeMillis));
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: w */
        public void m5499w(byte[] bArr, long j) {
            m5498v(bArr, 0, bArr.length, j);
        }

        /* JADX INFO: renamed from: y */
        private void m5500y(MediaFormat mediaFormat, Surface surface) {
            this.f4364d.configure(mediaFormat, surface, (MediaCrypto) null, 0);
            this.f4364d.start();
            if (C0733d.m5600u() && C0953u.m7001z().m7021T()) {
                this.f4364d.setVideoScalingMode(2);
            }
            this.f4362b = true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: z */
        public void m5501z() {
            if (C0925p.f5870g) {
                C0731b.f4352i.m6009b();
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
                    this.f4364d = mediaCodecCreateDecoderByType;
                    if (mediaCodecCreateDecoderByType == null) {
                        C0982s.m7375e("AvcDecoder,AvcDecoder->open:mediaCodec ----NULL");
                    }
                    C0982s.m7373c("AvcDecoder,AvcDecoder->open:initDecodeMediaCodec ----- video/avc");
                    if (Build.VERSION.SDK_INT >= 18) {
                        C0982s.m7373c("AvcDecoder,AvcDecoder->open:mediaCodec ----" + this.f4364d.getName());
                        return;
                    }
                    C0982s.m7373c("AvcDecoder,AvcDecoder->open:mediaCodec ----" + this.f4364d);
                    return;
                } catch (IOException e) {
                    C0982s.m7375e("AvcDecoder,AvcDecoder->open:Create decoder Exception!!!\n" + C0982s.m7377g(e));
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e2) {
                        C0982s.m7375e("AvcDecoder,AvcDecoder->open:\n" + Log.getStackTraceString(e2));
                    }
                }
            }
        }

        /* JADX INFO: renamed from: x */
        public boolean m5502x() {
            C0982s.m7374d("AvcDecoder", "isBelowMinRenderFrameCnt: render_frame_cnt=" + this.f4370j);
            return SystemClock.uptimeMillis() - this.f4368h >= ((long) C0925p.f5857D) && this.f4370j < 4;
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$b$d */
        private class d extends TimerTask {

            /* JADX INFO: renamed from: b */
            StringBuilder f4379b;

            private d() {
                this.f4379b = new StringBuilder();
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (b.this.f4363c > b.f4360p) {
                    StringBuilder sb = this.f4379b;
                    sb.append(b.this.f4363c - b.f4360p);
                    sb.append("fps");
                    sb.append(", cnt: ");
                    sb.append(b.this.f4363c);
                    sb.append(", render_cnt: ");
                    sb.append(b.this.f4370j);
                    sb.append(", bitrate: ");
                    double d2 = b.this.f4375o;
                    Double.isNaN(d2);
                    sb.append(d2 / 1024.0d);
                    C0982s.m7378h("AvcDecoder,FrameRate:" + this.f4379b.toString());
                    this.f4379b.setLength(0);
                }
                long unused = b.f4360p = b.this.f4363c;
                b.this.f4375o = 0L;
            }

            /* synthetic */ d(b bVar, a aVar) {
                this();
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$c */
    public class c {

        /* JADX INFO: renamed from: a */
        public WeakReference<Context> f4381a;

        /* JADX INFO: renamed from: b */
        private boolean f4382b;

        /* JADX INFO: renamed from: c */
        private boolean f4383c = false;

        /* JADX INFO: renamed from: d */
        private boolean f4384d = false;

        public c(C0731b c0731b, Context context) {
            this.f4381a = new WeakReference<>(null);
            this.f4382b = false;
            this.f4381a = new WeakReference<>(context);
            if (context == null || this.f4382b) {
                return;
            }
            context.startService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f4382b = true;
            C0982s.m7373c("init float window service");
        }

        /* JADX INFO: renamed from: a */
        public void m5503a() {
            Context context = this.f4381a.get();
            if (context == null || !this.f4382b) {
                return;
            }
            context.stopService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.f4382b = false;
            C0982s.m7373c("destroy float window service");
        }

        /* JADX INFO: renamed from: b */
        public void m5504b(boolean z) {
            FloatWindowService.m5840d(z);
        }

        /* JADX INFO: renamed from: c */
        public void m5505c(boolean z) {
            if (z && this.f4383c) {
                FloatWindowService.m5842f(true);
            } else {
                FloatWindowService.m5842f(false);
            }
            this.f4384d = z;
        }

        /* JADX INFO: renamed from: d */
        public void m5506d(boolean z) {
            if (this.f4384d && z) {
                FloatWindowService.m5842f(true);
            } else {
                FloatWindowService.m5842f(false);
            }
            this.f4383c = z;
        }

        /* JADX INFO: renamed from: e */
        public void m5507e(int i, int i2) {
            if (i == FloatWindowService.f4570f && i2 == FloatWindowService.f4571g) {
                return;
            }
            FloatWindowService.m5841e(i, i2);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$d */
    public static class d extends Handler {

        /* JADX INFO: renamed from: a */
        private WeakReference<C0731b> f4385a = new WeakReference<>(null);

        /* JADX INFO: renamed from: b */
        public void m5509b(boolean z) {
            sendMessage(obtainMessage(0, z ? 1 : 0, 0));
        }

        /* JADX INFO: renamed from: c */
        public void m5510c(int i) {
            sendMessage(obtainMessage(1, i, 0));
        }

        /* JADX INFO: renamed from: d */
        public void m5511d(int i) {
            sendMessage(obtainMessage(3, i, 0));
        }

        /* JADX INFO: renamed from: e */
        public void m5512e(int i, int i2) {
            sendMessage(obtainMessage(2, i, i2));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            C0982s.m7373c("RenderHandler [" + this + "]: what=" + i);
            C0731b c0731b = this.f4385a.get();
            if (c0731b == null) {
                C0982s.m7373c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            c cVar = c0731b.f4359f;
            if (i == 0) {
                if (message.arg1 == 1) {
                    c0731b.m5464m();
                    return;
                } else {
                    c0731b.m5465o();
                    return;
                }
            }
            if (i != 1) {
                if (i == 2) {
                    if (cVar != null) {
                        cVar.m5507e(message.arg1, message.arg2);
                        return;
                    }
                    return;
                } else {
                    if (i == 3 && cVar != null) {
                        cVar.m5506d(message.arg1 == 1);
                        return;
                    }
                    return;
                }
            }
            if (cVar != null) {
                int i2 = message.arg1;
                if (i2 == 3) {
                    cVar.m5505c(false);
                    return;
                }
                if (i2 == 4) {
                    cVar.m5505c(true);
                } else if (i2 == 5) {
                    cVar.m5504b(false);
                } else {
                    if (i2 != 6) {
                        return;
                    }
                    cVar.m5504b(true);
                }
            }
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$e */
    public static class e extends Handler {

        /* JADX INFO: renamed from: a */
        private WeakReference<f> f4386a;

        public e(f fVar) {
            this.f4386a = new WeakReference<>(fVar);
        }

        /* JADX INFO: renamed from: a */
        public void m5513a() {
            sendMessage(obtainMessage(3));
        }

        /* JADX INFO: renamed from: b */
        public void m5514b(int i, int i2, int i3) {
            sendMessage(obtainMessage(1, i2, i3));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i = message.what;
            f fVar = this.f4386a.get();
            if (fVar == null) {
                C0982s.m7373c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            if (i == 0) {
                fVar.m5531v((SurfaceHolder) message.obj, message.arg1 != 0);
                return;
            }
            if (i == 1) {
                fVar.m5532w(message.arg1, message.arg2);
                return;
            }
            if (i == 2) {
                C0731b.f4351h = false;
                fVar.m5533x();
            } else if (i == 3) {
                C0731b.f4351h = false;
                fVar.m5530u();
            } else if (i == 4) {
                fVar.m5527o();
            } else {
                if (i != 5) {
                    return;
                }
                fVar.m5528p(message.arg1, message.arg2);
            }
        }
    }

    public C0731b(Context context) {
        this.f4354a = new WeakReference<>(null);
        this.f4359f = null;
        this.f4354a = new WeakReference<>(context);
        f4350g.f4385a = new WeakReference(this);
        if (m5463f()) {
            this.f4359f = new c(this, context);
        }
        f4352i = new OpenH264Decoder();
        m5473n();
    }

    /* JADX INFO: renamed from: a */
    public static boolean m5459a() {
        String strM6859c = C0925p.m6859c("ro.product.manufacturer", BuildConfig.FLAVOR);
        C0925p.m6859c("ro.board.platform", null);
        String str = Build.MODEL;
        int codecCount = MediaCodecList.getCodecCount();
        for (int i = 0; i < codecCount; i++) {
            MediaCodecInfo codecInfoAt = MediaCodecList.getCodecInfoAt(i);
            if (!codecInfoAt.isEncoder()) {
                for (String str2 : codecInfoAt.getSupportedTypes()) {
                    if (str2.equals("video/avc")) {
                        C0982s.m7376f("MediaCodecList", "@@@@@@@@ Found " + codecInfoAt.getName() + " supporting video/avc");
                        if (C0925p.f5885v) {
                            C0925p.f5859F = 1;
                            return true;
                        }
                        if (strM6859c.toLowerCase().equals("alps") || str.contains("ac83xx_evb")) {
                            C0982s.m7376f("MediaCodecList", "Bad decoder, set low framerate!!!!");
                            C0925p.f5859F = 1;
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public static boolean m5463f() {
        String strM6859c = C0925p.m6859c("ro.board.platform", null);
        C0982s.m7373c("model: " + strM6859c);
        if ("ac8317,".contains(strM6859c)) {
            C0982s.m7373c("Need Use Float Window!");
            C0925p.f5857D = 300;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m */
    public void m5464m() {
        C0982s.m7373c("BoxCarplay startThread, bServiceRuning = " + this.f4356c);
        if (this.f4356c) {
            return;
        }
        C0982s.m7373c("box startThread");
        if (this.f4354a.get() != null) {
            this.f4357d = new f(this.f4359f);
            this.f4357d.start();
            this.f4357d.m5540y();
            this.f4356c = true;
            C0982s.m7373c("box Service started this" + this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o */
    public void m5465o() {
        if (this.f4356c) {
            C0982s.m7373c("box stopThread()");
            if (this.f4357d != null) {
                this.f4357d.f4393c.m5513a();
                try {
                    try {
                        this.f4357d.join();
                    } catch (InterruptedException e2) {
                        C0982s.m7375e(Log.getStackTraceString(e2));
                    }
                } finally {
                    this.f4357d = null;
                }
            }
            this.f4356c = false;
        }
    }

    /* JADX INFO: renamed from: e */
    public void m5466e() {
        m5465o();
        f4351h = false;
        c cVar = this.f4359f;
        if (cVar != null) {
            cVar.m5503a();
            this.f4359f = null;
        }
    }

    /* JADX INFO: renamed from: g */
    public void m5467g(int i, int i2, int i3, byte[] bArr, int i4) {
        m5468h(i, i2, i3, bArr, i4, 0L);
    }

    /* JADX INFO: renamed from: h */
    public void m5468h(int i, int i2, int i3, byte[] bArr, int i4, long j) {
        if (this.f4357d == null) {
            return;
        }
        if (i == 0) {
            f4350g.m5512e(0, 0);
            f4350g.m5511d(0);
            f4350g.m5510c(0);
            if (this.f4357d != null) {
                this.f4357d.m5535l();
            }
            if (C0925p.f5867d) {
                this.f4355b.m5808c();
                return;
            }
            return;
        }
        if (i == 1) {
            f.f4389n = false;
            f.f4391p = false;
            f4350g.m5510c(1);
            f4350g.m5511d(1);
            return;
        }
        if (i == 2) {
            this.f4358e = true;
            f4350g.m5510c(2);
            f4350g.m5510c(6);
            return;
        }
        if (i == 3) {
            this.f4358e = true;
            f4350g.m5510c(3);
            C0982s.m7373c("Screen closed!");
            return;
        }
        if (i == 4) {
            if (this.f4358e) {
                this.f4358e = false;
                f4350g.m5510c(4);
                return;
            }
            return;
        }
        if (i != 7) {
            if (i != 8) {
                return;
            }
            f4351h = true;
            if (C0925p.f5867d) {
                this.f4355b.m5806a(bArr, 20, i4);
            }
            this.f4357d.m5536m(bArr, 20, i4, j);
            return;
        }
        this.f4357d.m5539t(i2, i3);
        f4350g.m5512e(i2, i3);
        C0982s.m7373c("BoxCarPlay,onDataOut: VideoSize=" + i2 + "x" + i3);
        if (C0925p.f5867d) {
            this.f4355b.m5807b(i2, i3);
        }
    }

    /* JADX INFO: renamed from: i */
    public void m5469i() {
        if (this.f4357d != null) {
            C0982s.m7375e("BoxCarPlay,sendDecoderReset: reset decoder");
            this.f4357d.m5537q();
        }
    }

    /* JADX INFO: renamed from: j */
    public void m5470j(SurfaceHolder surfaceHolder, boolean z) {
        C0982s.m7373c("BoxCarPlay,sendSurfaceAvailable:mRenderThread=" + this.f4357d);
        if (this.f4357d != null) {
            this.f4357d.m5541z(surfaceHolder, z);
            f4350g.m5511d(1);
        }
    }

    /* JADX INFO: renamed from: k */
    public void m5471k(int i, int i2, int i3) {
        if (this.f4357d == null || this.f4357d.f4393c == null) {
            return;
        }
        this.f4357d.f4393c.m5514b(i, i2, i3);
    }

    /* JADX INFO: renamed from: l */
    public void m5472l() {
        if (this.f4357d != null) {
            this.f4357d.m5534A();
            f4350g.m5511d(0);
        }
    }

    /* JADX INFO: renamed from: n */
    public void m5473n() {
        d dVar = f4350g;
        if (dVar != null) {
            dVar.m5509b(true);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$f */
    public static class f extends Thread {

        /* JADX INFO: renamed from: l */
        public static byte[] f4387l;

        /* JADX INFO: renamed from: m */
        public static byte[] f4388m;

        /* JADX INFO: renamed from: n */
        public static boolean f4389n;

        /* JADX INFO: renamed from: o */
        public static boolean f4390o;

        /* JADX INFO: renamed from: p */
        public static boolean f4391p;

        /* JADX INFO: renamed from: b */
        private b f4392b;

        /* JADX INFO: renamed from: c */
        private e f4393c;

        /* JADX INFO: renamed from: d */
        private Surface f4394d;

        /* JADX INFO: renamed from: e */
        private int f4395e;

        /* JADX INFO: renamed from: f */
        private int f4396f;

        /* JADX INFO: renamed from: i */
        private ScheduledExecutorService f4399i;

        /* JADX INFO: renamed from: j */
        private Timer f4400j;

        /* JADX INFO: renamed from: g */
        private Object f4397g = new Object();

        /* JADX INFO: renamed from: h */
        private boolean f4398h = false;

        /* JADX INFO: renamed from: k */
        public C0737h f4401k = new C0737h(320);

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$f$a */
        class a implements Runnable {
            a(f fVar) {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C0925p.f5870g) {
                    return;
                }
                C0995e.m7435H(12);
                f.f4389n = false;
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$f$b */
        static class b extends TimerTask {
            b() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (C0731b.f4351h) {
                    C0982s.m7375e("Send control cmd for get new frame!!!");
                    C0995e.m7435H(101);
                    try {
                        Thread.sleep(100L);
                    } catch (InterruptedException e) {
                        C0982s.m7376f("BoxCarPlay", C0982s.m7377g(e));
                    }
                    C0995e.m7435H(100);
                }
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.BoxInterface.b$f$c */
        class c extends TimerTask {
            c() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                synchronized (f.this.f4397g) {
                    f.this.m5526n();
                    f.this.f4400j = null;
                }
            }
        }

        public f(c cVar) {
        }

        /* JADX INFO: renamed from: k */
        private void m5525k(Surface surface) {
            try {
                C1192b c1192b = new C1192b(null, 1);
                try {
                    C1197g c1197g = new C1197g(c1192b, surface, false);
                    c1197g.m9069d();
                    GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
                    GLES20.glClear(16384);
                    c1197g.m9071f();
                    c1197g.m9088g();
                    c1192b.m9063g();
                } catch (Exception e) {
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
            } catch (Exception e2) {
                C0982s.m7375e(Log.getStackTraceString(e2));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: n */
        public void m5526n() {
            InterfaceC0937g interfaceC0937gM5683J;
            C0735f c0735f = C0733d.f4428l;
            if (c0735f == null || (interfaceC0937gM5683J = c0735f.m5683J()) == null) {
                return;
            }
            int iMo6921c = interfaceC0937gM5683J.mo6921c();
            int iMo6930l = interfaceC0937gM5683J.mo6930l(C0735f.f4461R);
            C0982s.m7374d("BoxCarPlay", "decodeRepeatFrames: minFrameCache=" + iMo6921c + ", repeatTimes=" + iMo6930l + ", size=" + this.f4401k.m5805f());
            if (interfaceC0937gM5683J.mo6926h() == 5 && C0953u.m7001z().m7013L()) {
                C0995e.m7439L(0, 0, 5000, 6555);
                C0995e.m7439L(2, 0, 5000, 6555);
            }
            if (this.f4401k.m5805f() >= iMo6921c) {
                if (this.f4392b != null) {
                    while (iMo6930l > 0 && this.f4392b.m5502x()) {
                        for (int i = 0; i < this.f4401k.m5805f(); i++) {
                            byte[] bArr = this.f4401k.f4538a.get(i);
                            this.f4392b.m5474A(bArr, 0, bArr.length, this.f4401k.f4539b.get(i).longValue());
                            try {
                                Thread.sleep(33L);
                            } catch (InterruptedException e) {
                                C0982s.m7376f("BoxCarPlay", "decodeRepeatFrames: " + C0982s.m7377g(e));
                            }
                        }
                        iMo6930l--;
                    }
                }
                f4390o = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: o */
        public void m5527o() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: p */
        public void m5528p(int i, int i2) {
            C0982s.m7373c("newTexture " + i + " " + i2);
        }

        /* JADX INFO: renamed from: s */
        private void m5529s(byte[] bArr, int i, int i2, long j) {
            int i3;
            C0982s.m7373c("BoxCarPlay,saveSpsPpsIframeData: offset=" + i + ", len=" + i2 + " " + bArr.length);
            int i4 = i;
            while (true) {
                i3 = i2 + i;
                if (i4 < i3) {
                    if (bArr[i4] == 0 && bArr[i4 + 1] == 0 && bArr[i4 + 2] == 0 && bArr[i4 + 3] == 1 && (bArr[i4 + 4] & 31) == 5) {
                        C0982s.m7373c("BoxCarPlay,saveSpsPpsIframeData: I frame was found.");
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
                f4387l = bArr2;
                System.arraycopy(bArr, i, bArr2, 0, i5);
                byte[] bArr3 = new byte[i6];
                f4388m = bArr3;
                System.arraycopy(bArr, i + i5, bArr3, 0, i6);
            }
            if (i6 > 0) {
                m5538r(f4388m, 0, i6, j);
            }
            C0982s.m7373c("BoxCarPlay,saveSpsPpsIframeData: spsppsDataLen :" + i5);
            C0982s.m7373c("BoxCarPlay,saveSpsPpsIframeData: iframeDataLen :" + i6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: u */
        public void m5530u() {
            C0982s.m7373c("shutdown");
            if (Looper.myLooper() != null) {
                Looper.myLooper().quit();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: v */
        public void m5531v(SurfaceHolder surfaceHolder, boolean z) {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: w */
        public void m5532w(int i, int i2) {
            C0982s.m7374d("BoxCarPlay", "surfaceChanged: RenderThread surfaceChanged " + i + "x" + i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: x */
        public void m5533x() {
            C0982s.m7373c("RenderThread surfaceDestroyed");
        }

        /* JADX INFO: renamed from: A */
        public void m5534A() {
            C0982s.m7373c("RenderThread ask surfaceDestroyed");
            this.f4394d = null;
            m5535l();
            f4389n = true;
        }

        /* JADX INFO: renamed from: l */
        public void m5535l() {
            synchronized (this.f4397g) {
                if (this.f4392b != null) {
                    C0982s.m7375e("BoxCarPlay,close decoder");
                    this.f4392b.m5497u();
                    this.f4392b = null;
                }
                if (this.f4399i != null) {
                    this.f4399i.shutdown();
                    this.f4399i = null;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:66:0x012b  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0131 A[Catch: all -> 0x01bf, TryCatch #0 {, blocks: (B:31:0x0052, B:33:0x0058, B:34:0x005a, B:36:0x005e, B:37:0x0066, B:39:0x006a, B:41:0x006e, B:42:0x0083, B:96:0x01bd, B:43:0x0090, B:45:0x0096, B:47:0x009c, B:50:0x00a3, B:52:0x00aa, B:54:0x00c4, B:56:0x00c8, B:58:0x00cc, B:60:0x00ed, B:67:0x012d, B:69:0x0131, B:71:0x0135, B:80:0x016b, B:82:0x0171, B:86:0x017f, B:88:0x0185, B:90:0x018b, B:91:0x018e, B:93:0x0192, B:95:0x0196, B:84:0x017b, B:72:0x0141, B:73:0x014d, B:75:0x0151, B:77:0x015c, B:79:0x0166, B:61:0x00f0, B:63:0x010f, B:65:0x0113), top: B:103:0x0052 }] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x014d A[Catch: all -> 0x01bf, TryCatch #0 {, blocks: (B:31:0x0052, B:33:0x0058, B:34:0x005a, B:36:0x005e, B:37:0x0066, B:39:0x006a, B:41:0x006e, B:42:0x0083, B:96:0x01bd, B:43:0x0090, B:45:0x0096, B:47:0x009c, B:50:0x00a3, B:52:0x00aa, B:54:0x00c4, B:56:0x00c8, B:58:0x00cc, B:60:0x00ed, B:67:0x012d, B:69:0x0131, B:71:0x0135, B:80:0x016b, B:82:0x0171, B:86:0x017f, B:88:0x0185, B:90:0x018b, B:91:0x018e, B:93:0x0192, B:95:0x0196, B:84:0x017b, B:72:0x0141, B:73:0x014d, B:75:0x0151, B:77:0x015c, B:79:0x0166, B:61:0x00f0, B:63:0x010f, B:65:0x0113), top: B:103:0x0052 }] */
        /* JADX WARN: Removed duplicated region for block: B:93:0x0192 A[Catch: all -> 0x01bf, TryCatch #0 {, blocks: (B:31:0x0052, B:33:0x0058, B:34:0x005a, B:36:0x005e, B:37:0x0066, B:39:0x006a, B:41:0x006e, B:42:0x0083, B:96:0x01bd, B:43:0x0090, B:45:0x0096, B:47:0x009c, B:50:0x00a3, B:52:0x00aa, B:54:0x00c4, B:56:0x00c8, B:58:0x00cc, B:60:0x00ed, B:67:0x012d, B:69:0x0131, B:71:0x0135, B:80:0x016b, B:82:0x0171, B:86:0x017f, B:88:0x0185, B:90:0x018b, B:91:0x018e, B:93:0x0192, B:95:0x0196, B:84:0x017b, B:72:0x0141, B:73:0x014d, B:75:0x0151, B:77:0x015c, B:79:0x0166, B:61:0x00f0, B:63:0x010f, B:65:0x0113), top: B:103:0x0052 }] */
        /* JADX INFO: renamed from: m */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void m5536m(byte[] bArr, int i, int i2, long j) {
            if (!C0925p.f5870g && this.f4394d == null && C0995e.m7430C() && (bArr[i + 4] & 31) == 7) {
                int i3 = 300;
                while (this.f4394d == null) {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e) {
                        C0982s.m7375e(Log.getStackTraceString(e));
                    }
                    i3 -= 10;
                    if (i3 <= 0) {
                        break;
                    }
                }
                if (C0925p.f5872i && this.f4394d == null) {
                    this.f4394d = AutoBoxMirrorTextureView.getSurface();
                }
                if (this.f4394d == null) {
                    C0982s.m7375e("BoxCarPlay,decode: Can't wait surface available, need request key frame!!");
                    f4389n = true;
                }
            }
            synchronized (this.f4397g) {
                int i4 = i + 4;
                if ((bArr[i4] & 31) == 7) {
                    f4391p = true;
                }
                if (this.f4399i != null) {
                    this.f4399i.shutdownNow();
                    this.f4399i = null;
                }
                if (!C0925p.f5870g) {
                    if (this.f4392b != null) {
                        if (this.f4392b == null) {
                            if (C0925p.f5859F > 0) {
                                this.f4392b.m5474A(bArr, i, i2, j);
                            } else {
                                this.f4392b.m5498v(bArr, i, i2, j);
                            }
                        } else if (this.f4394d != null) {
                            C0982s.m7375e("BoxCarPlay,decode: mdecoder = null, should request Key frame!!!!!!");
                            if (C0733d.m5598s() != null && C0733d.m5598s().mo6922d()) {
                                C0995e.m7435H(12);
                            }
                        }
                        if (((C0733d.m5598s() == null && C0733d.m5598s().mo6924f()) || f4390o) && (bArr[i4] & 31) != 7 && (bArr[i4] & 31) != 8) {
                            m5538r(bArr, i, i2, j);
                        }
                        if (f4390o && this.f4400j == null) {
                            C0982s.m7373c("BoxCarPlay,decode: bNeedDecodeRepeatFrame=" + f4390o);
                            Timer timer = new Timer();
                            this.f4400j = timer;
                            timer.schedule(new c(), 200L);
                        }
                    } else {
                        if ((bArr[i4] & 31) == 7 || (bArr[i4] & 31) == 8) {
                            C0982s.m7373c("BoxCarPlay,decode: RenderThread, is SPS PPS frame coming: mSurface=" + this.f4394d);
                            m5529s(bArr, i, i2, j);
                            if (this.f4394d != null && this.f4392b == null) {
                                b bVar = new b();
                                this.f4392b = bVar;
                                bVar.m5501z();
                                this.f4392b.m5475B(this.f4394d, this.f4395e, this.f4396f);
                                f4390o = true;
                            }
                        } else if ((bArr[i4] & 31) == 5) {
                            C0982s.m7373c("BoxCarPlay,decode: RenderThread, is I frame coming: mSurface=" + this.f4394d);
                            if (this.f4394d != null && this.f4392b == null) {
                                if (f4387l != null) {
                                    b bVar2 = new b();
                                    this.f4392b = bVar2;
                                    bVar2.m5501z();
                                    this.f4392b.m5475B(this.f4394d, this.f4395e, this.f4396f);
                                    this.f4392b.m5499w(f4387l, j);
                                }
                                f4390o = true;
                            }
                        }
                        if (this.f4392b == null) {
                        }
                        if (C0733d.m5598s() == null) {
                            m5538r(bArr, i, i2, j);
                            if (f4390o) {
                                C0982s.m7373c("BoxCarPlay,decode: bNeedDecodeRepeatFrame=" + f4390o);
                                Timer timer2 = new Timer();
                                this.f4400j = timer2;
                                timer2.schedule(new c(), 200L);
                            }
                        } else {
                            m5538r(bArr, i, i2, j);
                            if (f4390o) {
                            }
                        }
                    }
                }
                if (this.f4392b == null) {
                    b bVar3 = new b();
                    this.f4392b = bVar3;
                    bVar3.m5501z();
                    this.f4392b.m5475B(this.f4394d, this.f4395e, this.f4396f);
                }
                this.f4392b.m5474A(bArr, i, i2, j);
            }
        }

        /* JADX INFO: renamed from: q */
        public void m5537q() {
            if (this.f4394d == null || this.f4392b == null) {
                return;
            }
            m5535l();
            if (C0733d.f4428l.m5683J().mo6922d() && this.f4399i == null) {
                b bVar = new b();
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
                this.f4399i = scheduledThreadPoolExecutor;
                scheduledThreadPoolExecutor.schedule(bVar, 500L, TimeUnit.MILLISECONDS);
            }
            new Handler().postDelayed(new a(this), 100L);
        }

        /* JADX INFO: renamed from: r */
        public void m5538r(byte[] bArr, int i, int i2, long j) {
            if ((bArr[i + 4] & 31) == 5) {
                C0982s.m7373c("BoxCarPlay,saveH264Data:new I frame coming, clear cache :" + this.f4401k.m5805f());
                this.f4401k.m5801b();
            }
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            this.f4401k.m5800a(bArr2, j);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-20);
            Looper.prepare();
            this.f4393c = new e(this);
            synchronized (this.f4397g) {
                this.f4398h = true;
                this.f4397g.notify();
            }
            Looper.loop();
            m5535l();
        }

        /* JADX INFO: renamed from: t */
        public void m5539t(int i, int i2) {
            C0982s.m7373c("BoxCarPlay,sendNewTexture: RenderThread VideoSize: " + i + "x" + i2);
            this.f4395e = i;
            this.f4396f = i2;
            m5535l();
            this.f4401k.m5801b();
            C0733d.m5580P(6, 501, new C0987x(i, i2));
            C0733d.m5579O(1, 15);
        }

        /* JADX INFO: renamed from: y */
        public void m5540y() {
            synchronized (this.f4397g) {
                while (!this.f4398h) {
                    try {
                        this.f4397g.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        /* JADX INFO: renamed from: z */
        public void m5541z(SurfaceHolder surfaceHolder, boolean z) {
            C0982s.m7378h("BoxCarPlay,waitforSurfaceAvailable:RenderThread ask SurfaceAvailable: Config.bUseTextureView = " + C0925p.f5872i);
            if (f4391p) {
                f4389n = true;
            }
            if (C0925p.f5872i) {
                this.f4394d = AutoBoxMirrorTextureView.getSurface();
            } else if (surfaceHolder == null) {
                return;
            } else {
                this.f4394d = surfaceHolder.getSurface();
            }
            C0982s.m7374d("BoxCarPlay", "waitforSurfaceAvailable: surface=" + this.f4394d);
            if (Build.VERSION.SDK_INT >= 17 && !C0925p.f5872i) {
                m5525k(this.f4394d);
                C0982s.m7375e("flush black surface, avoid show last frame");
            }
            synchronized (this.f4397g) {
                if (f4389n) {
                    C0995e.m7435H(12);
                    if (C0733d.f4428l != null && C0733d.f4428l.m5683J() != null && C0733d.f4428l.m5683J().mo6922d() && this.f4399i == null) {
                        b bVar = new b();
                        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1);
                        this.f4399i = scheduledThreadPoolExecutor;
                        scheduledThreadPoolExecutor.schedule(bVar, 500L, TimeUnit.MILLISECONDS);
                    }
                    f4389n = false;
                }
                if (C0733d.f4428l != null && C0733d.f4428l.m5683J() != null && C0733d.f4428l.m5683J().mo6924f() && !this.f4401k.m5804e() && this.f4392b == null) {
                    b bVar2 = new b();
                    this.f4392b = bVar2;
                    bVar2.m5501z();
                    this.f4392b.m5475B(this.f4394d, this.f4395e, this.f4396f);
                    this.f4392b.m5499w(f4387l, 0L);
                    for (int i = 0; i < this.f4401k.m5805f(); i++) {
                        byte[] bArr = this.f4401k.f4538a.get(i);
                        this.f4392b.m5474A(bArr, 0, bArr.length, this.f4401k.f4539b.get(i).longValue());
                    }
                }
            }
        }

        public f() {
        }
    }
}
