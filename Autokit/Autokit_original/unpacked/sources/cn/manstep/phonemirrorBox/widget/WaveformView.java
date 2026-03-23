package cn.manstep.phonemirrorBox.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import java.util.Vector;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class WaveformView extends View {

    /* JADX INFO: renamed from: b */
    private Paint f6232b;

    /* JADX INFO: renamed from: c */
    private Vector<short[]> f6233c;

    /* JADX INFO: renamed from: d */
    private int f6234d;

    public WaveformView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6234d = 1;
        m7484c(context);
    }

    /* JADX INFO: renamed from: a */
    private short[] m7482a(byte[] bArr, int i, int i2) {
        if (bArr == null || i % 2 != 0) {
            throw new IllegalArgumentException("Invalid byte array");
        }
        short[] sArr = new short[i / 2];
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            sArr[i4] = (short) ((bArr[i3] & 255) | (bArr[i3 + 1] << 8));
            i3 += 2;
            i4++;
        }
        return sArr;
    }

    /* JADX INFO: renamed from: b */
    private void m7483b(Canvas canvas, short[] sArr, int i, int i2, float f, int i3) {
        float length = i / (sArr.length / this.f6234d);
        while (i3 < sArr.length) {
            float f2 = i2;
            float f3 = (i3 / this.f6234d) * length;
            canvas.drawRect(f3, f + (f2 - (Math.abs(sArr[i3] / 32768.0f) * f2)), f3 + length, f + f2, this.f6232b);
            i3 += this.f6234d;
        }
    }

    /* JADX INFO: renamed from: c */
    private void m7484c(Context context) {
        Paint paint = new Paint();
        this.f6232b = paint;
        paint.setColor(getResources().getColor(R.color.holo_blue_bright));
        this.f6232b.setStrokeWidth(3.0f);
        this.f6233c = new Vector<>(320);
    }

    /* JADX INFO: renamed from: f */
    private void m7485f(short[] sArr) {
        this.f6233c.add(sArr);
        postInvalidate();
    }

    /* JADX INFO: renamed from: d */
    public void m7486d(byte[] bArr, int i) {
        m7487e(bArr, i, 1);
    }

    /* JADX INFO: renamed from: e */
    public void m7487e(byte[] bArr, int i, int i2) {
        this.f6234d = i2;
        m7485f(m7482a(bArr, i, i2));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f6233c.size() <= 0) {
            return;
        }
        short[] sArrRemove = this.f6233c.remove(0);
        int width = getWidth();
        int height = getHeight() / this.f6234d;
        for (int i = 0; i < this.f6234d; i++) {
            m7483b(canvas, sArrRemove, width, height, i * height, i);
        }
    }
}
