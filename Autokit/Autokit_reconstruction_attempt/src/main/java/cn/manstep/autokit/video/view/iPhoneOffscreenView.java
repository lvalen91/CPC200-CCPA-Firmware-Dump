/**
 * iPhoneOffscreenView.java
 *
 * iPhone off-screen rendering sentinel view. Extends AppCompatTextView.
 * Controls visibility based on whether the iPhone CarPlay session is rendering
 * on-screen (phase 10 = hide this view) or showing a native app (phase 11 = show).
 *
 * When this view is visible (phase 11), it indicates the iPhone is displaying
 * a native iOS app that is not being mirrored, and the head unit should show
 * a placeholder or return-to-CarPlay prompt.
 *
 * Original: cn.manstep.phonemirrorBox.iPhoneOffscreenView
 */
package cn.manstep.autokit.video.view;

import android.content.Context;
import android.util.AttributeSet;
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */

public class iPhoneOffscreenView extends androidx.appcompat.widget.x implements d.g {

    public iPhoneOffscreenView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        cn.manstep.phonemirrorBox.v0.e.M(this);
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
     * Phase state machine callback:
     *   10 = CarPlay rendering on-screen -> hide this off-screen indicator
     *   11 = iPhone native app (not mirrored) -> show this view as a placeholder
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int phase) {
        cn.manstep.phonemirrorBox.util.s.c("iPhoneOffscreenView parse: " + phase);
        if (phase == 10) {
            setVisibility(GONE); /* CarPlay is rendering -- hide the offscreen indicator */
        } else {
            if (phase != 11) {
                return;
            }
            setVisibility(VISIBLE); /* iPhone showing native app -- show offscreen indicator */
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        cn.manstep.phonemirrorBox.v0.e.M(this);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        cn.manstep.phonemirrorBox.v0.e.S(this);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        /* Not used -- no video data in this view */
    }
}
