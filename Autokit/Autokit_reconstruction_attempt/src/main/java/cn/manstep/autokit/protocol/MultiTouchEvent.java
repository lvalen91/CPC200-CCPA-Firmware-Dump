/**
 * MultiTouchEvent.java
 *
 * Touch event data container supporting up to 5 simultaneous pointers.
 * Converts Android MotionEvents into normalized (0.0-1.0) coordinates
 * and serializes them into a ByteBuffer for USB transmission to the box.
 *
 * Each pointer occupies 16 bytes: float x, float y, int action, int pointerId.
 *
 * Original: BoxInterface/e.java
 */
package cn.manstep.autokit.protocol;

import android.view.MotionEvent;
import com.yalantis.ucrop.view.CropImageView;
import java.nio.ByteBuffer;

public class MultiTouchEvent {
    public float[] x = new float[5];              /* was: field 'a' */

    public float[] y = new float[5];              /* was: field 'f1445b' (renamed from 'b') */

    public int[] action = new int[5];             /* was: field 'f1446c' (renamed from 'c') */

    public int[] pointerId = new int[5];          /* was: field 'f1447d' (renamed from 'd') */

    public int pointerCount = 0;                  /* was: field 'e' */

    /**
     * Processes an Android MotionEvent, normalizing coordinates relative to
     * offsetX/offsetY and scaleW/scaleH, then dispatches via v0.e.K().
     *
     * Action mapping: ACTION_DOWN(0)->1, ACTION_UP(1)->0, ACTION_MOVE(2)->2, ACTION_POINTER_DOWN(5)->1
     *
     * was: method 'b(MotionEvent, int, int, int, int)' = processMotionEvent()
     */
    public static boolean processMotionEvent(MotionEvent motionEvent, int offsetX, int offsetY, int scaleW, int scaleH) {
        MultiTouchEvent event = new MultiTouchEvent();
        int actionMasked = motionEvent.getActionMasked();
        int mappedAction = 2; /* default: MOVE */
        if (actionMasked == 0) {           /* ACTION_DOWN */
            mappedAction = 1;
        } else if (actionMasked == 1) {    /* ACTION_UP */
            mappedAction = 0;
        } else if (actionMasked != 2) {    /* ACTION_MOVE stays 2 */
            if (actionMasked != 5) {       /* ACTION_POINTER_DOWN stays 2 */
                /* other actions also map to 2 */
            }
        }
        int count = motionEvent.getPointerCount();
        if (count > 5) {
            count = 5;
        }
        for (int i = 0; i < count; i++) {
            int pid = motionEvent.getPointerId(i);
            if (pid >= 5) {
                return true;
            }
            if ((motionEvent.getActionMasked() != 5 && motionEvent.getActionMasked() != 6)
                    || pid == motionEvent.getPointerId(motionEvent.getActionIndex())) {
                int rawX = ((int) motionEvent.getX(i)) - offsetX;
                int rawY = ((int) motionEvent.getY(i)) - offsetY;
                float normX = rawX > scaleW ? 1.0f : rawX > 0 ? (rawX * 1.0f) / scaleW : CropImageView.DEFAULT_ASPECT_RATIO;
                float normY = rawY > scaleH ? 1.0f : rawY > 0 ? (rawY * 1.0f) / scaleH : CropImageView.DEFAULT_ASPECT_RATIO;
                /* Clamp to [0.0, 1.0] */
                if (normX < CropImageView.DEFAULT_ASPECT_RATIO) {
                    normX = CropImageView.DEFAULT_ASPECT_RATIO;
                } else if (normX > 1.0f) {
                    normX = 1.0f;
                }
                float clampedY = CropImageView.DEFAULT_ASPECT_RATIO;
                if (normY >= CropImageView.DEFAULT_ASPECT_RATIO) {
                    clampedY = normY > 1.0f ? 1.0f : normY;
                }
                int idx = event.pointerCount;
                event.x[idx] = normX;
                event.y[idx] = clampedY;
                event.action[idx] = mappedAction;
                event.pointerId[idx] = pid;
                event.pointerCount = idx + 1;
            }
        }
        cn.manstep.phonemirrorBox.v0.e.K(event);
        return true;
    }

    /**
     * Returns the byte size needed to serialize this event (16 bytes per pointer).
     * was: method 'a()'
     */
    int getByteSize() {  /* was: method 'a' */
        return this.pointerCount * 16;
    }

    /**
     * Serializes this touch event into a ByteBuffer at the given offset.
     * Layout per pointer: float x (4B), float y (4B), int action (4B), int pointerId (4B).
     *
     * was: method 'c(ByteBuffer, int)' = writeTo()
     */
    void writeTo(ByteBuffer byteBuffer, int offset) {  /* was: method 'c' */
        for (int i = 0; i < this.pointerCount; i++) {
            int base = i * 16;
            byteBuffer.putFloat(offset + 0 + base, this.x[i]);
            byteBuffer.putFloat(offset + 4 + base, this.y[i]);
            byteBuffer.putInt(offset + 8 + base, this.action[i]);
            byteBuffer.putInt(offset + 12 + base, this.pointerId[i]);
        }
    }
}
