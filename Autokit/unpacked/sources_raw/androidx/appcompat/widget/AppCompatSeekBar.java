package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AppCompatSeekBar extends SeekBar {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final t f252b;

    public AppCompatSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.seekBarStyle);
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.f252b.h();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        this.f252b.i();
    }

    @Override // android.widget.AbsSeekBar, android.widget.ProgressBar, android.view.View
    protected synchronized void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.f252b.g(canvas);
    }

    public AppCompatSeekBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        p0.a(this, getContext());
        t tVar = new t(this);
        this.f252b = tVar;
        tVar.c(attributeSet, i);
    }
}
