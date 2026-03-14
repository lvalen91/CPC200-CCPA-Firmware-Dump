package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.AttributeSet;
import cn.manstep.phonemirrorBox.BoxInterface.d;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class iPhoneOffscreenView extends androidx.appcompat.widget.x implements d.g {
    public iPhoneOffscreenView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        cn.manstep.phonemirrorBox.v0.e.M(this);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void a(int i, Object obj) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void n(d dVar) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void o(int i) {
        cn.manstep.phonemirrorBox.util.s.c("iPhoneOffscreenView parse: " + i);
        if (i == 10) {
            setVisibility(8);
        } else {
            if (i != 11) {
                return;
            }
            setVisibility(0);
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
    }
}
