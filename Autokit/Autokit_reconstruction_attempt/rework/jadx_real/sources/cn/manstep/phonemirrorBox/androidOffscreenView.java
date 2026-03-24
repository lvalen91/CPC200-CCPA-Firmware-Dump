package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.TextView;
import cn.manstep.phonemirrorBox.BoxInterface.d;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class androidOffscreenView extends TextView implements d.g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    boolean f1562b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Handler f1563c;

    class a extends Handler {
        a() {
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
        this.f1562b = true;
        cn.manstep.phonemirrorBox.v0.e.M(this);
        this.f1563c = new a();
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
        if (i != 14) {
            return;
        }
        this.f1562b = false;
        setVisibility(8);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getActionMasked() == 0) {
            cn.manstep.phonemirrorBox.v0.e.L(3, 0, 0, 0);
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v5, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    @Override // cn.manstep.phonemirrorBox.BoxInterface.d.g
    public void v(byte[] bArr) {
        ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
        byteBufferWrap.order(ByteOrder.LITTLE_ENDIAN);
        ?? r2 = (byteBufferWrap.getInt(24) & 65535) == 10 ? 1 : 0;
        if (r2 != this.f1562b) {
            this.f1562b = r2;
            this.f1563c.sendEmptyMessage(r2);
        }
    }
}
