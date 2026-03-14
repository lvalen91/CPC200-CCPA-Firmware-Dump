package com.google.android.material.appbar;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.view.View;
import com.yalantis.ucrop.view.CropImageView;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1222g;

/* JADX INFO: renamed from: com.google.android.material.appbar.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1030e {
    /* JADX INFO: renamed from: a */
    static void m7931a(View view, float f) {
        int integer = view.getResources().getInteger(C1222g.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{R.attr.enabled, C1216b.state_liftable, -C1216b.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", CropImageView.DEFAULT_ASPECT_RATIO).setDuration(j));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", CropImageView.DEFAULT_ASPECT_RATIO).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
