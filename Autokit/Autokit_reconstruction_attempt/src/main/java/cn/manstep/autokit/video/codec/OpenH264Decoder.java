/**
 * OpenH264Decoder.java
 *
 * JNI bridge to libopenH264decoder.so for software H.264 decoding.
 * Used as the decode backend when GlobalConfig.useSoftDecode (p.g) == true.
 *
 * Rendering pipeline:
 *   BoxConnection -> v(byte[]) -> OpenH264Decoder.decode() ->
 *   YUV byte[] buffer -> SoftH264Render (d.d.a.b, OpenGL ES 2.0) ->
 *   AutoBoxMirrorSoftView (GLSurfaceView)
 *
 * The native library (libopenH264decoder.so) wraps Cisco's OpenH264 codec
 * and performs CPU-based H.264 decoding. The decoded output is YUV 4:2:0
 * (NV12 or I420, size = width * height * 3/2) stored in the `yuvBuffer` array.
 *
 * The SoftH264Render (obtained from AutoBoxMirrorSoftView.getSoftH264Render())
 * takes the YUV buffer and renders it via an OpenGL ES 2.0 YUV-to-RGB shader.
 *
 * If the native library fails to load (UnsatisfiedLinkError), GlobalConfig.useSoftDecode
 * is set to false, effectively disabling the software decode path.
 *
 * Original: cn.manstep.phonemirrorBox.OpenH264Decoder
 */
package cn.manstep.autokit.video.codec;

public class OpenH264Decoder {

    /** Decoded video width (updated by native code after each frame) */
    /* was: 'a' */
    private int decodedWidth;

    /** Decoded video height */
    /* was: 'f1547b' */
    private int decodedHeight;

    /** Display/render width (may differ from decoded width) */
    /* was: 'f1548c' */
    private int renderWidth;

    /** Reference to the SoftH264 OpenGL renderer for pushing decoded YUV frames */
    /* was: 'f1549d' */
    private d.d.a.b softH264Render = null;

    /** Frame counter (incremented on each decode call) */
    private int frameCount;

    /**
     * YUV output buffer. Pre-allocated to hold the largest expected frame
     * (initial size: 4392000 bytes = ~1920x1520 * 1.5, covers up to 1080p).
     * Resized dynamically if decoded dimensions exceed the current buffer.
     */
    public byte[] yuvBuffer;

    static {
        try {
            System.loadLibrary("openH264decoder");
        } catch (UnsatisfiedLinkError e) {
            /* Native library not available -- disable software decode path */
            p.g = false; /* GlobalConfig.useSoftDecode = false */
            cn.manstep.phonemirrorBox.util.s.f("OpenH264Decoder",
                    "static initializer: " + cn.manstep.phonemirrorBox.util.s.g(e));
        }
    }

    /** Native: release native decoder resources */
    private native void nativeDestroy();

    /** Native: initialize the OpenH264 decoder */
    private native void nativeInit();

    /**
     * Release the decoder: detach the renderer and destroy native resources.
     */
    /* was: a() */
    public void release() {
        d.d.a.b renderer = this.softH264Render;
        if (renderer != null) {
            renderer.a(); /* Release renderer resources */
            this.softH264Render = null;
        }
        nativeDestroy();
    }

    /**
     * Initialize the decoder: allocate the YUV buffer, reset state,
     * obtain the SoftH264 renderer from AutoBoxMirrorSoftView, and init native.
     */
    /* was: b() */
    public void initialize() {
        this.yuvBuffer = new byte[4392000]; /* ~1920x1520 * 1.5 */
        this.renderWidth = 0;
        this.decodedHeight = 0;
        this.decodedWidth = 0;
        this.softH264Render = AutoBoxMirrorSoftView.getSoftH264Render();
        this.frameCount = 0;
        nativeInit();
    }

    /**
     * Decode a single H.264 frame and push the result to the renderer.
     *
     * @param data   raw H.264 NAL unit data
     * @param offset byte offset into data where the NAL begins
     * @param length number of bytes to decode
     */
    /* was: c(byte[], int, int) */
    public void decode(byte[] data, int offset, int length) {
        d.d.a.b renderer;
        byte[] buf = this.yuvBuffer;
        /* Decode the frame via JNI -- returns decoded size or 0/negative on error */
        int decodedSize = decodeFrameOffset(data, offset, length, buf, buf.length);
        this.frameCount++;

        /* Check if resolution changed (native code updates getWidth/getHeight) */
        if (this.decodedWidth != getWidth() || this.decodedHeight != getHeight()) {
            int newWidth = getWidth();
            int newHeight = getHeight();
            this.renderWidth = newWidth;
            this.decodedWidth = newWidth;
            this.decodedHeight = newHeight;

            /* Resize YUV buffer if needed (YUV 4:2:0 = width * height * 3/2) */
            if (this.yuvBuffer.length < ((newWidth * newHeight) * 3) / 2) {
                this.yuvBuffer = new byte[((newWidth * newHeight) * 3) / 2];
            }

            cn.manstep.phonemirrorBox.util.s.e("mShowWidth = " + this.renderWidth);
            d.d.a.b r = this.softH264Render;
            if (r != null) {
                r.b(this.renderWidth, this.decodedHeight); /* Update renderer dimensions */
            }
        }

        /* Push decoded YUV frame to the renderer (if decode succeeded and renderer exists) */
        if (decodedSize <= 0 || (renderer = this.softH264Render) == null || this.frameCount <= 0) {
            return;
        }
        renderer.c(this.yuvBuffer); /* Render the YUV frame */
    }

    /**
     * Native: decode H.264 data at the given offset into the output buffer.
     *
     * @param inputData    input H.264 NAL data
     * @param offset       byte offset into inputData
     * @param inputLength  number of bytes to decode
     * @param outputBuffer pre-allocated YUV output buffer
     * @param outputLength capacity of the output buffer
     * @return decoded data size in bytes, or <= 0 on error
     */
    public native int decodeFrameOffset(byte[] inputData, int offset, int inputLength,
                                        byte[] outputBuffer, int outputLength);

    /** Native: get the width of the most recently decoded frame */
    public native int getHeight();

    /** Native: get the height of the most recently decoded frame */
    public native int getWidth();
}
