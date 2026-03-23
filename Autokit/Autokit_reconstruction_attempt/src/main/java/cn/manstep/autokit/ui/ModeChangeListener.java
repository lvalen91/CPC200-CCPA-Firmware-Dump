package cn.manstep.autokit.ui;

/**
 * ModeChangeListener.java - Interface for mode/state change notifications.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as v0.b, this interface defines callbacks for
 * services and UI components that need to respond to mirroring mode changes,
 * phone call states, and media playback events.</p>
 *
 * <h3>Callback methods:</h3>
 * <pre>
 *   a() -> onCallIncoming()
 *   b() -> onMirrorStop()
 *   c() -> onCallStop()
 *   d(String modeName) -> onModeChanged()
 *   e() -> onMicStart()
 *   f() -> onMicStop()
 *   g() -> onCallStart()
 *   h() -> onPhoneDisconnect()
 *   i() -> onMediaPause()
 *   j() -> onMediaPlay()
 *   k() -> onMirrorStart()
 * </pre>
 *
 * <p>Implemented by: ModeChangeService, QuickBallService (floatwindow.FloatWindowService)</p>
 * <p>Original: cn.manstep.phonemirrorBox.v0.b</p>
 */
public interface ModeChangeListener {
    void onCallIncoming();
    void onMirrorStop();
    void onCallStop();
    void onModeChanged(String modeName);
    void onMicStart();
    void onMicStop();
    void onCallStart();
    void onPhoneDisconnect();
    void onMediaPause();
    void onMediaPlay();
    void onMirrorStart();
}
