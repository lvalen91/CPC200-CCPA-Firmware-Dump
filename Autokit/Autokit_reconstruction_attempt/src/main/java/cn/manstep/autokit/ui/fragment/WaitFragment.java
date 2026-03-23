package cn.manstep.autokit.ui.fragment;

/**
 * WaitFragment.java - "Waiting for connection" fragment with loading animation.
 *
 * <p>Displayed while the box is waiting for a phone to connect (CarPlay/AndroidAuto).
 * Shows a rotating or frame-by-frame loading animation and optionally a
 * "wireless connection tips" text view when WiFi device is connected.</p>
 *
 * <h3>Animation system:</h3>
 * <ul>
 *   <li>Primary: AnimationDrawable (frame animation from ImageView background)</li>
 *   <li>Fallback: Rotation Animation with LinearInterpolator (if no AnimationDrawable)</li>
 * </ul>
 *
 * <h3>Box phase handling (on_Box_Phase):</h3>
 * <pre>
 *   phase=0  -> Stop animation (idle)
 *   phase=1  -> Start animation (initializing)
 *   phase=2  -> Start animation (connecting)
 *   phase=3  -> Start animation (authenticating)
 *   phase=4  -> Start animation + set status text (connected, waiting for stream):
 *               Text shows "Connecting to CarPlay/Android Auto/[device name]..."
 *   phase=12 -> Start animation (mirroring active)
 *   phase=14 -> Start animation
 *   phase=15 -> Start animation + reset display size
 * </pre>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   g2(View) -> initViews() - finds ImageView, sets up animation
 *   i2()     -> resetDisplaySize() - recalculates VIDEO_MAX_SIZE
 *   j2()     -> startAnimation() - starts loading indicator
 *   k2()     -> stopAnimation() - stops loading indicator
 * </pre>
 *
 * <p>Implements: BoxInterface.d.g (BoxEventListener)</p>
 * <p>Original: cn.manstep.phonemirrorBox.WaitFragment</p>
 */
public class WaitFragment extends androidx.fragment.app.Fragment
    /* implements BoxInterface.d.g */ {
    // private ImageView loadingImage;        // was a0
    // private Animation rotationAnimation;   // was b0
    // private AnimationDrawable frameAnimation; // was c0
    // private TextView wirelessTipsText;     // was d0
    // private View rootView;                 // was f0
    // private int lastPhase = -1;            // was e0
    // private boolean isAnimating = false;   // was g0
}
