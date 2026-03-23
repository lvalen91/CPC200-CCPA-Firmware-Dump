/**
 * VideoLayoutUtil.java (was: cn.manstep.phonemirrorBox.j, aka AutoBoxMirrorViewUtil)
 *
 * Static utility class for calculating video layout parameters and applying
 * visual effects to mirror views.
 *
 * Contains three key functions:
 *
 *   1. onRotationChanged() -- Calculates LayoutParams when the screen orientation changes.
 *      Uses MATCH_PARENT as default, then constrains width or height to maintain the
 *      video's aspect ratio. Width is masked with 0xFFFE (65534) to ensure even pixels
 *      (required by most video codecs).
 *
 *   2. resizeView() -- Similar to onRotationChanged() but respects the user's "ImageScale"
 *      preference. When ImageScale == 0 (fill/crop), uses MATCH_PARENT. When == 1 (fit),
 *      constrains the smaller dimension.
 *
 *   3. applyRoundedCorners() -- Applies a rounded-rect clip to the view using
 *      ViewOutlineProvider, with the corner radius from DeviceConfig.
 *
 * Both layout methods use a 50-52 pixel threshold to distinguish landscape from portrait:
 *   - screenW > screenH + 50  -> landscape
 *   - otherwise               -> portrait (or nearly square)
 *
 * Original: cn.manstep.phonemirrorBox.j
 */
package cn.manstep.autokit.video.scaling;

import android.content.Context;
import android.graphics.Outline;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;

public class VideoLayoutUtil {

    /**
     * Runnable that applies rounded corners to a view via ViewOutlineProvider.
     * Posted to the view's message queue so it runs after layout.
     */
    /* was: inner class 'a' */
    static class RoundedCornersRunnable implements Runnable {

        /* was: 'f1672b' */
        final View targetView;

        /* was: 'f1673c' */
        final int cornerRadius;

        /**
         * ViewOutlineProvider that clips the view to a rounded rectangle.
         */
        /* was: 'C0086a' */
        class RoundedOutlineProvider extends ViewOutlineProvider {
            RoundedOutlineProvider() {
            }

            @Override
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(),
                        RoundedCornersRunnable.this.cornerRadius);
            }
        }

        RoundedCornersRunnable(View view, int radius) {
            this.targetView = view;
            this.cornerRadius = radius;
        }

        @Override
        public void run() {
            this.targetView.setClipToOutline(true);
            this.targetView.setOutlineProvider(new RoundedOutlineProvider());
        }
    }

    /**
     * Calculate layout params for a rotation/orientation change.
     *
     * Maintains the video's aspect ratio within the given screen dimensions.
     * Starts with MATCH_PARENT (-1) for both dimensions, then constrains one:
     *
     * Landscape (screenW > screenH + 50):
     *   - Portrait video (videoW < videoH): width = (videoW * screenH) / videoH
     *   - Landscape video: height = screenH, width = (screenH * videoW) / videoH
     *     (if width exceeds screenW, swap: width = screenW, height recalculated)
     *
     * Portrait/square:
     *   - Landscape video (videoW > videoH): height = (screenW / videoW) * videoH
     *   - Portrait video: height = screenH, width = (screenH * videoW) / videoH
     *     (if width exceeds screenW, swap)
     *
     * All calculated widths are masked with 0xFFFE for codec even-pixel alignment.
     *
     * @param context  unused (reserved for future locale-aware calculations)
     * @param params   LayoutParams to modify in-place
     * @param screenW  current screen width in pixels
     * @param screenH  current screen height in pixels
     * @param videoW   video source width
     * @param videoH   video source height
     * @return the modified LayoutParams (same reference as params)
     */
    /* was: a(Context, LayoutParams, int, int, int, int) -- onRotationChanged */
    public static ViewGroup.LayoutParams onRotationChanged(Context context,
            ViewGroup.LayoutParams params, int screenW, int screenH, int videoW, int videoH) {

        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,onRotationChanged: screen:"
                + screenW + "x" + screenH + ", video:" + videoW + "x" + videoH);
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,onRotationChanged: "
                + params.width + "x" + params.height);

        params.width = -1;  /* MATCH_PARENT */
        params.height = -1; /* MATCH_PARENT */

        if (screenW > screenH + 50) {
            /* LANDSCAPE screen */
            if (videoW < videoH) {
                /* Portrait video on landscape screen: constrain width */
                params.width = ((videoW * screenH) / videoH) & 65534;
            } else {
                /* Landscape video on landscape screen: fit height, calculate width */
                params.height = screenH;
                int fitWidth = ((screenH * videoW) / videoH) & 65534;
                params.width = fitWidth;
                if (fitWidth > screenW) {
                    /* Width overflow: constrain to screen width, recalculate height */
                    params.width = screenW;
                    params.height = ((int) ((screenW / videoW) * videoH)) & 65534;
                }
            }
        } else {
            /* PORTRAIT or SQUARE screen */
            if (videoW > videoH) {
                /* Landscape video on portrait screen: constrain height */
                params.height = ((int) ((screenW / videoW) * videoH)) & 65534;
            } else {
                /* Portrait video on portrait screen: fit height, calculate width */
                params.height = screenH;
                int fitWidth = ((screenH * videoW) / videoH) & 65534;
                params.width = fitWidth;
                if (fitWidth > screenW) {
                    params.width = screenW;
                    params.height = ((int) ((screenW / videoW) * videoH)) & 65534;
                }
            }
        }

        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,onRotationChanged: Display "
                + params.width + "x" + params.height);
        return params;
    }

    /**
     * Calculate layout params for view resize, respecting the user's ImageScale preference.
     *
     * ImageScale values (from SharedPreferences):
     *   0 = FILL/CROP mode:  uses MATCH_PARENT (full screen, may crop edges)
     *   1 = FIT mode:        constrains to maintain aspect ratio (may show black bars)
     *
     * Logic is similar to onRotationChanged() but only applies aspect-ratio fitting
     * when ImageScale == 1. When ImageScale == 0, leaves MATCH_PARENT for full-screen.
     *
     * Uses a 52-pixel threshold (vs 50 in onRotationChanged) for landscape detection.
     * This 2-pixel difference is preserved from the original code.
     *
     * @param context  unused
     * @param params   LayoutParams to modify in-place
     * @param screenW  current screen width in pixels
     * @param screenH  current screen height in pixels
     * @param videoW   video source width
     * @param videoH   video source height
     * @return the modified LayoutParams
     */
    /* was: b(Context, LayoutParams, int, int, int, int) -- resizeView */
    public static ViewGroup.LayoutParams resizeView(Context context,
            ViewGroup.LayoutParams params, int screenW, int screenH, int videoW, int videoH) {

        int imageScale = b0.i().m("ImageScale", 0); /* SharedPrefs: 0=fill, 1=fit */
        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,ReSizeView: screen:"
                + screenW + "x" + screenH + ", video:" + videoW + "x" + videoH + " " + imageScale);

        params.width = -1;  /* MATCH_PARENT */
        params.height = -1; /* MATCH_PARENT */

        if (screenW > screenH + 52) {
            /* LANDSCAPE screen */
            if (videoW < videoH) {
                /* Portrait video on landscape screen: always constrain width */
                params.width = ((videoW * screenH) / videoH) & 65534;
            } else if (imageScale == 1) {
                /* FIT mode: landscape video on landscape screen */
                params.height = screenH;
                int fitWidth = ((screenH * videoW) / videoH) & 65534;
                params.width = fitWidth;
                if (fitWidth > screenW) {
                    params.width = screenW;
                    params.height = ((int) ((screenW / videoW) * videoH)) & 65534;
                }
            }
            /* imageScale == 0 (FILL): keep MATCH_PARENT for both (crop to fill) */
        } else {
            /* PORTRAIT or SQUARE screen */
            if (videoW > videoH) {
                if (imageScale == 1) {
                    /* FIT mode: landscape video on portrait screen */
                    params.height = ((int) ((screenW / videoW) * videoH)) & 65534;
                }
            } else if (imageScale == 1) {
                /* FIT mode: portrait video on portrait screen */
                params.height = screenH;
                int fitWidth = ((screenH * videoW) / videoH) & 65534;
                params.width = fitWidth;
                if (fitWidth > screenW) {
                    params.width = screenW;
                    params.height = ((int) ((screenW / videoW) * videoH)) & 65534;
                }
            }
        }

        cn.manstep.phonemirrorBox.util.s.c("AutoBoxMirrorViewUtil,ReSizeView: Display "
                + params.width + "x" + params.height);
        return params;
    }

    /**
     * Apply rounded corners to a view using ViewOutlineProvider.
     * The corner radius is read from DeviceConfig (u.z().c()).
     * Only applies on API 21+ (Lollipop), and only if radius > 0.
     *
     * @param view the view to apply rounded corners to
     */
    /* was: c(View) -- applyRoundedCorners */
    public static void applyRoundedCorners(View view) {
        int cornerRadius = u.z().c(); /* DeviceConfig.getInstance().getCornerRadius() */
        if (cornerRadius <= 0 || Build.VERSION.SDK_INT < 21) {
            return;
        }
        view.post(new RoundedCornersRunnable(view, cornerRadius));
    }
}
