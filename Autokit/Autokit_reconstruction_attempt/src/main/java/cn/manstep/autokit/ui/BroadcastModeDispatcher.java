package cn.manstep.autokit.ui;

/**
 * BroadcastModeDispatcher.java - Dispatches mode changes as broadcast intents.
 * /* UNVERIFIED: purpose inferred from code */
 *
 * <p>Originally obfuscated as v0.c, this class implements the state interface (v0.d)
 * and sends broadcast intents for each mode transition, allowing external apps
 * to react to AutoKit state changes.</p>
 *
 * <h3>Broadcast action:</h3>
 * <p>"cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_EVT"</p>
 *
 * <h3>Mode change codes (int extra "cn.manstep.phonemirrorBox.AUTO_BOX_MODE_CHANGE_DATA"):</h3>
 * <pre>
 *   1  -> AndroidAuto music start    11 -> Device connecting
 *   2  -> CarPlay/AA connected       12 -> Mirror ready
 *   3  -> Phone plugged              15 -> AndroidMirror music start
 *   4  -> Call stopped               16 -> AndroidMirror connected
 *   5  -> CarPlay music start        17 -> iPhoneMirror music start
 *   6  -> Siri started               18 -> iPhoneMirror connected
 *   7  -> Siri stopped               19 -> Call started
 *   8  -> Navigation started         20 -> Call ended
 *   9  -> Navigation ended (1)       22 -> HiCar music start
 *   10 -> Navigation ended (2)       23 -> HiCar connected
 * </pre>
 *
 * <p>Also tracks current device name to determine CarPlay vs AndroidAuto vs HiCar
 * for platform-specific broadcast codes.</p>
 *
 * <p>Original: cn.manstep.phonemirrorBox.v0.c</p>
 */
public class BroadcastModeDispatcher /* implements v0.d */ {
    // Sends broadcasts via stored Context reference
    // r(int code) -> sendBroadcast with mode change code
}
