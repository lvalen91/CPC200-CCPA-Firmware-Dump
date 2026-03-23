package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;
import java.util.List;
import p093d.p099c.p100a.p101a.p104l.C1228b;
import p093d.p099c.p100a.p101a.p104l.C1235i;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@Deprecated
public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {

    /* JADX INFO: renamed from: c */
    private final C1235i f7503c;

    /* JADX INFO: renamed from: d */
    private final C1235i f7504d;

    /* JADX INFO: renamed from: com.google.android.material.transformation.FabTransformationScrimBehavior$a */
    class C1172a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ boolean f7505a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ View f7506b;

        C1172a(FabTransformationScrimBehavior fabTransformationScrimBehavior, boolean z, View view) {
            this.f7505a = z;
            this.f7506b = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f7505a) {
                return;
            }
            this.f7506b.setVisibility(4);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (this.f7505a) {
                this.f7506b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
        this.f7503c = new C1235i(75L, 150L);
        this.f7504d = new C1235i(0L, 150L);
    }

    /* JADX INFO: renamed from: K */
    private void m9028K(View view, boolean z, boolean z2, List<Animator> list, List<Animator.AnimatorListener> list2) {
        ObjectAnimator objectAnimatorOfFloat;
        C1235i c1235i = z ? this.f7503c : this.f7504d;
        if (z) {
            if (!z2) {
                view.setAlpha(CropImageView.DEFAULT_ASPECT_RATIO);
            }
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, 1.0f);
        } else {
            objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.ALPHA, CropImageView.DEFAULT_ASPECT_RATIO);
        }
        c1235i.m9357a(objectAnimatorOfFloat);
        list.add(objectAnimatorOfFloat);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: D */
    public boolean mo1572D(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return super.mo1572D(coordinatorLayout, view, motionEvent);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* JADX INFO: renamed from: J */
    protected AnimatorSet mo9005J(View view, View view2, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        m9028K(view2, z, z2, arrayList, new ArrayList());
        AnimatorSet animatorSet = new AnimatorSet();
        C1228b.m9337a(animatorSet, arrayList);
        animatorSet.addListener(new C1172a(this, z, view2));
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: e */
    public boolean mo1577e(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7503c = new C1235i(75L, 150L);
        this.f7504d = new C1235i(0L, 150L);
    }
}
