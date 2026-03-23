/**
 * IPhoneMirrorState.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.q0.f
 *
 * /* UNVERIFIED: purpose inferred from code analysis — toString() says "iPhoneMirror" */
 * Connection state for iPhone screen mirroring (AirPlay mirror).
 * All capabilities disabled: no render, no touch, no media, no hardware decode,
 * not connected, 0 fps. Essentially a "disconnected" or "unsupported" state.
 */
package cn.manstep.autokit.connection;

public class IPhoneMirrorState /* was: 'q0.f' */ implements ConnectionState {

    /** Phone type identifier. /* was: 'a' */ */
    private int phoneType /* was: 'a' */;

    public IPhoneMirrorState(int phoneType) {
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
        return 0;
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
        return false;
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
        return false;
    }

    @Override
    public int getFrameRate(boolean highQuality) {
        return 0;
    }

    public String toString() {
        return "iPhoneMirror(" + this.phoneType + ")";
    }
}
