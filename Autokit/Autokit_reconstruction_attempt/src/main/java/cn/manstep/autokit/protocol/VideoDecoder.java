/**
 * VideoDecoder.java
 *
 * MediaCodec wrapper for H.264 video decoding.
 * Manages the full lifecycle of hardware and software video decoding:
 *   - MediaCodec creation, configuration, and teardown
 *   - NAL unit state machine (SPS/PPS detection, I-frame caching)
 *   - Render thread with frame rate monitoring
 *   - Surface management (SurfaceView and TextureView support)
 *   - Float window service integration (for picture-in-picture on some platforms)
 *   - Soft decode fallback via OpenH264Decoder
 *
 * Key inner classes:
 *   - MediaCodecManager (was: C0074b / inner class 'b') -- MediaCodec init/management
 *   - RenderThread (was: inner class 'f') -- NAL unit state machine and frame dispatch
 *   - RenderHandler (was: inner class 'd') -- Handler for surface/state messages
 *   - SurfaceHandler (was: inner class 'e') -- Handler for surface lifecycle events
 *   - FloatWindowManager (was: inner class 'c') -- Float window service integration
 *
 * Original: BoxInterface/b.java
 */
package cn.manstep.autokit.protocol;

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

/* was: 'BoxInterface.b' */
public class VideoDecoder {

    public static RenderHandler /* was: 'd' */ g = new RenderHandler();
    public static boolean h = false;
    private static OpenH264Decoder i = null;
    public static boolean j = checkDecoderCapabilities(); /* was: 'a()' */
    public WeakReference<Context> a;

    /* was: 'f1418d' (renamed from 'd' by JADX) */
    public volatile RenderThread /* was: 'f' */ f1418d;
    public FloatWindowManager /* was: 'c' */ f;

    /* was: 'f1416b' (renamed from 'b' by JADX) */
    public cn.manstep.phonemirrorBox.BoxInterface.i /* UNKNOWN PURPOSE: recording/muxer helper */ f1416b = new cn.manstep.phonemirrorBox.BoxInterface.i();

    /* was: 'f1417c' (renamed from 'c' by JADX) */
    volatile boolean f1417c = false;
    public boolean e = false;

    /* was: synthetic class 'a' -- switch map holder */
    static /* synthetic */ class a {
    }

    /**
     * MediaCodecManager -- Manages the MediaCodec instance for H.264 decoding,
     * including input/output buffer handling, frame rate monitoring, and soft decode fallback.
     *
     * was: 'C0074b' (inner class 'b', renamed by JADX due to collision)
     */
    private static class MediaCodecManager /* was: 'C0074b' */ {
        private static long lastReportedFrameCount; /* was: 'p' */
        private cn.manstep.phonemirrorBox.BoxInterface.h /* was: 'h' -- AudioQueue/frame buffer */ frameQueue; /* was: 'f' */
        public int frameRate /* was: 'a' */ = p.C; /* was: 'p.C' -> GlobalConfig.videoFrameRate */

        /* was: 'f1419b' (renamed from 'b' by JADX) */
        boolean isRunning /* was: 'f1419b' */ = false;

        /* was: 'f1420c' (renamed from 'c' by JADX) */
        private long frameCount /* was: 'f1420c' */ = 0;

        /* was: 'f1421d' (renamed from 'd' by JADX) */
        private MediaCodec mediaCodec /* was: 'f1421d' */ = null;
        private Object lock /* was: 'e' */ = new Object();
        private Thread decodeThread /* was: 'g' */ = null;
        private long firstFrameTime /* was: 'h' */ = 0;
        private long firstRenderTime /* was: 'i' */ = 0;
        private long renderFrameCount /* was: 'j' */ = 0;
        private Thread renderThread /* was: 'k' */ = null;
        private List<Long> timestampList /* was: 'l' */ = new ArrayList();
        private ScheduledExecutorService fpsReporter /* was: 'm' */ = null;
        private TimerTask fpsTask /* was: 'n' */ = null;
        private long byteCount /* was: 'o' */ = 0;

        /**
         * Soft decode consumer thread -- dequeues frames and sends to OpenH264Decoder.
         * was: 'C0074b.a' (inner Runnable 'a')
         */
        class SoftDecodeRunnable /* was: 'a' */ implements Runnable {
            SoftDecodeRunnable() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean waitingForKeyframe /* was: 'z' */ = false;
                while (true) {
                    MediaCodecManager codecMgr /* was: 'c0074b' */ = MediaCodecManager.this;
                    if (!codecMgr.isRunning) {
                        return;
                    }
                    byte[] frameData /* was: 'bArrC' */ = null;
                    long pts /* was: 'jD' */ = 0;
                    synchronized (codecMgr.lock) {
                        if (MediaCodecManager.this.frameQueue.e()) {
                            try {
                                MediaCodecManager.this.lock.wait(10L);
                            } catch (InterruptedException e) {
                                s.e(Log.getStackTraceString(e));
                            }
                        } else {
                            frameData = MediaCodecManager.this.frameQueue.c();
                            pts = MediaCodecManager.this.frameQueue.d();
                            if (waitingForKeyframe) {
                                if ((frameData[4] & 31) != 7 && (frameData[4] & 31) != 8 && (frameData[4] & 31) != 5) {
                                }
                                s.f("AvcDecoder", "SoftDecoder I Frame Coming!!!");
                                waitingForKeyframe = false;
                            }
                            if (MediaCodecManager.this.frameQueue.f() > MediaCodecManager.this.frameRate * 2) {
                                s.f("AvcDecoder", "SoftDecoder buffer frame cnt = " + MediaCodecManager.this.frameQueue.f());
                                cn.manstep.phonemirrorBox.v0.e.H(12);
                                MediaCodecManager.this.frameQueue.b();
                                waitingForKeyframe = true;
                            }
                        }
                        if (frameData != null) {
                            MediaCodecManager.this.decodeWholeFrame(frameData, pts); /* was: 'w' */
                        }
                    }
                }
            }
        }

        /**
         * Async (buffered) decode consumer thread -- dequeues buffered frames for MediaCodec input.
         * was: 'RunnableC0075b' (inner Runnable 'b', renamed by JADX due to collision)
         */
        class AsyncDecodeRunnable /* was: 'RunnableC0075b' */ implements Runnable {
            AsyncDecodeRunnable() {
            }

            @Override // java.lang.Runnable
            public void run() {
                boolean waitingForKeyframe /* was: 'z' */ = false;
                while (true) {
                    MediaCodecManager codecMgr /* was: 'c0074b' */ = MediaCodecManager.this;
                    if (!codecMgr.isRunning) {
                        return;
                    }
                    byte[] frameData /* was: 'bArrC' */ = null;
                    long pts /* was: 'jD' */ = 0;
                    synchronized (codecMgr.lock) {
                        if (!MediaCodecManager.this.frameQueue.e()) {
                            frameData = MediaCodecManager.this.frameQueue.c();
                            pts = MediaCodecManager.this.frameQueue.d();
                            if (waitingForKeyframe) {
                                if ((frameData[4] & 31) != 7 && (frameData[4] & 31) != 8 && (frameData[4] & 31) != 5) {
                                }
                                s.f("AvcDecoder", "Async Decode I Frame Coming!!!");
                                waitingForKeyframe = false;
                            }
                            if (MediaCodecManager.this.frameQueue.f() > MediaCodecManager.this.frameRate * 2) {
                                s.f("AvcDecoder", "Async Decode buffer frame cnt = " + MediaCodecManager.this.frameQueue.f());
                                cn.manstep.phonemirrorBox.v0.e.H(12);
                                MediaCodecManager.this.frameQueue.b();
                                waitingForKeyframe = true;
                            }
                        }
                        if (frameData != null) {
                            MediaCodecManager.this.decodeWholeFrame(frameData, pts); /* was: 'w' */
                        }
                        synchronized (MediaCodecManager.this.lock) {
                            try {
                                if (MediaCodecManager.this.frameQueue.f() < p.F) { /* was: 'p.F' -> GlobalConfig.bufferFrameCount */
                                    MediaCodecManager.this.lock.wait(10L);
                                }
                            } catch (InterruptedException e) {
                                s.e(Log.getStackTraceString(e));
                            }
                        }
                    }
                }
            }
        }

        /**
         * Output render thread -- dequeues decoded frames from MediaCodec and renders them.
         * was: 'C0074b.c' (inner Runnable 'c', renamed by JADX)
         */
        class OutputRenderRunnable /* was: 'c' */ implements Runnable {
            OutputRenderRunnable() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MediaCodec.BufferInfo bufferInfo = new MediaCodec.BufferInfo();
                Process.setThreadPriority(-19);
                boolean resetSent /* was: 'z' */ = false;
                while (true) {
                    int errorCount /* was: 'i' */ = 0;
                    while (true) {
                        MediaCodecManager codecMgr /* was: 'c0074b' */ = MediaCodecManager.this;
                        if (!codecMgr.isRunning) {
                            return;
                        }
                        try {
                            int outputBufferIndex /* was: 'iDequeueOutputBuffer' */ = codecMgr.mediaCodec.dequeueOutputBuffer(bufferInfo, 100000L);
                            if (outputBufferIndex == -1) {
                                if (MediaCodecManager.this.frameCount - MediaCodecManager.this.renderFrameCount >= 30 && MediaCodecManager.this.renderFrameCount == 0) {
                                    s.c("(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)");
                                    if (!resetSent) {
                                        s.c("(frame_cnt - render_frame_cnt >= 30) && (render_frame_cnt == 0)");
                                        cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 19);
                                        resetSent = true;
                                    }
                                }
                            } else if (outputBufferIndex != -3) {
                                if (outputBufferIndex == -2) {
                                    MediaFormat outputFormat = MediaCodecManager.this.mediaCodec.getOutputFormat();
                                    s.d("AvcDecoder", "onOutputFormatChanged: " + outputFormat.getInteger("color-format") + ",size: " + outputFormat.getInteger("width") + "x" + outputFormat.getInteger("height"));
                                    break;
                                }
                                if (outputBufferIndex >= 0) {
                                    if (MediaCodecManager.this.renderFrameCount == 0) {
                                        MediaCodecManager.this.firstRenderTime = SystemClock.uptimeMillis();
                                        s.f("AvcDecoder", "decode latency: " + (MediaCodecManager.this.firstRenderTime - MediaCodecManager.this.firstFrameTime));
                                    }
                                    incrementRenderCount(MediaCodecManager.this); /* was: 'h(C0074b.this)' */
                                    long decodeLatency /* was: 'j' */ = MediaCodecManager.this.firstRenderTime - MediaCodecManager.this.firstFrameTime;
                                    long renderElapsed /* was: 'jUptimeMillis' */ = SystemClock.uptimeMillis() - MediaCodecManager.this.firstRenderTime;
                                    synchronized (MediaCodecManager.this.timestampList) {
                                        if (MediaCodecManager.this.timestampList.size() > 0) {
                                            ((Long) MediaCodecManager.this.timestampList.get(0)).longValue();
                                            MediaCodecManager.this.timestampList.remove(0);
                                        }
                                    }
                                    if (renderElapsed < ((long) p.D) /* was: 'p.D' -> GlobalConfig.dropThreshold */ - decodeLatency) {
                                        MediaCodecManager.this.mediaCodec.releaseOutputBuffer(outputBufferIndex, false);
                                    } else {
                                        MediaCodecManager.this.mediaCodec.releaseOutputBuffer(outputBufferIndex, MediaCodecManager.this.renderFrameCount >= 4);
                                    }
                                }
                            }
                        } catch (Exception e) {
                            if (errorCount < 10) {
                                errorCount++;
                            } else if (!resetSent) {
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 19);
                                resetSent = true;
                            }
                            if (MediaCodecManager.this.frameCount - MediaCodecManager.this.renderFrameCount >= 30 && MediaCodecManager.this.renderFrameCount <= 30 && !resetSent) {
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 19);
                                resetSent = true;
                            }
                            s.f("AvcDecoder", s.g(e));
                        }
                    }
                }
            }
        }

        public MediaCodecManager() {
            s.c("New AvcDecoder");
        }

        /**
         * Enqueue frame data for decoding -- routes to soft decode, buffered, or direct decode.
         * was: 'A'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void enqueueFrame /* was: 'A' */(byte[] bArr, int i, int i2, long j) {
            if (p.g) { /* was: 'p.g' -> GlobalConfig.useSoftDecode */
                byte[] bArr2 = new byte[i2];
                System.arraycopy(bArr, i, bArr2, 0, i2);
                synchronized (this.lock) {
                    this.frameQueue.a(bArr2, j);
                }
                return;
            }
            if (p.F /* was: 'p.F' -> GlobalConfig.bufferFrameCount */ <= 0) {
                decodeFrame(bArr, i, i2, j); /* was: 'v' */
                return;
            }
            byte[] bArr3 = new byte[i2];
            System.arraycopy(bArr, i, bArr3, 0, i2);
            synchronized (this.lock) {
                this.frameQueue.a(bArr3, j);
                if (this.frameQueue.f() == p.F) {
                    this.lock.notifyAll();
                }
            }
        }

        /**
         * Start the decoder -- creates MediaCodec, starts decode/render threads.
         * was: 'B'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void startDecoder /* was: 'B' */(Surface surface, int i, int i2) {
            s.c("AvcDecoder,start: decode h264 size:" + i + "x" + i2);
            SoftDecodeRunnable unusedRef /* was: 'aVar' */ = null;
            if (this.fpsReporter == null) {
                this.fpsReporter = new ScheduledThreadPoolExecutor(1);
                FpsReportTask /* was: 'd' */ fpsReportTask = new FpsReportTask(this, unusedRef);
                this.fpsTask = fpsReportTask;
                this.fpsReporter.scheduleAtFixedRate(fpsReportTask, 1000L, 1000L, TimeUnit.MILLISECONDS);
            }
            if (this.isRunning || i <= 0 || i2 <= 0) {
                return;
            }
            synchronized (this.lock) {
                if (!p.g) { /* was: 'p.g' -> GlobalConfig.useSoftDecode */
                    if (this.mediaCodec != null) {
                        s.c("AvcDecoder,start: AvcDecoder start:" + i + "-" + i2);
                        this.frameQueue = new cn.manstep.phonemirrorBox.BoxInterface.h(320);
                        MediaFormat mediaFormat /* was: 'mediaFormatCreateVideoFormat' */ = MediaFormat.createVideoFormat("video/avc", i, i2);
                        try {
                            configureAndStart(mediaFormat, surface); /* was: 'y' */
                        } catch (Exception e) {
                            s.f("AvcDecoder", "start: surface=" + surface + "\n" + s.g(e));
                            try {
                                this.mediaCodec.release();
                                this.mediaCodec = null;
                                this.mediaCodec = MediaCodec.createDecoderByType("video/avc");
                                configureAndStart(mediaFormat, surface); /* was: 'y' */
                            } catch (Exception e2) {
                                s.e("AvcDecoder,start:\n" + s.g(e2));
                                cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 18);
                            }
                        }
                        Thread thread = new Thread(new AsyncDecodeRunnable(), "hdv");
                        this.decodeThread = thread;
                        if (p.F > 0) { /* was: 'p.F' -> GlobalConfig.bufferFrameCount */
                            thread.start();
                        }
                        this.renderFrameCount = 0L;
                        this.renderThread = new Thread(new OutputRenderRunnable(), "render");
                    }
                }
                this.frameQueue = new cn.manstep.phonemirrorBox.BoxInterface.h(320);
                this.isRunning = true;
                Thread softThread /* was: 'thread2' */ = new Thread(new SoftDecodeRunnable(), "sdv");
                this.decodeThread = softThread;
                softThread.start();
            }
        }

        /**
         * Stop the decoder -- joins threads, flushes and stops MediaCodec.
         * was: 'C'
         */
        private void stopInternal /* was: 'C' */() {
            if (this.isRunning) {
                s.c("AvcDecoder stop");
                this.isRunning = false;
                try {
                    if (this.decodeThread != null) {
                        this.decodeThread.join();
                        this.decodeThread = null;
                    }
                    if (this.renderThread != null) {
                        this.renderThread.join();
                        this.renderThread = null;
                    }
                    this.frameCount = 0L;
                } catch (InterruptedException e) {
                    s.e(Log.getStackTraceString(e));
                }
                try {
                    if (this.mediaCodec != null) {
                        this.mediaCodec.flush();
                        this.mediaCodec.stop();
                    }
                } catch (Exception e2) {
                    s.e(Log.getStackTraceString(e2));
                }
            }
            ScheduledExecutorService executor /* was: 'scheduledExecutorService' */ = this.fpsReporter;
            if (executor != null) {
                executor.shutdown();
            }
            this.fpsReporter = null;
            this.fpsTask = null;
        }

        /**
         * Increment render frame count (synthetic accessor).
         * was: synthetic 'h(C0074b)'
         */
        static /* synthetic */ long incrementRenderCount /* was: 'h' */(MediaCodecManager codecMgr /* was: 'c0074b' */) {
            long j = codecMgr.renderFrameCount;
            codecMgr.renderFrameCount = 1 + j;
            return j;
        }

        /**
         * Release the decoder -- stops decoding and releases MediaCodec instance.
         * was: 'u'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void releaseDecoder /* was: 'u' */() {
            VideoDecoder.h = false;
            stopInternal(); /* was: 'C' */
            if (p.g) { /* was: 'p.g' -> GlobalConfig.useSoftDecode */
                VideoDecoder.i.a();
                return;
            }
            try {
                if (this.mediaCodec != null) {
                    s.c("release mediaCodec ----" + this.mediaCodec);
                    this.mediaCodec.release();
                    this.mediaCodec = null;
                }
            } catch (Exception e) {
                s.e(Log.getStackTraceString(e));
            }
        }

        /**
         * Decode a single frame -- queues input buffer to MediaCodec or soft decoder.
         * was: 'v'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void decodeFrame /* was: 'v' */(byte[] bArr, int i, int i2, long j) {
            int i3;
            long j2;
            if (this.isRunning) {
                this.byteCount += (long) i2;
                if (p.g) { /* was: 'p.g' -> GlobalConfig.useSoftDecode */
                    VideoDecoder.i.c(bArr, i, i2);
                    this.frameCount++;
                    return;
                }
                long startTime /* was: 'jUptimeMillis' */ = SystemClock.uptimeMillis();
                if (this.frameCount == 0) {
                    this.firstFrameTime = SystemClock.uptimeMillis();
                }
                long elapsed /* was: 'jUptimeMillis2' */ = SystemClock.uptimeMillis() - this.firstFrameTime;
                boolean done /* was: 'z' */ = false;
                int retryCount /* was: 'i4' */ = 0;
                while (!done) {
                    try {
                        if (!this.isRunning) {
                            break;
                        }
                        int inputBufferIndex /* was: 'iDequeueInputBuffer' */ = this.mediaCodec.dequeueInputBuffer(100000L);
                        if (inputBufferIndex >= 0) {
                            ByteBuffer byteBuffer = this.mediaCodec.getInputBuffers()[inputBufferIndex];
                            byteBuffer.clear();
                            byteBuffer.put(bArr, i, i2);
                            if (j <= 0) {
                                j2 = (VideoDecoder.j || p.i) /* was: 'p.i' -> GlobalConfig.useTextureView */ ? (this.frameCount * 1000000) / ((long) this.frameRate) : 1000 * elapsed;
                            } else {
                                j2 = j;
                            }
                            this.mediaCodec.queueInputBuffer(inputBufferIndex, 0, i2, j2, 0);
                            if (this.frameCount == 0) {
                                this.timestampList.clear();
                                if (this.renderThread.getState() == Thread.State.NEW) {
                                    this.renderThread.start();
                                } else {
                                    s.d("AvcDecoder", "decode: renderThread has already started.");
                                }
                            }
                            this.frameCount++;
                            synchronized (this.timestampList) {
                                this.timestampList.add(Long.valueOf(elapsed));
                            }
                            done = true;
                            retryCount = 0;
                            i3 = 1;
                        } else {
                            i3 = 1;
                            retryCount++;
                            s.f("AvcDecoder", "decode: Get decoder inputBuffer error: " + inputBufferIndex + " " + retryCount);
                            if (inputBufferIndex == -1) {
                                s.f("AvcDecoder", "decode: -1 if no such buffer is currently available.");
                            }
                        }
                        if (retryCount > 30) {
                            this.isRunning = false;
                            cn.manstep.phonemirrorBox.BoxInterface.d.O(i3, 18);
                        }
                    } catch (Throwable th) {
                        s.f("AvcDecoder", "inputBufferIndex Error:" + s.g(th));
                    }
                }
                if (SystemClock.uptimeMillis() - startTime > 60) {
                    s.f("AvcDecoder", "Decode use time too much:" + (SystemClock.uptimeMillis() - startTime));
                }
            }
        }

        /**
         * Decode a whole frame (convenience wrapper for decodeFrame with offset=0).
         * was: 'w'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void decodeWholeFrame /* was: 'w' */(byte[] bArr, long j) {
            decodeFrame(bArr, 0, bArr.length, j); /* was: 'v' */
        }

        /**
         * Configure MediaCodec with format and surface, then start.
         * was: 'y'
         */
        private void configureAndStart /* was: 'y' */(MediaFormat mediaFormat, Surface surface) {
            this.mediaCodec.configure(mediaFormat, surface, (MediaCrypto) null, 0);
            this.mediaCodec.start();
            if (cn.manstep.phonemirrorBox.BoxInterface.d.u() /* was: 'isAndroidAutoWithVersionCheck' */ && u.z().T() /* was: 'isFitSizeMode' */) {
                this.mediaCodec.setVideoScalingMode(2);
            }
            this.isRunning = true;
        }

        /**
         * Initialize/open the MediaCodec decoder (retries up to 5 times).
         * was: 'z'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void initDecoder /* was: 'z' */() {
            if (p.g) { /* was: 'p.g' -> GlobalConfig.useSoftDecode */
                VideoDecoder.i.b();
                return;
            }
            int retries /* was: 'i' */ = 5;
            while (true) {
                retries--;
                if (retries <= 0) {
                    return;
                }
                try {
                    MediaCodec codec /* was: 'mediaCodecCreateDecoderByType' */ = MediaCodec.createDecoderByType("video/avc");
                    this.mediaCodec = codec;
                    if (codec == null) {
                        s.e("AvcDecoder,AvcDecoder->open:mediaCodec ----NULL");
                    }
                    s.c("AvcDecoder,AvcDecoder->open:initDecodeMediaCodec ----- video/avc");
                    if (Build.VERSION.SDK_INT >= 18) {
                        s.c("AvcDecoder,AvcDecoder->open:mediaCodec ----" + this.mediaCodec.getName());
                        return;
                    }
                    s.c("AvcDecoder,AvcDecoder->open:mediaCodec ----" + this.mediaCodec);
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

        /**
         * Check if render frame count is below minimum threshold (used for repeat-frame logic).
         * was: 'x'
         */
        public boolean isBelowMinRenderFrameCount /* was: 'x' */() {
            s.d("AvcDecoder", "isBelowMinRenderFrameCnt: render_frame_cnt=" + this.renderFrameCount);
            return SystemClock.uptimeMillis() - this.firstFrameTime >= ((long) p.D) /* was: 'p.D' -> GlobalConfig.dropThreshold */ && this.renderFrameCount < 4;
        }

        /**
         * FPS reporting task -- logs decode/render frame counts and bitrate every second.
         * was: 'C0074b.d' (inner TimerTask 'd', renamed by JADX)
         */
        private class FpsReportTask /* was: 'd' */ extends TimerTask {

            /* was: 'f1425b' (renamed from 'b' by JADX) */
            StringBuilder sb /* was: 'f1425b' */;

            private FpsReportTask() {
                this.sb = new StringBuilder();
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (MediaCodecManager.this.frameCount > MediaCodecManager.lastReportedFrameCount) {
                    StringBuilder builder /* was: 'sb' */ = this.sb;
                    builder.append(MediaCodecManager.this.frameCount - MediaCodecManager.lastReportedFrameCount);
                    builder.append("fps");
                    builder.append(", cnt: ");
                    builder.append(MediaCodecManager.this.frameCount);
                    builder.append(", render_cnt: ");
                    builder.append(MediaCodecManager.this.renderFrameCount);
                    builder.append(", bitrate: ");
                    double d2 = MediaCodecManager.this.byteCount;
                    Double.isNaN(d2);
                    builder.append(d2 / 1024.0d);
                    s.h("AvcDecoder,FrameRate:" + this.sb.toString());
                    this.sb.setLength(0);
                }
                long unused = MediaCodecManager.lastReportedFrameCount = MediaCodecManager.this.frameCount;
                MediaCodecManager.this.byteCount = 0L;
            }

            /* synthetic */ FpsReportTask(MediaCodecManager codecMgr /* was: 'c0074b' */, SoftDecodeRunnable unused /* was: 'aVar' */) {
                this();
            }
        }
    }

    /**
     * FloatWindowManager -- Manages the floating window service for picture-in-picture support.
     * was: inner class 'c'
     */
    public class FloatWindowManager /* was: 'c' */ {
        public WeakReference<Context> a;

        /* was: 'f1427b' (renamed from 'b' by JADX) */
        private boolean serviceStarted /* was: 'f1427b' */;

        /* was: 'f1428c' (renamed from 'c' by JADX) */
        private boolean surfaceReady /* was: 'f1428c' */ = false;

        /* was: 'f1429d' (renamed from 'd' by JADX) */
        private boolean phoneConnected /* was: 'f1429d' */ = false;

        public FloatWindowManager(VideoDecoder videoDecoder /* was: 'bVar' */, Context context) {
            this.a = new WeakReference<>(null);
            this.serviceStarted = false;
            this.a = new WeakReference<>(context);
            if (context == null || this.serviceStarted) {
                return;
            }
            context.startService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.serviceStarted = true;
            s.c("init float window service");
        }

        /* was: 'a' */
        public void destroyService /* was: 'a' */() {
            Context context = this.a.get();
            if (context == null || !this.serviceStarted) {
                return;
            }
            context.stopService(new Intent(context, (Class<?>) FloatWindowService.class));
            this.serviceStarted = false;
            s.c("destroy float window service");
        }

        /* was: 'b' */
        public void setVideoVisible /* was: 'b' */(boolean z) {
            FloatWindowService.d(z);
        }

        /* was: 'c' */
        public void updatePhoneState /* was: 'c' */(boolean z) {
            if (z && this.surfaceReady) {
                FloatWindowService.f(true);
            } else {
                FloatWindowService.f(false);
            }
            this.phoneConnected = z;
        }

        /* was: 'd' */
        public void updateSurfaceState /* was: 'd' */(boolean z) {
            if (this.phoneConnected && z) {
                FloatWindowService.f(true);
            } else {
                FloatWindowService.f(false);
            }
            this.surfaceReady = z;
        }

        /* was: 'e' */
        public void updateVideoSize /* was: 'e' */(int i, int i2) {
            if (i == FloatWindowService.f && i2 == FloatWindowService.g) {
                return;
            }
            FloatWindowService.e(i, i2);
        }
    }

    /**
     * RenderHandler -- Handler subclass that dispatches messages for start/stop/surface/float-window
     * events on the main thread.
     * was: inner class 'd'
     */
    public static class RenderHandler /* was: 'd' */ extends Handler {
        private WeakReference<VideoDecoder> a = new WeakReference<>(null);

        /* was: 'b' -- send start(true)/stop(false) message */
        public void sendStartStop /* was: 'b' */(boolean z) {
            sendMessage(obtainMessage(0, z ? 1 : 0, 0));
        }

        /* was: 'c' -- send phase event */
        public void sendPhase /* was: 'c' */(int i) {
            sendMessage(obtainMessage(1, i, 0));
        }

        /* was: 'd' -- send surface state */
        public void sendSurfaceState /* was: 'd' */(int i) {
            sendMessage(obtainMessage(3, i, 0));
        }

        /* was: 'e' -- send video size */
        public void sendVideoSize /* was: 'e' */(int i, int i2) {
            sendMessage(obtainMessage(2, i, i2));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int what /* was: 'i' */ = message.what;
            s.c("RenderHandler [" + this + "]: what=" + what);
            VideoDecoder decoder /* was: 'bVar' */ = this.a.get();
            if (decoder == null) {
                s.c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            FloatWindowManager floatMgr /* was: 'cVar' */ = decoder.f;
            if (what == 0) {
                if (message.arg1 == 1) {
                    decoder.startThread(); /* was: 'm' */
                    return;
                } else {
                    decoder.stopThread(); /* was: 'o' */
                    return;
                }
            }
            if (what != 1) {
                if (what == 2) {
                    if (floatMgr != null) {
                        floatMgr.updateVideoSize(message.arg1, message.arg2); /* was: 'e' */
                        return;
                    }
                    return;
                } else {
                    if (what == 3 && floatMgr != null) {
                        floatMgr.updateSurfaceState(message.arg1 == 1); /* was: 'd' */
                        return;
                    }
                    return;
                }
            }
            if (floatMgr != null) {
                int phase /* was: 'i2' */ = message.arg1;
                if (phase == 3) {
                    floatMgr.updatePhoneState(false); /* was: 'c' */
                    return;
                }
                if (phase == 4) {
                    floatMgr.updatePhoneState(true); /* was: 'c' */
                } else if (phase == 5) {
                    floatMgr.setVideoVisible(false); /* was: 'b' */
                } else {
                    if (phase != 6) {
                        return;
                    }
                    floatMgr.setVideoVisible(true); /* was: 'b' */
                }
            }
        }
    }

    /**
     * SurfaceHandler -- Handler subclass that dispatches surface lifecycle events
     * (surface available, changed, destroyed) and render-thread shutdown to the RenderThread.
     * was: inner class 'e'
     */
    public static class SurfaceHandler /* was: 'e' */ extends Handler {
        private WeakReference<RenderThread> a;

        public SurfaceHandler(RenderThread renderThread /* was: 'fVar' */) {
            this.a = new WeakReference<>(renderThread);
        }

        /* was: 'a' -- send shutdown message */
        public void sendShutdown /* was: 'a' */() {
            sendMessage(obtainMessage(3));
        }

        /* was: 'b' -- send surface changed */
        public void sendSurfaceChanged /* was: 'b' */(int format /* was: 'i' */, int width /* was: 'i2' */, int height /* was: 'i3' */) {
            sendMessage(obtainMessage(1, width, height));
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int what /* was: 'i' */ = message.what;
            RenderThread renderThread /* was: 'fVar' */ = this.a.get();
            if (renderThread == null) {
                s.c("RenderHandler.handleMessage: weak ref is null");
                return;
            }
            if (what == 0) {
                renderThread.handleSurfaceAvailable /* was: 'v' */((SurfaceHolder) message.obj, message.arg1 != 0);
                return;
            }
            if (what == 1) {
                renderThread.handleSurfaceChanged /* was: 'w' */(message.arg1, message.arg2);
                return;
            }
            if (what == 2) {
                VideoDecoder.h = false;
                renderThread.handleSurfaceDestroyed(); /* was: 'x' */
            } else if (what == 3) {
                VideoDecoder.h = false;
                renderThread.shutdown(); /* was: 'u' */
            } else if (what == 4) {
                renderThread.handleNoOp(); /* was: 'o' */
            } else {
                if (what != 5) {
                    return;
                }
                renderThread.handleNewTexture /* was: 'p' */(message.arg1, message.arg2);
            }
        }
    }

    /**
     * Constructor.
     * was: 'b(Context)'
     */
    public VideoDecoder(Context context) {
        this.a = new WeakReference<>(null);
        this.f = null;
        this.a = new WeakReference<>(context);
        g.a = new WeakReference(this);
        if (checkPlatformForFloatWindow()) { /* was: 'f()' */
            this.f = new FloatWindowManager(this, context);
        }
        i = new OpenH264Decoder();
        startService(); /* was: 'n' */
    }

    /**
     * Check decoder capabilities -- enumerates MediaCodec decoders to detect platform quirks.
     * Sets bufferFrameCount for certain low-end platforms.
     * was: 'a()'
     */
    public static boolean checkDecoderCapabilities /* was: 'a' */() {
        String manufacturer /* was: 'strC' */ = p.c("ro.product.manufacturer", BuildConfig.FLAVOR);
        p.c("ro.board.platform", null);
        String model /* was: 'str' */ = Build.MODEL;
        int codecCount = MediaCodecList.getCodecCount();
        for (int i2 = 0; i2 < codecCount; i2++) {
            MediaCodecInfo codecInfo /* was: 'codecInfoAt' */ = MediaCodecList.getCodecInfoAt(i2);
            if (!codecInfo.isEncoder()) {
                for (String type /* was: 'str2' */ : codecInfo.getSupportedTypes()) {
                    if (type.equals("video/avc")) {
                        s.f("MediaCodecList", "@@@@@@@@ Found " + codecInfo.getName() + " supporting video/avc");
                        if (p.v) { /* UNKNOWN PURPOSE */
                            p.F = 1; /* was: 'p.F' -> GlobalConfig.bufferFrameCount */
                            return true;
                        }
                        if (manufacturer.toLowerCase().equals("alps") || model.contains("ac83xx_evb")) {
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

    /**
     * Check platform for float window support (ac8317 detection).
     * was: 'f()'
     */
    public static boolean checkPlatformForFloatWindow /* was: 'f' */() {
        String platform /* was: 'strC' */ = p.c("ro.board.platform", null);
        s.c("model: " + platform);
        if ("ac8317,".contains(platform)) {
            s.c("Need Use Float Window!");
            p.D = 300; /* was: 'p.D' -> GlobalConfig.dropThreshold */
        }
        return false;
    }

    /**
     * Start the render thread.
     * was: 'm'
     */
    /* JADX INFO: Access modifiers changed from: private */
    public void startThread /* was: 'm' */() {
        s.c("BoxCarplay startThread, bServiceRuning = " + this.f1417c);
        if (this.f1417c) {
            return;
        }
        s.c("box startThread");
        if (this.a.get() != null) {
            this.f1418d = new RenderThread(this.f);
            this.f1418d.start();
            this.f1418d.waitForReady(); /* was: 'y' */
            this.f1417c = true;
            s.c("box Service started this" + this);
        }
    }

    /**
     * Stop the render thread.
     * was: 'o'
     */
    /* JADX INFO: Access modifiers changed from: private */
    public void stopThread /* was: 'o' */() {
        if (this.f1417c) {
            s.c("box stopThread()");
            if (this.f1418d != null) {
                this.f1418d.f1431c.sendShutdown(); /* was: 'a' */
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

    /**
     * Destroy -- stops the render thread and float window service.
     * was: 'e'
     */
    public void destroy /* was: 'e' */() {
        stopThread(); /* was: 'o' */
        h = false;
        FloatWindowManager floatMgr /* was: 'cVar' */ = this.f;
        if (floatMgr != null) {
            floatMgr.destroyService(); /* was: 'a' */
            this.f = null;
        }
    }

    /**
     * Dispatch video data without timestamp (delegates to dispatcher() with pts=0).
     * was: 'g'
     */
    public void dispatchVideoData /* was: 'g' */(int mode /* was: 'i2' */, int width /* was: 'i3' */, int height /* was: 'i4' */, byte[] data /* was: 'bArr' */, int length /* was: 'i5' */) {
        dispatcher(mode, width, height, data, length, 0L); /* was: 'h' */
    }

    /**
     * Main dispatcher -- routes video commands by mode code.
     * 0=STOP, 1=RESUME, 2=SCREEN_ON, 3=SCREEN_OFF, 4=SCREEN_WAKE, 7=SIZE_CHANGE, 8=H264_FRAME
     * was: 'h'
     */
    public void dispatcher /* was: 'h' */(int mode /* was: 'i2' */, int width /* was: 'i3' */, int height /* was: 'i4' */, byte[] data /* was: 'bArr' */, int length /* was: 'i5' */, long pts /* was: 'j2' */) {
        if (this.f1418d == null) {
            return;
        }
        if (mode == 0) {
            g.sendVideoSize(0, 0); /* was: 'e' */
            g.sendSurfaceState(0); /* was: 'd' */
            g.sendPhase(0); /* was: 'c' */
            if (this.f1418d != null) {
                this.f1418d.stopDecoder(); /* was: 'l' */
            }
            if (p.f1806d) { /* was: 'p.f1806d' -> GlobalConfig.isRecording */
                this.f1416b.c();
                return;
            }
            return;
        }
        if (mode == 1) {
            RenderThread.requestKeyframe /* was: 'n' */ = false;
            RenderThread.spsPpsReceived /* was: 'p' */ = false;
            g.sendPhase(1); /* was: 'c' */
            g.sendSurfaceState(1); /* was: 'd' */
            return;
        }
        if (mode == 2) {
            this.e = true;
            g.sendPhase(2); /* was: 'c' */
            g.sendPhase(6); /* was: 'c' */
            return;
        }
        if (mode == 3) {
            this.e = true;
            g.sendPhase(3); /* was: 'c' */
            s.c("Screen closed!");
            return;
        }
        if (mode == 4) {
            if (this.e) {
                this.e = false;
                g.sendPhase(4); /* was: 'c' */
                return;
            }
            return;
        }
        if (mode != 7) {
            if (mode != 8) {
                return;
            }
            h = true;
            if (p.f1806d) { /* was: 'p.f1806d' -> GlobalConfig.isRecording */
                this.f1416b.a(data, 20, length);
            }
            this.f1418d.processNalUnit(data, 20, length, pts); /* was: 'm' */
            return;
        }
        this.f1418d.handleResolutionChange(width, height); /* was: 't' */
        g.sendVideoSize(width, height); /* was: 'e' */
        s.c("BoxCarPlay,onDataOut: VideoSize=" + width + "x" + height);
        if (p.f1806d) { /* was: 'p.f1806d' -> GlobalConfig.isRecording */
            this.f1416b.b(width, height);
        }
    }

    /**
     * Send decoder reset request.
     * was: 'i'
     */
    public void sendDecoderReset /* was: 'i' */() {
        if (this.f1418d != null) {
            s.e("BoxCarPlay,sendDecoderReset: reset decoder");
            this.f1418d.resetDecoder(); /* was: 'q' */
        }
    }

    /**
     * Set surface for video rendering.
     * was: 'j'
     */
    public void setSurface /* was: 'j' */(SurfaceHolder surfaceHolder, boolean z) {
        s.c("BoxCarPlay,sendSurfaceAvailable:mRenderThread=" + this.f1418d);
        if (this.f1418d != null) {
            this.f1418d.setSurfaceHolder(surfaceHolder, z); /* was: 'z' */
            g.sendSurfaceState(1); /* was: 'd' */
        }
    }

    /**
     * Notify surface changed.
     * was: 'k'
     */
    public void surfaceChanged /* was: 'k' */(int format /* was: 'i2' */, int width /* was: 'i3' */, int height /* was: 'i4' */) {
        if (this.f1418d == null || this.f1418d.f1431c == null) {
            return;
        }
        this.f1418d.f1431c.sendSurfaceChanged(format, width, height); /* was: 'b' */
    }

    /**
     * Stop decoder and notify handler.
     * was: 'l'
     */
    public void stopDecoder /* was: 'l' */() {
        if (this.f1418d != null) {
            this.f1418d.surfaceDestroyedAndStop(); /* was: 'A' */
            g.sendSurfaceState(0); /* was: 'd' */
        }
    }

    /**
     * Start the service (sends start message via handler).
     * was: 'n'
     */
    public void startService /* was: 'n' */() {
        RenderHandler handler /* was: 'dVar' */ = g;
        if (handler != null) {
            handler.sendStartStop(true); /* was: 'b' */
        }
    }

    /**
     * RenderThread -- The core NAL unit state machine and frame dispatch thread.
     * Manages SPS/PPS caching, I-frame detection, surface lifecycle, and repeat-frame logic.
     * was: inner class 'f'
     */
    public static class RenderThread /* was: 'f' */ extends Thread {
        public static byte[] spsPpsCache; /* was: 'l' */
        public static byte[] iFrameCache; /* was: 'm' */
        public static boolean requestKeyframe; /* was: 'n' */
        public static boolean enableFrameCaching; /* was: 'o' */
        public static boolean spsPpsReceived; /* was: 'p' */

        /* was: 'f1430b' (renamed from 'b' by JADX) */
        private MediaCodecManager codecManager /* was: 'f1430b' */;

        /* was: 'f1431c' (renamed from 'c' by JADX) */
        private SurfaceHandler f1431c;

        /* was: 'f1432d' (renamed from 'd' by JADX) */
        private Surface surface /* was: 'f1432d' */;
        private int videoWidth /* was: 'e' */;
        private int videoHeight /* was: 'f' */;
        private ScheduledExecutorService keyframeScheduler /* was: 'i' */;
        private Timer repeatFrameTimer /* was: 'j' */;
        private Object lock /* was: 'g' */ = new Object();
        private boolean ready /* was: 'h' */ = false;
        public cn.manstep.phonemirrorBox.BoxInterface.h /* was: 'h' -- frame cache queue */ frameCache /* was: 'k' */ = new cn.manstep.phonemirrorBox.BoxInterface.h(320);

        /**
         * Runnable that requests a keyframe when not in soft-decode mode.
         * was: 'f.a'
         */
        class KeyframeRequestRunnable /* was: 'a' */ implements Runnable {
            KeyframeRequestRunnable(RenderThread renderThread /* was: 'fVar' */) {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (p.g) { /* was: 'p.g' -> GlobalConfig.useSoftDecode */
                    return;
                }
                cn.manstep.phonemirrorBox.v0.e.H(12);
                RenderThread.requestKeyframe = false;
            }
        }

        /**
         * TimerTask that sends screen off/on control commands to force a new keyframe.
         * was: 'f.C0076b' (inner class 'b', renamed by JADX due to collision)
         */
        static class ScreenToggleTask /* was: 'C0076b' */ extends TimerTask {
            ScreenToggleTask() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                if (VideoDecoder.h) {
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

        /**
         * TimerTask that triggers repeat-frame decoding after a short delay.
         * was: 'f.c'
         */
        class RepeatFrameTask /* was: 'c' */ extends TimerTask {
            RepeatFrameTask() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                synchronized (RenderThread.this.lock) {
                    RenderThread.this.decodeRepeatFrames(); /* was: 'n' */
                    RenderThread.this.repeatFrameTimer = null;
                }
            }
        }

        public RenderThread(FloatWindowManager floatMgr /* was: 'cVar' */) {
        }

        /**
         * Flush the surface to black using EGL (avoids showing last decoded frame).
         * was: 'k'
         */
        private void flushSurfaceBlack /* was: 'k' */(Surface surface) {
            try {
                d.a.a.b.b eglCore /* was: 'bVar' */ = new d.a.a.b.b(null, 1);
                try {
                    d.a.a.b.g eglSurface /* was: 'gVar' */ = new d.a.a.b.g(eglCore, surface, false);
                    eglSurface.d();
                    GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
                    GLES20.glClear(16384);
                    eglSurface.f();
                    eglSurface.g();
                    eglCore.g();
                } catch (Exception e) {
                    s.e(Log.getStackTraceString(e));
                }
            } catch (Exception e2) {
                s.e(Log.getStackTraceString(e2));
            }
        }

        /**
         * Decode repeat frames from cache to quickly restore display after surface recreation.
         * was: 'n'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void decodeRepeatFrames /* was: 'n' */() {
            cn.manstep.phonemirrorBox.q0.g connectionState /* was: 'gVarJ' */;
            cn.manstep.phonemirrorBox.BoxInterface.f protocol /* was: 'fVar' */ = cn.manstep.phonemirrorBox.BoxInterface.d.l; /* was: 'd.l' -> BoxInterface.boxProtocol */
            if (protocol == null || (connectionState = protocol.J() /* was: 'getConnectionState' */) == null) {
                return;
            }
            int minFrameCache /* was: 'iC' */ = connectionState.c();
            int repeatTimes /* was: 'iL' */ = connectionState.l(cn.manstep.phonemirrorBox.BoxInterface.f.R);
            s.d("BoxCarPlay", "decodeRepeatFrames: minFrameCache=" + minFrameCache + ", repeatTimes=" + repeatTimes + ", size=" + this.frameCache.f());
            if (connectionState.h() == 5 && u.z().L()) {
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, 5000, 6555);
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, 5000, 6555);
            }
            if (this.frameCache.f() >= minFrameCache) {
                if (this.codecManager != null) {
                    while (repeatTimes > 0 && this.codecManager.isBelowMinRenderFrameCount()) { /* was: 'x' */
                        for (int idx /* was: 'i' */ = 0; idx < this.frameCache.f(); idx++) {
                            byte[] frame /* was: 'bArr' */ = this.frameCache.a.get(idx);
                            this.codecManager.enqueueFrame(frame, 0, frame.length, this.frameCache.f1474b.get(idx).longValue()); /* was: 'A' */
                            try {
                                Thread.sleep(33L);
                            } catch (InterruptedException e) {
                                s.f("BoxCarPlay", "decodeRepeatFrames: " + s.g(e));
                            }
                        }
                        repeatTimes--;
                    }
                }
                enableFrameCaching = false;
            }
        }

        /**
         * No-op handler (placeholder for future use).
         * was: 'o'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void handleNoOp /* was: 'o' */() {
        }

        /**
         * Handle new texture dimensions (log only).
         * was: 'p'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void handleNewTexture /* was: 'p' */(int i, int i2) {
            s.c("newTexture " + i + " " + i2);
        }

        /**
         * Save SPS/PPS and I-frame data from an initial NAL unit containing both.
         * Splits at the I-frame start code and caches each part.
         * was: 's'
         */
        private void saveSpsPpsAndIframeData /* was: 's' */(byte[] bArr, int i, int i2, long j) {
            int endOffset /* was: 'i3' */;
            s.c("BoxCarPlay,saveSpsPpsIframeData: offset=" + i + ", len=" + i2 + " " + bArr.length);
            int pos /* was: 'i4' */ = i;
            while (true) {
                endOffset = i2 + i;
                if (pos < endOffset) {
                    if (bArr[pos] == 0 && bArr[pos + 1] == 0 && bArr[pos + 2] == 0 && bArr[pos + 3] == 1 && (bArr[pos + 4] & 31) == 5) {
                        s.c("BoxCarPlay,saveSpsPpsIframeData: I frame was found.");
                        break;
                    }
                    pos++;
                } else {
                    break;
                }
            }
            int spsPpsLen /* was: 'i5' */ = pos - i;
            int iFrameLen /* was: 'i6' */ = endOffset - pos;
            if (spsPpsLen > 0) {
                byte[] spsData /* was: 'bArr2' */ = new byte[spsPpsLen];
                spsPpsCache = spsData;
                System.arraycopy(bArr, i, spsData, 0, spsPpsLen);
                byte[] iFrameData /* was: 'bArr3' */ = new byte[iFrameLen];
                iFrameCache = iFrameData;
                System.arraycopy(bArr, i + spsPpsLen, iFrameData, 0, iFrameLen);
            }
            if (iFrameLen > 0) {
                cacheH264Frame(iFrameCache, 0, iFrameLen, j); /* was: 'r' */
            }
            s.c("BoxCarPlay,saveSpsPpsIframeData: spsppsDataLen :" + spsPpsLen);
            s.c("BoxCarPlay,saveSpsPpsIframeData: iframeDataLen :" + iFrameLen);
        }

        /**
         * Shutdown the render thread's looper.
         * was: 'u'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void shutdown /* was: 'u' */() {
            s.c("shutdown");
            if (Looper.myLooper() != null) {
                Looper.myLooper().quit();
            }
        }

        /**
         * Handle surface available event (currently no-op in decompiled code).
         * was: 'v'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void handleSurfaceAvailable /* was: 'v' */(SurfaceHolder surfaceHolder, boolean z) {
        }

        /**
         * Handle surface changed event (log only).
         * was: 'w'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void handleSurfaceChanged /* was: 'w' */(int width /* was: 'i' */, int height /* was: 'i2' */) {
            s.d("BoxCarPlay", "surfaceChanged: RenderThread surfaceChanged " + width + "x" + height);
        }

        /**
         * Handle surface destroyed event (log only).
         * was: 'x'
         */
        /* JADX INFO: Access modifiers changed from: private */
        public void handleSurfaceDestroyed /* was: 'x' */() {
            s.c("RenderThread surfaceDestroyed");
        }

        /**
         * Destroy surface and stop decoder, set requestKeyframe flag.
         * was: 'A'
         */
        public void surfaceDestroyedAndStop /* was: 'A' */() {
            s.c("RenderThread ask surfaceDestroyed");
            this.surface = null;
            stopDecoder(); /* was: 'l' */
            requestKeyframe = true;
        }

        /**
         * Stop and release the codec manager, shutdown keyframe scheduler.
         * was: 'l'
         */
        public void stopDecoder /* was: 'l' */() {
            synchronized (this.lock) {
                if (this.codecManager != null) {
                    s.e("BoxCarPlay,close decoder");
                    this.codecManager.releaseDecoder(); /* was: 'u' */
                    this.codecManager = null;
                }
                if (this.keyframeScheduler != null) {
                    this.keyframeScheduler.shutdown();
                    this.keyframeScheduler = null;
                }
            }
        }

        /**
         * Process a NAL unit -- the core state machine.
         * Handles SPS/PPS detection, I-frame caching, surface waiting,
         * decoder creation, and frame dispatch.
         * was: 'm'
         *
         * JADX decompiler warnings (preserved from original):
         *   WARN: Removed duplicated region for block: B:66:0x012b
         *   WARN: Removed duplicated region for block: B:69:0x0131
         *   WARN: Removed duplicated region for block: B:73:0x014d
         *   WARN: Removed duplicated region for block: B:93:0x0192
         *   Code decompiled incorrectly, please refer to instructions dump.
         */
        public void processNalUnit /* was: 'm' */(byte[] bArr, int i, int i2, long j) {
            if (!p.g /* was: 'p.g' -> GlobalConfig.useSoftDecode */ && this.surface == null && cn.manstep.phonemirrorBox.v0.e.C() /* was: 'canRequestPermission' */ && (bArr[i + 4] & 31) == 7) {
                int waitTime /* was: 'i3' */ = 300;
                while (this.surface == null) {
                    try {
                        Thread.sleep(10L);
                    } catch (InterruptedException e) {
                        s.e(Log.getStackTraceString(e));
                    }
                    waitTime -= 10;
                    if (waitTime <= 0) {
                        break;
                    }
                }
                if (p.i /* was: 'p.i' -> GlobalConfig.useTextureView */ && this.surface == null) {
                    this.surface = AutoBoxMirrorTextureView.getSurface();
                }
                if (this.surface == null) {
                    s.e("BoxCarPlay,decode: Can't wait surface available, need request key frame!!");
                    requestKeyframe = true;
                }
            }
            synchronized (this.lock) {
                int nalTypeOffset /* was: 'i4' */ = i + 4;
                if ((bArr[nalTypeOffset] & 31) == 7) {
                    spsPpsReceived = true;
                }
                if (this.keyframeScheduler != null) {
                    this.keyframeScheduler.shutdownNow();
                    this.keyframeScheduler = null;
                }
                if (!p.g) { /* was: 'p.g' -> GlobalConfig.useSoftDecode */
                    if (this.codecManager != null) {
                        if (this.codecManager == null) {
                            if (p.F > 0) { /* was: 'p.F' -> GlobalConfig.bufferFrameCount */
                                this.codecManager.enqueueFrame(bArr, i, i2, j); /* was: 'A' */
                            } else {
                                this.codecManager.decodeFrame(bArr, i, i2, j); /* was: 'v' */
                            }
                        } else if (this.surface != null) {
                            s.e("BoxCarPlay,decode: mdecoder = null, should request Key frame!!!!!!");
                            if (cn.manstep.phonemirrorBox.BoxInterface.d.s() != null && cn.manstep.phonemirrorBox.BoxInterface.d.s().d()) {
                                cn.manstep.phonemirrorBox.v0.e.H(12);
                            }
                        }
                        if (((cn.manstep.phonemirrorBox.BoxInterface.d.s() == null && cn.manstep.phonemirrorBox.BoxInterface.d.s().f()) || enableFrameCaching) && (bArr[nalTypeOffset] & 31) != 7 && (bArr[nalTypeOffset] & 31) != 8) {
                            cacheH264Frame(bArr, i, i2, j); /* was: 'r' */
                        }
                        if (enableFrameCaching && this.repeatFrameTimer == null) {
                            s.c("BoxCarPlay,decode: bNeedDecodeRepeatFrame=" + enableFrameCaching);
                            Timer timer = new Timer();
                            this.repeatFrameTimer = timer;
                            timer.schedule(new RepeatFrameTask(), 200L);
                        }
                    } else {
                        if ((bArr[nalTypeOffset] & 31) == 7 || (bArr[nalTypeOffset] & 31) == 8) {
                            s.c("BoxCarPlay,decode: RenderThread, is SPS PPS frame coming: mSurface=" + this.surface);
                            saveSpsPpsAndIframeData(bArr, i, i2, j); /* was: 's' */
                            if (this.surface != null && this.codecManager == null) {
                                MediaCodecManager newCodec /* was: 'c0074b' */ = new MediaCodecManager();
                                this.codecManager = newCodec;
                                newCodec.initDecoder(); /* was: 'z' */
                                this.codecManager.startDecoder(this.surface, this.videoWidth, this.videoHeight); /* was: 'B' */
                                enableFrameCaching = true;
                            }
                        } else if ((bArr[nalTypeOffset] & 31) == 5) {
                            s.c("BoxCarPlay,decode: RenderThread, is I frame coming: mSurface=" + this.surface);
                            if (this.surface != null && this.codecManager == null) {
                                if (spsPpsCache != null) {
                                    MediaCodecManager newCodec2 /* was: 'c0074b2' */ = new MediaCodecManager();
                                    this.codecManager = newCodec2;
                                    newCodec2.initDecoder(); /* was: 'z' */
                                    this.codecManager.startDecoder(this.surface, this.videoWidth, this.videoHeight); /* was: 'B' */
                                    this.codecManager.decodeWholeFrame(spsPpsCache, j); /* was: 'w' */
                                }
                                enableFrameCaching = true;
                            }
                        }
                        if (this.codecManager == null) {
                        }
                        if (cn.manstep.phonemirrorBox.BoxInterface.d.s() == null) {
                            cacheH264Frame(bArr, i, i2, j); /* was: 'r' */
                            if (enableFrameCaching) {
                                s.c("BoxCarPlay,decode: bNeedDecodeRepeatFrame=" + enableFrameCaching);
                                Timer timer2 = new Timer();
                                this.repeatFrameTimer = timer2;
                                timer2.schedule(new RepeatFrameTask(), 200L);
                            }
                        } else {
                            cacheH264Frame(bArr, i, i2, j); /* was: 'r' */
                            if (enableFrameCaching) {
                            }
                        }
                    }
                }
                if (this.codecManager == null) {
                    MediaCodecManager newCodec3 /* was: 'c0074b3' */ = new MediaCodecManager();
                    this.codecManager = newCodec3;
                    newCodec3.initDecoder(); /* was: 'z' */
                    this.codecManager.startDecoder(this.surface, this.videoWidth, this.videoHeight); /* was: 'B' */
                }
                this.codecManager.enqueueFrame(bArr, i, i2, j); /* was: 'A' */
            }
        }

        /**
         * Reset the decoder -- stops current decoder and schedules keyframe request.
         * was: 'q'
         */
        public void resetDecoder /* was: 'q' */() {
            if (this.surface == null || this.codecManager == null) {
                return;
            }
            stopDecoder(); /* was: 'l' */
            if (cn.manstep.phonemirrorBox.BoxInterface.d.l.J().d() && this.keyframeScheduler == null) {
                ScreenToggleTask screenToggle /* was: 'c0076b' */ = new ScreenToggleTask();
                ScheduledThreadPoolExecutor executor /* was: 'scheduledThreadPoolExecutor' */ = new ScheduledThreadPoolExecutor(1);
                this.keyframeScheduler = executor;
                executor.schedule(screenToggle, 500L, TimeUnit.MILLISECONDS);
            }
            new Handler().postDelayed(new KeyframeRequestRunnable(this), 100L);
        }

        /**
         * Cache H.264 frame data for repeat-frame decoding.
         * Clears cache on new I-frame.
         * was: 'r'
         */
        public void cacheH264Frame /* was: 'r' */(byte[] bArr, int i, int i2, long j) {
            if ((bArr[i + 4] & 31) == 5) {
                s.c("BoxCarPlay,saveH264Data:new I frame coming, clear cache :" + this.frameCache.f());
                this.frameCache.b();
            }
            byte[] copy /* was: 'bArr2' */ = new byte[i2];
            System.arraycopy(bArr, i, copy, 0, i2);
            this.frameCache.a(copy, j);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Process.setThreadPriority(-20);
            Looper.prepare();
            this.f1431c = new SurfaceHandler(this);
            synchronized (this.lock) {
                this.ready = true;
                this.lock.notify();
            }
            Looper.loop();
            stopDecoder(); /* was: 'l' */
        }

        /**
         * Handle resolution change -- stops decoder, clears cache, notifies listeners.
         * was: 't'
         */
        public void handleResolutionChange /* was: 't' */(int width /* was: 'i' */, int height /* was: 'i2' */) {
            s.c("BoxCarPlay,sendNewTexture: RenderThread VideoSize: " + width + "x" + height);
            this.videoWidth = width;
            this.videoHeight = height;
            stopDecoder(); /* was: 'l' */
            this.frameCache.b();
            cn.manstep.phonemirrorBox.BoxInterface.d.P(6, 501, new x(width, height));
            cn.manstep.phonemirrorBox.BoxInterface.d.O(1, 15);
        }

        /**
         * Wait for the render thread's looper to be ready.
         * was: 'y'
         */
        public void waitForReady /* was: 'y' */() {
            synchronized (this.lock) {
                while (!this.ready) {
                    try {
                        this.lock.wait();
                    } catch (InterruptedException unused) {
                    }
                }
            }
        }

        /**
         * Set surface holder -- handles surface creation, black flush, keyframe request,
         * and cached frame replay.
         * was: 'z'
         */
        public void setSurfaceHolder /* was: 'z' */(SurfaceHolder surfaceHolder, boolean z) {
            s.h("BoxCarPlay,waitforSurfaceAvailable:RenderThread ask SurfaceAvailable: Config.bUseTextureView = " + p.i);
            if (spsPpsReceived) {
                requestKeyframe = true;
            }
            if (p.i) { /* was: 'p.i' -> GlobalConfig.useTextureView */
                this.surface = AutoBoxMirrorTextureView.getSurface();
            } else if (surfaceHolder == null) {
                return;
            } else {
                this.surface = surfaceHolder.getSurface();
            }
            s.d("BoxCarPlay", "waitforSurfaceAvailable: surface=" + this.surface);
            if (Build.VERSION.SDK_INT >= 17 && !p.i) {
                flushSurfaceBlack(this.surface); /* was: 'k' */
                s.e("flush black surface, avoid show last frame");
            }
            synchronized (this.lock) {
                if (requestKeyframe) {
                    cn.manstep.phonemirrorBox.v0.e.H(12);
                    if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J() != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J().d() && this.keyframeScheduler == null) {
                        ScreenToggleTask screenToggle /* was: 'c0076b' */ = new ScreenToggleTask();
                        ScheduledThreadPoolExecutor executor /* was: 'scheduledThreadPoolExecutor' */ = new ScheduledThreadPoolExecutor(1);
                        this.keyframeScheduler = executor;
                        executor.schedule(screenToggle, 500L, TimeUnit.MILLISECONDS);
                    }
                    requestKeyframe = false;
                }
                if (cn.manstep.phonemirrorBox.BoxInterface.d.l != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J() != null && cn.manstep.phonemirrorBox.BoxInterface.d.l.J().f() && !this.frameCache.e() && this.codecManager == null) {
                    MediaCodecManager newCodec /* was: 'c0074b' */ = new MediaCodecManager();
                    this.codecManager = newCodec;
                    newCodec.initDecoder(); /* was: 'z' */
                    this.codecManager.startDecoder(this.surface, this.videoWidth, this.videoHeight); /* was: 'B' */
                    this.codecManager.decodeWholeFrame(spsPpsCache, 0L); /* was: 'w' */
                    for (int idx /* was: 'i' */ = 0; idx < this.frameCache.f(); idx++) {
                        byte[] frame /* was: 'bArr' */ = this.frameCache.a.get(idx);
                        this.codecManager.enqueueFrame(frame, 0, frame.length, this.frameCache.f1474b.get(idx).longValue()); /* was: 'A' */
                    }
                }
            }
        }

        public RenderThread() {
        }
    }
}
