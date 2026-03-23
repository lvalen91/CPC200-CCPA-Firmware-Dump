package cn.manstep.autokit.platform.ecarx;

/**
 * ECarXMusicClient.java - ECarX media center music client for vehicle controls.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as ecarx.c, this class extends the ECarX SDK's
 * MusicClient to handle vehicle media control commands (play, pause, next,
 * previous) from the head unit's physical buttons or voice control.</p>
 *
 * <h3>Callbacks:</h3>
 * <pre>
 *   onPlay()     -> sends BoxInterface.d.L(201) (media play command)
 *   onPause()    -> sends BoxInterface.d.L(202) (media pause command)
 *   onNext()     -> sends ViewManager.H(204) (next track command)
 *   onPrevious() -> sends ViewManager.H(205) (previous track command)
 *   operationType(int type) -> tracks operation type (1=music, etc.)
 *   onMediaCenterFocusChanged(String) -> logs focus change
 * </pre>
 *
 * <p>After each command, calls ECarXUtil.requestPlay(true/false) to update
 * the vehicle's media center playback state display.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.ecarx.c</p>
 */
public class ECarXMusicClient /* extends com.ecarx.sdk.mediacenter.MusicClient */ {
    // Bridges vehicle media controls to box protocol commands
}
