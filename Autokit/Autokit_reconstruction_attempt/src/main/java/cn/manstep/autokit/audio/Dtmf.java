package cn.manstep.autokit.audio;

/**
 * Dtmf.java - DTMF tone processing via native library.
 *
 * <p>Loads the "dtmf" native library (libdtmf.so) which provides acoustic echo
 * cancellation (AEC) for DTMF tones during phone calls over CarPlay/AndroidAuto.</p>
 *
 * <h3>Native method:</h3>
 * <pre>
 *   dtmfDoAec(byte[] audioData) -> int
 *     Processes audio data through AEC filter.
 *     Returns: processed sample count or error code
 * </pre>
 *
 * <p>Original: cn.manstep.phonemirrorBox.Dtmf</p>
 */
public class Dtmf {
    static {
        try {
            System.loadLibrary("dtmf");
        } catch (UnsatisfiedLinkError e) {
            e.printStackTrace();
        }
    }

    public native int dtmfDoAec(byte[] audioData);
}
