package cn.manstep.autokit.ui.activity;

/**
 * CheckActivity.java - Screen size detection and resolution check activity.
 *
 * <p>This activity is launched to measure the actual available display area.
 * It creates a fullscreen window, measures a root view's width and height,
 * and returns the results via setResult(). The measured size is compared against
 * the current VideoMaxSize configuration to determine if the settings fragment
 * needs to be re-added (due to resolution change).</p>
 *
 * <h3>Flow:</h3>
 * <ol>
 *   <li>onCreate() sets up fullscreen window with hidden nav/status bars</li>
 *   <li>M() posts a Runnable to measure the root view dimensions</li>
 *   <li>After 800ms delay, compares measured size with VideoMaxSize</li>
 *   <li>If resolution changed and not in pip mode, updates VideoMaxSize</li>
 *   <li>Returns result intent with "MaxSize" and "ReAddSettingsFragment" extras</li>
 * </ol>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   M()               -> startSizeMeasurement()
 *   N(Window)         -> configureFullScreen() - hides nav/status bars
 *   f1481b            -> rootMeasureView - the view used to measure available size
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.CheckActivity</p>
 */
public class CheckActivity extends androidx.appcompat.app.AppCompatActivity {

    /** The view used to measure the actual available display area */
    private android.view.View rootMeasureView; // was f1481b

    // N(Window) -> configureFullScreen() - handles API 19+ immersive mode
    // M() -> startSizeMeasurement() - posts measurement runnable
    // onCreate - native
}
