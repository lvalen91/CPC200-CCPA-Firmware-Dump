package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.os.Process;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.WindowManager;
import android.widget.FrameLayout;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.Vector;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class AndroidH264view extends SurfaceView implements d.g, SurfaceHolder.Callback {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Handler f1358b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1359c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1360d;
    private int e;
    private int f;
    private int g;
    private int h;
    private b i;
    private boolean j;
    private c k;

    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (AndroidH264view.this) {
                if (2 == message.what) {
                    AndroidH264view.this.b();
                    a aVar = null;
                    if (AndroidH264view.this.i != null) {
                        AndroidH264view.this.i.o();
                        AndroidH264view.this.i = null;
                    }
                    if (AndroidH264view.this.i == null && AndroidH264view.this.j) {
                        AndroidH264view.this.i = new b(aVar);
                        AndroidH264view.this.i.r();
                        AndroidH264view.this.i.t(AndroidH264view.this.getHolder().getSurface(), AndroidH264view.this.f1359c, AndroidH264view.this.f1360d);
                    }
                    AndroidH264view.this.notify();
                    AndroidH264view.this.setVisibility(0);
                    AndroidH264view.this.invalidate();
                } else if (1 == message.what) {
                    AndroidH264view.this.setVisibility(8);
                    AndroidH264view.this.invalidate();
                }
            }
        }
    }

    public AndroidH264view(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1359c = 0;
        this.f1360d = 0;
        this.e = 0;
        this.f = 0;
        this.g = 0;
        this.h = 0;
        this.i = null;
        this.j = false;
        this.k = new c(null);
        getHolder().addCallback(this);
        this.f1358b = new a();
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264view B");
    }

    private void i(Surface surface) {
        d.a.a.b.b bVar = new d.a.a.b.b(null, 1);
        d.a.a.b.g gVar = new d.a.a.b.g(bVar, surface, false);
        gVar.d();
        GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        GLES20.glClear(16384);
        gVar.f();
        gVar.g();
        bVar.g();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
    }

    public void b() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int i3 = this.f1359c;
        int i4 = this.f1360d;
        int i5 = i3 > i4 ? i : ((int) ((i2 * i3) / i4)) & 65534;
        cn.manstep.phonemirrorBox.util.s.e("H264 caculate_W = " + i5 + ", caculate_H = " + i2);
        this.e = i5;
        this.f = i2;
        this.g = (i - i5) / 2;
        this.h = (i2 - i2) / 2;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.e, this.f);
        layoutParams.setMargins(this.g, this.h, 0, 0);
        setLayoutParams(layoutParams);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        if (i != 0) {
            if (i == 1) {
                setVisibility(0);
                return;
            } else if (i != 12) {
                return;
            }
        }
        cn.manstep.phonemirrorBox.util.s.e("on_Android_Parse Plug out");
        synchronized (this) {
            this.f1359c = 0;
            this.f1360d = 0;
            if (this.i != null) {
                this.i.o();
                this.i = null;
                if (this.j) {
                    i(getHolder().getSurface());
                }
            }
            this.k.b();
        }
        setVisibility(4);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264view onAttachedToWindow");
        cn.manstep.phonemirrorBox.v0.e.M(this);
        super.onAttachedToWindow();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264view onDetachedFromWindow");
        this.f1359c = 0;
        this.f1360d = 0;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264View surfaceChanged:" + surfaceHolder + "(" + i2 + ":" + i3 + ")");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        synchronized (this) {
            i(surfaceHolder.getSurface());
            this.j = true;
            int iA = this.k.a();
            cn.manstep.phonemirrorBox.util.s.c("AndroidH264View surfaceCreated:" + surfaceHolder + " h264CacheFrameNum:" + iA);
            if (iA > 0 && this.i == null) {
                b bVar = new b(null);
                this.i = bVar;
                bVar.r();
                this.i.t(getHolder().getSurface(), this.f1359c, this.f1360d);
                this.i.s(this.k.a, 0, this.k.a.length);
                for (int i = 0; i < this.k.f1366b.size(); i++) {
                    byte[] bArr = this.k.f1366b.get(i);
                    this.i.s(bArr, 0, bArr.length);
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264View surfaceDestroyed:" + surfaceHolder);
        synchronized (this) {
            this.j = false;
            if (this.i != null) {
                this.i.o();
                this.i = null;
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        int i = byteBufferWrap.getInt(4) - 36;
        int i2 = byteBufferWrap.getInt(8);
        int i3 = byteBufferWrap.getInt(12);
        if (((byteBufferWrap.getInt(24) >> 16) & 255) != 1) {
            synchronized (this) {
                this.f1358b.sendMessage(this.f1358b.obtainMessage(1));
            }
            return;
        }
        if (i <= 0 || i2 <= 0 || i3 <= 0 || i2 > 2000 || i3 > 2000) {
            cn.manstep.phonemirrorBox.util.s.c("Error bytes:" + bArr.length + "W:" + i2 + "H:" + i3 + "h264size:" + i);
            return;
        }
        if (this.f1359c != i2 || this.f1360d != i3) {
            cn.manstep.phonemirrorBox.util.s.c("W:" + i2 + "H:" + i3);
            this.f1359c = i2;
            this.f1360d = i3;
            synchronized (this) {
                this.f1358b.sendMessage(this.f1358b.obtainMessage(2));
                try {
                    wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                }
            }
        }
        synchronized (this) {
            if (this.i != null) {
                this.i.s(byteBufferWrap.array(), 32, i);
            }
            this.k.c(byteBufferWrap.array(), 32, i);
        }
    }

    private static class c {
        public byte[] a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Vector<byte[]> f1366b;

        private c() {
            this.f1366b = new Vector<>(320);
        }

        private void d(byte[] bArr, int i, int i2) {
            this.f1366b.clear();
            int i3 = i;
            while (i3 < i2 && (bArr[i3] != 0 || bArr[i3 + 1] != 0 || bArr[i3 + 2] != 0 || bArr[i3 + 3] != 1 || (bArr[i3 + 4] & 31) != 5)) {
                i3++;
            }
            int i4 = i3 - i;
            if (i4 > 0) {
                byte[] bArr2 = new byte[i4];
                this.a = bArr2;
                System.arraycopy(bArr, i, bArr2, 0, i4);
                int i5 = i2 - i4;
                byte[] bArr3 = new byte[i5];
                System.arraycopy(bArr, i3, bArr3, 0, i5);
                this.f1366b.add(bArr3);
            }
            cn.manstep.phonemirrorBox.util.s.c("spsppsDataLen :" + i4 + " I frame len: " + (i2 - i4));
        }

        public int a() {
            if (this.a != null) {
                return this.f1366b.size();
            }
            return 0;
        }

        public void b() {
            this.a = null;
            this.f1366b.clear();
        }

        public void c(byte[] bArr, int i, int i2) {
            int i3 = i + 4;
            if ((bArr[i3] & 31) == 7 || (bArr[i3] & 31) == 8) {
                cn.manstep.phonemirrorBox.util.s.c("is SPS PPS frame coming, save it!!");
                d(bArr, i, i2);
                return;
            }
            if ((bArr[i3] & 31) == 5) {
                cn.manstep.phonemirrorBox.util.s.c("new I frame coming, clear cache :" + this.f1366b.size());
                this.f1366b.clear();
            }
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            this.f1366b.add(bArr2);
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }

    private static class b {
        boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        MediaCodec.BufferInfo f1361b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f1362c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private MediaCodec f1363d;
        private Object e;
        private Vector<byte[]> f;
        private Thread g;
        private long h;
        private long i;
        private long j;
        private Thread k;
        private List<Long> l;
        private Timer m;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    b bVar = b.this;
                    if (!bVar.a) {
                        return;
                    }
                    synchronized (bVar.e) {
                        if (!b.this.f.isEmpty()) {
                            if (b.this.f.size() > 20) {
                                cn.manstep.phonemirrorBox.util.s.e("buffer frame cnt = " + b.this.f.size());
                            }
                            b.this.p((byte[]) b.this.f.firstElement());
                            b.this.f.remove(0);
                        }
                        if (b.this.a) {
                            try {
                                if (b.this.f.size() <= p.F) {
                                    b.this.e.wait(33L);
                                }
                            } catch (InterruptedException e) {
                                e.printStackTrace();
                                cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                            }
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidH264view$b$b, reason: collision with other inner class name */
        class RunnableC0071b implements Runnable {
            RunnableC0071b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                long jLongValue;
                Process.setThreadPriority(-19);
                while (true) {
                    b bVar = b.this;
                    if (!bVar.a) {
                        return;
                    }
                    int iDequeueOutputBuffer = bVar.f1363d.dequeueOutputBuffer(b.this.f1361b, 100000L);
                    do {
                        if (iDequeueOutputBuffer != -1 && iDequeueOutputBuffer != -3) {
                            if (iDequeueOutputBuffer == -2) {
                                MediaFormat outputFormat = b.this.f1363d.getOutputFormat();
                                String str = "onOutputFormatChanged: " + outputFormat.getInteger("color-format") + ",size: " + outputFormat.getInteger("width") + "x" + outputFormat.getInteger("height");
                            } else if (iDequeueOutputBuffer >= 0) {
                                if (b.this.j == 0) {
                                    b.this.i = SystemClock.uptimeMillis();
                                    String str2 = "decode latency: " + (b.this.i - b.this.h);
                                }
                                b.f(b.this);
                                long jUptimeMillis = SystemClock.uptimeMillis() - b.this.i;
                                synchronized (b.this.l) {
                                    if (b.this.l.size() > 0) {
                                        jLongValue = ((Long) b.this.l.get(0)).longValue();
                                        b.this.l.remove(0);
                                    } else {
                                        jLongValue = jUptimeMillis;
                                    }
                                }
                                if (jLongValue < p.D) {
                                    b.this.f1363d.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                    cn.manstep.phonemirrorBox.util.s.f("AvcDecoder", "drop frames:" + b.this.j);
                                } else if (jUptimeMillis > 1000 + jLongValue) {
                                    b.this.f1363d.releaseOutputBuffer(iDequeueOutputBuffer, true);
                                    cn.manstep.phonemirrorBox.util.s.f("AvcDecoder", "late frame: " + b.this.j + ", late timestamp: " + (jUptimeMillis - jLongValue));
                                } else {
                                    b.this.f1363d.releaseOutputBuffer(iDequeueOutputBuffer, true);
                                }
                                iDequeueOutputBuffer = b.this.f1363d.dequeueOutputBuffer(b.this.f1361b, 0L);
                            }
                        }
                    } while (iDequeueOutputBuffer >= 0);
                }
            }
        }

        private b() {
            this.a = false;
            this.f1361b = new MediaCodec.BufferInfo();
            this.f1362c = 0L;
            this.f1363d = null;
            this.e = new Object();
            this.g = null;
            this.h = 0L;
            this.i = 0L;
            this.j = 0L;
            this.k = null;
            this.l = new ArrayList();
            this.m = null;
        }

        static /* synthetic */ long f(b bVar) {
            long j = bVar.j;
            bVar.j = 1 + j;
            return j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o() {
            try {
                if (this.f1363d != null) {
                    cn.manstep.phonemirrorBox.util.s.c("release mediaCodec ----" + this.f1363d);
                    u();
                    this.f1363d.release();
                    this.f1363d = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
                cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(byte[] bArr) {
            q(bArr, 0, bArr.length);
        }

        private void q(byte[] bArr, int i, int i2) {
            long jUptimeMillis;
            if (this.a) {
                if (this.f1362c == 0) {
                    this.h = SystemClock.uptimeMillis();
                    jUptimeMillis = 0;
                } else {
                    jUptimeMillis = SystemClock.uptimeMillis() - this.h;
                }
                boolean z = false;
                while (!z) {
                    try {
                        if (!this.a) {
                            return;
                        }
                        int iDequeueInputBuffer = this.f1363d.dequeueInputBuffer(100000L);
                        if (iDequeueInputBuffer >= 0) {
                            ByteBuffer byteBuffer = this.f1363d.getInputBuffers()[iDequeueInputBuffer];
                            byteBuffer.clear();
                            byteBuffer.put(bArr, i, i2);
                            this.f1363d.queueInputBuffer(iDequeueInputBuffer, 0, i2, jUptimeMillis * 1000, 0);
                            if (this.f1362c == 0) {
                                this.l.clear();
                                this.k.start();
                            }
                            this.f1362c++;
                            synchronized (this.l) {
                                this.l.add(Long.valueOf(jUptimeMillis));
                            }
                            z = true;
                        } else {
                            cn.manstep.phonemirrorBox.util.s.f("AvcDecoder", "Get decoder inputBuffer error: " + iDequeueInputBuffer);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                        cn.manstep.phonemirrorBox.util.s.c("inputBufferIndex Error");
                        return;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void r() {
            try {
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
                this.f1363d = mediaCodecCreateDecoderByType;
                if (mediaCodecCreateDecoderByType == null) {
                    cn.manstep.phonemirrorBox.util.s.e("mediaCodec ----NULL");
                }
                cn.manstep.phonemirrorBox.util.s.c("initDecodeMediaCodec ----- video/avc");
                cn.manstep.phonemirrorBox.util.s.c("mediaCodec ----" + this.f1363d);
            } catch (IOException e) {
                e.printStackTrace();
                cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void s(byte[] bArr, int i, int i2) {
            if (p.F <= 0) {
                q(bArr, i, i2);
                return;
            }
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            synchronized (this.e) {
                this.f.add(bArr2);
                if (this.f.size() > p.F) {
                    this.e.notifyAll();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void t(Surface surface, int i, int i2) {
            if (this.a || i <= 0 || i2 <= 0) {
                return;
            }
            synchronized (this.e) {
                if (this.f1363d != null) {
                    cn.manstep.phonemirrorBox.util.s.c("AvcDecoder start:" + i + "-" + i2);
                    this.f = new Vector<>(320);
                    this.f1363d.configure(MediaFormat.createVideoFormat("video/avc", i, i2), surface, (MediaCrypto) null, 0);
                    this.f1363d.start();
                    this.a = true;
                    Thread thread = new Thread(new a(), "hdv");
                    this.g = thread;
                    if (p.F > 0) {
                        thread.start();
                    }
                    this.j = 0L;
                    this.k = new Thread(new RunnableC0071b(), "render");
                }
            }
        }

        private void u() {
            if (this.a) {
                cn.manstep.phonemirrorBox.util.s.c("AvcDecoder stop");
                this.f1362c = 0L;
                this.a = false;
                try {
                    this.g.join();
                    this.k.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                }
                this.f1363d.flush();
                this.f1363d.stop();
            }
            Timer timer = this.m;
            if (timer != null) {
                timer.cancel();
            }
            this.m = null;
        }

        /* synthetic */ b(a aVar) {
            this();
        }
    }
}
