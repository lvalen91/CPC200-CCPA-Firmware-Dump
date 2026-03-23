/**
 * ThreeFingerGestureDetector.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.util.t
 *
 * /* UNVERIFIED: purpose inferred from code analysis */
 * Detects three-finger swipe gestures in any of four directions (up, left,
 * down, right). When all three fingers move in the configured direction
 * beyond a threshold distance, the gesture callback is triggered.
 * Used for hidden settings access (e.g., three-finger swipe down to open debug menu).
 */
package cn.manstep.autokit.util;

import android.content.Context;
import android.graphics.Point;
import android.view.MotionEvent;

public class ThreeFingerGestureDetector /* was: 'util.t' */ {

    /** Current pointer count tracking state. /* was: 'a' */ */
    private int pointerState /* was: 'a' */;

    /** First finger start position. /* was: 'f1927b' */ */
    private Point finger1Start /* was: 'f1927b' */;

    /** Second finger start position. /* was: 'f1928c' */ */
    private Point finger2Start /* was: 'f1928c' */;

    /** Third finger start position. /* was: 'f1929d' */ */
    private Point finger3Start /* was: 'f1929d' */;

    /** Gesture callback. /* was: 'f' */ */
    private GestureCallback callback /* was: 'f' */;

    /** Minimum swipe distance threshold in pixels. /* was: 'e' */ */
    int threshold /* was: 'e' */ = 50;

    /** Swipe direction: 0=up, 1=left, 2=down, 3=right. /* was: 'g' */ */
    private int direction /* was: 'g' */ = 2;

    /** Gesture detected callback. /* was: inner interface 'a' */ */
    public interface GestureCallback /* was: 'a' */ {
        void onGestureDetected(/* was: 'j' */);
    }

    public ThreeFingerGestureDetector(Context context) {
        init();
    }

    private void init(/* was: 'a' */) {
        this.finger1Start = new Point();
        this.finger2Start = new Point();
        this.finger3Start = new Point();
    }

    /** Set the gesture callback. /* was: 'b' */ */
    public void setCallback(/* was: 'b' */ GestureCallback callback) {
        this.callback = callback;
    }

    /**
     * Process a touch event. Returns true if a gesture was detected.
     * /* was: 'c' */
     */
    public boolean onTouchEvent(/* was: 'c' */ MotionEvent event) {
        int action = event.getActionMasked();
        boolean detected = false;
        if (action == 0) { /* ACTION_DOWN */
            this.pointerState = 0;
            this.finger1Start.x = (int) event.getX(0);
            this.finger1Start.y = (int) event.getY(0);
        } else if (action == 1) { /* ACTION_UP */
            this.pointerState = 0;
        } else if (action == 2) { /* ACTION_MOVE */
            int state = this.pointerState;
            if (state == 3 && event.getPointerCount() == 3) {
                Point p1 = new Point((int) event.getX(0), (int) event.getY(0));
                Point p2 = new Point((int) event.getX(1), (int) event.getY(1));
                Point p3 = new Point((int) event.getX(2), (int) event.getY(2));
                int dir = this.direction;
                if (dir == 0) { /* up */
                    detected = (this.finger1Start.y - p1.y > this.threshold
                            && this.finger2Start.y - p2.y > this.threshold
                            && this.finger3Start.y - p3.y > this.threshold);
                } else if (dir == 1) { /* left */
                    detected = (this.finger1Start.x - p1.x > this.threshold
                            && this.finger2Start.x - p2.x > this.threshold
                            && this.finger3Start.x - p3.x > this.threshold);
                } else if (dir == 2) { /* down */
                    detected = (p1.y - this.finger1Start.y > this.threshold
                            && p2.y - this.finger2Start.y > this.threshold
                            && p3.y - this.finger3Start.y > this.threshold);
                } else if (dir == 3) { /* right */
                    detected = (p1.x - this.finger1Start.x > this.threshold
                            && p2.x - this.finger2Start.x > this.threshold
                            && p3.x - this.finger3Start.x > this.threshold);
                }
                if (detected) { this.callback.onGestureDetected(); }
                return true;
            }
        } else if (action == 5) { /* ACTION_POINTER_DOWN */
            if (this.pointerState != 1) {
                if (event.getPointerCount() == 2) {
                    this.pointerState = 2;
                    this.finger2Start.x = (int) event.getX(1);
                    this.finger2Start.y = (int) event.getY(1);
                } else if (event.getPointerCount() == 3) {
                    this.pointerState = 3;
                    this.finger2Start.x = (int) event.getX(1);
                    this.finger2Start.y = (int) event.getY(1);
                    this.finger3Start.x = (int) event.getX(2);
                    this.finger3Start.y = (int) event.getY(2);
                }
            }
        } else if (action == 6) { /* ACTION_POINTER_UP */
            this.pointerState = 1;
        }
        return false;
    }
}
