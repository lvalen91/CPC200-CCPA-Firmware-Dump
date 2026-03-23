package androidx.constraintlayout.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class Guideline extends View {
    public Guideline(Context context) {
        super(context);
        super.setVisibility(8);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setGuidelineBegin(int i) {
        ConstraintLayout.C0207b c0207b = (ConstraintLayout.C0207b) getLayoutParams();
        c0207b.f1450a = i;
        setLayoutParams(c0207b);
    }

    public void setGuidelineEnd(int i) {
        ConstraintLayout.C0207b c0207b = (ConstraintLayout.C0207b) getLayoutParams();
        c0207b.f1452b = i;
        setLayoutParams(c0207b);
    }

    public void setGuidelinePercent(float f) {
        ConstraintLayout.C0207b c0207b = (ConstraintLayout.C0207b) getLayoutParams();
        c0207b.f1454c = f;
        setLayoutParams(c0207b);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }

    public Guideline(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        super.setVisibility(8);
    }
}
