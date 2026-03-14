package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import p093d.p099c.p100a.p101a.p104l.C1227a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.AbstractC0221c<V> {

    /* JADX INFO: renamed from: a */
    private int f6553a;

    /* JADX INFO: renamed from: b */
    private int f6554b;

    /* JADX INFO: renamed from: c */
    private int f6555c;

    /* JADX INFO: renamed from: d */
    private ViewPropertyAnimator f6556d;

    /* JADX INFO: renamed from: com.google.android.material.behavior.HideBottomViewOnScrollBehavior$a */
    class C1031a extends AnimatorListenerAdapter {
        C1031a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f6556d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.f6553a = 0;
        this.f6554b = 2;
        this.f6555c = 0;
    }

    /* JADX INFO: renamed from: F */
    private void m7933F(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f6556d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new C1031a());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: A */
    public boolean mo1569A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }

    /* JADX INFO: renamed from: G */
    public void m7934G(V v, int i) {
        this.f6555c = i;
        if (this.f6554b == 1) {
            v.setTranslationY(this.f6553a + i);
        }
    }

    /* JADX INFO: renamed from: H */
    public void m7935H(V v) {
        if (this.f6554b == 1) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f6556d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f6554b = 1;
        m7933F(v, this.f6553a + this.f6555c, 175L, C1227a.f7756c);
    }

    /* JADX INFO: renamed from: I */
    public void m7936I(V v) {
        if (this.f6554b == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f6556d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f6554b = 2;
        m7933F(v, 0, 225L, C1227a.f7757d);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: l */
    public boolean mo1584l(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.f6553a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.mo1584l(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: t */
    public void mo1592t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i2 > 0) {
            m7935H(v);
        } else if (i2 < 0) {
            m7936I(v);
        }
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6553a = 0;
        this.f6554b = 2;
        this.f6555c = 0;
    }
}
