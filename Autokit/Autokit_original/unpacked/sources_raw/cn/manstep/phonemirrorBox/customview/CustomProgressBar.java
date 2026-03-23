package cn.manstep.phonemirrorBox.customview;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import cn.manstep.phonemirrorBox.y;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class CustomProgressBar extends ProgressBar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f1574b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Paint f1575c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RectF f1576d;
    private RectF e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;
    private int m;
    private int n;
    private int o;
    private int p;
    public int q;
    public int r;
    private int s;
    private int t;
    private int u;
    private int v;

    public CustomProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = 299;
        this.p = 7;
        this.u = Color.parseColor("#FFFFFF");
        this.v = Color.parseColor("#5A80F1");
        b(context, attributeSet);
        e();
    }

    private Paint a(int i) {
        Paint paint = new Paint(1);
        paint.setColor(i);
        paint.setStrokeWidth(CropImageView.DEFAULT_ASPECT_RATIO);
        paint.setDither(true);
        paint.setTextSize(CropImageView.DEFAULT_ASPECT_RATIO);
        paint.setStyle(Paint.Style.FILL);
        paint.setStrokeCap(Paint.Cap.ROUND);
        paint.setStrokeJoin(Paint.Join.ROUND);
        return paint;
    }

    private void b(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, y.CustomProgressBar);
            this.s = typedArrayObtainStyledAttributes.getColor(0, this.u);
            this.t = typedArrayObtainStyledAttributes.getColor(1, this.v);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void e() {
        this.f1574b = a(this.s);
        this.f1575c = a(this.t);
    }

    public int c(int i) {
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 0) ? this.p : View.MeasureSpec.getSize(i);
    }

    public int d(int i) {
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 0) ? this.o : View.MeasureSpec.getSize(i);
    }

    public void f() {
        this.r = 0;
        invalidate();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f1576d == null) {
            RectF rectF = new RectF();
            this.f1576d = rectF;
            rectF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, this.m, this.n);
        }
        if (this.e == null) {
            this.e = new RectF();
            float f = this.k;
            this.g = f / 10.0f;
            this.f = f / 10.0f;
        }
        this.h = this.j - this.f;
        this.l = (this.r / this.q) * 100.0f;
        float fRound = (this.h / 100.0f) * (Math.round(r0 * 10000.0f) / 10000);
        this.i = fRound;
        RectF rectF2 = this.e;
        float f2 = this.f;
        float f3 = this.g;
        rectF2.set(f2, f3, fRound, this.n - f3);
        RectF rectF3 = this.f1576d;
        float f4 = this.k;
        canvas.drawRoundRect(rectF3, f4 / 2.0f, f4 / 2.0f, this.f1574b);
        if (this.i > CropImageView.DEFAULT_ASPECT_RATIO) {
            RectF rectF4 = this.e;
            float f5 = this.k;
            canvas.drawRoundRect(rectF4, (f5 / 2.0f) - this.f, (f5 / 2.0f) - this.g, this.f1575c);
        }
        if (this.i < this.h) {
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.m = d(i);
        int iC = c(i2);
        this.n = iC;
        int i3 = this.m;
        this.j = i3;
        this.k = iC;
        setMeasuredDimension(i3, iC);
    }

    public void setBarMax(int i) {
        this.q = i;
        this.r = 0;
        invalidate();
    }
}
