package cn.manstep.autokit.ui.activity;

/**
 * BaseActivity.java - Base activity class for AutoKit activities.
 *
 * <p>Originally obfuscated as cn.manstep.phonemirrorBox.k, this serves as the
 * common base class for activities that need shared lifecycle management,
 * orientation detection, and fullscreen support.</p>
 *
 * <p>Provides common fields for tracking orientation state and display metrics
 * used by subclasses like KeyLearnActivity, AutoKitHideSettingsActivity, etc.</p>
 *
 * <h3>Known fields:</h3>
 * <pre>
 *   f1677b  -> isLandscape (boolean) - true if orientation is landscape
 *   e       -> displayWidth (int)
 *   f       -> displayHeight (int)
 *   j       -> needsRecreate (boolean) - flag to recreate on next resume
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.k</p>
 */
public class BaseActivity extends androidx.appcompat.app.AppCompatActivity {
    // protected boolean isLandscape;  // was f1677b
    // protected int displayWidth;     // was e
    // protected int displayHeight;    // was f
    // protected boolean needsRecreate; // was j
}
