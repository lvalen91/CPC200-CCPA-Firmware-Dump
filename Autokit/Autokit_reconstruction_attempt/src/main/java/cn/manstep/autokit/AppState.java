package cn.manstep.autokit;

/**
 * AppState.java - Application-wide state manager and event dispatcher.
 *
 * <p>Originally obfuscated as v0.a, this singleton tracks the current state
 * of the mirroring session (connection phase, call state, media playback)
 * and dispatches state changes to registered ModeChangeListeners (v0.b).</p>
 *
 * <h3>Singleton:</h3>
 * <pre>
 *   t() -> getInstance() - thread-safe singleton accessor
 * </pre>
 *
 * <h3>State tracking:</h3>
 * <pre>
 *   f1940c -> callState: 0=idle, 1=ringing, 2=in-call
 *   f1941d -> isMediaPlaying (boolean)
 *   e      -> currentDeviceName (String)
 *   f      -> currentPhase (int): 0-17 + 40
 *   g      -> isMirroring (boolean) - true when active mirror session
 *   h      -> isSiriActive (boolean)
 * </pre>
 *
 * <h3>Key method mappings:</h3>
 * <pre>
 *   A() -> isInAnyCallOrMirror() - true if calling, ringing, or mirroring
 *   B() -> isSiriActive() - phase==10
 *   C() -> isMirroring()
 *   D() -> setMirrorReady() - phase 15
 *   E() -> clearListeners()
 *   r(listener) -> registerListener()
 *   F(listener) -> unregisterListener()
 *   u() -> getDeviceName()
 *   v() -> isInCall() - callState==2
 *   w() -> isRinging() - callState==1
 *   x() -> isCallingOrRinging()
 *   y() -> isMediaPlaying()
 *   z() -> isSiriActive()
 * </pre>
 *
 * <h3>State interface (d) methods dispatched:</h3>
 * <pre>
 *   a()            -> onMusicStart()       [phase 2]
 *   b()            -> onSiriStart()        [phase 8]
 *   c(name, wifi)  -> onDeviceConnecting() [phase 1]
 *   d()            -> onSiriStop()         [phase 9]
 *   e()            -> onMicStart()         [phase 10]
 *   f()            -> onCallStop()         [phase 5]
 *   g()            -> onCallStart()        [phase 6]
 *   h()            -> onMirrorStart()      [phase 12]
 *   i()            -> onDeviceConnected()  [phase 3]
 *   j()            -> onNavigationStart()  [phase 16]
 *   k()            -> onCallConnecting()   [phase 4]
 *   l()            -> onMicStop()          [phase 11]
 *   m()            -> onCallEnd()          [phase 7]
 *   n()            -> onNavigationEnd()    [phase 17]
 *   o()            -> onMirrorStop()       [phase 13]
 *   p()            -> onMirrorReady()      [phase 14/15]
 *   q(context)     -> setContext()
 *   s()            -> onAndroidAutoCall()  [phase 40]
 * </pre>
 *
 * <h3>ModeChangeListener (v0.b) callbacks dispatched:</h3>
 * <pre>
 *   a() -> onCallIncoming     h() -> onPhoneDisconnect
 *   b() -> onMirrorStop       i() -> onMediaPause
 *   c() -> onCallStop         j() -> onMediaPlay
 *   d(name) -> onModeChanged  k() -> onMirrorStart
 *   e() -> onMicStart
 *   f() -> onMicStop
 *   g() -> onCallStart
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.v0.a</p>
 */
public class AppState /* implements v0.d */ {
    private static AppState instance; // was i

    public static AppState getInstance() {
        // Double-checked locking singleton
        return instance;
    }
}
