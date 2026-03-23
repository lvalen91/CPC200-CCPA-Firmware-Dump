/**
 * JniTools.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.JniTools
 *
 * Native JNI tool methods for PCM audio processing, signature verification,
 * and mono-to-stereo conversion. Loads the "tools2.1" native library.
 */
package cn.manstep.autokit.util;

import android.util.Log;

public class JniTools {

    static {
        try {
            System.loadLibrary("tools2.1");
        } catch (Error | Exception e) {
            e.printStackTrace();
            Logger.logError("JniTools: \n" + Log.getStackTraceString(e));
        }
    }

    /** Amplify PCM audio data in-place. */
    public static native void amplifyPcmData(byte[] data, int offset, int length, int amplification);

    /** Verify box identity with the native library. */
    public static native boolean box(String identifier);

    /** Run a native integrity check, returns status code. */
    public static native int check();

    /** Check the APK signature against expected value. */
    public static native boolean checkSignature(String signature);

    /** Convert mono PCM data to stereo, writing into the output buffer. */
    public static native void mono2Stereo(byte[] monoData, int offset, int length, byte[] stereoOut);

    /** Open a native resource by path. */
    public static native boolean open(String path);

    /** Run a native self-test. */
    public static native void test();
}
