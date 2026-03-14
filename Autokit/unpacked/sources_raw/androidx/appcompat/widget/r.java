package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class r extends RatingBar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final p f382b;

    public r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap bitmapB = this.f382b.b();
        if (bitmapB != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmapB.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }

    public r(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p0.a(this, getContext());
        p pVar = new p(this);
        this.f382b = pVar;
        pVar.c(attributeSet, i);
    }
}
