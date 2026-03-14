package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;
import p016c.p017a.C0493a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AppCompatSeekBar extends SeekBar {

    /* JADX INFO: renamed from: b */
    private final C0192t f833b;

    public AppCompatSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0493a.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f833b.m1297h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f833b.m1298i();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f833b.m1296g(canvas);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        C0185p0.m1279a(this, getContext());
        C0192t c0192t = new C0192t(this);
        this.f833b = c0192t;
        c0192t.mo1278c(attributeSet, i);
    }
}
