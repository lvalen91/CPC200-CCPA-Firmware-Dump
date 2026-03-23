package cn.manstep.autokit.ui.activity;

/**
 * EmptyActivity.java - Minimal transparent activity used for process restart.
 *
 * <p>This activity creates an invisible 1x1 pixel window overlay similar to Main1Activity.
 * It contains an inner Runnable that relaunches the main application package and then
 * kills the current process (Process.killProcess + System.exit), effectively performing
 * a full application restart.</p>
 *
 * <p>Used when the application needs to be restarted cleanly (e.g., after configuration
 * changes that require a full restart).</p>
 *
 * <h3>Inner class 'a' (RestartRunnable):</h3>
 * <pre>
 *   - Gets launch intent for own package
 *   - Adds flags: FLAG_ACTIVITY_NEW_TASK | FLAG_ACTIVITY_CLEAR_TASK | FLAG_ACTIVITY_CLEAR_TOP
 *   - Starts the activity
 *   - Kills process and exits
 * </pre>
 *
 * <p>Extends: cn.manstep.phonemirrorBox.k (BaseActivity)</p>
 * <p>Original: cn.manstep.phonemirrorBox.EmptyActivity</p>
 */
public class EmptyActivity extends BaseActivity {

    /**
     * RestartRunnable - Relaunches the app and kills the current process.
     */
    class RestartRunnable implements Runnable {
        @Override
        public void run() {
            // getLaunchIntentForPackage -> addFlags(268468224) -> startActivity
            // Process.killProcess(Process.myPid())
            // System.exit(0)
        }
    }

    // n0() -> configureInvisibleWindow() - same as Main1Activity.L()
    // onCreate - native
    // onDestroy - calls ActivityManager.unregister(this)
    // onTouchEvent - moveTaskToBack on ACTION_OUTSIDE
}
