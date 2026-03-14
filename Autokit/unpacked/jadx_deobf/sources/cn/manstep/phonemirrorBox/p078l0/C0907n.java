package cn.manstep.phonemirrorBox.p078l0;

import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.databinding.C0328f;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.C0409w;
import cn.manstep.phonemirrorBox.p075i0.AbstractC0865k;
import cn.manstep.phonemirrorBox.p091x0.C1009g;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.l0.n */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0907n extends Fragment {

    /* JADX INFO: renamed from: a0 */
    private ImageView f5693a0;

    /* JADX INFO: renamed from: b0 */
    private C1009g f5694b0;

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: L0 */
    public View mo2408L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        AbstractC0865k abstractC0865k = (AbstractC0865k) C0328f.m2359e(layoutInflater, 2131492935, viewGroup, false);
        abstractC0865k.m2328G(this);
        C1009g c1009g = (C1009g) new C0409w(m2403J1(), new C0409w.a(m2385D() == null ? null : m2385D().getApplication())).m3053a(C1009g.class);
        this.f5694b0 = c1009g;
        c1009g.m7625J(m2401J());
        abstractC0865k.mo6415L(this.f5694b0);
        return abstractC0865k.m2334t();
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: M0 */
    public void mo2411M0() {
        super.mo2411M0();
        this.f5693a0.clearAnimation();
        this.f5694b0.m7623H(0);
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: P0 */
    public void mo2419P0() {
        super.mo2419P0();
        this.f5694b0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    /* JADX INFO: renamed from: g1 */
    public void mo2469g1(View view, Bundle bundle) {
        super.mo2469g1(view, bundle);
        ImageView imageView = (ImageView) view.findViewById(2131296952);
        this.f5693a0 = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        if (animationDrawable != null) {
            animationDrawable.start();
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(m2385D(), 2130772002);
        animationLoadAnimation.setInterpolator(new LinearInterpolator());
        this.f5693a0.startAnimation(animationLoadAnimation);
    }
}
