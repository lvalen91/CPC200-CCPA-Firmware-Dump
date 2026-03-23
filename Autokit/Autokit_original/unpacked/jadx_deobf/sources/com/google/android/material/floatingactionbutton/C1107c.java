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
import p093d.p099c.p100a.p101a.p118y.C1262b;
import p093d.p099c.p100a.p101a.p119z.InterfaceC1264b;

/* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1107c extends C1106b {
    C1107c(FloatingActionButton floatingActionButton, InterfaceC1264b interfaceC1264b) {
        super(floatingActionButton, interfaceC1264b);
    }

    /* JADX INFO: renamed from: e0 */
    private Animator m8608e0(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.f7053y, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.f7053y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(C1106b.f7017F);
        return animatorSet;
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: A */
    void mo8560A() {
        m8586b0();
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: C */
    void mo8562C(int[] iArr) {
        if (Build.VERSION.SDK_INT == 21) {
            if (!this.f7053y.isEnabled()) {
                this.f7053y.setElevation(CropImageView.DEFAULT_ASPECT_RATIO);
                this.f7053y.setTranslationZ(CropImageView.DEFAULT_ASPECT_RATIO);
                return;
            }
            this.f7053y.setElevation(this.f7036h);
            if (this.f7053y.isPressed()) {
                this.f7053y.setTranslationZ(this.f7038j);
            } else if (this.f7053y.isFocused() || this.f7053y.isHovered()) {
                this.f7053y.setTranslationZ(this.f7037i);
            } else {
                this.f7053y.setTranslationZ(CropImageView.DEFAULT_ASPECT_RATIO);
            }
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: D */
    void mo8563D(float f, float f2, float f3) {
        if (Build.VERSION.SDK_INT == 21) {
            this.f7053y.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(C1106b.f7018G, m8608e0(f, f3));
            stateListAnimator.addState(C1106b.f7019H, m8608e0(f, f2));
            stateListAnimator.addState(C1106b.f7020I, m8608e0(f, f2));
            stateListAnimator.addState(C1106b.f7021J, m8608e0(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.f7053y, "elevation", f).setDuration(0L));
            int i = Build.VERSION.SDK_INT;
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.f7053y;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.f7053y, (Property<FloatingActionButton, Float>) View.TRANSLATION_Z, CropImageView.DEFAULT_ASPECT_RATIO).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(C1106b.f7017F);
            stateListAnimator.addState(C1106b.f7022K, animatorSet);
            stateListAnimator.addState(C1106b.f7023L, m8608e0(CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO));
            this.f7053y.setStateListAnimator(stateListAnimator);
        }
        if (mo8581V()) {
            m8586b0();
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: I */
    boolean mo8568I() {
        return false;
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: R */
    void mo8577R(ColorStateList colorStateList) {
        Drawable drawable = this.f7031c;
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(C1262b.m9477a(colorStateList));
        } else {
            super.mo8577R(colorStateList);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: V */
    boolean mo8581V() {
        return this.f7054z.mo8543b() || !m8582X();
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: Z */
    void mo8584Z() {
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: m */
    public float mo8592m() {
        return this.f7053y.getElevation();
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: r */
    void mo8596r(Rect rect) {
        if (this.f7054z.mo8543b()) {
            super.mo8596r(rect);
        } else if (m8582X()) {
            rect.set(0, 0, 0, 0);
        } else {
            int sizeDimension = (this.f7039k - this.f7053y.getSizeDimension()) / 2;
            rect.set(sizeDimension, sizeDimension, sizeDimension, sizeDimension);
        }
    }

    @Override // com.google.android.material.floatingactionbutton.C1106b
    /* JADX INFO: renamed from: y */
    void mo8603y() {
    }
}
