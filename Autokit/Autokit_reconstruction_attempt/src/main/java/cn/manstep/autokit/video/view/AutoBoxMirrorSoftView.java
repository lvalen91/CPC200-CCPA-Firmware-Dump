/**
 * AutoBoxMirrorSoftView.java
 *
 * Software-decoded (OpenH264) video rendering fallback, using GLSurfaceView.
 * Used when GlobalConfig.useSoftDecode (p.g) == true.
 *
 * Rendering pipeline:
 *   BoxConnection -> OpenH264Decoder (JNI, libopenH264decoder.so) -> YUV buffer ->
 *   SoftH264Render (d.d.a.b, GLES2.0 shader) -> this GLSurfaceView
 *
 * This is the fallback for devices where the hardware MediaCodec path does not work
 * reliably (e.g. certain RK3399-based head units). The OpenH264 library performs
 * CPU-based H.264 decoding, and the result is rendered through an OpenGL ES 2.0
 * shader that converts YUV to RGB on the GPU.
 *
 * Touch handling is identical to AutoBoxMirrorView (scaled_left/scaled_top offset, 0-10000 norm).
 *
 * Original: cn.manstep.phonemirrorBox.AutoBoxMirrorSoftView
 */
package cn.manstep.autokit.video.view;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.ViewGroup;
import android.view.WindowManager;
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */
import java.lang.ref.WeakReference;

import cn.manstep.autokit.video.scaling.VideoScalingState;
import cn.manstep.autokit.video.scaling.VideoLayoutUtil;

public class AutoBoxMirrorSoftView extends GLSurfaceView implements d.g, SurfaceHolder.Callback {

    /** The OpenGL ES 2.0 renderer that draws decoded YUV frames */
    private static d.d.a.b softH264Render;

    /** Context reference for display metrics */
    /* was: 'f1379b' */
    private Context context;

    /** Shared scaling state for touch coordinate normalization */
    /* was: 'f1380c' */
    private VideoScalingState scalingState;

    private static final String TAG = AutoBoxMirrorSoftView.class.getSimpleName();

    /** Whether scaled dimensions need to be recalculated */
    private static boolean needsScaleRecalculation = false;

    /** Display surface width */
    private static int displayWidth = 0;

    /** Display surface height */
    private static int displayHeight = 0;

    public AutoBoxMirrorSoftView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.context = context;
        init();
    }

    /**
     * Get display metrics, correcting height for portrait orientation
     * (squaring the aspect ratio when not landscape).
     */
    /* was: e(Context) */
    private DisplayMetrics getDisplayMetrics(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        if (!isScreenLandscape()) {
            try {
                /* UNCERTAIN: unusual formula -- appears to compute a square-ish height */
                displayMetrics.heightPixels = (displayMetrics.widthPixels * displayMetrics.widthPixels)
                        / displayMetrics.heightPixels;
            } catch (Exception e) {
                cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
            }
        }
        cn.manstep.phonemirrorBox.util.s.e(TAG + ",getDM: @@@isScreenLandscape :" + isScreenLandscape());
        cn.manstep.phonemirrorBox.util.s.e(TAG + ",getDM: @@@ outMetrics w : "
                + displayMetrics.widthPixels + "  h " + displayMetrics.heightPixels);
        return displayMetrics;
    }

    /**
     * Initialize the GLSurfaceView: check GLES 2.0 support, create renderer,
     * set render mode to RENDERMODE_WHEN_DIRTY (0), and create the scaling state.
     */
    /* was: f() */
    private void init() {
        cn.manstep.phonemirrorBox.util.s.f(TAG, "softview init");
        try {
            if (!d.d.a.a.a(this.context)) {
                cn.manstep.phonemirrorBox.util.s.f(TAG,
                        "GLES20Support.detectOpenGLES20(mContext) false");
            }
        } catch (Exception e) {
            cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
        }
        setEGLContextClientVersion(2);
        d.d.a.b renderer = new d.d.a.b(null, this, getDisplayMetrics(this.context));
        softH264Render = renderer;
        setRenderer(renderer);
        setRenderMode(GLSurfaceView.RENDERMODE_WHEN_DIRTY); /* 0 */
        this.scalingState = new VideoScalingState(this);
    }

    /**
     * Check if the current screen orientation is landscape.
     */
    /* was: g() */
    private boolean isScreenLandscape() {
        int orientation = getResources().getConfiguration().orientation;
        if (orientation == 2) { /* Configuration.ORIENTATION_LANDSCAPE */
            return true;
        }
        if (orientation == 1) { /* Configuration.ORIENTATION_PORTRAIT */
            /* fall through to return false */
        }
        return false;
    }

    /**
     * Returns the SoftH264 renderer used by OpenH264Decoder to push decoded frames.
     */
    public static d.d.a.b getSoftH264Render() {
        return softH264Render;
    }

    /**
     * Store display size (called from AutoBoxMirrorView.setDisplaySize).
     */
    /* was: h(int, int) */
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
        sb.append(TAG);
        sb.append(",on_Box_Phase: ");
        cn.manstep.phonemirrorBox.util.x videoSize = (cn.manstep.phonemirrorBox.util.x) obj;
        sb.append(videoSize.toString());
        cn.manstep.phonemirrorBox.util.s.c(sb.toString());
        setVideoWH(videoSize.f1934b, videoSize.f1935c);
    }

    /**
     * Resize the view to fit video dimensions within the screen area.
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
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorSoftView,ReSizeView: Screen:" + screenW + "x" + screenH
                + ", Video:" + this.scalingState.video_width + "x" + this.scalingState.video_height);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (d.u()) {
            /* Android Auto mode: oversize the surface */
            this.scalingState.resizeAndroidAutoView(this, screenW, screenH);
        } else {
            /* Standard path: apply ImageScale preference */
            VideoLayoutUtil.resizeView(getContext(), layoutParams, screenW, screenH,
                    this.scalingState.video_width, this.scalingState.video_height);
            setLayoutParams(layoutParams);
        }
        cn.manstep.phonemirrorBox.util.s.c(TAG + ",ReSizeView: ViewGroup.LayoutParams: "
                + layoutParams.width + "x" + layoutParams.height);
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
        if (needsScaleRecalculation) {
            cn.manstep.phonemirrorBox.util.s.c("iv_W = " + getWidth() + ", iv_H = " + getHeight());
            int w = displayWidth;
            int h = displayHeight;
            cn.manstep.phonemirrorBox.util.s.c("caculate_W = " + w + ", caculate_H = " + h);
            VideoScalingState state = this.scalingState;
            state.scaled_width = w;
            state.scaled_height = h;
            state.scaled_left = 0;
            state.scaled_top = 0;
            needsScaleRecalculation = false;
        }
    }

    /**
     * Store the video resolution reported from the box.
     */
    /* was: i(int, int) -- setVideoWH */
    public void setVideoWH(int w, int h) {
        VideoScalingState state = this.scalingState;
        state.video_width = w;
        state.video_height = h;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        new WeakReference(dVar);
    }

    /**
     * Phase state machine callback. This view is only visible when useSoftDecode is true.
     *   2      = plug out -> hide, reset layout
     *   3      = connected -> invisible (SoftView shown via phase 15 or 10)
     *   10     = show (if soft decode active)
     *   11     = hide
     *   15     = resize and show (if soft decode)
     *   500    = explicit resize request
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int phase) {
        if (phase != 2) {
            if (phase == 3) {
                if (p.g) { /* GlobalConfig.useSoftDecode -- hide for now, shown on frame-ready */
                    return;
                }
                setVisibility(INVISIBLE);
                return;
            }
            if (phase == 15) {
                if (p.g) {
                    resizeView(displayWidth, displayHeight);
                    setVisibility(VISIBLE);
                    return;
                }
                return;
            }
            if (phase == 500) {
                resizeView(displayWidth, displayHeight);
                return;
            }
            switch (phase) {
                case 10:
                    if (p.g) {
                        setVisibility(VISIBLE);
                    }
                    break;
                case 11:
                    setVisibility(INVISIBLE);
                    break;
            }
            return; /* UNCERTAIN: original decompilation has a fallthrough from phase 2 here */
        }
        /* phase 2: disconnected -- hide and reset */
        setVisibility(INVISIBLE);
        if (p.g) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.width = -1; /* MATCH_PARENT */
            layoutParams.height = -1;
            setLayoutParams(layoutParams);
        }
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d boxInterface = cn.manstep.phonemirrorBox.v0.e.M(this);
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView onAttachedToWindow & boxInterface=" + boxInterface);
        new WeakReference(boxInterface);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView onDetachedFromWindow");
        cn.manstep.phonemirrorBox.v0.e.S(this);
    }

    /**
     * Touch event handler -- identical logic to AutoBoxMirrorView.
     * Normalizes coordinates to 0-10000 range with scaled_left/scaled_top offset.
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
                this.scalingState.scheduleMoveEvent(normalizedX, normalizedY);
                cn.manstep.phonemirrorBox.v0.e.L(0, 0, normalizedX, normalizedY);
            } else if (action == 1) { /* ACTION_UP */
                this.scalingState.cancelMoveEvent();
                cn.manstep.phonemirrorBox.v0.e.L(2, 0, normalizedX, normalizedY);
                if (d.l.J().i()) {
                    f.b(false);
                }
            } else {
                if (action != 2) {
                    return super.onTouchEvent(motionEvent);
                }
                this.scalingState.cancelMoveEvent();
                cn.manstep.phonemirrorBox.v0.e.L(1, 0, normalizedX, normalizedY);
            }
        }
        return true;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int format, int width, int height) {
        super.surfaceChanged(surfaceHolder, format, width, height);
        needsScaleRecalculation = true;
        displayWidth = width;
        displayHeight = height;
        cn.manstep.phonemirrorBox.util.s.e("@@@AutoBoxMirrorSoftView surfaceChanged");
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        super.surfaceCreated(surfaceHolder);
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView surfaceCreated holder=" + surfaceHolder);
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        super.surfaceDestroyed(surfaceHolder);
        cn.manstep.phonemirrorBox.util.s.c("@@@AutoBoxMirrorSoftView surfaceDestroyed holder=" + surfaceHolder);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        /* Not used -- decoded frames come through the OpenH264Decoder -> SoftH264Render path */
    }
}
