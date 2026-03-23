/**
 * ConnectionState.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.q0.g
 *
 * Phone connection state machine interface. Defines the contract for all
 * connection mode implementations (CarPlay, AndroidAuto, AndroidMirror, etc.).
 * Each method describes a capability or configuration parameter of the mode.
 */
package cn.manstep.autokit.connection;

public interface ConnectionState /* was: 'q0.g' */ {

    /**
     * Whether this mode supports wireless connection.
     * /* was: 'a' */
     */
    boolean isWireless(/* was: 'a' */);

    /**
     * Whether this mode uses Android mirroring (screen capture).
     * /* was: 'b' */
     */
    boolean isAndroidMirror(/* was: 'b' */);

    /**
     * Get the rendering mode (e.g., 0=none, 1=basic, 3=full).
     * /* was: 'c' */
     */
    int getRenderMode(/* was: 'c' */);

    /**
     * Whether touch input is supported.
     * /* was: 'd' */
     */
    boolean isTouchSupported(/* was: 'd' */);

    /**
     * Whether media/audio playback is supported.
     * /* was: 'e' */
     */
    boolean isMediaSupported(/* was: 'e' */);

    /**
     * Whether this mode uses USB accessory protocol.
     * /* was: 'f' */
     */
    boolean isUsbAccessory(/* was: 'f' */);

    /**
     * Whether the connection is currently active/valid.
     * /* was: 'g' */
     */
    boolean isConnected(/* was: 'g' */);

    /**
     * Get the phone type identifier.
     * /* was: 'h' */
     */
    int getPhoneType(/* was: 'h' */);

    /**
     * Whether video decoding should be skipped (mirror mode).
     * /* was: 'i' */
     */
    boolean skipVideoDecode(/* was: 'i' */);

    /**
     * Get the reconnect delay in milliseconds.
     * /* was: 'j' */
     */
    int getReconnectDelay(/* was: 'j' */);

    /**
     * Whether hardware video decoding should be used.
     * /* was: 'k' */
     */
    boolean useHardwareDecode(/* was: 'k' */);

    /**
     * Get the frame rate limit based on connection quality.
     * /* was: 'l' */
     *
     * @param highQuality true for higher frame rate
     * @return frame rate value
     */
    int getFrameRate(/* was: 'l' */ boolean highQuality);
}
