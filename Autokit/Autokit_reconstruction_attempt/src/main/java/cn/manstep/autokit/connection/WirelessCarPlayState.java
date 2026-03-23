/**
 * WirelessCarPlayState.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.q0.e
 *
 * /* UNVERIFIED: purpose inferred from code analysis — isWireless()=true, same render as CarPlay */
 * Connection state for wireless CarPlay mode.
 * Same as CarPlay but with wireless flag set. Full rendering (mode=3),
 * touch + media, hardware decode, 0ms reconnect, variable frame rate.
 */
package cn.manstep.autokit.connection;

public class WirelessCarPlayState /* was: 'q0.e' */ implements ConnectionState {

    /** Phone type identifier. /* was: 'a' */ */
    private int phoneType /* was: 'a' */;

    public WirelessCarPlayState(int phoneType) {
        this.phoneType = -1;
        this.phoneType = phoneType;
    }

    @Override
    public boolean isWireless() {
        return true;
    }

    @Override
    public boolean isAndroidMirror() {
        return false;
    }

    @Override
    public int getRenderMode() {
        return 3;
    }

    @Override
    public boolean isTouchSupported() {
        return true;
    }

    @Override
    public boolean isMediaSupported() {
        return true;
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
        return highQuality ? 10 : 5;
    }
}
