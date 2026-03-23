package cn.manstep.autokit.ui.activity;

/**
 * Main1Activity.java - Alternative USB handler activity (singleInstance launch mode).
 *
 * <p>This activity serves as a secondary entry point for USB device attach events.
 * It runs with singleInstance launch mode to handle USB intents when the main
 * activity may not be running. On start, it initializes the ViewManager,
 * starts AutoStartService and BackgroundService, optionally starts the
 * FloatWindowService (if ShowFloatBall preference is enabled), and then
 * immediately finishes itself.</p>
 *
 * <p>The window is configured as a 1x1 pixel transparent overlay (TYPE_SYSTEM_ALERT)
 * positioned at (0,0) with zero alpha and dim amount, making it completely invisible.</p>
 *
 * <h3>Lifecycle:</h3>
 * <ol>
 *   <li>onCreate() - native, sets up the invisible window via L()</li>
 *   <li>onStart() - calls init() then immediately finish()</li>
 *   <li>init() - starts AutoStartService, BackgroundService, FloatWindowService</li>
 * </ol>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   L()     -> configureInvisibleWindow() - sets window to 1x1 transparent overlay
 *   init()  -> initializeServices() - starts required services
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.Main1Activity</p>
 */
public class Main1Activity extends androidx.appcompat.app.AppCompatActivity {

    /**
     * Configures the activity window as a 1x1 pixel invisible overlay.
     * Uses TYPE_SYSTEM_ALERT (2003), zero alpha, and FLAG_NOT_TOUCHABLE.
     */
    private void configureInvisibleWindow() {
        // Window configured at (0,0) with 1x1 size, 0 alpha, TYPE_SYSTEM_ALERT
    }

    /**
     * Initializes core services:
     * 1. Calls ViewManager.init(context) to set up the singleton
     * 2. Starts AutoStartService (foreground on API 26+)
     * 3. Starts BackgroundService (foreground on API 26+)
     * 4. Starts FloatWindowService if "ShowFloatBall" preference is true
     */
    private void initializeServices() {
        // v0.e.B(this) -> ViewManager.init(this)
        // Start AutoStartService with "starter" = "Main1Activity"
        // Start BackgroundService
        // Conditionally start FloatWindowService
    }

    // onCreate - native method
    // onStart - calls init() then finish()
    // onDestroy - calls q.g().l(this) then finish()
    // onBackPressed - moveTaskToBack(true)
    // onTouchEvent - moveTaskToBack on ACTION_OUTSIDE, then finish
}
