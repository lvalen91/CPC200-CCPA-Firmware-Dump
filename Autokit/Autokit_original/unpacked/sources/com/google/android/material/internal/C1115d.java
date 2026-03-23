package com.google.android.material.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.Gravity;
import androidx.appcompat.widget.C0167g0;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: renamed from: com.google.android.material.internal.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1115d extends C0167g0 {

    /* JADX INFO: renamed from: q */
    private Drawable f7161q;

    /* JADX INFO: renamed from: r */
    private final Rect f7162r;

    /* JADX INFO: renamed from: s */
    private final Rect f7163s;

    /* JADX INFO: renamed from: t */
    private int f7164t;

    /* JADX INFO: renamed from: u */
    protected boolean f7165u;

    /* JADX INFO: renamed from: v */
    boolean f7166v;

    public C1115d(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Drawable drawable = this.f7161q;
        if (drawable != null) {
            if (this.f7166v) {
                this.f7166v = false;
                Rect rect = this.f7162r;
                Rect rect2 = this.f7163s;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.f7165u) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                Gravity.apply(this.f7164t, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @TargetApi(21)
    public void drawableHotspotChanged(float f, float f2) {
        super.drawableHotspotChanged(f, f2);
        Drawable drawable = this.f7161q;
        if (drawable != null) {
            drawable.setHotspot(f, f2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f7161q;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.f7161q.setState(getDrawableState());
    }

    @Override // android.view.View
    public Drawable getForeground() {
        return this.f7161q;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.f7164t;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f7161q;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.C0167g0, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.f7166v = z | this.f7166v;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.f7166v = true;
    }

    @Override // android.view.View
    public void setForeground(Drawable drawable) {
        Drawable drawable2 = this.f7161q;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.f7161q);
            }
            this.f7161q = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.f7164t == 119) {
                    drawable.getPadding(new Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.f7164t != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f7164t = i;
            if (i == 119 && this.f7161q != null) {
                this.f7161q.getPadding(new Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f7161q;
    }

    public C1115d(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7162r = new Rect();
        this.f7163s = new Rect();
        this.f7164t = 119;
        this.f7165u = true;
        this.f7166v = false;
        TypedArray typedArrayM8726h = C1121j.m8726h(context, attributeSet, C1226k.ForegroundLinearLayout, i, 0, new int[0]);
        this.f7164t = typedArrayM8726h.getInt(C1226k.ForegroundLinearLayout_android_foregroundGravity, this.f7164t);
        Drawable drawable = typedArrayM8726h.getDrawable(C1226k.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.f7165u = typedArrayM8726h.getBoolean(C1226k.ForegroundLinearLayout_foregroundInsidePadding, true);
        typedArrayM8726h.recycle();
    }
}
