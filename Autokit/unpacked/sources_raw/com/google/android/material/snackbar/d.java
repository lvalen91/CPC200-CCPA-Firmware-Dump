package com.google.android.material.snackbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.v;
import com.google.android.material.internal.l;
import d.c.a.a.k;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d extends FrameLayout {
    private static final View.OnTouchListener i = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f2176b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private b f2177c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2178d;
    private final float e;
    private final float f;
    private ColorStateList g;
    private PorterDuff.Mode h;

    static class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    protected d(Context context, AttributeSet attributeSet) {
        super(com.google.android.material.theme.a.a.c(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, k.SnackbarLayout);
        if (typedArrayObtainStyledAttributes.hasValue(k.SnackbarLayout_elevation)) {
            v.v0(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_elevation, 0));
        }
        this.f2178d = typedArrayObtainStyledAttributes.getInt(k.SnackbarLayout_animationMode, 0);
        this.e = typedArrayObtainStyledAttributes.getFloat(k.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
        setBackgroundTintList(d.c.a.a.x.c.a(context2, typedArrayObtainStyledAttributes, k.SnackbarLayout_backgroundTint));
        setBackgroundTintMode(l.e(typedArrayObtainStyledAttributes.getInt(k.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
        this.f = typedArrayObtainStyledAttributes.getFloat(k.SnackbarLayout_actionTextColorAlpha, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(i);
        setFocusable(true);
        if (getBackground() == null) {
            v.r0(this, a());
        }
    }

    private Drawable a() {
        float dimension = getResources().getDimension(d.c.a.a.d.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(d.c.a.a.q.a.g(this, d.c.a.a.b.colorSurface, d.c.a.a.b.colorOnSurface, getBackgroundOverlayColorAlpha()));
        if (this.g == null) {
            return androidx.core.graphics.drawable.a.r(gradientDrawable);
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(gradientDrawable);
        androidx.core.graphics.drawable.a.o(drawableR, this.g);
        return drawableR;
    }

    float getActionTextColorAlpha() {
        return this.f;
    }

    int getAnimationMode() {
        return this.f2178d;
    }

    float getBackgroundOverlayColorAlpha() {
        return this.e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.f2177c;
        if (bVar != null) {
            bVar.onViewAttachedToWindow(this);
        }
        v.l0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f2177c;
        if (bVar != null) {
            bVar.onViewDetachedFromWindow(this);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        c cVar = this.f2176b;
        if (cVar != null) {
            cVar.a(this, i2, i3, i4, i5);
        }
    }

    void setAnimationMode(int i2) {
        this.f2178d = i2;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.g != null) {
            drawable = androidx.core.graphics.drawable.a.r(drawable.mutate());
            androidx.core.graphics.drawable.a.o(drawable, this.g);
            androidx.core.graphics.drawable.a.p(drawable, this.h);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.g = colorStateList;
        if (getBackground() != null) {
            Drawable drawableR = androidx.core.graphics.drawable.a.r(getBackground().mutate());
            androidx.core.graphics.drawable.a.o(drawableR, colorStateList);
            androidx.core.graphics.drawable.a.p(drawableR, this.h);
            if (drawableR != getBackground()) {
                super.setBackgroundDrawable(drawableR);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.h = mode;
        if (getBackground() != null) {
            Drawable drawableR = androidx.core.graphics.drawable.a.r(getBackground().mutate());
            androidx.core.graphics.drawable.a.p(drawableR, mode);
            if (drawableR != getBackground()) {
                super.setBackgroundDrawable(drawableR);
            }
        }
    }

    void setOnAttachStateChangeListener(b bVar) {
        this.f2177c = bVar;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : i);
        super.setOnClickListener(onClickListener);
    }

    void setOnLayoutChangeListener(c cVar) {
        this.f2176b = cVar;
    }
}
