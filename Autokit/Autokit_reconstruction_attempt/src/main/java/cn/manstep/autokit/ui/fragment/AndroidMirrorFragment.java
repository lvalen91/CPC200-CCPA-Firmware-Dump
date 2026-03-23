package cn.manstep.autokit.ui.fragment;

/**
 * AndroidMirrorFragment.java - Fragment for Android device mirroring display.
 *
 * <p>A simple fragment that inflates the Android mirror layout and manages the
 * AnimationController lifecycle. On creation it initializes the AnimationController
 * (f.c()), and on destruction it destroys it (f.e()).</p>
 *
 * <p>The layout (2131492931) contains the mirroring surface view for displaying
 * the Android device screen via USB or wireless mirroring.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.AndroidMirrorFragment</p>
 */
public class AndroidMirrorFragment extends androidx.fragment.app.Fragment {
    // L0() = onCreateView -> AnimationController.initialize(), inflate layout
    // M0() = onDestroy -> AnimationController.destroy()
}
