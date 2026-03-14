package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.C0200x;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import cn.manstep.phonemirrorBox.util.C0982s;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class iPhoneMirrorNotSupportView extends C0200x implements C0733d.g {

    /* JADX INFO: renamed from: g */
    private boolean f5479g;

    public iPhoneMirrorNotSupportView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5479g = false;
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
        C0982s.m7373c("iPhoneMirrorNotSupportView parse: " + i);
        if (i == 0 || i == 3) {
            this.f5479g = false;
            return;
        }
        if (i == 10) {
            if (this.f5479g) {
                setVisibility(0);
            }
        } else if (i != 18 && i != 19) {
            setVisibility(8);
        } else {
            this.f5479g = true;
            C0733d.m5581R();
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
