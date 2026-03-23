/**
 * AndroidJpegView.java
 *
 * JPEG frame viewer for the BoxConnection's JPEG video stream.
 * Extends ImageView and decodes individual JPEG frames from the raw byte stream.
 *
 * Rendering pipeline:
 *   BoxConnection -> v(byte[]) callback -> 36-byte header parse ->
 *   BitmapFactory.decodeByteArray (JPEG) -> Bitmap -> ImageView.setImageBitmap()
 *
 * This path is used for MJPEG-style video (e.g. iPhone AirPlay screen mirroring
 * on devices that don't support H.264 forwarding, or for thumbnail/preview views).
 *
 * Touch handling normalizes coordinates to 0-10000 range using the calculated
 * drawable dimensions (scale * intrinsic size), with offset for centering.
 *
 * Original: cn.manstep.phonemirrorBox.AndroidJpegView
 */
package cn.manstep.autokit.video.view;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.widget.ImageView;
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class AndroidJpegView extends ImageView implements d.g {

    /** The decoded bitmap currently displayed */
    /* was: 'f1367b' */
    private Bitmap currentBitmap;

    /** BitmapFactory options (with inBitmap for reuse) */
    /* was: 'f1368c' */
    private BitmapFactory.Options decodeOptions;

    /** Handler for UI thread operations (bitmap creation, invalidation) */
    /* was: 'f1369d' */
    private Handler uiHandler;

    /** Video width from the stream header */
    private int videoWidth;

    /** Video height from the stream header */
    private int videoHeight;

    /** Calculated display width (drawable width * scaleX) */
    private int calculatedWidth;

    /** Calculated display height (drawable height * scaleY) */
    private int calculatedHeight;

    /** X offset for centering the image in the view */
    private int offsetX;

    /** Y offset for centering the image in the view */
    private int offsetY;

    /**
     * Message constants for uiHandler:
     *   1 = invalidate view (new frame decoded)
     *   2 = create new bitmap (resolution changed)
     */
    private static final int MSG_INVALIDATE = 1;
    private static final int MSG_NEW_BITMAP = 2;

    class UiHandler extends Handler {
        UiHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            synchronized (AndroidJpegView.this) {
                if (MSG_NEW_BITMAP == message.what) {
                    /* Resolution changed -- create a new bitmap of the right size */
                    AndroidJpegView.this.currentBitmap = Bitmap.createBitmap(
                            AndroidJpegView.this.videoWidth,
                            AndroidJpegView.this.videoHeight,
                            Bitmap.Config.ARGB_8888);
                    AndroidJpegView.this.decodeOptions.inBitmap = AndroidJpegView.this.currentBitmap;
                    AndroidJpegView.this.decodeOptions.inSampleSize = 1;
                    AndroidJpegView.this.setImageBitmap(AndroidJpegView.this.currentBitmap);
                    AndroidJpegView.this.invalidate();
                    AndroidJpegView.this.recalculateScaleWH();
                    AndroidJpegView.this.notify();
                } else if (MSG_INVALIDATE == message.what) {
                    if (AndroidJpegView.this.calculatedHeight == 0) {
                        AndroidJpegView.this.recalculateScaleWH();
                    }
                    AndroidJpegView.this.invalidate();
                }
            }
        }
    }

    public AndroidJpegView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.currentBitmap = null;
        BitmapFactory.Options options = new BitmapFactory.Options();
        this.decodeOptions = options;
        this.videoWidth = 0;
        this.videoHeight = 0;
        this.calculatedWidth = 0;
        this.calculatedHeight = 0;
        this.offsetX = 0;
        this.offsetY = 0;
        options.inSampleSize = 1;
        this.uiHandler = new UiHandler();
        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView B");
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        /* Not used in JPEG path */
    }

    /**
     * Recalculate the display dimensions from the image matrix.
     * Extracts scaleX/scaleY from the matrix and computes:
     *   calculatedWidth  = drawable.width  * scaleX
     *   calculatedHeight = drawable.height * scaleY
     *   offsetX = (viewWidth - calculatedWidth) / 2
     *   offsetY = (viewHeight - calculatedHeight) / 2
     */
    /* was: b() -- RecaculateScaleWH */
    public void recalculateScaleWH() {
        cn.manstep.phonemirrorBox.util.s.c("iv_W = " + getWidth() + ", iv_H = " + getHeight());
        int drawableW = getDrawable().getBounds().width();
        int drawableH = getDrawable().getBounds().height();
        cn.manstep.phonemirrorBox.util.s.c("drawable_X = " + drawableW + ", drawable_Y = " + drawableH);
        float[] matrixValues = new float[10];
        getImageMatrix().getValues(matrixValues);
        float scaleX = matrixValues[0];
        float scaleY = matrixValues[4];
        cn.manstep.phonemirrorBox.util.s.c("scale_X = " + scaleX + ", scale_Y = " + scaleY);
        int w = (int) (((float) drawableW) * scaleX);
        int h = (int) (((float) drawableH) * scaleY);
        cn.manstep.phonemirrorBox.util.s.c("caculate_W = " + w + ", caculate_H = " + h);
        this.calculatedWidth = w;
        this.calculatedHeight = h;
        this.offsetX = (getWidth() - w) / 2;
        this.offsetY = (getHeight() - h) / 2;
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
        /* Unused */
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        /* No-op */
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        /* Phase callbacks not used in JPEG path */
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView onAttachedToWindow");
        cn.manstep.phonemirrorBox.v0.e.M(this);
        super.onAttachedToWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView onDetachedFromWindow");
        this.currentBitmap = null;
        this.videoWidth = 0;
        this.videoHeight = 0;
        cn.manstep.phonemirrorBox.v0.e.S(this);
        super.onDetachedFromWindow();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        synchronized (this) {
            super.onDraw(canvas);
        }
    }

    /**
     * Touch event handler. Normalizes coordinates to 0-10000 range using
     * the calculated display dimensions and centering offsets.
     */
    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int adjustedX = ((int) motionEvent.getX()) - this.offsetX;
        int adjustedY = ((int) motionEvent.getY()) - this.offsetY;
        int w = this.calculatedWidth;
        int normalizedX = adjustedX > w ? 10000 : adjustedX > 0 ? (adjustedX * 10000) / w : 0;
        int normalizedY = adjustedY <= this.calculatedHeight
                ? adjustedY > 0 ? (((int) motionEvent.getY()) * 10000) / this.calculatedHeight : 0
                : 10000;
        int action = motionEvent.getAction() & 0xFF;
        if (action == 0) { /* ACTION_DOWN */
            cn.manstep.phonemirrorBox.v0.e.L(0, 0, normalizedX, normalizedY);
        } else if (action == 1) { /* ACTION_UP */
            cn.manstep.phonemirrorBox.v0.e.L(2, 0, normalizedX, normalizedY);
            f.b(false);
        } else if (action == 2) { /* ACTION_MOVE */
            cn.manstep.phonemirrorBox.v0.e.L(1, 0, normalizedX, normalizedY);
        }
        return true;
    }

    /**
     * Receive raw JPEG data from the box.
     *
     * Packet format (little-endian, 36-byte header):
     *   +4:  int  -- total size (subtract 36 for JPEG payload)
     *   +8:  int  -- width
     *   +12: int  -- height
     *   +24: int  -- codec type (lower 16 bits >> 16 & 0xFF: 2 = JPEG)
     *   +32: byte[]  -- JPEG payload
     *
     * If the resolution changed, creates a new Bitmap on the UI thread and waits.
     * If codec type == 2, decodes the JPEG payload into the reusable bitmap.
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        ByteBuffer buf = ByteBuffer.wrap(bArr);
        buf.order(ByteOrder.LITTLE_ENDIAN);
        int payloadSize = buf.getInt(4) - 36;
        int width = buf.getInt(8);
        int height = buf.getInt(12);
        int codecType = (buf.getInt(24) >> 16) & 0xFF;
        if (payloadSize <= 0 || width <= 0 || height <= 0 || width > 2000 || height > 2000) {
            cn.manstep.phonemirrorBox.util.s.c("Error bytes:" + bArr.length
                    + "W:" + width + "H:" + height + "jpegsize:" + payloadSize);
            return;
        }
        this.videoWidth = width;
        this.videoHeight = height;
        Bitmap bmp = this.currentBitmap;
        boolean resolutionChanged = (bmp != null && bmp.getWidth() == this.videoWidth
                && this.currentBitmap.getHeight() == this.videoHeight) ? false : true;
        synchronized (this) {
            if (resolutionChanged) {
                try {
                    this.uiHandler.sendMessage(this.uiHandler.obtainMessage(MSG_NEW_BITMAP));
                    try {
                        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView wait start w:"
                                + this.videoWidth + " h:" + this.videoHeight);
                        wait();
                        cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView wait over:" + this.currentBitmap);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                        cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (codecType != 2) {
                /* Not JPEG -- just request scale recalc */
                if (this.calculatedHeight == 0) {
                    cn.manstep.phonemirrorBox.util.s.c("AndroidJpegView need RecaculateScaleWH");
                    this.uiHandler.sendMessage(this.uiHandler.obtainMessage(MSG_INVALIDATE));
                }
            } else {
                /* JPEG frame -- decode into the reusable bitmap */
                try {
                    this.currentBitmap = BitmapFactory.decodeByteArray(
                            buf.array(), 32, payloadSize, this.decodeOptions);
                } catch (IllegalArgumentException e) {
                    e.printStackTrace();
                    cn.manstep.phonemirrorBox.util.s.e(Log.getStackTraceString(e));
                }
                this.uiHandler.sendMessage(this.uiHandler.obtainMessage(MSG_INVALIDATE));
            }
        }
    }
}
