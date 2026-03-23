package cn.manstep.autokit.ui;

/**
 * StateInterface.java - Interface defining all possible application state transitions.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as v0.d, this interface defines the complete set
 * of state transition callbacks for the mirroring session lifecycle.</p>
 *
 * <h3>Methods:</h3>
 * <pre>
 *   a()            -> onMusicStart()
 *   b()            -> onSiriStart()
 *   c(String, boolean) -> onDeviceConnecting(name, isWifi)
 *   d()            -> onSiriStop()
 *   e()            -> onMicStart()
 *   f()            -> onCallStop()
 *   g()            -> onCallStart()
 *   h()            -> onMirrorStart()
 *   i()            -> onDeviceConnected()
 *   j()            -> onNavigationStart()
 *   k()            -> onPhonePlugged()
 *   l()            -> onMicStop()
 *   m()            -> onCallEnd()
 *   n()            -> onNavigationEnd()
 *   o()            -> onMirrorStop()
 *   p()            -> onMirrorReady()
 *   q(Context)     -> setContext()
 * </pre>
 *
 * <p>Implemented by: AppState (v0.a), BroadcastModeDispatcher (v0.c), u0.e</p>
 * <p>Original: cn.manstep.phonemirrorBox.v0.d</p>
 */
public interface StateInterface {
    void onMusicStart();
    void onSiriStart();
    void onDeviceConnecting(String name, boolean isWifi);
    void onSiriStop();
    void onMicStart();
    void onCallStop();
    void onCallStart();
    void onMirrorStart();
    void onDeviceConnected();
    void onNavigationStart();
    void onPhonePlugged();
    void onMicStop();
    void onCallEnd();
    void onNavigationEnd();
    void onMirrorStop();
    void onMirrorReady();
    void setContext(android.content.Context context);
}
