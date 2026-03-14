package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.AttributeSet;
import cn.manstep.phonemirrorBox.BoxInterface.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class iPhoneMirrorNotSupportView extends androidx.appcompat.widget.x implements d.g {
    private boolean g;

    public iPhoneMirrorNotSupportView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = false;
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
        cn.manstep.phonemirrorBox.util.s.c("iPhoneMirrorNotSupportView parse: " + i);
        if (i == 0 || i == 3) {
            this.g = false;
            return;
        }
        if (i == 10) {
            if (this.g) {
                setVisibility(0);
            }
        } else if (i != 18 && i != 19) {
            setVisibility(8);
        } else {
            this.g = true;
            d.R();
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
