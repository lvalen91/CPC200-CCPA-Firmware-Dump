package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.util.Property;
import android.view.View;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class c extends b {
    c(FloatingActionButton floatingActionButton, d.c.a.a.z.b bVar) {
        super(floatingActionButton, bVar);
    }

    private Animator e0(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.y, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(b.F);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void A() {
        b0();
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void C(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.y.isEnabled()) {
                this.y.setElevation(CropImageView.DEFAULT_ASPECT_RATIO);
                this.y.setTranslationZ(CropImageView.DEFAULT_ASPECT_RATIO);
                return;
            }
            this.y.setElevation(this.h);
            if (this.y.isPressed()) {
                this.y.setTranslationZ(this.j);
            } else if (this.y.isFocused() || this.y.isHovered()) {
                this.y.setTranslationZ(this.i);
            } else {
                this.y.setTranslationZ(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void D(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.y.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(b.G, e0(f, f3));
            stateListAnimator.addState(b.H, e0(f, f2));
            stateListAnimator.addState(b.I, e0(f, f2));
            stateListAnimator.addState(b.J, e0(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.y, "elevation", f).setDuration(0L));
            int i = Build.VERSION.SDK_INT;
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.y;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, CropImageView.DEFAULT_ASPECT_RATIO).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(b.F);
            stateListAnimator.addState(b.K, animatorSet);
            stateListAnimator.addState(b.L, e0(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO));
            this.y.setStateListAnimator(stateListAnimator);
        }
        if (V()) {
            b0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    boolean I() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void R(ColorStateList colorStateList) {
        Drawable drawable = this.f2133c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(d.c.a.a.y.b.a(colorStateList));
        } else {
            super.R(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    boolean V() {
        return this.z.b() || !X();
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void Z() {
    }

    @Override // com.google.android.material.floatingactionbutton.b
    public float m() {
        return this.y.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void r(Rect rect) {
        if (this.z.b()) {
            super.r(rect);
        } else if (X()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.k - this.y.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.b
    void y() {
    }
}
