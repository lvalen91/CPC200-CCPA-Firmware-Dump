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
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import com.google.android.material.internal.C1123l;
import com.google.android.material.theme.p092a.C1147a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p110q.C1247a;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: renamed from: com.google.android.material.snackbar.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1128d extends FrameLayout {

    /* JADX INFO: renamed from: i */
    private static final View.OnTouchListener f7213i = new a();

    /* JADX INFO: renamed from: b */
    private InterfaceC1127c f7214b;

    /* JADX INFO: renamed from: c */
    private InterfaceC1126b f7215c;

    /* JADX INFO: renamed from: d */
    private int f7216d;

    /* JADX INFO: renamed from: e */
    private final float f7217e;

    /* JADX INFO: renamed from: f */
    private final float f7218f;

    /* JADX INFO: renamed from: g */
    private ColorStateList f7219g;

    /* JADX INFO: renamed from: h */
    private PorterDuff.Mode f7220h;

    /* JADX INFO: renamed from: com.google.android.material.snackbar.d$a */
    static class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    protected C1128d(Context context, AttributeSet attributeSet) {
        super(C1147a.m8952c(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, C1226k.SnackbarLayout);
        if (typedArrayObtainStyledAttributes.hasValue(C1226k.SnackbarLayout_elevation)) {
            C0292v.m2119v0(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.SnackbarLayout_elevation, 0));
        }
        this.f7216d = typedArrayObtainStyledAttributes.getInt(C1226k.SnackbarLayout_animationMode, 0);
        this.f7217e = typedArrayObtainStyledAttributes.getFloat(C1226k.SnackbarLayout_backgroundOverlayColorAlpha, 1.0f);
        setBackgroundTintList(C1257c.m9454a(context2, typedArrayObtainStyledAttributes, C1226k.SnackbarLayout_backgroundTint));
        setBackgroundTintMode(C1123l.m8735e(typedArrayObtainStyledAttributes.getInt(C1226k.SnackbarLayout_backgroundTintMode, -1), PorterDuff.Mode.SRC_IN));
        this.f7218f = typedArrayObtainStyledAttributes.getFloat(C1226k.SnackbarLayout_actionTextColorAlpha, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f7213i);
        setFocusable(true);
        if (getBackground() == null) {
            C0292v.m2111r0(this, m8743a());
        }
    }

    /* JADX INFO: renamed from: a */
    private Drawable m8743a() {
        float dimension = getResources().getDimension(C1219d.mtrl_snackbar_background_corner_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(C1247a.m9432g(this, C1216b.colorSurface, C1216b.colorOnSurface, getBackgroundOverlayColorAlpha()));
        if (this.f7219g == null) {
            return C0251a.m1797r(gradientDrawable);
        }
        Drawable drawableM1797r = C0251a.m1797r(gradientDrawable);
        C0251a.m1794o(drawableM1797r, this.f7219g);
        return drawableM1797r;
    }

    float getActionTextColorAlpha() {
        return this.f7218f;
    }

    int getAnimationMode() {
        return this.f7216d;
    }

    float getBackgroundOverlayColorAlpha() {
        return this.f7217e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        InterfaceC1126b interfaceC1126b = this.f7215c;
        if (interfaceC1126b != null) {
            interfaceC1126b.onViewAttachedToWindow(this);
        }
        C0292v.m2099l0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        InterfaceC1126b interfaceC1126b = this.f7215c;
        if (interfaceC1126b != null) {
            interfaceC1126b.onViewDetachedFromWindow(this);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        InterfaceC1127c interfaceC1127c = this.f7214b;
        if (interfaceC1127c != null) {
            interfaceC1127c.m8742a(this, i, i2, i3, i4);
        }
    }

    void setAnimationMode(int i) {
        this.f7216d = i;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f7219g != null) {
            drawable = C0251a.m1797r(drawable.mutate());
            C0251a.m1794o(drawable, this.f7219g);
            C0251a.m1795p(drawable, this.f7220h);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f7219g = colorStateList;
        if (getBackground() != null) {
            Drawable drawableM1797r = C0251a.m1797r(getBackground().mutate());
            C0251a.m1794o(drawableM1797r, colorStateList);
            C0251a.m1795p(drawableM1797r, this.f7220h);
            if (drawableM1797r != getBackground()) {
                super.setBackgroundDrawable(drawableM1797r);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f7220h = mode;
        if (getBackground() != null) {
            Drawable drawableM1797r = C0251a.m1797r(getBackground().mutate());
            C0251a.m1795p(drawableM1797r, mode);
            if (drawableM1797r != getBackground()) {
                super.setBackgroundDrawable(drawableM1797r);
            }
        }
    }

    void setOnAttachStateChangeListener(InterfaceC1126b interfaceC1126b) {
        this.f7215c = interfaceC1126b;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f7213i);
        super.setOnClickListener(onClickListener);
    }

    void setOnLayoutChangeListener(InterfaceC1127c interfaceC1127c) {
        this.f7214b = interfaceC1127c;
    }
}
