package cn.manstep.autokit.platform.ecarx;

/**
 * ECarXMusicIntentListener.java - ECarX VR music intent handler.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as ecarx.d, this class extends the ECarX SDK's
 * MusicIntentListener to handle voice-recognized music control intents
 * from the vehicle's VR (Voice Recognition) system.</p>
 *
 * <h3>Handled intents:</h3>
 * <pre>
 *   handlePlayMusic(MusicPlayIntent, IResponse)   -> logs play intent
 *   handleSearchMusic(MusicSearchIntent, IResponse) -> logs search intent
 *   handleCtrlApp(MediaCtrlIntent, IResponse)     -> logs control intent
 * </pre>
 *
 * <p>All handlers call super and log the intent details. The actual music
 * control is handled through the MusicClient callbacks.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.ecarx.d</p>
 */
public class ECarXMusicIntentListener /* extends com.ecarx.sdk.vr.music.MusicIntentListener */ {
    // Receives VR-triggered music intents from vehicle system
}
