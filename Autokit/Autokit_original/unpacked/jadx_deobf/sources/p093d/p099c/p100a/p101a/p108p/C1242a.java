package p093d.p099c.p100a.p101a.p108p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.os.Build;
import android.util.Property;
import android.view.View;
import android.view.ViewAnimationUtils;
import p093d.p099c.p100a.p101a.p108p.InterfaceC1245d;

/* JADX INFO: renamed from: d.c.a.a.p.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1242a {

    /* JADX INFO: renamed from: d.c.a.a.p.a$a */
    static class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ InterfaceC1245d f7789a;

        a(InterfaceC1245d interfaceC1245d) {
            this.f7789a = interfaceC1245d;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f7789a.mo9409b();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f7789a.mo9408a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static Animator m9406a(InterfaceC1245d interfaceC1245d, float f, float f2, float f3) {
        ObjectAnimator objectAnimatorOfObject = ObjectAnimator.ofObject(interfaceC1245d, (Property<InterfaceC1245d, V>) InterfaceC1245d.c.f7794a, (TypeEvaluator) InterfaceC1245d.b.f7792b, (Object[]) new InterfaceC1245d.e[]{new InterfaceC1245d.e(f, f2, f3)});
        if (Build.VERSION.SDK_INT < 21) {
            return objectAnimatorOfObject;
        }
        InterfaceC1245d.e revealInfo = interfaceC1245d.getRevealInfo();
        if (revealInfo == null) {
            throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
        }
        Animator animatorCreateCircularReveal = ViewAnimationUtils.createCircularReveal((View) interfaceC1245d, (int) f, (int) f2, revealInfo.f7798c, f3);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(objectAnimatorOfObject, animatorCreateCircularReveal);
        return animatorSet;
    }

    /* JADX INFO: renamed from: b */
    public static Animator.AnimatorListener m9407b(InterfaceC1245d interfaceC1245d) {
        return new a(interfaceC1245d);
    }
}
