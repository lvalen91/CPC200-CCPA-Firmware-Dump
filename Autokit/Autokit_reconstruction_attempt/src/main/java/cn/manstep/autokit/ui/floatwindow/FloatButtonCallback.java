package cn.manstep.autokit.ui.floatwindow;

/**
 * FloatButtonCallback.java - Abstract callback for float window button state changes.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as floatwindow.a, this abstract class defines callbacks
 * for the float window buttons (play/pause icon, home icon, visibility).</p>
 *
 * <h3>Methods:</h3>
 * <pre>
 *   a(boolean) -> onPlayPauseStateChanged(boolean isPlaying)
 *   b(boolean) -> onHomeIconChanged(boolean isConnected)
 *   c(boolean) -> getWindowAnimationStyle() - returns 0 by default
 *   d(View)    -> onViewCreated(View rootView)
 *   e()        -> isSymmetricLayout() - returns true by default
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.floatwindow.a</p>
 */
public abstract class FloatButtonCallback {
    public abstract void onPlayPauseStateChanged(boolean isPlaying);
    public abstract void onHomeIconChanged(boolean isConnected);
    public int getWindowAnimationStyle(boolean isRight) { return 0; }
    public abstract void onViewCreated(android.view.View view);
    public boolean isSymmetricLayout() { return true; }
}
