package cn.manstep.phonemirrorBox.widget;

import android.R;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.View;
import java.util.Vector;

/* JADX INFO: loaded from: /tmp/autokit_analysis/dumped_dex/dex_47.dex */
public class WaveformView extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f1956b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Vector<short[]> f1957c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1958d;

    public WaveformView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1958d = 1;
        c(context);
    }

    private short[] a(byte[] bArr, int i, int i2) {
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

    private void b(Canvas canvas, short[] sArr, int i, int i2, float f, int i3) {
        float length = i / (sArr.length / this.f1958d);
        while (i3 < sArr.length) {
            float f2 = i2;
            float f3 = (i3 / this.f1958d) * length;
            canvas.drawRect(f3, f + (f2 - (Math.abs(sArr[i3] / 32768.0f) * f2)), f3 + length, f + f2, this.f1956b);
            i3 += this.f1958d;
        }
    }

    private void c(Context context) {
        Paint paint = new Paint();
        this.f1956b = paint;
        paint.setColor(getResources().getColor(R.color.holo_blue_bright));
        this.f1956b.setStrokeWidth(3.0f);
        this.f1957c = new Vector<>(320);
    }

    private void f(short[] sArr) {
        this.f1957c.add(sArr);
        postInvalidate();
    }

    public void d(byte[] bArr, int i) {
        e(bArr, i, 1);
    }

    public void e(byte[] bArr, int i, int i2) {
        this.f1958d = i2;
        f(a(bArr, i, i2));
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.f1957c.size() <= 0) {
            return;
        }
        short[] sArrRemove = this.f1957c.remove(0);
        int width = getWidth();
        int height = getHeight() / this.f1958d;
        for (int i = 0; i < this.f1958d; i++) {
            b(canvas, sArrRemove, width, height, i * height, i);
        }
    }
}
