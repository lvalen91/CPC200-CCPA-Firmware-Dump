package c.p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d extends j0 {

    class a extends n {
        final /* synthetic */ View a;

        a(d dVar, View view) {
            this.a = view;
        }

        @Override // c.p.m.f
        public void e(m mVar) {
            c0.g(this.a, 1.0f);
            c0.a(this.a);
            mVar.O(this);
        }
    }

    private static class b extends AnimatorListenerAdapter {
        private final View a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f1281b = false;

        b(View view) {
            this.a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            c0.g(this.a, 1.0f);
            if (this.f1281b) {
                this.a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (androidx.core.view.v.P(this.a) && this.a.getLayerType() == 0) {
                this.f1281b = true;
                this.a.setLayerType(2, null);
            }
        }
    }

    public d(int i) {
        h0(i);
    }

    private Animator i0(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        c0.g(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, c0.f1280b, f2);
        objectAnimatorOfFloat.addListener(new b(view));
        a(new a(this, view));
        return objectAnimatorOfFloat;
    }

    private static float j0(s sVar, float f) {
        Float f2;
        return (sVar == null || (f2 = (Float) sVar.a.get("android:fade:transitionAlpha")) == null) ? f : f2.floatValue();
    }

    @Override // c.p.j0
    public Animator d0(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        float fJ0 = j0(sVar, CropImageView.DEFAULT_ASPECT_RATIO);
        if (fJ0 != 1.0f) {
            f = fJ0;
        }
        return i0(view, f, 1.0f);
    }

    @Override // c.p.j0
    public Animator f0(ViewGroup viewGroup, View view, s sVar, s sVar2) {
        c0.e(view);
        return i0(view, j0(sVar, 1.0f), CropImageView.DEFAULT_ASPECT_RATIO);
    }

    @Override // c.p.j0, c.p.m
    public void i(s sVar) {
        super.i(sVar);
        sVar.a.put("android:fade:transitionAlpha", Float.valueOf(c0.c(sVar.f1316b)));
    }
}
