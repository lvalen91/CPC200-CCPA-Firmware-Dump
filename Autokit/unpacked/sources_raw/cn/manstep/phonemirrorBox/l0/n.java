package cn.manstep.phonemirrorBox.l0;

import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.w;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class n extends Fragment {
    private ImageView a0;
    private cn.manstep.phonemirrorBox.x0.g b0;

    @Override // androidx.fragment.app.Fragment
    public View L0(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        cn.manstep.phonemirrorBox.i0.k kVar = (cn.manstep.phonemirrorBox.i0.k) androidx.databinding.f.e(layoutInflater, 2131492935, viewGroup, false);
        kVar.G(this);
        cn.manstep.phonemirrorBox.x0.g gVar = (cn.manstep.phonemirrorBox.x0.g) new androidx.lifecycle.w(J1(), new w.a(D() == null ? null : D().getApplication())).a(cn.manstep.phonemirrorBox.x0.g.class);
        this.b0 = gVar;
        gVar.J(J());
        kVar.L(this.b0);
        return kVar.t();
    }

    @Override // androidx.fragment.app.Fragment
    public void M0() {
        super.M0();
        this.a0.clearAnimation();
        this.b0.H(0);
    }

    @Override // androidx.fragment.app.Fragment
    public void P0() {
        super.P0();
        this.b0 = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void g1(View view, Bundle bundle) {
        super.g1(view, bundle);
        ImageView imageView = (ImageView) view.findViewById(2131296952);
        this.a0 = imageView;
        AnimationDrawable animationDrawable = (AnimationDrawable) imageView.getBackground();
        if (animationDrawable != null) {
            animationDrawable.start();
            return;
        }
        Animation animationLoadAnimation = AnimationUtils.loadAnimation(D(), 2130772002);
        animationLoadAnimation.setInterpolator(new LinearInterpolator());
        this.a0.startAnimation(animationLoadAnimation);
    }
}
