/**
 * CarPlayState.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.q0.c
 *
 * /* UNVERIFIED: purpose inferred from code analysis — toString() says "CarPlay" */
 * Connection state for Apple CarPlay mode.
 * Full rendering (mode=3), touch + media, hardware decode, 500ms reconnect delay,
 * variable frame rate (10 high quality / 5 standard).
 */
package cn.manstep.autokit.connection;

import com.yalantis.ucrop.view.CropImageView;

public class CarPlayState /* was: 'q0.c' */ implements ConnectionState {

    /** Phone type identifier. /* was: 'a' */ */
    private int phoneType /* was: 'a' */;

    public CarPlayState(int phoneType) {
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
        return CropImageView.DEFAULT_IMAGE_TO_CROP_BOUNDS_ANIM_DURATION; /* 500 */
    }

    @Override
    public boolean useHardwareDecode() {
        return true;
    }

    @Override
    public int getFrameRate(boolean highQuality) {
        return highQuality ? 10 : 5;
    }

    public String toString() {
        return "CarPlay(" + this.phoneType + ")";
    }
}
