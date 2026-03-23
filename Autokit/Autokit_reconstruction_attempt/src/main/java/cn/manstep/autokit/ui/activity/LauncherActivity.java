package cn.manstep.autokit.ui.activity;

/**
 * LauncherActivity.java - Launcher shortcut entry point.
 *
 * <p>This activity is used as an alternate launcher entry point that forwards
 * the user to MainActivity with a specified work mode. It supports two methods
 * of launching:</p>
 *
 * <ul>
 *   <li>L(mode) - Direct launch: starts MainActivity with EXTRA_NAME_1 = mode</li>
 *   <li>M(mode) - Broadcast + launch: sends a "GoMainActivity.BroadcastReceiver.action"
 *       broadcast with the mode data, then starts MainActivity with the same mode</li>
 * </ul>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   L(int mode)  -> launchMainActivityDirect(mode)
 *   M(int mode)  -> broadcastAndLaunchMainActivity(mode)
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.LauncherActivity</p>
 */
public class LauncherActivity extends androidx.appcompat.app.AppCompatActivity {
    // L(int) -> launchMainActivityDirect() - starts MainActivity with mode extra
    // M(int) -> broadcastAndLaunchMainActivity() - broadcasts mode + starts MainActivity
    // onCreate - native
}
