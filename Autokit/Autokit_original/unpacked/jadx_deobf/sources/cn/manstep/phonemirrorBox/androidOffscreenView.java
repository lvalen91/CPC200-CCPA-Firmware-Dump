package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.BoxInterface.C0733d;
import cn.manstep.phonemirrorBox.p089v0.C0995e;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class androidOffscreenView extends TextView implements C0733d.g {

    /* JADX INFO: renamed from: b */
    boolean f4729b;

    /* JADX INFO: renamed from: c */
    Handler f4730c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.androidOffscreenView$a */
    class HandlerC0793a extends Handler {
        HandlerC0793a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                androidOffscreenView.this.setVisibility(8);
            } else {
                androidOffscreenView.this.setVisibility(0);
            }
        }
    }

    public androidOffscreenView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4729b = true;
        C0995e.m7440M(this);
        this.f4730c = new HandlerC0793a();
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
        if (i != 14) {
            return;
        }
        this.f4729b = false;
        setVisibility(8);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            C0995e.m7439L(3, 0, 0, 0);
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.C0733d.g
    /* JADX INFO: renamed from: v */
    public void mo5279v(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        ?? r2 = (byteBufferWrap.getInt(24) & 65535) == 10 ? 1 : 0;
        if (r2 != this.f4729b) {
            this.f4729b = r2;
            this.f4730c.sendEmptyMessage(r2);
        }
    }
}
