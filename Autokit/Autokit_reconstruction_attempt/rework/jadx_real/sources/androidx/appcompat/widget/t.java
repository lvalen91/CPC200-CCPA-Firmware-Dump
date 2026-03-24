package androidx.appcompat.widget;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class t extends p {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SeekBar f389d;
    private Drawable e;
    private ColorStateList f;
    private PorterDuff.Mode g;
    private boolean h;
    private boolean i;

    t(SeekBar seekBar) {
        super(seekBar);
        this.f = null;
        this.g = null;
        this.h = false;
        this.i = false;
        this.f389d = seekBar;
    }

    private void f() {
        if (this.e != null) {
            if (this.h || this.i) {
                Drawable drawableR = androidx.core.graphics.drawable.a.r(this.e.mutate());
                this.e = drawableR;
                if (this.h) {
                    androidx.core.graphics.drawable.a.o(drawableR, this.f);
                }
                if (this.i) {
                    androidx.core.graphics.drawable.a.p(this.e, this.g);
                }
                if (this.e.isStateful()) {
                    this.e.setState(this.f389d.getDrawableState());
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.p
    void c(AttributeSet attributeSet, int i) {
        super.c(attributeSet, i);
        u0 u0VarV = u0.v(this.f389d.getContext(), attributeSet, c.a.j.AppCompatSeekBar, i, 0);
        SeekBar seekBar = this.f389d;
        androidx.core.view.v.m0(seekBar, seekBar.getContext(), c.a.j.AppCompatSeekBar, attributeSet, u0VarV.r(), i, 0);
        Drawable drawableH = u0VarV.h(c.a.j.AppCompatSeekBar_android_thumb);
        if (drawableH != null) {
            this.f389d.setThumb(drawableH);
        }
        j(u0VarV.g(c.a.j.AppCompatSeekBar_tickMark));
        if (u0VarV.s(c.a.j.AppCompatSeekBar_tickMarkTintMode)) {
            this.g = c0.e(u0VarV.k(c.a.j.AppCompatSeekBar_tickMarkTintMode, -1), this.g);
            this.i = true;
        }
        if (u0VarV.s(c.a.j.AppCompatSeekBar_tickMarkTint)) {
            this.f = u0VarV.c(c.a.j.AppCompatSeekBar_tickMarkTint);
            this.h = true;
        }
        u0VarV.w();
        f();
    }

    void g(Canvas canvas) {
        if (this.e != null) {
            int max = this.f389d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.e.getIntrinsicWidth();
                int intrinsicHeight = this.e.getIntrinsicHeight();
                int i = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i2 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.e.setBounds(-i, -i2, i, i2);
                float width = ((this.f389d.getWidth() - this.f389d.getPaddingLeft()) - this.f389d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f389d.getPaddingLeft(), this.f389d.getHeight() / 2);
                for (int i3 = 0; i3 <= max; i3++) {
                    this.e.draw(canvas);
                    canvas.translate(width, CropImageView.DEFAULT_ASPECT_RATIO);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void h() {
        Drawable drawable = this.e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f389d.getDrawableState())) {
            this.f389d.invalidateDrawable(drawable);
        }
    }

    void i() {
        Drawable drawable = this.e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(Drawable drawable) {
        Drawable drawable2 = this.e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f389d);
            androidx.core.graphics.drawable.a.m(drawable, androidx.core.view.v.C(this.f389d));
            if (drawable.isStateful()) {
                drawable.setState(this.f389d.getDrawableState());
            }
            f();
        }
        this.f389d.invalidate();
    }
}
