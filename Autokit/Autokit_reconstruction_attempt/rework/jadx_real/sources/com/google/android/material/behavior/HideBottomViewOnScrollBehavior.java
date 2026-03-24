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

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.c<V> {
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2019b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f2020c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ViewPropertyAnimator f2021d;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.f2021d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.a = 0;
        this.f2019b = 2;
        this.f2020c = 0;
    }

    private void F(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.f2021d = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new a());
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
        return i == 2;
    }

    public void G(V v, int i) {
        this.f2020c = i;
        if (this.f2019b == 1) {
            v.setTranslationY(this.a + i);
        }
    }

    public void H(V v) {
        if (this.f2019b == 1) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2021d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f2019b = 1;
        F(v, this.a + this.f2020c, 175L, d.c.a.a.l.a.f2316c);
    }

    public void I(V v) {
        if (this.f2019b == 2) {
            return;
        }
        ViewPropertyAnimator viewPropertyAnimator = this.f2021d;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.f2019b = 2;
        F(v, 0, 225L, d.c.a.a.l.a.f2317d);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return super.l(coordinatorLayout, v, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i2 > 0) {
            H(v);
        } else if (i2 < 0) {
            I(v);
        }
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.f2019b = 2;
        this.f2020c = 0;
    }
}
