package cn.manstep.phonemirrorBox.util;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AutoFitTextView extends TextView {

    /* JADX INFO: renamed from: b */
    private Paint f5988b;

    /* JADX INFO: renamed from: c */
    private float f5989c;

    public AutoFitTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f5989c = getTextSize();
    }

    /* JADX INFO: renamed from: a */
    private float m7154a(float f, String str) {
        this.f5988b.setTextSize(f);
        return this.f5988b.measureText(str);
    }

    /* JADX INFO: renamed from: b */
    private void m7155b(String str, int i) {
        if (i > 0) {
            float f = this.f5989c;
            Paint paint = new Paint();
            this.f5988b = paint;
            paint.set(getPaint());
            Drawable[] compoundDrawables = getCompoundDrawables();
            int iWidth = 0;
            for (int i2 = 0; i2 < compoundDrawables.length; i2++) {
                if (compoundDrawables[i2] != null) {
                    iWidth += compoundDrawables[i2].getBounds().width();
                }
            }
            int paddingLeft = (((i - getPaddingLeft()) - getPaddingRight()) - getCompoundDrawablePadding()) - iWidth;
            float fM7154a = m7154a(f, str);
            while (fM7154a > paddingLeft) {
                f -= 1.0f;
                this.f5988b.setTextSize(f);
                fM7154a = m7154a(f, str);
            }
            setTextSize(0, f);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        m7155b(getText().toString(), getWidth());
    }
}
