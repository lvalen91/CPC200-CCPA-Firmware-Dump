package p016c.p065p;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: renamed from: c.p.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0658d extends AbstractC0671j0 {

    /* JADX INFO: renamed from: c.p.d$a */
    class a extends C0678n {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ View f3945a;

        a(C0658d c0658d, View view) {
            this.f3945a = view;
        }

        @Override // p016c.p065p.AbstractC0676m.f
        /* JADX INFO: renamed from: e */
        public void mo5054e(AbstractC0676m abstractC0676m) {
            C0657c0.m5064g(this.f3945a, 1.0f);
            C0657c0.m5058a(this.f3945a);
            abstractC0676m.mo5121O(this);
        }
    }

    /* JADX INFO: renamed from: c.p.d$b */
    private static class b extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        private final View f3946a;

        /* JADX INFO: renamed from: b */
        private boolean f3947b = false;

        b(View view) {
            this.f3946a = view;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            C0657c0.m5064g(this.f3946a, 1.0f);
            if (this.f3947b) {
                this.f3946a.setLayerType(0, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            if (C0292v.m2065P(this.f3946a) && this.f3946a.getLayerType() == 0) {
                this.f3947b = true;
                this.f3946a.setLayerType(2, null);
            }
        }
    }

    public C0658d(int i) {
        m5097h0(i);
    }

    /* JADX INFO: renamed from: i0 */
    private Animator m5072i0(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        C0657c0.m5064g(view, f);
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, C0657c0.f3944b, f2);
        objectAnimatorOfFloat.addListener(new b(view));
        mo5132a(new a(this, view));
        return objectAnimatorOfFloat;
    }

    /* JADX INFO: renamed from: j0 */
    private static float m5073j0(C0683s c0683s, float f) {
        Float f2;
        return (c0683s == null || (f2 = (Float) c0683s.f4055a.get("android:fade:transitionAlpha")) == null) ? f : f2.floatValue();
    }

    @Override // p016c.p065p.AbstractC0671j0
    /* JADX INFO: renamed from: d0 */
    public Animator mo5074d0(ViewGroup viewGroup, View view, C0683s c0683s, C0683s c0683s2) {
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        float fM5073j0 = m5073j0(c0683s, CropImageView.DEFAULT_ASPECT_RATIO);
        if (fM5073j0 != 1.0f) {
            f = fM5073j0;
        }
        return m5072i0(view, f, 1.0f);
    }

    @Override // p016c.p065p.AbstractC0671j0
    /* JADX INFO: renamed from: f0 */
    public Animator mo5075f0(ViewGroup viewGroup, View view, C0683s c0683s, C0683s c0683s2) {
        C0657c0.m5062e(view);
        return m5072i0(view, m5073j0(c0683s, 1.0f), CropImageView.DEFAULT_ASPECT_RATIO);
    }

    @Override // p016c.p065p.AbstractC0671j0, p016c.p065p.AbstractC0676m
    /* JADX INFO: renamed from: i */
    public void mo5037i(C0683s c0683s) {
        super.mo5037i(c0683s);
        c0683s.f4055a.put("android:fade:transitionAlpha", Float.valueOf(C0657c0.m5060c(c0683s.f4056b)));
    }
}
