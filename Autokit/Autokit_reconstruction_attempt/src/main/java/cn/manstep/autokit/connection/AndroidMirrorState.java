/**
 * AndroidMirrorState.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.q0.b
 *
 * /* UNVERIFIED: purpose inferred from code analysis — toString() says "AndroidMirror" */
 * Connection state for Android screen mirroring mode.
 * Uses USB accessory protocol, skips video decode (raw mirror), no hardware decode,
 * no touch/media from box side, 0ms reconnect delay.
 */
package cn.manstep.autokit.connection;

public class AndroidMirrorState /* was: 'q0.b' */ implements ConnectionState {

    /** Phone type identifier. /* was: 'a' */ */
    private int phoneType /* was: 'a' */;

    public AndroidMirrorState(int phoneType) {
        this.phoneType = -1;
        this.phoneType = phoneType;
    }

    @Override
    public boolean isWireless() {
        return false;
    }

    @Override
    public boolean isAndroidMirror() {
        return true;
    }

    @Override
    public int getRenderMode() {
        return 1;
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
        return true;
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
        return true;
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
        return 20;
    }

    public String toString() {
        return "AndroidMirror(" + this.phoneType + ")";
    }
}
