package cn.manstep.autokit.ui.settings;

/**
 * AdjustSizeActivity.java - Display area resize configuration activity.
 *
 * <p>Allows the user to adjust the mirroring display area using a custom
 * AdjustSizeView. The user can drag corners/edges to resize the output rect.
 * Saving stores the rect as "AREA_RECT" in SharedPreferences and triggers
 * an app restart to apply the new display size.</p>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   M()  -> configureFullScreen() - immersive mode with hidden nav bar
 *   N()  -> saveAndRestart() - delays 500ms, finishes, restarts app, kills process
 * </pre>
 *
 * <h3>UI flow:</h3>
 * <ul>
 *   <li>Save button shows confirmation dialog (Chinese: "修改为当前分辨率？")</li>
 *   <li>On confirm, saves AREA_RECT preference string (Rect.flattenToString())</li>
 *   <li>Reset button calls AdjustSizeView.reset() to restore default 400x400 centered rect</li>
 * </ul>
 *
 * <p>Original: cn.manstep.phonemirrorBox.AdjustSizeActivity</p>
 */
public class AdjustSizeActivity extends androidx.appcompat.app.AppCompatActivity {
    // private AdjustSizeView adjustSizeView; // was f1352b
    // onCreate - native
    // M() -> configureFullScreen()
    // N() -> saveAndRestart() - kills process after restart
}
