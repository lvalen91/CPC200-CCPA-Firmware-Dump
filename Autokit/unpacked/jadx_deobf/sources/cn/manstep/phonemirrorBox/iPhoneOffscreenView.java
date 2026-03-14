package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.C0200x;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class iPhoneOffscreenView extends C0200x implements C0733d.g {
    public iPhoneOffscreenView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        C0995e.m7440M(this);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: a */
    public void mo5274a(int i, Object obj) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: c */
    public void mo5276c(int i) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: n */
    public void mo5277n(C0733d c0733d) {
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: o */
    public void mo5278o(int i) {
        C0982s.m7373c("iPhoneOffscreenView parse: " + i);
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
        C0995e.m7440M(this);
        super.onAttachedToWindow();
    }

    @Override // android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0995e.m7446S(this);
    }

    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
    }
}
