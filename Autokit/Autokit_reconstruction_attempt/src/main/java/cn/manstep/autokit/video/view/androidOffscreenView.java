/**
 * androidOffscreenView.java
 *
 * Android off-screen rendering view. Extends TextView and acts as a sentinel
 * for detecting whether Android Auto is currently rendering on-screen or off-screen.
 *
 * When the box reports the rendering state (via the v(byte[]) callback), this view
 * toggles its own visibility to signal the rest of the UI whether the Android Auto
 * projection is currently visible on the phone's screen.
 *
 * The +24 field in the packet header (lower 16 bits) == 10 indicates "on-screen".
 * Any other value indicates "off-screen" (view hidden).
 *
 * Touch: ACTION_DOWN sends a special event code 3 (likely a "wake" or "focus" command)
 * to the box via BoxEventDispatcher.L().
 *
 * Original: cn.manstep.phonemirrorBox.androidOffscreenView
 */
package cn.manstep.autokit.video.view;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

public class androidOffscreenView extends TextView implements d.g {

    /** Current on-screen state: true = visible/on-screen, false = off-screen */
    /* was: 'f1562b' */
    boolean isOnScreen;

    /** Handler for toggling visibility on the UI thread */
    /* was: 'f1563c' */
    Handler uiHandler;

    /**
     * UI handler: message.what == 1 means show (on-screen), anything else means hide.
     */
    class VisibilityHandler extends Handler {
        VisibilityHandler() {
        }

        @Override
        public void handleMessage(Message message) {
            if (message.what != 1) {
                androidOffscreenView.this.setVisibility(GONE);
            } else {
                androidOffscreenView.this.setVisibility(VISIBLE);
            }
        }
    }

    public androidOffscreenView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isOnScreen = true;
        cn.manstep.phonemirrorBox.v0.e.M(this);
        this.uiHandler = new VisibilityHandler();
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
        /* Not used */
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
        /* Unused */
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
        /* No-op */
    }

    /**
     * Phase 14 = "android offscreen active" -- mark as off-screen and hide.
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int phase) {
        if (phase != 14) {
            return;
        }
        this.isOnScreen = false;
        setVisibility(GONE);
    }

    /**
     * On touch down, send event code 3 (wake/focus) to the box.
     */
    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) { /* ACTION_DOWN */
            cn.manstep.phonemirrorBox.v0.e.L(3, 0, 0, 0);
        }
        return super.onTouchEvent(motionEvent);
    }

    /**
     * Receive rendering state updates from the box.
     *
     * Packet format (little-endian):
     *   +24: int -- lower 16 bits: 10 = on-screen, other = off-screen
     *
     * If state changes, updates visibility via the UI handler.
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        ByteBuffer buf = ByteBuffer.wrap(bArr);
        buf.order(ByteOrder.LITTLE_ENDIAN);
        /* UNCERTAIN: type inference issue in original decompilation */
        boolean onScreen = (buf.getInt(24) & 0xFFFF) == 10;
        /* Only send message if state actually changed */
        if (onScreen != this.isOnScreen) {
            this.isOnScreen = onScreen;
            this.uiHandler.sendEmptyMessage(onScreen ? 1 : 0);
        }
    }
}
