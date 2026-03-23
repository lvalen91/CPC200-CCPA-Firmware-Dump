package cn.manstep.autokit.ui.floatwindow;

/**
 * DefaultFloatButtonCallback.java - Default no-op implementation of FloatButtonCallback.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as floatwindow.d, this is an empty default implementation
 * of the FloatButtonCallback abstract class. All methods are no-ops.
 * Used as the default callback when no platform-specific behavior is needed.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.floatwindow.d</p>
 */
public class DefaultFloatButtonCallback extends FloatButtonCallback {
    @Override public void onPlayPauseStateChanged(boolean isPlaying) {}
    @Override public void onHomeIconChanged(boolean isConnected) {}
    @Override public void onViewCreated(android.view.View view) {}
}
