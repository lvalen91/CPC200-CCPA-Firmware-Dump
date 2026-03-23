/**
 * UnknownState.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.q0.d
 *
 * /* UNVERIFIED: purpose inferred from code analysis — toString() says "Unknown" */
 * Connection state for an unknown/unrecognized device mode.
 * Minimal capabilities: render mode 5, no touch/media/USB/decode support,
 * connected but passive, 0ms reconnect, fixed 3 fps.
 */
package cn.manstep.autokit.connection;

public class UnknownState /* was: 'q0.d' */ implements ConnectionState {

    /** Phone type identifier. /* was: 'a' */ */
    private int phoneType /* was: 'a' */;

    public UnknownState(int phoneType) {
        this.phoneType = -1;
        this.phoneType = phoneType;
    }

    @Override
    public boolean isWireless() {
        return false;
    }

    @Override
    public boolean isAndroidMirror() {
        return false;
    }

    @Override
    public int getRenderMode() {
        return 5;
    }

    @Override
    public boolean isTouchSupported() {
        return false;
    }

    @Override
    public boolean isMediaSupported() {
        return false;
    }

    @Override
    public boolean isUsbAccessory() {
        return false;
    }

    @Override
    public boolean isConnected() {
        return true;
    }

    @Override
    public int getPhoneType() {
        return this.phoneType;
    }

    @Override
    public boolean skipVideoDecode() {
        return false;
    }

    @Override
    public int getReconnectDelay() {
        return 0;
    }

    @Override
    public boolean useHardwareDecode() {
        return true;
    }

    @Override
    public int getFrameRate(boolean highQuality) {
        return 3;
    }

    public String toString() {
        return "Unknown(" + this.phoneType + ")";
    }
}
