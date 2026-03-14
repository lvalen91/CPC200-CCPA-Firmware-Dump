package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: androidx.appcompat.widget.t */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0192t extends C0184p {

    /* JADX INFO: renamed from: d */
    private final SeekBar f1276d;

    /* JADX INFO: renamed from: e */
    private Drawable f1277e;

    /* JADX INFO: renamed from: f */
    private ColorStateList f1278f;

    /* JADX INFO: renamed from: g */
    private PorterDuff.Mode f1279g;

    /* JADX INFO: renamed from: h */
    private boolean f1280h;

    /* JADX INFO: renamed from: i */
    private boolean f1281i;

    C0192t(SeekBar seekBar) {
        super(seekBar);
        this.f1278f = null;
        this.f1279g = null;
        this.f1280h = false;
        this.f1281i = false;
        this.f1276d = seekBar;
    }

    /* JADX INFO: renamed from: f */
    private void m1295f() {
        if (this.f1277e != null) {
            if (this.f1280h || this.f1281i) {
                Drawable drawableM1797r = C0251a.m1797r(this.f1277e.mutate());
                this.f1277e = drawableM1797r;
                if (this.f1280h) {
                    C0251a.m1794o(drawableM1797r, this.f1278f);
                }
                if (this.f1281i) {
                    C0251a.m1795p(this.f1277e, this.f1279g);
                }
                if (this.f1277e.isStateful()) {
                    this.f1277e.setState(this.f1276d.getDrawableState());
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.C0184p
    /* JADX INFO: renamed from: c */
    void mo1278c(AttributeSet attributeSet, int i) {
        super.mo1278c(attributeSet, i);
        C0195u0 c0195u0M1321v = C0195u0.m1321v(this.f1276d.getContext(), attributeSet, C0502j.AppCompatSeekBar, i, 0);
        SeekBar seekBar = this.f1276d;
        C0292v.m2101m0(seekBar, seekBar.getContext(), C0502j.AppCompatSeekBar, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        Drawable drawableM1329h = c0195u0M1321v.m1329h(C0502j.AppCompatSeekBar_android_thumb);
        if (drawableM1329h != null) {
            this.f1276d.setThumb(drawableM1329h);
        }
        m1299j(c0195u0M1321v.m1328g(C0502j.AppCompatSeekBar_tickMark));
        if (c0195u0M1321v.m1340s(C0502j.AppCompatSeekBar_tickMarkTintMode)) {
            this.f1279g = C0159c0.m1074e(c0195u0M1321v.m1332k(C0502j.AppCompatSeekBar_tickMarkTintMode, -1), this.f1279g);
            this.f1281i = true;
        }
        if (c0195u0M1321v.m1340s(C0502j.AppCompatSeekBar_tickMarkTint)) {
            this.f1278f = c0195u0M1321v.m1324c(C0502j.AppCompatSeekBar_tickMarkTint);
            this.f1280h = true;
        }
        c0195u0M1321v.m1341w();
        m1295f();
    }

    /* JADX INFO: renamed from: g */
    void m1296g(Canvas canvas) {
        if (this.f1277e != null) {
            int max = this.f1276d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1277e.getIntrinsicWidth();
                int intrinsicHeight = this.f1277e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1277e.setBounds(-i, -i2, i, i2);
                float width = ((this.f1276d.getWidth() - this.f1276d.getPaddingLeft()) - this.f1276d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f1276d.getPaddingLeft(), this.f1276d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.f1277e.draw(canvas);
                    canvas.translate(width, CropImageView.DEFAULT_ASPECT_RATIO);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    /* JADX INFO: renamed from: h */
    void m1297h() {
        Drawable drawable = this.f1277e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1276d.getDrawableState())) {
            this.f1276d.invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: renamed from: i */
    void m1298i() {
        Drawable drawable = this.f1277e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    /* JADX INFO: renamed from: j */
    void m1299j(Drawable drawable) {
        Drawable drawable2 = this.f1277e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1277e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1276d);
            C0251a.m1792m(drawable, C0292v.m2046C(this.f1276d));
            if (drawable.isStateful()) {
                drawable.setState(this.f1276d.getDrawableState());
            }
            m1295f();
        }
        this.f1276d.invalidate();
    }
}
