/**
 * AndroidAutoState.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.q0.a
 *
 * /* UNVERIFIED: purpose inferred from code analysis — toString() says "AndroidAuto Or CarLife" */
 * Connection state for Android Auto or CarLife mode.
 * Basic rendering (mode=1), touch + media supported, hardware decode, 100ms reconnect.
 */
package cn.manstep.autokit.connection;

public class AndroidAutoState /* was: 'q0.a' */ implements ConnectionState {

    /** Phone type identifier. /* was: 'a' */ */
    private int phoneType /* was: 'a' */;

    public AndroidAutoState(int phoneType) {
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
        return 1;
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
        return 100;
    }

    @Override
    public boolean useHardwareDecode() {
        return true;
    }

    @Override
    public int getFrameRate(boolean highQuality) {
        return 20;
    }

    public String toString() {
        return "AndroidAuto Or CarLife(" + this.phoneType + ")";
    }
}
