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
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.Vector;
import p093d.p094a.p095a.p096b.C1192b;
import p093d.p094a.p095a.p096b.C1197g;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AndroidH264view extends SurfaceView implements C0733d.g, SurfaceHolder.Callback {

    /* JADX INFO: renamed from: b */
    private Handler f4177b;

    /* JADX INFO: renamed from: c */
    private int f4178c;

    /* JADX INFO: renamed from: d */
    private int f4179d;

    /* JADX INFO: renamed from: e */
    private int f4180e;

    /* JADX INFO: renamed from: f */
    private int f4181f;

    /* JADX INFO: renamed from: g */
    private int f4182g;

    /* JADX INFO: renamed from: h */
    private int f4183h;

    /* JADX INFO: renamed from: i */
    private C0704b f4184i;

    /* JADX INFO: renamed from: j */
    private boolean f4185j;

    /* JADX INFO: renamed from: k */
    private C0705c f4186k;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidH264view$a */
    class HandlerC0703a extends Handler {
        HandlerC0703a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            synchronized (AndroidH264view.this) {
                if (2 == message.what) {
                    AndroidH264view.this.m5275b();
                    HandlerC0703a handlerC0703a = null;
                    if (AndroidH264view.this.f4184i != null) {
                        AndroidH264view.this.f4184i.m5294o();
                        AndroidH264view.this.f4184i = null;
                    }
                    if (AndroidH264view.this.f4184i == null && AndroidH264view.this.f4185j) {
                        AndroidH264view.this.f4184i = new C0704b(handlerC0703a);
                        AndroidH264view.this.f4184i.m5297r();
                        AndroidH264view.this.f4184i.m5299t(AndroidH264view.this.getHolder().getSurface(), AndroidH264view.this.f4178c, AndroidH264view.this.f4179d);
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
        this.f4178c = 0;
        this.f4179d = 0;
        this.f4180e = 0;
        this.f4181f = 0;
        this.f4182g = 0;
        this.f4183h = 0;
        this.f4184i = null;
        this.f4185j = false;
        this.f4186k = new C0705c(null);
        getHolder().addCallback(this);
        this.f4177b = new HandlerC0703a();
        C0982s.m7373c("AndroidH264view B");
    }

    /* JADX INFO: renamed from: i */
    private void m5273i(Surface surface) {
        C1192b c1192b = new C1192b(null, 1);
        C1197g c1197g = new C1197g(c1192b, surface, false);
        c1197g.m9069d();
        GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        GLES20.glClear(16384);
        c1197g.m9071f();
        c1197g.m9088g();
        c1192b.m9063g();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
    }

    /* JADX INFO: renamed from: b */
    public void m5275b() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        int i3 = this.f4178c;
        int i4 = this.f4179d;
        int i5 = i3 > i4 ? i : ((int) ((i2 * i3) / i4)) & 65534;
        C0982s.m7375e("H264 caculate_W = " + i5 + ", caculate_H = " + i2);
        this.f4180e = i5;
        this.f4181f = i2;
        this.f4182g = (i - i5) / 2;
        this.f4183h = (i2 - i2) / 2;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f4180e, this.f4181f);
        layoutParams.setMargins(this.f4182g, this.f4183h, 0, 0);
        setLayoutParams(layoutParams);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        if (i != 0) {
            if (i == 1) {
                setVisibility(0);
                return;
            } else if (i != 12) {
                return;
            }
        }
        C0982s.m7375e("on_Android_Parse Plug out");
        synchronized (this) {
            this.f4178c = 0;
            this.f4179d = 0;
            if (this.f4184i != null) {
                this.f4184i.m5294o();
                this.f4184i = null;
                if (this.f4185j) {
                    m5273i(getHolder().getSurface());
                }
            }
            this.f4186k.m5303b();
        }
        setVisibility(4);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        C0982s.m7373c("AndroidH264view onAttachedToWindow");
        C0995e.m7440M(this);
        super.onAttachedToWindow();
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        C0982s.m7373c("AndroidH264view onDetachedFromWindow");
        this.f4178c = 0;
        this.f4179d = 0;
        C0995e.m7446S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        C0982s.m7373c("AndroidH264View surfaceChanged:" + surfaceHolder + "(" + i2 + ":" + i3 + ")");
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        synchronized (this) {
            m5273i(surfaceHolder.getSurface());
            this.f4185j = true;
            int iM5302a = this.f4186k.m5302a();
            C0982s.m7373c("AndroidH264View surfaceCreated:" + surfaceHolder + " h264CacheFrameNum:" + iM5302a);
            if (iM5302a > 0 && this.f4184i == null) {
                C0704b c0704b = new C0704b(null);
                this.f4184i = c0704b;
                c0704b.m5297r();
                this.f4184i.m5299t(getHolder().getSurface(), this.f4178c, this.f4179d);
                this.f4184i.m5298s(this.f4186k.f4203a, 0, this.f4186k.f4203a.length);
                for (int i = 0; i < this.f4186k.f4204b.size(); i++) {
                    byte[] bArr = this.f4186k.f4204b.get(i);
                    this.f4184i.m5298s(bArr, 0, bArr.length);
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        C0982s.m7373c("AndroidH264View surfaceDestroyed:" + surfaceHolder);
        synchronized (this) {
            this.f4185j = false;
            if (this.f4184i != null) {
                this.f4184i.m5294o();
                this.f4184i = null;
            }
        }
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        int i = byteBufferWrap.getInt(4) - 36;
        int i2 = byteBufferWrap.getInt(8);
        int i3 = byteBufferWrap.getInt(12);
        if (((byteBufferWrap.getInt(24) >> 16) & 255) != 1) {
            synchronized (this) {
                this.f4177b.sendMessage(this.f4177b.obtainMessage(1));
            }
            return;
        }
        if (i <= 0 || i2 <= 0 || i3 <= 0 || i2 > 2000 || i3 > 2000) {
            C0982s.m7373c("Error bytes:" + bArr.length + "W:" + i2 + "H:" + i3 + "h264size:" + i);
            return;
        }
        if (this.f4178c != i2 || this.f4179d != i3) {
            C0982s.m7373c("W:" + i2 + "H:" + i3);
            this.f4178c = i2;
            this.f4179d = i3;
            synchronized (this) {
                this.f4177b.sendMessage(this.f4177b.obtainMessage(2));
                try {
                    wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
            }
        }
        synchronized (this) {
            if (this.f4184i != null) {
                this.f4184i.m5298s(byteBufferWrap.array(), 32, i);
            }
            this.f4186k.m5304c(byteBufferWrap.array(), 32, i);
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidH264view$c */
    private static class C0705c {

        /* JADX INFO: renamed from: a */
        public byte[] f4203a;

        /* JADX INFO: renamed from: b */
        public Vector<byte[]> f4204b;

        private C0705c() {
            this.f4204b = new Vector<>(320);
        }

        /* JADX INFO: renamed from: d */
        private void m5301d(byte[] bArr, int i, int i2) {
            this.f4204b.clear();
            int i3 = i;
            while (i3 < i2 && (bArr[i3] != 0 || bArr[i3 + 1] != 0 || bArr[i3 + 2] != 0 || bArr[i3 + 3] != 1 || (bArr[i3 + 4] & 31) != 5)) {
                i3++;
            }
            int i4 = i3 - i;
            if (i4 > 0) {
                byte[] bArr2 = new byte[i4];
                this.f4203a = bArr2;
                System.arraycopy(bArr, i, bArr2, 0, i4);
                int i5 = i2 - i4;
                byte[] bArr3 = new byte[i5];
                System.arraycopy(bArr, i3, bArr3, 0, i5);
                this.f4204b.add(bArr3);
            }
            C0982s.m7373c("spsppsDataLen :" + i4 + " I frame len: " + (i2 - i4));
        }

        /* JADX INFO: renamed from: a */
        public int m5302a() {
            if (this.f4203a != null) {
                return this.f4204b.size();
            }
            return 0;
        }

        /* JADX INFO: renamed from: b */
        public void m5303b() {
            this.f4203a = null;
            this.f4204b.clear();
        }

        /* JADX INFO: renamed from: c */
        public void m5304c(byte[] bArr, int i, int i2) {
            int i3 = i + 4;
            if ((bArr[i3] & 31) == 7 || (bArr[i3] & 31) == 8) {
                C0982s.m7373c("is SPS PPS frame coming, save it!!");
                m5301d(bArr, i, i2);
                return;
            }
            if ((bArr[i3] & 31) == 5) {
                C0982s.m7373c("new I frame coming, clear cache :" + this.f4204b.size());
                this.f4204b.clear();
            }
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            this.f4204b.add(bArr2);
        }

        /* synthetic */ C0705c(HandlerC0703a handlerC0703a) {
            this();
        }
    }

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidH264view$b */
    private static class C0704b {

        /* JADX INFO: renamed from: a */
        boolean f4188a;

        /* JADX INFO: renamed from: b */
        MediaCodec.BufferInfo f4189b;

        /* JADX INFO: renamed from: c */
        private long f4190c;

        /* JADX INFO: renamed from: d */
        private MediaCodec f4191d;

        /* JADX INFO: renamed from: e */
        private Object f4192e;

        /* JADX INFO: renamed from: f */
        private Vector<byte[]> f4193f;

        /* JADX INFO: renamed from: g */
        private Thread f4194g;

        /* JADX INFO: renamed from: h */
        private long f4195h;

        /* JADX INFO: renamed from: i */
        private long f4196i;

        /* JADX INFO: renamed from: j */
        private long f4197j;

        /* JADX INFO: renamed from: k */
        private Thread f4198k;

        /* JADX INFO: renamed from: l */
        private List<Long> f4199l;

        /* JADX INFO: renamed from: m */
        private Timer f4200m;

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidH264view$b$a */
        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                while (true) {
                    C0704b c0704b = C0704b.this;
                    if (!c0704b.f4188a) {
                        return;
                    }
                    synchronized (c0704b.f4192e) {
                        if (!C0704b.this.f4193f.isEmpty()) {
                            if (C0704b.this.f4193f.size() > 20) {
                                C0982s.m7375e("buffer frame cnt = " + C0704b.this.f4193f.size());
                            }
                            C0704b.this.m5295p((byte[]) C0704b.this.f4193f.firstElement());
                            C0704b.this.f4193f.remove(0);
                        }
                        if (C0704b.this.f4188a) {
                            try {
                                if (C0704b.this.f4193f.size() <= C0925p.f5859F) {
                                    C0704b.this.f4192e.wait(33L);
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

        /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.AndroidH264view$b$b */
        class b implements Runnable {
            b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                long jLongValue;
                Process.setThreadPriority(-19);
                while (true) {
                    C0704b c0704b = C0704b.this;
                    if (!c0704b.f4188a) {
                        return;
                    }
                    int iDequeueOutputBuffer = c0704b.f4191d.dequeueOutputBuffer(C0704b.this.f4189b, 100000L);
                    do {
                        if (iDequeueOutputBuffer != -1 && iDequeueOutputBuffer != -3) {
                            if (iDequeueOutputBuffer == -2) {
                                MediaFormat outputFormat = C0704b.this.f4191d.getOutputFormat();
                                String str = "onOutputFormatChanged: " + outputFormat.getInteger("color-format") + ",size: " + outputFormat.getInteger("width") + "x" + outputFormat.getInteger("height");
                            } else if (iDequeueOutputBuffer >= 0) {
                                if (C0704b.this.f4197j == 0) {
                                    C0704b.this.f4196i = SystemClock.uptimeMillis();
                                    String str2 = "decode latency: " + (C0704b.this.f4196i - C0704b.this.f4195h);
                                }
                                C0704b.m5285f(C0704b.this);
                                long jUptimeMillis = SystemClock.uptimeMillis() - C0704b.this.f4196i;
                                synchronized (C0704b.this.f4199l) {
                                    if (C0704b.this.f4199l.size() > 0) {
                                        jLongValue = ((Long) C0704b.this.f4199l.get(0)).longValue();
                                        C0704b.this.f4199l.remove(0);
                                    } else {
                                        jLongValue = jUptimeMillis;
                                    }
                                }
                                if (jLongValue < C0925p.f5857D) {
                                    C0704b.this.f4191d.releaseOutputBuffer(iDequeueOutputBuffer, false);
                                    C0982s.m7376f("AvcDecoder", "drop frames:" + C0704b.this.f4197j);
                                } else if (jUptimeMillis > 1000 + jLongValue) {
                                    C0704b.this.f4191d.releaseOutputBuffer(iDequeueOutputBuffer, true);
                                    C0982s.m7376f("AvcDecoder", "late frame: " + C0704b.this.f4197j + ", late timestamp: " + (jUptimeMillis - jLongValue));
                                } else {
                                    C0704b.this.f4191d.releaseOutputBuffer(iDequeueOutputBuffer, true);
                                }
                                iDequeueOutputBuffer = C0704b.this.f4191d.dequeueOutputBuffer(C0704b.this.f4189b, 0L);
                            }
                        }
                    } while (iDequeueOutputBuffer >= 0);
                }
            }
        }

        private C0704b() {
            this.f4188a = false;
            this.f4189b = new MediaCodec.BufferInfo();
            this.f4190c = 0L;
            this.f4191d = null;
            this.f4192e = new Object();
            this.f4194g = null;
            this.f4195h = 0L;
            this.f4196i = 0L;
            this.f4197j = 0L;
            this.f4198k = null;
            this.f4199l = new ArrayList();
            this.f4200m = null;
        }

        /* JADX INFO: renamed from: f */
        static /* synthetic */ long m5285f(C0704b c0704b) {
            long j = c0704b.f4197j;
            c0704b.f4197j = 1 + j;
            return j;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: o */
        public void m5294o() {
            try {
                if (this.f4191d != null) {
                    C0982s.m7373c("release mediaCodec ----" + this.f4191d);
                    m5300u();
                    this.f4191d.release();
                    this.f4191d = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: p */
        public void m5295p(byte[] bArr) {
            m5296q(bArr, 0, bArr.length);
        }

        /* JADX INFO: renamed from: q */
        private void m5296q(byte[] bArr, int i, int i2) {
            long jUptimeMillis;
            if (this.f4188a) {
                if (this.f4190c == 0) {
                    this.f4195h = SystemClock.uptimeMillis();
                    jUptimeMillis = 0;
                } else {
                    jUptimeMillis = SystemClock.uptimeMillis() - this.f4195h;
                }
                boolean z = false;
                while (!z) {
                    try {
                        if (!this.f4188a) {
                            return;
                        }
                        int iDequeueInputBuffer = this.f4191d.dequeueInputBuffer(100000L);
                        if (iDequeueInputBuffer >= 0) {
                            ByteBuffer byteBuffer = this.f4191d.getInputBuffers()[iDequeueInputBuffer];
                            byteBuffer.clear();
                            byteBuffer.put(bArr, i, i2);
                            this.f4191d.queueInputBuffer(iDequeueInputBuffer, 0, i2, jUptimeMillis * 1000, 0);
                            if (this.f4190c == 0) {
                                this.f4199l.clear();
                                this.f4198k.start();
                            }
                            this.f4190c++;
                            synchronized (this.f4199l) {
                                this.f4199l.add(Long.valueOf(jUptimeMillis));
                            }
                            z = true;
                        } else {
                            C0982s.m7376f("AvcDecoder", "Get decoder inputBuffer error: " + iDequeueInputBuffer);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                        C0982s.m7373c("inputBufferIndex Error");
                        return;
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: r */
        public void m5297r() {
            try {
                MediaCodec mediaCodecCreateDecoderByType = MediaCodec.createDecoderByType("video/avc");
                this.f4191d = mediaCodecCreateDecoderByType;
                if (mediaCodecCreateDecoderByType == null) {
                    C0982s.m7375e("mediaCodec ----NULL");
                }
                C0982s.m7373c("initDecodeMediaCodec ----- video/avc");
                C0982s.m7373c("mediaCodec ----" + this.f4191d);
            } catch (IOException e) {
                e.printStackTrace();
                C0982s.m7375e(Log.getStackTraceString(e));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: s */
        public void m5298s(byte[] bArr, int i, int i2) {
            if (C0925p.f5859F <= 0) {
                m5296q(bArr, i, i2);
                return;
            }
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            synchronized (this.f4192e) {
                this.f4193f.add(bArr2);
                if (this.f4193f.size() > C0925p.f5859F) {
                    this.f4192e.notifyAll();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: t */
        public void m5299t(Surface surface, int i, int i2) {
            if (this.f4188a || i <= 0 || i2 <= 0) {
                return;
            }
            synchronized (this.f4192e) {
                if (this.f4191d != null) {
                    C0982s.m7373c("AvcDecoder start:" + i + "-" + i2);
                    this.f4193f = new Vector<>(320);
                    this.f4191d.configure(MediaFormat.createVideoFormat("video/avc", i, i2), surface, (MediaCrypto) null, 0);
                    this.f4191d.start();
                    this.f4188a = true;
                    Thread thread = new Thread(new a(), "hdv");
                    this.f4194g = thread;
                    if (C0925p.f5859F > 0) {
                        thread.start();
                    }
                    this.f4197j = 0L;
                    this.f4198k = new Thread(new b(), "render");
                }
            }
        }

        /* JADX INFO: renamed from: u */
        private void m5300u() {
            if (this.f4188a) {
                C0982s.m7373c("AvcDecoder stop");
                this.f4190c = 0L;
                this.f4188a = false;
                try {
                    this.f4194g.join();
                    this.f4198k.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    C0982s.m7375e(Log.getStackTraceString(e));
                }
                this.f4191d.flush();
                this.f4191d.stop();
            }
            Timer timer = this.f4200m;
            if (timer != null) {
                timer.cancel();
            }
            this.f4200m = null;
        }

        /* synthetic */ C0704b(HandlerC0703a handlerC0703a) {
            this();
        }
    }
}
