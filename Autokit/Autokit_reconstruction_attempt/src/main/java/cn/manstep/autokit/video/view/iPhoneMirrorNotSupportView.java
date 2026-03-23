/**
 * iPhoneMirrorNotSupportView.java
 *
 * "Not Supported" placeholder view for iPhone mirror sessions.
 * Extends AppCompatTextView and is shown when the connected iPhone does not
 * support wireless screen mirroring (e.g. older iOS versions, or when the
 * "mirror not supported" flag is set by the box).
 *
 * Phase lifecycle:
 *   0, 3       -> reset the "not supported" flag
 *   18, 19     -> set the "not supported" flag, call BoxConnection.R() to acknowledge
 *   10         -> if "not supported" flag is set, show this view as a user-visible message
 *   (all else) -> hide this view
 *
 * Original: cn.manstep.phonemirrorBox.iPhoneMirrorNotSupportView
 */
package cn.manstep.autokit.video.view;

import android.content.Context;
import android.util.AttributeSet;
import cn.manstep.phonemirrorBox.BoxInterface.d;  /* BoxConnection */

public class iPhoneMirrorNotSupportView extends androidx.appcompat.widget.x implements d.g {

    /** Whether the box reported that iPhone mirroring is not supported */
    private boolean mirrorNotSupported;

    public iPhoneMirrorNotSupportView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mirrorNotSupported = false;
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
     *   0, 3    = connection start / connected -> clear the "not supported" flag
     *   18, 19  = iPhone mirror not supported indication -> set flag, notify box via R()
     *   10      = CarPlay on-screen -> show this view if mirror is not supported
     *   (other) = hide this view
     */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int phase) {
        cn.manstep.phonemirrorBox.util.s.c("iPhoneMirrorNotSupportView parse: " + phase);
        if (phase == 0 || phase == 3) {
            /* Connection init or connected -- reset the flag */
            this.mirrorNotSupported = false;
            return;
        }
        if (phase == 10) {
            /* CarPlay is on-screen -- show this view only if mirroring is not supported */
            if (this.mirrorNotSupported) {
                setVisibility(VISIBLE);
            }
        } else if (phase != 18 && phase != 19) {
            /* Any other phase -- hide */
            setVisibility(GONE);
        } else {
            /* Phase 18 or 19: box says iPhone mirroring not supported */
            this.mirrorNotSupported = true;
            d.R(); /* Acknowledge to the box */
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
        /* Not used */
    }
}
