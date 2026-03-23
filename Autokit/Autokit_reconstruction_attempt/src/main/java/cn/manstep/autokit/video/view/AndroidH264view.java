/**
 * AndroidH264view.java
 *
 * Alternative, self-contained H.264 decoder + display view.
 * This is an older/simpler rendering path that bundles its own MediaCodec decoder
 * (inner class AvcDecoder) rather than relying on the BoxConnection's decoder pipeline.
 *
 * Rendering pipeline:
 *   BoxConnection -> v(byte[]) callback -> packet parsing (header at offset 0-36) ->
 *   AvcDecoder (inner class, MediaCodec "video/avc") -> this SurfaceView
 *
 * The view receives raw H.264 NAL units through the v(byte[]) callback, parses the
 * custom 36-byte header (little-endian: payload_size at +4, width at +8, height at +12,
 * codec_type at +24), and feeds frames to a private MediaCodec instance.
 *
 * Also includes a FrameCache (inner class) that stores SPS/PPS and recent I-frames
 * so that decoding can resume after a surface recreation without waiting for a new keyframe.
 *
 * Does not implement the touch-to-10000 normalization (onTouchEvent returns false).
 * Does not use VideoScalingState or VideoLayoutUtil -- computes its own FrameLayout params.
 *
 * Original: cn.manstep.phonemirrorBox.AndroidH264view
 */
package cn.manstep.autokit.video.view;

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
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */
import com.yalantis.ucrop.view.CropImageView;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.Vector;

public class AndroidH264view extends SurfaceView implements d.g, SurfaceHolder.Callback {

    /** Handler for switching between show/hide/reinit on the main thread */
    /* was: 'f1358b' */
    private Handler uiHandler;

    /** Video width reported by the box */
    /* was: 'f1359c' */
    private int videoWidth;

    /** Video height reported by the box */
    /* was: 'f1360d' */
    private int videoHeight;

    /** Calculated display width after aspect-ratio fitting */
    private int displayWidth;

    /** Calculated display height */
    private int displayHeight;

    /** Left margin for centering the video in the FrameLayout */
    private int marginLeft;

    /** Top margin (always 0 in current implementation) */
    private int marginTop;

    /** The self-contained AVC decoder (inner class) */
    private AvcDecoder decoder;

    /** Whether the surface is currently valid */
    private boolean surfaceValid;

    /** Frame cache for SPS/PPS and recent frames (for surface recreation) */
    private FrameCache frameCache;

    /**
     * Message constants for uiHandler:
     *   1 = hide view
     *   2 = reinit decoder and show view
     */
    private static final int MSG_HIDE = 1;
    private static final int MSG_REINIT = 2;

    /**
     * Handler that processes decoder lifecycle events on the main thread.
     */
    class UiHandler extends Handler {
        UiHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            synchronized (AndroidH264view.this) {
                if (MSG_REINIT == message.what) {
                    /* Recalculate display dimensions */
                    AndroidH264view.this.recalculateDisplaySize();
                    /* Stop and release the old decoder */
                    if (AndroidH264view.this.decoder != null) {
                        AndroidH264view.this.decoder.release();
                        AndroidH264view.this.decoder = null;
                    }
                    /* Create a new decoder if the surface is valid */
                    if (AndroidH264view.this.decoder == null && AndroidH264view.this.surfaceValid) {
                        AndroidH264view.this.decoder = new AvcDecoder();
                        AndroidH264view.this.decoder.initDecoder();
                        AndroidH264view.this.decoder.start(
                                AndroidH264view.this.getHolder().getSurface(),
                                AndroidH264view.this.videoWidth,
                                AndroidH264view.this.videoHeight);
                    }
                    AndroidH264view.this.notify();
                    AndroidH264view.this.setVisibility(VISIBLE);
                    AndroidH264view.this.invalidate();
                } else if (MSG_HIDE == message.what) {
                    AndroidH264view.this.setVisibility(GONE);
                    AndroidH264view.this.invalidate();
                }
            }
        }
    }

    public AndroidH264view(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.videoWidth = 0;
        this.videoHeight = 0;
        this.displayWidth = 0;
        this.displayHeight = 0;
        this.marginLeft = 0;
        this.marginTop = 0;
        this.decoder = null;
        this.surfaceValid = false;
        this.frameCache = new FrameCache();
        getHolder().addCallback(this);
        this.uiHandler = new UiHandler();
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264view B");
    }

    /**
     * Clear the surface to black using GLES20 (used on surface creation and decoder stop).
     */
    /* was: i(Surface) */
    private void clearSurface(Surface surface) {
        d.a.a.b.b eglHelper = new d.a.a.b.b(null, 1);
        d.a.a.b.g eglSurface = new d.a.a.b.g(eglHelper, surface, false);
        eglSurface.d(); /* makeCurrent */
        GLES20.glClearColor(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO,
                CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO);
        GLES20.glClear(GLES20.GL_COLOR_BUFFER_BIT); /* 16384 */
        eglSurface.f(); /* swapBuffers */
        eglSurface.g(); /* release */
        eglHelper.g(); /* release */
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        /* Not used in this path */
    }

    /**
     * Calculate the display dimensions by fitting the video aspect ratio into the screen.
     * Sets the FrameLayout params with left margin to center the video.
     */
    /* was: b() */
    public void recalculateDisplaySize() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        if (Build.VERSION.SDK_INT >= 17) {
            windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        } else {
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        int screenW = displayMetrics.widthPixels;
        int screenH = displayMetrics.heightPixels;
        /* Fit video width to screen, maintaining aspect ratio.
           Mask with 0xFFFE (65534) to ensure even pixel dimensions (required by many codecs). */
        int fitWidth = videoWidth > videoHeight
                ? screenW
                : ((int) ((screenH * videoWidth) / videoHeight)) & 65534;
        cn.manstep.phonemirrorBox.util.s.e("H264 caculate_W = " + fitWidth + ", caculate_H = " + screenH);
        this.displayWidth = fitWidth;
        this.displayHeight = screenH;
        this.marginLeft = (screenW - fitWidth) / 2;
        this.marginTop = (screenH - screenH) / 2; /* Always 0 -- kept as-is from original */
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.displayWidth, this.displayHeight);
        layoutParams.setMargins(this.marginLeft, this.marginTop, 0, 0);
        setLayoutParams(layoutParams);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
        /* Unused callback */
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        /* No-op: this view does not use the BoxConnection reference */
    }

    /**
     * Phase state machine callback.
     *   0, 12 = plug out -> stop decoder, clear surface, hide view
     *   1     = show view
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int phase) {
        if (phase != 0) {
            if (phase == 1) {
                setVisibility(VISIBLE);
                return;
            } else if (phase != 12) {
                return;
            }
        }
        /* Plug out / disconnect */
        cn.manstep.phonemirrorBox.util.s.e("on_Android_Parse Plug out");
        synchronized (this) {
            this.videoWidth = 0;
            this.videoHeight = 0;
            if (this.decoder != null) {
                this.decoder.release();
                this.decoder = null;
                if (this.surfaceValid) {
                    clearSurface(getHolder().getSurface());
                }
            }
            this.frameCache.clear();
        }
        setVisibility(INVISIBLE);
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
        this.videoWidth = 0;
        this.videoHeight = 0;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        /* Touch not handled in this view -- returns false to let parent consume */
        return false;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int format, int width, int height) {
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264View surfaceChanged:" + surfaceHolder
                + "(" + width + ":" + height + ")");
    }

    /**
     * On surface creation, clear to black, mark surface valid, and if there are
     * cached frames (SPS/PPS + I-frames), immediately reinitialize the decoder
     * and feed the cached data so that video resumes without waiting for a new keyframe.
     */
    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        synchronized (this) {
            clearSurface(surfaceHolder.getSurface());
            this.surfaceValid = true;
            int cachedFrameCount = this.frameCache.getCachedFrameCount();
            cn.manstep.phonemirrorBox.util.s.c("AndroidH264View surfaceCreated:" + surfaceHolder
                    + " h264CacheFrameNum:" + cachedFrameCount);
            if (cachedFrameCount > 0 && this.decoder == null) {
                AvcDecoder newDecoder = new AvcDecoder();
                this.decoder = newDecoder;
                newDecoder.initDecoder();
                this.decoder.start(getHolder().getSurface(), this.videoWidth, this.videoHeight);
                /* Feed SPS/PPS header first */
                this.decoder.feedFrame(this.frameCache.spsData, 0, this.frameCache.spsData.length);
                /* Then feed all cached frames */
                for (int i = 0; i < this.frameCache.cachedFrames.size(); i++) {
                    byte[] frame = this.frameCache.cachedFrames.get(i);
                    this.decoder.feedFrame(frame, 0, frame.length);
                }
            }
        }
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        cn.manstep.phonemirrorBox.util.s.c("AndroidH264View surfaceDestroyed:" + surfaceHolder);
        synchronized (this) {
            this.surfaceValid = false;
            if (this.decoder != null) {
                this.decoder.release();
                this.decoder = null;
            }
        }
    }

    /**
     * Receive raw H.264 data from the box.
     *
     * Packet format (little-endian):
     *   +0:  int  -- unknown
     *   +4:  int  -- total size (subtract 36 for payload)
     *   +8:  int  -- video width
     *   +12: int  -- video height
     *   +24: int  -- codec type (high byte: 1 = H.264)
     *   +32: byte[]  -- H.264 NAL unit payload
     *
     * If codec type != 1 (not H.264), hides the view.
     * If width/height changed, reinitializes the decoder on the main thread.
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        ByteBuffer buf = ByteBuffer.wrap(bArr);
        buf.order(ByteOrder.LITTLE_ENDIAN);
        int payloadSize = buf.getInt(4) - 36;
        int width = buf.getInt(8);
        int height = buf.getInt(12);
        if (((buf.getInt(24) >> 16) & 0xFF) != 1) {
            /* Not H.264 -- hide view */
            synchronized (this) {
                this.uiHandler.sendMessage(this.uiHandler.obtainMessage(MSG_HIDE));
            }
            return;
        }
        if (payloadSize <= 0 || width <= 0 || height <= 0 || width > 2000 || height > 2000) {
            cn.manstep.phonemirrorBox.util.s.c("Error bytes:" + bArr.length
                    + "W:" + width + "H:" + height + "h264size:" + payloadSize);
            return;
        }
        if (this.videoWidth != width || this.videoHeight != height) {
            /* Resolution changed -- reinit decoder on main thread */
            cn.manstep.phonemirrorBox.util.s.c("W:" + width + "H:" + height);
            this.videoWidth = width;
            this.videoHeight = height;
            synchronized (this) {
                this.uiHandler.sendMessage(this.uiHandler.obtainMessage(MSG_REINIT));
                try {
                    wait();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                }
            }
        }
        synchronized (this) {
            if (this.decoder != null) {
                this.decoder.feedFrame(buf.array(), 32, payloadSize);
            }
            this.frameCache.cacheFrame(buf.array(), 32, payloadSize);
        }
    }

    // ========================================================================
    // Inner class: FrameCache
    // Stores SPS/PPS data and recent H.264 frames for fast decoder restart.
    // ========================================================================

    /**
     * Caches SPS/PPS headers and recent H.264 NAL units so decoding can resume
     * after a surface recreation without waiting for a new keyframe from the box.
     */
    /* was: inner class 'c' */
    private static class FrameCache {
        /** SPS/PPS parameter set data */
        public byte[] spsData;

        /** Cached NAL unit frames (cleared on each new I-frame) */
        /* was: 'f1366b' */
        public Vector<byte[]> cachedFrames;

        private FrameCache() {
            this.cachedFrames = new Vector<>(320);
        }

        /**
         * Parse the NAL units to separate SPS/PPS from I-frame data.
         * Scans forward from offset to find the start of the IDR slice (NAL type 5).
         */
        /* was: d(byte[], int, int) */
        private void parseSpsAndIFrame(byte[] data, int offset, int length) {
            this.cachedFrames.clear();
            int pos = offset;
            /* Search for NAL start code 00 00 00 01 followed by NAL type 5 (IDR) */
            while (pos < length
                    && (data[pos] != 0 || data[pos + 1] != 0 || data[pos + 2] != 0
                    || data[pos + 3] != 1 || (data[pos + 4] & 31) != 5)) {
                pos++;
            }
            int spsLength = pos - offset;
            if (spsLength > 0) {
                byte[] sps = new byte[spsLength];
                this.spsData = sps;
                System.arraycopy(data, offset, sps, 0, spsLength);
                int iFrameLength = length - spsLength;
                byte[] iFrame = new byte[iFrameLength];
                System.arraycopy(data, pos, iFrame, 0, iFrameLength);
                this.cachedFrames.add(iFrame);
            }
            cn.manstep.phonemirrorBox.util.s.c("spsppsDataLen :" + spsLength
                    + " I frame len: " + (length - spsLength));
        }

        /**
         * Returns the number of cached frames (0 if no SPS/PPS has been seen).
         */
        /* was: a() */
        public int getCachedFrameCount() {
            if (this.spsData != null) {
                return this.cachedFrames.size();
            }
            return 0;
        }

        /**
         * Clear all cached data (on disconnect or resolution change).
         */
        /* was: b() */
        public void clear() {
            this.spsData = null;
            this.cachedFrames.clear();
        }

        /**
         * Add a frame to the cache. SPS/PPS frames (NAL type 7/8) trigger a full
         * re-parse; IDR frames (NAL type 5) clear previous cached frames.
         */
        /* was: c(byte[], int, int) */
        public void cacheFrame(byte[] data, int offset, int length) {
            int nalType = data[offset + 4] & 31;
            if (nalType == 7 || nalType == 8) {
                /* SPS or PPS NAL -- save and parse */
                cn.manstep.phonemirrorBox.util.s.c("is SPS PPS frame coming, save it!!");
                parseSpsAndIFrame(data, offset, length);
                return;
            }
            if (nalType == 5) {
                /* IDR frame -- clear old cached frames */
                cn.manstep.phonemirrorBox.util.s.c("new I frame coming, clear cache :" + this.cachedFrames.size());
                this.cachedFrames.clear();
            }
            byte[] copy = new byte[length];
            System.arraycopy(data, offset, copy, 0, length);
            this.cachedFrames.add(copy);
        }
    }

    // ========================================================================
    // Inner class: AvcDecoder
    // Self-contained MediaCodec H.264 decoder with input/output threading.
    // ========================================================================

    /**
     * Self-contained MediaCodec-based AVC (H.264) decoder.
     * Manages its own input and output threads for asynchronous decode + render.
     *
     * Input thread: dequeues input buffers and feeds NAL data.
     * Output/render thread: dequeues decoded output buffers and releases to surface,
     * with frame-dropping logic based on timestamp comparisons (see p.D threshold).
     */
    /* was: inner class 'b' */
    private static class AvcDecoder {
        boolean running;

        /* was: 'f1361b' */
        MediaCodec.BufferInfo bufferInfo;

        /** Total number of frames queued to the decoder */
        /* was: 'f1362c' */
        private long totalFramesQueued;

        /** The MediaCodec instance */
        /* was: 'f1363d' */
        private MediaCodec mediaCodec;

        /** Synchronization lock for the frame queue */
        private Object queueLock;

        /** Queue of raw frame byte arrays waiting to be fed to the decoder */
        private Vector<byte[]> frameQueue;

        /** Input feeder thread */
        private Thread inputThread;

        /** Timestamp of the first frame (base for presentation timestamps) */
        private long firstFrameTime;

        /** Timestamp of the first decoded output */
        private long firstOutputTime;

        /** Counter of decoded output frames */
        private long decodedFrameCount;

        /** Output/render thread */
        private Thread renderThread;

        /** Presentation time list for frame-drop decisions */
        private List<Long> presentationTimes;

        /** Timer (unused in current implementation but preserved) */
        private Timer timer;

        /**
         * Input feeder runnable: pulls frames from the queue and submits to the decoder.
         * Waits 33ms (one frame at 30fps) when the queue has fewer than p.F (buffer threshold) entries.
         */
        /* was: inner class 'a' */
        class InputFeeder implements Runnable {
            InputFeeder() {
            }

            @Override
            public void run() {
                while (true) {
                    AvcDecoder dec = AvcDecoder.this;
                    if (!dec.running) {
                        return;
                    }
                    synchronized (dec.queueLock) {
                        if (!AvcDecoder.this.frameQueue.isEmpty()) {
                            if (AvcDecoder.this.frameQueue.size() > 20) {
                                cn.manstep.phonemirrorBox.util.s.e("buffer frame cnt = "
                                        + AvcDecoder.this.frameQueue.size());
                            }
                            AvcDecoder.this.decodeFrame(
                                    (byte[]) AvcDecoder.this.frameQueue.firstElement());
                            AvcDecoder.this.frameQueue.remove(0);
                        }
                        if (AvcDecoder.this.running) {
                            try {
                                if (AvcDecoder.this.frameQueue.size() <= p.F) {
                                    AvcDecoder.this.queueLock.wait(33L);
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

        /**
         * Output render runnable: dequeues decoded buffers and releases them to the surface.
         * Drops frames that arrive too early (timestamp < p.D threshold) to maintain sync.
         * Runs at high priority (-19 = THREAD_PRIORITY_URGENT_AUDIO).
         */
        /* was: inner class 'RunnableC0071b' */
        class OutputRenderer implements Runnable {
            OutputRenderer() {
            }

            @Override
            public void run() {
                long expectedTime;
                Process.setThreadPriority(-19); /* THREAD_PRIORITY_URGENT_AUDIO */
                while (true) {
                    AvcDecoder dec = AvcDecoder.this;
                    if (!dec.running) {
                        return;
                    }
                    int outputIndex = dec.mediaCodec.dequeueOutputBuffer(
                            AvcDecoder.this.bufferInfo, 100000L);
                    do {
                        if (outputIndex != -1 && outputIndex != -3) {
                            if (outputIndex == -2) {
                                /* Output format changed -- log it */
                                MediaFormat outputFormat = AvcDecoder.this.mediaCodec.getOutputFormat();
                                String msg = "onOutputFormatChanged: " + outputFormat.getInteger("color-format")
                                        + ",size: " + outputFormat.getInteger("width")
                                        + "x" + outputFormat.getInteger("height");
                                /* UNCERTAIN: original code has dead local variable */
                            } else if (outputIndex >= 0) {
                                if (AvcDecoder.this.decodedFrameCount == 0) {
                                    AvcDecoder.this.firstOutputTime = SystemClock.uptimeMillis();
                                    /* Decode latency = firstOutputTime - firstFrameTime */
                                    String msg = "decode latency: "
                                            + (AvcDecoder.this.firstOutputTime - AvcDecoder.this.firstFrameTime);
                                }
                                AvcDecoder.this.decodedFrameCount++;
                                long elapsed = SystemClock.uptimeMillis() - AvcDecoder.this.firstOutputTime;
                                synchronized (AvcDecoder.this.presentationTimes) {
                                    if (AvcDecoder.this.presentationTimes.size() > 0) {
                                        expectedTime = AvcDecoder.this.presentationTimes.get(0);
                                        AvcDecoder.this.presentationTimes.remove(0);
                                    } else {
                                        expectedTime = elapsed;
                                    }
                                }
                                if (expectedTime < p.D) {
                                    /* Frame arrived too early -- drop it */
                                    AvcDecoder.this.mediaCodec.releaseOutputBuffer(outputIndex, false);
                                    cn.manstep.phonemirrorBox.util.s.f("AvcDecoder",
                                            "drop frames:" + AvcDecoder.this.decodedFrameCount);
                                } else if (elapsed > 1000 + expectedTime) {
                                    /* Frame is late but still render it */
                                    AvcDecoder.this.mediaCodec.releaseOutputBuffer(outputIndex, true);
                                    cn.manstep.phonemirrorBox.util.s.f("AvcDecoder",
                                            "late frame: " + AvcDecoder.this.decodedFrameCount
                                                    + ", late timestamp: " + (elapsed - expectedTime));
                                } else {
                                    /* Normal render */
                                    AvcDecoder.this.mediaCodec.releaseOutputBuffer(outputIndex, true);
                                }
                                outputIndex = AvcDecoder.this.mediaCodec.dequeueOutputBuffer(
                                        AvcDecoder.this.bufferInfo, 0L);
                            }
                        }
                    } while (outputIndex >= 0);
                }
            }
        }

        private AvcDecoder() {
            this.running = false;
            this.bufferInfo = new MediaCodec.BufferInfo();
            this.totalFramesQueued = 0L;
            this.mediaCodec = null;
            this.queueLock = new Object();
            this.inputThread = null;
            this.firstFrameTime = 0L;
            this.firstOutputTime = 0L;
            this.decodedFrameCount = 0L;
            this.renderThread = null;
            this.presentationTimes = new ArrayList();
            this.timer = null;
        }

        /**
         * Release the MediaCodec and stop all threads.
         */
        /* was: o() */
        private void release() {
            try {
                if (this.mediaCodec != null) {
                    cn.manstep.phonemirrorBox.util.s.c("release mediaCodec ----" + this.mediaCodec);
                    stop();
                    this.mediaCodec.release();
                    this.mediaCodec = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
                cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
            }
        }

        /**
         * Decode a single frame (direct path, no queue).
         */
        /* was: p(byte[]) */
        private void decodeFrame(byte[] data) {
            decodeFrameRange(data, 0, data.length);
        }

        /**
         * Submit frame data to the MediaCodec input buffer.
         */
        /* was: q(byte[], int, int) */
        private void decodeFrameRange(byte[] data, int offset, int length) {
            long presentationTime;
            if (this.running) {
                if (this.totalFramesQueued == 0) {
                    this.firstFrameTime = SystemClock.uptimeMillis();
                    presentationTime = 0;
                } else {
                    presentationTime = SystemClock.uptimeMillis() - this.firstFrameTime;
                }
                boolean queued = false;
                while (!queued) {
                    try {
                        if (!this.running) {
                            return;
                        }
                        int inputIndex = this.mediaCodec.dequeueInputBuffer(100000L);
                        if (inputIndex >= 0) {
                            ByteBuffer buffer = this.mediaCodec.getInputBuffers()[inputIndex];
                            buffer.clear();
                            buffer.put(data, offset, length);
                            this.mediaCodec.queueInputBuffer(inputIndex, 0, length,
                                    presentationTime * 1000, 0);
                            if (this.totalFramesQueued == 0) {
                                this.presentationTimes.clear();
                                this.renderThread.start();
                            }
                            this.totalFramesQueued++;
                            synchronized (this.presentationTimes) {
                                this.presentationTimes.add(Long.valueOf(presentationTime));
                            }
                            queued = true;
                        } else {
                            cn.manstep.phonemirrorBox.util.s.f("AvcDecoder",
                                    "Get decoder inputBuffer error: " + inputIndex);
                        }
                    } catch (Throwable th) {
                        th.printStackTrace();
                        cn.manstep.phonemirrorBox.util.s.c("inputBufferIndex Error");
                        return;
                    }
                }
            }
        }

        /**
         * Create the MediaCodec decoder for "video/avc".
         */
        /* was: r() */
        private void initDecoder() {
            try {
                MediaCodec codec = MediaCodec.createDecoderByType("video/avc");
                this.mediaCodec = codec;
                if (codec == null) {
                    cn.manstep.phonemirrorBox.util.s.e("mediaCodec ----NULL");
                }
                cn.manstep.phonemirrorBox.util.s.c("initDecodeMediaCodec ----- video/avc");
                cn.manstep.phonemirrorBox.util.s.c("mediaCodec ----" + this.mediaCodec);
            } catch (IOException e) {
                e.printStackTrace();
                cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
            }
        }

        /**
         * Feed a frame to the decoder. If buffering is enabled (p.F > 0), queues
         * the frame and wakes the input thread. Otherwise decodes immediately.
         */
        /* was: s(byte[], int, int) */
        private void feedFrame(byte[] data, int offset, int length) {
            if (p.F <= 0) {
                /* No buffering -- decode immediately */
                decodeFrameRange(data, offset, length);
                return;
            }
            byte[] copy = new byte[length];
            System.arraycopy(data, offset, copy, 0, length);
            synchronized (this.queueLock) {
                this.frameQueue.add(copy);
                if (this.frameQueue.size() > p.F) {
                    this.queueLock.notifyAll();
                }
            }
        }

        /**
         * Configure and start the MediaCodec with the given surface and resolution.
         * Spawns the input feeder thread and prepares the render thread.
         */
        /* was: t(Surface, int, int) */
        private void start(Surface surface, int width, int height) {
            if (this.running || width <= 0 || height <= 0) {
                return;
            }
            synchronized (this.queueLock) {
                if (this.mediaCodec != null) {
                    cn.manstep.phonemirrorBox.util.s.c("AvcDecoder start:" + width + "-" + height);
                    this.frameQueue = new Vector<>(320);
                    this.mediaCodec.configure(
                            MediaFormat.createVideoFormat("video/avc", width, height),
                            surface, (MediaCrypto) null, 0);
                    this.mediaCodec.start();
                    this.running = true;
                    Thread feederThread = new Thread(new InputFeeder(), "hdv");
                    this.inputThread = feederThread;
                    if (p.F > 0) {
                        feederThread.start();
                    }
                    this.decodedFrameCount = 0L;
                    this.renderThread = new Thread(new OutputRenderer(), "render");
                }
            }
        }

        /**
         * Stop the decoder: signal threads to exit, join them, flush and stop MediaCodec.
         */
        /* was: u() */
        private void stop() {
            if (this.running) {
                cn.manstep.phonemirrorBox.util.s.c("AvcDecoder stop");
                this.totalFramesQueued = 0L;
                this.running = false;
                try {
                    this.inputThread.join();
                    this.renderThread.join();
                } catch (InterruptedException e) {
                    e.printStackTrace();
                    cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                }
                this.mediaCodec.flush();
                this.mediaCodec.stop();
            }
            Timer t = this.timer;
            if (t != null) {
                t.cancel();
            }
            this.timer = null;
        }
    }
}
