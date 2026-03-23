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
import cn.manstep.phonemirrorBox.C1016y;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class CustomProgressBar extends ProgressBar {

    /* JADX INFO: renamed from: b */
    private Paint f4769b;

    /* JADX INFO: renamed from: c */
    private Paint f4770c;

    /* JADX INFO: renamed from: d */
    private RectF f4771d;

    /* JADX INFO: renamed from: e */
    private RectF f4772e;

    /* JADX INFO: renamed from: f */
    private float f4773f;

    /* JADX INFO: renamed from: g */
    private float f4774g;

    /* JADX INFO: renamed from: h */
    private float f4775h;

    /* JADX INFO: renamed from: i */
    private float f4776i;

    /* JADX INFO: renamed from: j */
    private float f4777j;

    /* JADX INFO: renamed from: k */
    private float f4778k;

    /* JADX INFO: renamed from: l */
    private float f4779l;

    /* JADX INFO: renamed from: m */
    private int f4780m;

    /* JADX INFO: renamed from: n */
    private int f4781n;

    /* JADX INFO: renamed from: o */
    private int f4782o;

    /* JADX INFO: renamed from: p */
    private int f4783p;

    /* JADX INFO: renamed from: q */
    public int f4784q;

    /* JADX INFO: renamed from: r */
    public int f4785r;

    /* JADX INFO: renamed from: s */
    private int f4786s;

    /* JADX INFO: renamed from: t */
    private int f4787t;

    /* JADX INFO: renamed from: u */
    private int f4788u;

    /* JADX INFO: renamed from: v */
    private int f4789v;

    public CustomProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4782o = 299;
        this.f4783p = 7;
        this.f4788u = Color.parseColor("#FFFFFF");
        this.f4789v = Color.parseColor("#5A80F1");
        m6139b(context, attributeSet);
        m6140e();
    }

    /* JADX INFO: renamed from: a */
    private Paint m6138a(int i) {
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

    /* JADX INFO: renamed from: b */
    private void m6139b(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1016y.CustomProgressBar);
            this.f4786s = typedArrayObtainStyledAttributes.getColor(0, this.f4788u);
            this.f4787t = typedArrayObtainStyledAttributes.getColor(1, this.f4789v);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: e */
    private void m6140e() {
        this.f4769b = m6138a(this.f4786s);
        this.f4770c = m6138a(this.f4787t);
    }

    /* JADX INFO: renamed from: c */
    public int m6141c(int i) {
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 0) ? this.f4783p : View.MeasureSpec.getSize(i);
    }

    /* JADX INFO: renamed from: d */
    public int m6142d(int i) {
        int mode = View.MeasureSpec.getMode(i);
        return (mode == Integer.MIN_VALUE || mode == 0) ? this.f4782o : View.MeasureSpec.getSize(i);
    }

    /* JADX INFO: renamed from: f */
    public void m6143f() {
        this.f4785r = 0;
        invalidate();
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f4771d == null) {
            RectF rectF = new RectF();
            this.f4771d = rectF;
            rectF.set(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, this.f4780m, this.f4781n);
        }
        if (this.f4772e == null) {
            this.f4772e = new RectF();
            float f = this.f4778k;
            this.f4774g = f / 10.0f;
            this.f4773f = f / 10.0f;
        }
        this.f4775h = this.f4777j - this.f4773f;
        this.f4779l = (this.f4785r / this.f4784q) * 100.0f;
        float fRound = (this.f4775h / 100.0f) * (Math.round(r0 * 10000.0f) / 10000);
        this.f4776i = fRound;
        RectF rectF2 = this.f4772e;
        float f2 = this.f4773f;
        float f3 = this.f4774g;
        rectF2.set(f2, f3, fRound, this.f4781n - f3);
        RectF rectF3 = this.f4771d;
        float f4 = this.f4778k;
        canvas.drawRoundRect(rectF3, f4 / 2.0f, f4 / 2.0f, this.f4769b);
        if (this.f4776i > CropImageView.DEFAULT_ASPECT_RATIO) {
            RectF rectF4 = this.f4772e;
            float f5 = this.f4778k;
            canvas.drawRoundRect(rectF4, (f5 / 2.0f) - this.f4773f, (f5 / 2.0f) - this.f4774g, this.f4770c);
        }
        if (this.f4776i < this.f4775h) {
            invalidate();
        }
    }

    @Override // android.widget.ProgressBar, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f4780m = m6142d(i);
        int iM6141c = m6141c(i2);
        this.f4781n = iM6141c;
        int i3 = this.f4780m;
        this.f4777j = i3;
        this.f4778k = iM6141c;
        setMeasuredDimension(i3, iM6141c);
    }

    public void setBarMax(int i) {
        this.f4784q = i;
        this.f4785r = 0;
        invalidate();
    }
}
