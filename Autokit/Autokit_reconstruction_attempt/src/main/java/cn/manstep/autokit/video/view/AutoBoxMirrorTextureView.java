/**
 * AutoBoxMirrorTextureView.java
 *
 * TextureView-based video rendering surface -- used when GlobalConfig.useTextureView == true.
 * Preferred over the SurfaceView path on devices that need compositing with other UI layers
 * (e.g. overlays, transparent backgrounds).
 *
 * Key difference from AutoBoxMirrorView:
 *   - Caches the SurfaceTexture on destroy (returns false from onSurfaceTextureDestroyed)
 *     so the surface is not recreated on every fragment transition, reducing flicker.
 *   - Optionally uses an OpenGL render pipeline (UseOpenGLRender pref) via w0.b.
 *   - Posts a 3-second delayed "liveness check" after resize to detect decode stalls
 *     and restart the box connection if needed.
 *
 * Rendering pipeline:
 *   BoxConnection -> Surface (from SurfaceTexture) -> MediaCodec (hardware) -> this TextureView
 *   -- or --
 *   BoxConnection -> Surface (from OpenGL SurfaceTexture via w0.b) -> GL render -> this TextureView
 *
 * Touch handling is identical to AutoBoxMirrorView (scaled_left/scaled_top offset, 0-10000 norm).
 *
 * Original: cn.manstep.phonemirrorBox.AutoBoxMirrorTextureView
 */
package cn.manstep.autokit.video.view;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.ViewGroup;
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;

import cn.manstep.autokit.video.scaling.VideoScalingState;
import cn.manstep.autokit.video.scaling.VideoLayoutUtil;

public class AutoBoxMirrorTextureView extends TextureView implements d.g, TextureView.SurfaceTextureListener {

    /** Display surface width */
    private static int displayWidth;

    /** Display surface height */
    private static int displayHeight;

    /** Cached SurfaceTexture preserved across destroy/recreate cycles */
    private static SurfaceTexture cachedSurfaceTexture;

    /** SurfaceTexture used for OpenGL rendering path (separate from the main one) */
    private static SurfaceTexture glSurfaceTexture;

    /** The Surface currently bound to the decoder output */
    private static Surface decoderSurface;

    /** Weak reference to the BoxConnection interface */
    /* was: 'f1381b' */
    private WeakReference<d> boxConnection;

    /** Whether scaled dimensions need to be recalculated */
    /* was: 'f1382c' */
    private boolean needsScaleRecalculation;

    /** Whether to use OpenGL-based rendering (from UseOpenGLRender pref) */
    /* was: 'f1383d' */
    private boolean useGlRender;

    /** OpenGL render helper (w0.b) -- only non-null when useGlRender is true */
    private cn.manstep.phonemirrorBox.w0.b glRenderHelper;

    /** True if the device was unplugged (surface should be fully destroyed, not cached) */
    private boolean isPluggedOut;

    /** Shared scaling state for touch coordinate normalization and AA oversizing */
    private VideoScalingState scalingState;

    /** Frame counter for onSurfaceTextureUpdated -- used for decode liveness detection */
    private int frameCount;

    /** Whether video dimensions have changed and view needs resize */
    private boolean videoDimensionsChanged;

    /**
     * Runnable posted 3 seconds after resize to detect decode stalls.
     * If fewer than 2 frames have been rendered, restarts the box connection.
     */
    class DecodeLivenessCheck implements Runnable {
        DecodeLivenessCheck() {
        }

        @Override
        public void run() {
            if (AutoBoxMirrorTextureView.this.frameCount < 2) {
                if (d.l != null && cn.manstep.phonemirrorBox.BoxInterface.f.O) {
                    d.l.X0(); /* Restart box connection */
                }
                AutoBoxMirrorTextureView.this.frameCount = 4;
            }
        }
    }

    /**
     * Delayed resize runnable -- called 100ms after phase 15 (video frame ready),
     * to avoid resizing while soft-decode is still active.
     */
    class DelayedResize implements Runnable {
        DelayedResize() {
        }

        @Override
        public void run() {
            if (p.g) { /* GlobalConfig.useSoftDecode */
                return;
            }
            AutoBoxMirrorTextureView.this.resizeView(displayWidth, displayHeight);
        }
    }

    public AutoBoxMirrorTextureView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.needsScaleRecalculation = true;
        this.useGlRender = false;
        this.isPluggedOut = false;
        this.frameCount = 0;
        this.videoDimensionsChanged = false;
        init();
    }

    /**
     * Returns the current decoder Surface, which the box connection writes decoded frames to.
     */
    public static Surface getSurface() {
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorTextureView", "getSurface: surface=" + decoderSurface);
        return decoderSurface;
    }

    /**
     * Fully destroy the surface and notify the BoxConnection.
     * Called when the device is unplugged (isPluggedOut == true on texture destroy).
     */
    /* was: i() */
    private void destroySurface() {
        d dVar;
        cn.manstep.phonemirrorBox.util.s.e("AutoBoxMirrorTextureView,destroy: ######");
        decoderSurface = null;
        cachedSurfaceTexture = null;
        WeakReference<d> weakReference = this.boxConnection;
        if (weakReference == null || (dVar = weakReference.get()) == null) {
            return;
        }
        dVar.U(); /* Notify box that surface is gone */
    }

    /**
     * Initialize: apply rounded corners, optionally create GL render helper,
     * register texture listener, and create the scaling state.
     */
    /* was: j() */
    private void init() {
        VideoLayoutUtil.applyRoundedCorners(this);
        boolean useOpenGL = b0.i().o("UseOpenGLRender", false);
        this.useGlRender = useOpenGL;
        if (useOpenGL) {
            this.glRenderHelper = new cn.manstep.phonemirrorBox.w0.b();
        }
        setSurfaceTextureListener(this);
        this.scalingState = new VideoScalingState(this);
    }

    /**
     * Handle rotation change. Similar to AutoBoxMirrorView.onRotationChanged().
     */
    /* was: k(int, int) */
    private void onRotationChanged(int screenW, int screenH) {
        VideoScalingState state = this.scalingState;
        if (state.video_width <= 0 || state.video_height <= 0) {
            return;
        }
        if (screenW == 0 || screenH == 0) {
            screenW = p.k; /* GlobalConfig.screenWidth */
            screenH = p.l; /* GlobalConfig.screenHeight */
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,onRotationChanged: Screen:" + screenW + "x" + screenH
                + ", Video:" + this.scalingState.video_width + "x" + this.scalingState.video_height);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!d.u()) {
            VideoLayoutUtil.onRotationChanged(getContext(), layoutParams, screenW, screenH,
                    this.scalingState.video_width, this.scalingState.video_height);
            setLayoutParams(layoutParams);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: "
                + layoutParams.width + "x" + layoutParams.height);
    }

    /**
     * Store display size (called from AutoBoxMirrorView.setDisplaySize).
     */
    /* was: m(int, int) */
    public static void setDisplaySize(int w, int h) {
        displayWidth = w;
        displayHeight = h;
    }

    /**
     * BoxConnection phase callback (event 501 = video resolution).
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int eventType, Object obj) {
        if (eventType != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorTextureView,on_Box_Phase: ");
        cn.manstep.phonemirrorBox.util.x videoSize = (cn.manstep.phonemirrorBox.util.x) obj;
        sb.append(videoSize.toString());
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        setVideoWH(videoSize.f1934b, videoSize.f1935c);
    }

    /**
     * Resize the view to fit the current video dimensions.
     * After resize, posts a 3-second decode liveness check.
     */
    /* was: b(int, int) -- ReSizeView */
    public void resizeView(int screenW, int screenH) {
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorTextureView", "ReSizeView: Screen:" + screenW + "x" + screenH);
        if (getSurface() == null || !getSurface().isValid()) {
            return;
        }
        VideoScalingState state = this.scalingState;
        if (state.video_width <= 0 || state.video_height <= 0) {
            return;
        }
        if (screenW == 0 || screenH == 0) {
            screenW = p.k; /* GlobalConfig.screenWidth */
            screenH = p.l; /* GlobalConfig.screenHeight */
        }
        this.isPluggedOut = false;
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,ReSizeView: Screen:" + screenW + "x" + screenH
                + ", Video:" + this.scalingState.video_width + "x" + this.scalingState.video_height);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.videoDimensionsChanged) {
            if (!d.u()) {
                VideoLayoutUtil.resizeView(getContext(), layoutParams, screenW, screenH,
                        this.scalingState.video_width, this.scalingState.video_height);
                setLayoutParams(layoutParams);
            }
            this.videoDimensionsChanged = false;
        }
        if (d.u()) {
            /* Android Auto mode: oversize the surface */
            this.scalingState.resizeAndroidAutoView(this, screenW, screenH);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,ReSizeView: ViewGroup.LayoutParams: "
                + layoutParams.width + "x" + layoutParams.height);
        /* Post a 3-second decode liveness check */
        new Handler().postDelayed(new DecodeLivenessCheck(), 3000L);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
        /* Unused callback */
    }

    /**
     * Recalculate the scaled width/height for touch normalization.
     */
    /* was: d() -- RecaculateScaleWH */
    public void recalculateScaleWH() {
        if (displayWidth == 0 || displayHeight == 0) {
            setDisplaySize(getWidth(), getHeight());
            this.needsScaleRecalculation = true;
        } else {
            VideoScalingState state = this.scalingState;
            if (state.scaled_width == 0 || state.scaled_height == 0) {
                /* fall through to recalculate */
            }
        }
        if (this.needsScaleRecalculation) {
            int width = getWidth();
            int height = getHeight();
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,RecaculateScaleWH: "
                    + width + "x" + height + ", " + displayWidth + "x" + displayHeight);
            if (width <= 0) {
                width = displayWidth;
            }
            if (height <= 0) {
                height = displayHeight;
            }
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,RecaculateScaleWH: " + width + "," + height);
            VideoScalingState state = this.scalingState;
            state.scaled_width = width;
            state.scaled_height = height;
            state.scaled_left = 0;
            state.scaled_top = 0;
            this.needsScaleRecalculation = false;
        }
    }

    /**
     * Release the cached surface and notify the BoxConnection.
     * Called when switching GL render mode or on plug-out.
     */
    /* was: l() */
    public void releaseSurface() {
        d dVar;
        cachedSurfaceTexture = null;
        this.isPluggedOut = true;
        Surface surface = decoderSurface;
        if (surface != null) {
            surface.release();
            decoderSurface = null;
        }
        WeakReference<d> weakReference = this.boxConnection;
        if (weakReference == null || (dVar = weakReference.get()) == null) {
            return;
        }
        dVar.S(null, true);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        this.boxConnection = new WeakReference<>(dVar);
    }

    /**
     * Phase state machine callback. Controls visibility and triggers resize.
     * This view is only active when GlobalConfig.useTextureView (p.i) is true.
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int phase) {
        if (!p.i) { /* GlobalConfig.useTextureView -- if false, this view should not be visible */
            setVisibility(GONE);
            return;
        }
        if (phase != 2) {
            if (phase == 3) {
                if (p.g) { /* GlobalConfig.useSoftDecode */
                    setVisibility(INVISIBLE);
                } else {
                    setVisibility(VISIBLE);
                }
                cn.manstep.phonemirrorBox.BoxInterface.f fVar = d.l;
                if (fVar == null || fVar.J() == null || !d.l.J().i()) {
                    f.g(false);
                    return;
                } else {
                    f.b(false);
                    f.g(true);
                    return;
                }
            }
            if (phase != 12) {
                if (phase == 15) {
                    /* Phase 15: video frame ready -- schedule delayed resize */
                    cn.manstep.phonemirrorBox.util.j.c().e("ReSizeView", 100L, new DelayedResize());
                    return;
                } else {
                    if (phase != 500) {
                        return;
                    }
                    this.videoDimensionsChanged = true;
                    resizeView(displayWidth, displayHeight);
                    return;
                }
            }
        }
        /* phase 2 or 12: disconnected -- hide and reset */
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,on_Box_Phase: PLUG_OUT = " + phase);
        this.isPluggedOut = true;
        setVisibility(INVISIBLE);
        if (!p.g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1; /* MATCH_PARENT */
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
        f.g(false);
    }

    @Override // android.view.TextureView, android.view.View
    protected void onAttachedToWindow() {
        d boxInterface = cn.manstep.phonemirrorBox.v0.e.M(this);
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView onAttachedToWindow & boxInterface=" + boxInterface);
        this.boxConnection = new WeakReference<>(boxInterface);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != AutoBoxMirrorView.getOrientation()) {
            onRotationChanged(displayWidth, displayHeight);
        } else {
            this.videoDimensionsChanged = true;
            resizeView(displayWidth, displayHeight);
        }
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView onDetachedFromWindow");
        this.boxConnection = null;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    /**
     * Called when the SurfaceTexture becomes available. If a cached texture exists,
     * reuses it (no-recreate optimization). Otherwise creates a new Surface from the texture.
     * In Android Auto mode, positions the view at (0,0) and resizes for AA oversizing.
     */
    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int width, int height) {
        setDisplaySize(width, height);
        cn.manstep.phonemirrorBox.util.s.e("AutoBoxMirrorTextureView,onSurfaceTextureAvailable: touch set size="
                + width + "x" + height);
        this.needsScaleRecalculation = true;
        SurfaceTexture cached = cachedSurfaceTexture;
        if (cached != null) {
            /* Reuse the previously cached SurfaceTexture to avoid surface recreation */
            setSurfaceTexture(cached);
            if (this.useGlRender) {
                decoderSurface = new Surface(glSurfaceTexture);
                return;
            } else {
                decoderSurface = new Surface(cachedSurfaceTexture);
                return;
            }
        }
        if (d.u()) {
            /* Android Auto mode: position at origin and resize for AA oversizing */
            setX(CropImageView.DEFAULT_ASPECT_RATIO); /* 0.0f */
            setY(CropImageView.DEFAULT_ASPECT_RATIO);
            setLeft(0);
            setTop(0);
            this.scalingState.resizeAndroidAutoView(this, width, height);
        }
        if (this.useGlRender) {
            this.glRenderHelper.e(this, getContext());
            glSurfaceTexture = this.glRenderHelper.g();
            decoderSurface = new Surface(glSurfaceTexture);
        } else {
            decoderSurface = new Surface(surfaceTexture);
        }
        d dVar = this.boxConnection.get();
        if (dVar != null) {
            cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorTextureView",
                    "onSurfaceTextureAvailable: surface=" + decoderSurface);
            dVar.S(null, true);
        }
        cn.manstep.phonemirrorBox.w0.b glHelper = this.glRenderHelper;
        if (glHelper != null) {
            glHelper.h();
        }
    }

    /**
     * Called when the SurfaceTexture is about to be destroyed.
     * If the device was unplugged (isPluggedOut), fully destroys the surface.
     * Otherwise, CACHES the SurfaceTexture (returns false) to preserve it for reuse,
     * avoiding expensive surface recreation on fragment transitions.
     */
    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,onSurfaceTextureDestroyed: SurfaceTexture="
                + surfaceTexture + ", bPlugOut=" + this.isPluggedOut);
        if (this.isPluggedOut) {
            destroySurface();
            return true; /* Let the system release the texture */
        }
        cachedSurfaceTexture = surfaceTexture; /* Cache for reuse */
        return false; /* Prevent system from releasing */
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int width, int height) {
        d dVar = this.boxConnection.get();
        if (dVar == null) {
            return;
        }
        setDisplaySize(width, height);
        cn.manstep.phonemirrorBox.util.s.e("AutoBoxMirrorTextureView,onSurfaceTextureSizeChanged: touch set size="
                + width + "x" + height);
        this.needsScaleRecalculation = true;
        dVar.T(0, width, height);
        cn.manstep.phonemirrorBox.w0.b glHelper = this.glRenderHelper;
        if (glHelper != null) {
            glHelper.h();
        }
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        this.frameCount++;
    }

    /**
     * Touch event handler -- identical logic to AutoBoxMirrorView.onTouchEvent().
     * Normalizes coordinates to 0-10000 range after adjusting for scaled_left/scaled_top.
     */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (d.s() != null && d.s().a()) {
            recalculateScaleWH();
            VideoScalingState state = this.scalingState;
            return cn.manstep.phonemirrorBox.BoxInterface.e.b(motionEvent,
                    state.scaled_left, state.scaled_top, state.scaled_width, state.scaled_height);
        }
        if (d.s() != null && d.s().g()) {
            if (!d.u()) {
                recalculateScaleWH();
            }
            int adjustedX = ((int) motionEvent.getX()) - this.scalingState.scaled_left;
            int adjustedY = ((int) motionEvent.getY()) - this.scalingState.scaled_top;
            int scaledW = this.scalingState.scaled_width;
            int normalizedX = adjustedX > scaledW ? 10000 : adjustedX > 0 ? (adjustedX * 10000) / scaledW : 0;
            int scaledH = this.scalingState.scaled_height;
            int normalizedY = adjustedY <= scaledH ? adjustedY > 0 ? (adjustedY * 10000) / scaledH : 0 : 10000;
            int action = motionEvent.getAction() & 0xFF;
            if (action == 0) { /* ACTION_DOWN */
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, normalizedX, normalizedY);
                this.scalingState.scheduleMoveEvent(normalizedX, normalizedY);
            } else if (action == 1) { /* ACTION_UP */
                this.scalingState.cancelMoveEvent();
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, normalizedX, normalizedY);
                if (d.l.J().i()) {
                    f.b(false);
                }
            } else {
                if (action != 2) { /* Not ACTION_MOVE */
                    return super.onTouchEvent(motionEvent);
                }
                this.scalingState.cancelMoveEvent();
                cn.manstep.phonemirrorBox.v0.e.L(1, 0, normalizedX, normalizedY);
            }
        }
        return true;
    }

    /**
     * Forward a rendering command to the GL render helper (if present).
     */
    /* was: p(String, int) */
    public void sendGlCommand(String str, int i) {
        cn.manstep.phonemirrorBox.w0.b glHelper = this.glRenderHelper;
        if (glHelper != null) {
            glHelper.i(str, i);
        }
    }

    /**
     * Store the video resolution reported from the box.
     */
    /* was: q(int, int) -- setVideoWH */
    public void setVideoWH(int w, int h) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorTextureView,setVideoWH: " + w + "x" + h);
        VideoScalingState state = this.scalingState;
        state.video_width = w;
        state.video_height = h;
        this.videoDimensionsChanged = true;
    }

    /**
     * Toggle the GL render mode at runtime. Releases the current surface and re-initializes.
     */
    public void setUseGlRender(boolean z) {
        this.useGlRender = z;
        if (z && this.glRenderHelper == null) {
            this.glRenderHelper = new cn.manstep.phonemirrorBox.w0.b();
        }
        releaseSurface();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        /* Not used in TextureView path */
    }
}
