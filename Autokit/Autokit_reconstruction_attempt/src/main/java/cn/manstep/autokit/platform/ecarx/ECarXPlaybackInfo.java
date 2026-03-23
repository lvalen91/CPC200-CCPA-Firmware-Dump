package cn.manstep.autokit.platform.ecarx;

/**
 * ECarXPlaybackInfo.java - Playback state information for ECarX media center.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as ecarx.e, this class extends MusicPlaybackInfo
 * to report the current playback state to the vehicle's media center UI.
 * Displays "投影精灵" (Projection Wizard / AutoKit) as the app name and
 * shows the current connection type (CarPlay/HiCar) as the artist.</p>
 *
 * <h3>Reported metadata:</h3>
 * <pre>
 *   getAppName()  -> "投影精灵" (AutoKit Chinese name)
 *   getTitle()    -> "投影精灵"
 *   getArtist()   -> "CarPlay" or "HiCar" or "" based on box protocol state
 *   getAlbum()    -> "" (empty)
 *   getArtwork()  -> app icon resource URI
 *   getSourceType() -> 1 (local music type)
 *   getPlaybackStatus() -> 1 (playing) or 0 (paused)
 *   getLaunchIntent() -> PendingIntent for MainActivity
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.ecarx.e</p>
 */
public class ECarXPlaybackInfo /* extends com.ecarx.sdk.mediacenter.MusicPlaybackInfo */ {
    // Reports playback state and metadata to vehicle media center
    // Artist field dynamically shows "CarPlay" or "HiCar" based on active protocol
}
