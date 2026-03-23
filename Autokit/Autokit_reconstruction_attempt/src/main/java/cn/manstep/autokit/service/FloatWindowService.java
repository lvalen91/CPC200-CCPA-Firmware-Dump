package cn.manstep.autokit.service;

/**
 * FloatWindowService.java - Root-level float window service for video overlay.
 *
 * <p>This is the root-level FloatWindowService (not to be confused with
 * floatwindow.FloatWindowService which manages the quick access ball).
 * This service creates a system overlay window containing a SurfaceView
 * for displaying the mirrored video content as a floating window.</p>
 *
 * <h3>Static fields (all public for direct access):</h3>
 * <pre>
 *   f1486b -> overlayLayout (LinearLayout) - the overlay window container
 *   f1487c -> layoutParams (WindowManager.LayoutParams)
 *   f1488d -> windowManager (WindowManager)
 *   e      -> surface (Surface) - the rendering surface from SurfaceView
 *   f      -> videoWidth (int) - source video width
 *   g      -> videoHeight (int) - source video height
 *   h      -> isVisible (boolean) - whether overlay should be shown
 *   i      -> isFullRegion (boolean) - full or scaled display
 * </pre>
 *
 * <h3>Static control methods:</h3>
 * <pre>
 *   d(boolean) -> setFullRegion() - toggle full/scaled display mode
 *   e(int,int) -> setVideoSize() - update video dimensions and resize window
 *   f(boolean) -> setVisible() - show/hide the overlay window
 * </pre>
 *
 * <h3>Window sizing (calculateWH):</h3>
 * <ul>
 *   <li>When visible: scales video to fit screen height, centers horizontally</li>
 *   <li>When not full region: scales to 2/5 of calculated size</li>
 *   <li>When not visible: sets size to 0x0</li>
 * </ul>
 *
 * <p>Original: cn.manstep.phonemirrorBox.FloatWindowService</p>
 */
public class FloatWindowService extends android.app.Service {
    // onCreate -> checks overlay permission, creates window with SurfaceView
    // onDestroy -> removes overlay view from WindowManager
}
