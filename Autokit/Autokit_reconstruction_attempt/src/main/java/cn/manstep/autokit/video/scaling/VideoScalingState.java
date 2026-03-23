/**
 * VideoScalingState.java (was: cn.manstep.phonemirrorBox.i, aka AutoBoxMirrorViewCommon)
 *
 * Holds the current video scaling state used by all mirror view implementations
 * (AutoBoxMirrorView, AutoBoxMirrorTextureView, AutoBoxMirrorSoftView) for:
 *
 *   1. Touch coordinate normalization:
 *      - Touch X/Y is adjusted by scaled_left/scaled_top (origin offset from AA oversizing)
 *      - Then normalized to 0-10000 range: (adjusted * 10000) / scaled_width
 *
 *   2. Android Auto oversized-surface rendering (resizeAndroidAutoView):
 *      - AA reports a "requested" video size that may be smaller than the max supported.
 *      - The surface is rendered at max_video_size, with the AA content centered.
 *      - The view is then oversized and shifted by negative offsets so only the AA
 *        content is visible, while touch coordinates map to the full oversized surface.
 *
 *   3. Move event scheduling:
 *      - On ACTION_DOWN, schedules periodic move events (17ms interval = ~60fps)
 *        to ensure the box receives continuous touch updates even when the user
 *        holds a finger still (some AA apps require this).
 *
 * Original: cn.manstep.phonemirrorBox.i
 */
package cn.manstep.autokit.video.scaling;

import android.view.View;
import android.view.ViewGroup;

public class VideoScalingState {

    /**
     * Scaled view width used for touch normalization.
     * In standard mode: equals the view's pixel width.
     * In AA oversized mode: equals the oversized surface width.
     */
    /* was: 'a' */
    public int scaled_width = 0;

    /**
     * Scaled view height used for touch normalization.
     */
    /* was: 'f1667b' */
    public int scaled_height = 0;

    /**
     * Left offset applied to raw touch X before normalization.
     * Non-zero only in AA oversized mode, where the view is shifted left
     * to center the AA content.
     */
    /* was: 'f1668c' */
    public int scaled_left = 0;

    /**
     * Top offset applied to raw touch Y before normalization.
     */
    /* was: 'f1669d' */
    public int scaled_top = 0;

    /**
     * Actual video width reported by the box (not the display width).
     */
    /* was: 'e' */
    public int video_width = 0;

    /**
     * Actual video height reported by the box.
     */
    /* was: 'f' */
    public int video_height = 0;

    /**
     * Scheduler for periodic move events (ensures continuous touch updates).
     * Uses cn.manstep.phonemirrorBox.h0.a which wraps a ScheduledExecutorService.
     */
    /* was: 'g' */
    private cn.manstep.phonemirrorBox.h0.a moveEventScheduler = new cn.manstep.phonemirrorBox.h0.a();

    /**
     * Runnable that dispatches a MOVE event (action=1) to the box.
     * Created with captured x/y coordinates from scheduleMoveEvent().
     */
    /* was: inner class 'a' */
    class MoveEventRunnable implements Runnable {

        /* was: 'f1670b' */
        final int normalizedX;

        /* was: 'f1671c' */
        final int normalizedY;

        MoveEventRunnable(VideoScalingState parent, int x, int y) {
            this.normalizedX = x;
            this.normalizedY = y;
        }

        @Override
        public void run() {
            /* Send MOVE event (action=1) to the box */
            cn.manstep.phonemirrorBox.v0.e.L(1, 0, this.normalizedX, this.normalizedY);
        }
    }

    public VideoScalingState(View view) {
        /* The view parameter was unused in the original but presumably for future use */
    }

    /**
     * Cancel any pending/periodic move event.
     * Called on ACTION_UP and ACTION_MOVE (which sends its own immediate event).
     */
    /* was: a() -- cancelMoveEvent */
    public void cancelMoveEvent() {
        this.moveEventScheduler.b("MoveEvent");
    }

    /**
     * Schedule periodic move events at 17ms intervals (~60fps).
     * Called on ACTION_DOWN to ensure continuous touch stream.
     *
     * @param x normalized X coordinate (0-10000)
     * @param y normalized Y coordinate (0-10000)
     */
    /* was: b(int, int) -- scheduleMoveEvent */
    public void scheduleMoveEvent(int x, int y) {
        this.moveEventScheduler.f("MoveEvent", new MoveEventRunnable(this, x, y), 17L, 17L);
    }

    /**
     * Resize the view for Android Auto's oversized-surface rendering mechanism.
     *
     * OVERSIZING MECHANISM EXPLAINED:
     *
     * Android Auto reports two sizes:
     *   - maxVideoSize (from VideoSizeManager.getMaxVideoSize / c0.m()):
     *     The maximum resolution the head unit can render (e.g. 1920x1080).
     *   - androidAutoSize (from VideoSizeManager.getAndroidAutoSize / c0.a()):
     *     The resolution AA actually wants to use (may be smaller, e.g. 1600x900).
     *
     * When video_width/height > androidAutoSize, the AA content is centered within the
     * larger video frame. This method calculates the pixel offsets of that centering,
     * scales them to the maxVideoSize coordinate space, and then OVERSIZES the view
     * by 2x those offsets. It also shifts the view to negative left/top so only the
     * AA content area is visible on screen.
     *
     * The result:
     *   - The Surface is larger than the screen (oversized by the offset margins)
     *   - The visible area matches the AA content exactly
     *   - Touch coordinates use the full oversized surface for correct normalization
     *   - scaled_left/scaled_top store the offsets for touch adjustment
     *
     * In FIT SIZE mode (DeviceConfig.getInstance().isFitSizeMode() / u.z().T()):
     *   - No oversizing -- just set scaled_width to maxVideoSize width and
     *     calculate scaled_height proportionally from video aspect ratio.
     *
     * @param view    the video view to resize
     * @param screenW current screen width
     * @param screenH current screen height
     */
    /* was: c(View, int, int) -- resizeAndroidAutoView */
    public void resizeAndroidAutoView(View view, int screenW, int screenH) {
        cn.manstep.phonemirrorBox.util.x maxVideoSize = c0.m(); /* VideoSizeManager.getMaxVideoSize() */
        cn.manstep.phonemirrorBox.util.x androidAutoSize = c0.a(); /* VideoSizeManager.getAndroidAutoSize() */
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewCommon,resizeAndroidAutoView: VideoSize:"
                + this.video_width + "x" + this.video_height
                + ", MaxVideoSize:" + maxVideoSize
                + ", AndroidAutoSize:" + androidAutoSize);
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewCommon,resizeAndroidAutoView: screenWxH="
                + screenW + "x" + screenH);

        if (this.video_width <= 0 || this.video_height <= 0) {
            return;
        }

        if (u.z().T()) {
            /* FIT SIZE MODE (DeviceConfig.getInstance().isFitSizeMode()):
             * No oversizing -- just fit to maxVideoSize width, maintain aspect ratio. */
            this.scaled_top = 0;
            this.scaled_left = 0;
            int maxW = maxVideoSize.f1934b; /* maxVideoSize.width */
            this.scaled_width = maxW;
            this.scaled_height = (maxW * this.video_height) / this.video_width;
            cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorViewCommon",
                    "resizeAndroidAutoView: " + toString());
            return;
        }

        /* OVERSIZED MODE: calculate the centering offsets and expand the view */

        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        /* Start with maxVideoSize as the base layout size */
        layoutParams.width = maxVideoSize.f1934b; /* maxVideoSize.width */
        layoutParams.height = maxVideoSize.f1935c; /* maxVideoSize.height */
        cn.manstep.phonemirrorBox.util.s.i("AutoBoxMirrorViewCommon",
                "resizeAndroidAutoView: start x=" + view.getX() + ", y=" + view.getY()
                        + ", left=" + view.getLeft() + ", top=" + view.getTop());

        /*
         * Calculate the centering offset in the video's coordinate space:
         * offsetX = (video_width - androidAutoSize.width) / 2
         * offsetY = (video_height - androidAutoSize.height) / 2
         *
         * If both offsets are non-zero, the AA size doesn't match the video size,
         * so recalculate androidAutoSize using the VideoSizeManager's aspect ratio.
         */
        int offsetX = (this.video_width - androidAutoSize.f1934b) / 2;
        int offsetY = (this.video_height - androidAutoSize.f1935c) / 2;
        if (offsetX != 0 && offsetY != 0) {
            /* AA size mismatch -- recalculate from VideoSizeManager */
            androidAutoSize.n(c0.i().g(this.video_width, this.video_height));
            offsetX = (this.video_width - androidAutoSize.f1934b) / 2;
            offsetY = (this.video_height - androidAutoSize.f1935c) / 2;
        }
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorViewCommon",
                "resizeAndroidAutoView: androidAutoSize=" + androidAutoSize);

        /*
         * Scale the offsets from video space to maxVideoSize space:
         * scaledOffsetX = (offsetX * maxVideoSize.width) / androidAutoSize.width
         * scaledOffsetY = (offsetY * maxVideoSize.height) / androidAutoSize.height
         */
        int scaledOffsetX = (offsetX * maxVideoSize.f1934b) / androidAutoSize.f1934b;
        int scaledOffsetY = (offsetY * maxVideoSize.f1935c) / androidAutoSize.f1935c;
        cn.manstep.phonemirrorBox.util.s.d("AutoBoxMirrorViewCommon",
                "resizeAndroidAutoView: x=" + scaledOffsetX + ", y=" + scaledOffsetY);

        /* Shift the view by negative offsets so the AA content area aligns with the screen */
        view.setTop(-scaledOffsetY);
        view.setLeft(-scaledOffsetX);

        /* Store the offsets for touch coordinate adjustment */
        this.scaled_top = scaledOffsetY;
        this.scaled_left = scaledOffsetX;

        /*
         * OVERSIZE the layout by 2x the offset on each axis:
         * This makes the Surface larger than the visible screen, with the
         * AA content centered. The excess is hidden by the negative left/top.
         *
         * oversizedWidth  = maxVideoSize.width  + (scaledOffsetX * 2)
         * oversizedHeight = maxVideoSize.height + (scaledOffsetY * 2)
         */
        int oversizedWidth = maxVideoSize.f1934b + (scaledOffsetX * 2);
        layoutParams.width = oversizedWidth;
        int oversizedHeight = maxVideoSize.f1935c + (scaledOffsetY * 2);
        layoutParams.height = oversizedHeight;

        /* Update scaled dimensions for touch normalization */
        this.scaled_width = oversizedWidth;
        this.scaled_height = oversizedHeight;

        /* Edge case: if oversized width matches screen width, also set X position */
        if (oversizedWidth == screenW) {
            view.setX(-scaledOffsetX);
        }

        cn.manstep.phonemirrorBox.util.s.i("AutoBoxMirrorViewCommon",
                "resizeAndroidAutoView: left=" + this.scaled_left
                        + ", top=" + this.scaled_top
                        + ", surface=" + this.scaled_width + "x" + this.scaled_height
                        + ", display=" + (this.scaled_width - (this.scaled_left * 2))
                        + "x" + (this.scaled_height - (this.scaled_top * 2)));
        view.setLayoutParams(layoutParams);

        cn.manstep.phonemirrorBox.util.s.i("AutoBoxMirrorViewCommon",
                "resizeAndroidAutoView: end x=" + view.getX()
                        + ", y=" + view.getY()
                        + ", left=" + view.getLeft()
                        + ", top=" + view.getTop());
    }

    @Override
    public String toString() {
        return "AutoBoxMirrorViewCommon{scaled_width=" + this.scaled_width
                + ", scaled_height=" + this.scaled_height
                + ", scaled_left=" + this.scaled_left
                + ", scaled_top=" + this.scaled_top
                + ", video_width=" + this.video_width
                + ", video_height=" + this.video_height + '}';
    }
}
