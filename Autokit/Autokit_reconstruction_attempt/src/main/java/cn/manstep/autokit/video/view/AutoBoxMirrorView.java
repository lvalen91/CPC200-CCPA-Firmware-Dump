/**
 * AutoBoxMirrorView.java
 *
 * SurfaceView-based video rendering surface -- the default rendering path.
 * Used when neither GlobalConfig.useTextureView nor GlobalConfig.useSoftDecode is enabled.
 *
 * Rendering pipeline:
 *   BoxConnection -> SurfaceHolder.Callback -> MediaCodec (hardware decode) -> this SurfaceView
 *
 * Touch handling:
 *   Raw touch coordinates are adjusted by VideoScalingState.scaled_left / scaled_top offsets,
 *   then normalized to the 0-10000 range (CarPlay/Android Auto protocol coordinate space)
 *   before being forwarded to the box via BoxEventDispatcher.L().
 *
 * Orientation changes trigger either onRotationChanged (layout reset) or resizeView (scaling).
 * When the box is in Android Auto mode (BoxConnection.u()), the view delegates to
 * VideoScalingState.resizeAndroidAutoView() for oversized-surface rendering.
 *
 * Original: cn.manstep.phonemirrorBox.AutoBoxMirrorView
 */
package cn.manstep.autokit.video.view;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */
import java.lang.ref.WeakReference;

import cn.manstep.autokit.video.scaling.VideoScalingState;
import cn.manstep.autokit.video.scaling.VideoLayoutUtil;

public class AutoBoxMirrorView extends SurfaceView implements d.g, SurfaceHolder.Callback {

    /** Whether scaled dimensions need to be recalculated on next touch */
    private static boolean needsScaleRecalculation = true;

    /** Display surface width (set by surfaceChanged or setDisplaySize) */
    private static int displayWidth;

    /** Display surface height */
    private static int displayHeight;

    /** Cached orientation value for rotation change detection */
    private static int orientation;

    /** Weak reference to the BoxConnection interface */
    /* was: 'f1386b' */
    private WeakReference<d> boxConnection;

    /** Shared scaling state for touch coordinate normalization and AA oversizing */
    /* was: 'f1387c' */
    private VideoScalingState scalingState;

    /** Flag indicating that video dimensions have changed and view needs resize */
    /* was: 'f1388d' */
    private boolean videoDimensionsChanged;

    public AutoBoxMirrorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.videoDimensionsChanged = false;
        init();
    }

    /**
     * Initialize the view: apply rounded corners, register surface callback,
     * and create the shared VideoScalingState.
     */
    /* was: e() */
    private void init() {
        VideoLayoutUtil.applyRoundedCorners(this);
        getHolder().addCallback(this);
        this.scalingState = new VideoScalingState(this);
    }

    /**
     * Handle rotation change: recalculate layout params to fit the new screen orientation.
     * Falls back to screen dimensions from GlobalConfig if provided values are 0.
     * Skipped entirely if in Android Auto mode (BoxConnection.u()).
     */
    /* was: f(int, int) */
    private void onRotationChanged(int screenW, int screenH) {
        VideoScalingState state = this.scalingState;
        if (state.video_width <= 0 || state.video_height <= 0) {
            return;
        }
        if (screenW == 0 || screenH == 0) {
            screenW = p.k; /* GlobalConfig.screenWidth */
            screenH = p.l; /* GlobalConfig.screenHeight */
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onRotationChanged: Screen:" + screenW + "x" + screenH
                + ", Video:" + this.scalingState.video_width + "x" + this.scalingState.video_height);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (!d.u()) {
            /* Not Android Auto mode -- use standard rotation-based layout */
            VideoLayoutUtil.onRotationChanged(getContext(), layoutParams, screenW, screenH,
                    this.scalingState.video_width, this.scalingState.video_height);
            setLayoutParams(layoutParams);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onRotationChanged: ViewGroup.LayoutParams: "
                + layoutParams.width + "x" + layoutParams.height);
    }

    /**
     * Propagate display size to all view types (TextureView, SoftView).
     * Called externally when the head unit display resolution changes.
     */
    /* was: g(int, int) */
    public static void setDisplaySize(int w, int h) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,setDisplaySize: w=" + w + ", h=" + h);
        displayWidth = w;
        displayHeight = h;
        if (p.i) { /* GlobalConfig.useTextureView */
            AutoBoxMirrorTextureView.setDisplaySize(w, h);
        }
        if (p.g) { /* GlobalConfig.useSoftDecode */
            AutoBoxMirrorSoftView.setDisplaySize(w, h);
        }
    }

    public static int getOrientation() {
        return orientation;
    }

    public static void setOrientation(int orient) {
        orientation = orient;
    }

    /**
     * BoxConnection phase callback (event 501 = video resolution reported by box).
     * Extracts width/height from the payload and calls setVideoWH().
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int eventType, Object obj) {
        if (eventType != 501) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AutoBoxMirrorView,on_Box_Phase: ");
        cn.manstep.phonemirrorBox.util.x videoSize = (cn.manstep.phonemirrorBox.util.x) obj;
        sb.append(videoSize.toString());
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        setVideoWH(videoSize.f1934b, videoSize.f1935c);
    }

    /**
     * Resize the view to fit the current video dimensions within the given screen area.
     * If videoDimensionsChanged is set, recalculates layout via VideoLayoutUtil.resizeView().
     * In Android Auto mode, delegates to VideoScalingState.resizeAndroidAutoView().
     */
    /* was: b(int, int) -- ReSizeView */
    public void resizeView(int screenW, int screenH) {
        VideoScalingState state = this.scalingState;
        if (state.video_width <= 0 || state.video_height <= 0) {
            return;
        }
        if (screenW == 0 || screenH == 0) {
            screenW = p.k; /* GlobalConfig.screenWidth */
            screenH = p.l; /* GlobalConfig.screenHeight */
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,ReSizeView: Screen:" + screenW + "x" + screenH
                + ", Video:" + this.scalingState.video_width + "x" + this.scalingState.video_height);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (this.videoDimensionsChanged) {
            if (!d.u()) {
                /* Standard (non-AA) path: apply ImageScale preference */
                VideoLayoutUtil.resizeView(getContext(), layoutParams, screenW, screenH,
                        this.scalingState.video_width, this.scalingState.video_height);
                setLayoutParams(layoutParams);
            }
            this.videoDimensionsChanged = false;
        }
        if (d.u()) {
            /* Android Auto mode: oversize the surface to show the full AA viewport */
            this.scalingState.resizeAndroidAutoView(this, screenW, screenH);
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,ReSizeView: ViewGroup.LayoutParams: "
                + layoutParams.width + "x" + layoutParams.height);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
        /* Unused callback */
    }

    /**
     * Recalculate the scaled width/height used for touch coordinate normalization.
     * Uses the view's actual dimensions, falling back to the stored display size.
     * Only runs once (until needsScaleRecalculation is set true again).
     */
    /* was: d() -- RecaculateScaleWH */
    public void recalculateScaleWH() {
        if (needsScaleRecalculation) {
            int width = getWidth();
            int height = getHeight();
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,RecaculateScaleWH: "
                    + width + "x" + height + ", " + displayWidth + "x" + displayHeight);
            if (width <= 0) {
                width = displayWidth;
            }
            if (height <= 0) {
                height = displayHeight;
            }
            cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,RecaculateScaleWH: " + width + "," + height);
            VideoScalingState state = this.scalingState;
            state.scaled_width = width;
            state.scaled_height = height;
            state.scaled_left = 0;
            state.scaled_top = 0;
            needsScaleRecalculation = false;
        }
    }

    /**
     * Store the video resolution reported from the box.
     * Marks the view as needing a resize on next resizeView() call.
     */
    /* was: h(int, int) -- setVideoWH */
    public void setVideoWH(int w, int h) {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,setVideoWH: w=" + w + ", h=" + h);
        VideoScalingState state = this.scalingState;
        state.video_width = w;
        state.video_height = h;
        this.videoDimensionsChanged = true;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        this.boxConnection = new WeakReference<>(dVar);
    }

    /**
     * Phase state machine callback. Controls visibility and triggers resize.
     *   2, 12 = plug out / disconnect -> hide view, reset layout
     *   3      = connected -> show (unless soft-decode), manage assist touch
     *   15     = video frame ready -> resize (unless soft-decode active)
     *   500    = explicit resize request
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int phase) {
        if (p.i) { /* GlobalConfig.useTextureView -- this view is not in use */
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
                if (phase != 15) {
                    if (phase != 500) {
                        return;
                    }
                    resizeView(displayWidth, displayHeight);
                    return;
                } else {
                    if (p.g) { /* GlobalConfig.useSoftDecode -- skip resize for this view */
                        return;
                    }
                    resizeView(displayWidth, displayHeight);
                    return;
                }
            }
        }
        /* phase 2 or 12: disconnected -- hide and reset */
        setVisibility(INVISIBLE);
        if (!p.g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1; /* MATCH_PARENT */
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
        f.g(false);
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        d boxInterface = cn.manstep.phonemirrorBox.v0.e.M(this);
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onAttachedToWindow: boxInterface=" + boxInterface);
        this.boxConnection = new WeakReference<>(boxInterface);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (configuration.orientation != getOrientation()) {
            onRotationChanged(displayWidth, displayHeight);
        } else {
            this.videoDimensionsChanged = true;
            resizeView(displayWidth, displayHeight);
        }
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,onDetachedFromWindow: #");
        this.boxConnection = null;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    /**
     * Touch event handler.
     *
     * If the current CarPlay/AA session supports multi-touch (d.s().a()), delegates to
     * BoxInterface.e.b() which handles multi-pointer events.
     *
     * Otherwise, for single-touch Android Auto sessions (d.s().g()):
     *   1. Adjusts raw X/Y by subtracting scaled_left / scaled_top offsets
     *   2. Normalizes to 0-10000 range: normalizedX = (adjustedX * 10000) / scaled_width
     *   3. Clamps to [0, 10000]
     *   4. Dispatches via BoxEventDispatcher.L(action, pointer, normalizedX, normalizedY)
     *      where action: 0=DOWN, 1=MOVE, 2=UP
     *   5. On ACTION_UP, schedules move event cancellation and toggles assist touch
     */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (d.s() != null && d.s().a()) {
            /* Multi-touch path (e.g. CarPlay) */
            recalculateScaleWH();
            VideoScalingState state = this.scalingState;
            return cn.manstep.phonemirrorBox.BoxInterface.e.b(motionEvent,
                    state.scaled_left, state.scaled_top, state.scaled_width, state.scaled_height);
        }
        if (d.s() != null && d.s().g()) {
            /* Single-touch Android Auto path */
            if (!d.u()) {
                recalculateScaleWH();
            }
            /* Adjust raw touch position by the scaled offset (AA oversizing shifts the origin) */
            int adjustedX = ((int) motionEvent.getX()) - this.scalingState.scaled_left;
            int adjustedY = ((int) motionEvent.getY()) - this.scalingState.scaled_top;

            /* Normalize to 0-10000 range */
            int scaledW = this.scalingState.scaled_width;
            int normalizedX = adjustedX > scaledW ? 10000 : adjustedX > 0 ? (adjustedX * 10000) / scaledW : 0;
            int scaledH = this.scalingState.scaled_height;
            int normalizedY = adjustedY <= scaledH ? adjustedY > 0 ? (adjustedY * 10000) / scaledH : 0 : 10000;

            int action = motionEvent.getAction() & 0xFF;
            if (action == 0) { /* ACTION_DOWN */
                this.scalingState.scheduleMoveEvent(normalizedX, normalizedY);
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, normalizedX, normalizedY);
            } else if (action == 1) { /* ACTION_UP */
                this.scalingState.cancelMoveEvent();
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, normalizedX, normalizedY);
                if (d.l.J().i()) {
                    f.b(false);
                }
            } else if (action == 2) { /* ACTION_MOVE */
                this.scalingState.cancelMoveEvent();
                cn.manstep.phonemirrorBox.v0.e.L(1, 0, normalizedX, normalizedY);
            }
        }
        return true;
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int format, int width, int height) {
        d dVar = this.boxConnection.get();
        if (dVar == null) {
            return;
        }
        displayWidth = width;
        displayHeight = height;
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,surfaceChanged: touch set size=" + width + "x" + height);
        needsScaleRecalculation = true;
        d.x();
        dVar.T(format, width, height);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        d dVar = this.boxConnection.get();
        if (dVar == null) {
            return;
        }
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,surfaceCreated: holder=" + surfaceHolder + " ii=" + dVar);
        dVar.S(surfaceHolder, true);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        d dVar = this.boxConnection.get();
        if (dVar == null) {
            return;
        }
        dVar.U();
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorView,surfaceDestroyed: holder=" + surfaceHolder);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        /* Not used in SurfaceView path -- video frames go directly to the surface via MediaCodec */
    }
}
