package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class AutoFitTextView extends TextView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Paint f1842b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private float f1843c;

    public AutoFitTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1843c = getTextSize();
    }

    private float a(float f, String str) {
        this.f1842b.setTextSize(f);
        return this.f1842b.measureText(str);
    }

    private void b(String str, int i) {
        if (i > 0) {
            float f = this.f1843c;
            Paint paint = new Paint();
            this.f1842b = paint;
            paint.set(getPaint());
            Drawable[] compoundDrawables = getCompoundDrawables();
            int iWidth = 0;
            for (int i2 = 0; i2 < compoundDrawables.length; i2++) {
                if (compoundDrawables[i2] != null) {
                    iWidth += compoundDrawables[i2].getBounds().width();
                }
            }
            int paddingLeft = (((i - getPaddingLeft()) - getPaddingRight()) - getCompoundDrawablePadding()) - iWidth;
            float fA = a(f, str);
            while (fA > paddingLeft) {
                f -= 1.0f;
                this.f1842b.setTextSize(f);
                fA = a(f, str);
            }
            setTextSize(0, f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        b(getText().toString(), getWidth());
    }
}
