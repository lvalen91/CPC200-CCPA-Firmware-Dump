package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RatingBar;
import p016c.p017a.C0493a;

/* JADX INFO: renamed from: androidx.appcompat.widget.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0188r extends RatingBar {

    /* JADX INFO: renamed from: b */
    private final C0184p f1266b;

    public C0188r(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.ratingBarStyle);
    }

    @Override // android.widget.RatingBar, android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        Bitmap bitmapM1277b = this.f1266b.m1277b();
        if (bitmapM1277b != null) {
            setMeasuredDimension(View.resolveSizeAndState(bitmapM1277b.getWidth() * getNumStars(), i, 0), getMeasuredHeight());
        }
    }

    public C0188r(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0184p c0184p = new C0184p(this);
        this.f1266b = c0184p;
        c0184p.mo1278c(attributeSet, i);
    }
}
