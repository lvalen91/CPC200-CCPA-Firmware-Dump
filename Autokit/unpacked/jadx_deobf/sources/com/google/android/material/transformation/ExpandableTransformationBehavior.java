package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@Deprecated
public abstract class ExpandableTransformationBehavior extends ExpandableBehavior {

    /* JADX INFO: renamed from: b */
    private AnimatorSet f7486b;

    /* JADX INFO: renamed from: com.google.android.material.transformation.ExpandableTransformationBehavior$a */
    class C1166a extends AnimatorListenerAdapter {
        C1166a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ExpandableTransformationBehavior.this.f7486b = null;
        }
    }

    public ExpandableTransformationBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableBehavior
    /* JADX INFO: renamed from: H */
    protected boolean mo9003H(View view, View view2, boolean z, boolean z2) {
        boolean z3 = this.f7486b != null;
        if (z3) {
            this.f7486b.cancel();
        }
        AnimatorSet animatorSetMo9005J = mo9005J(view, view2, z, z3);
        this.f7486b = animatorSetMo9005J;
        animatorSetMo9005J.addListener(new C1166a());
        this.f7486b.start();
        if (!z2) {
            this.f7486b.end();
        }
        return true;
    }

    /* JADX INFO: renamed from: J */
    protected abstract AnimatorSet mo9005J(View view, View view2, boolean z, boolean z2);

    public ExpandableTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
