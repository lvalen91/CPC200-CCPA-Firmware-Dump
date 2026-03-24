package com.google.android.material.appbar;

import android.R;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.view.View;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.g;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class e {
    static void a(View view, float f) {
        int integer = view.getResources().getInteger(g.app_bar_elevation_anim_duration);
        StateListAnimator stateListAnimator = new StateListAnimator();
        long j = integer;
        stateListAnimator.addState(new int[]{R.attr.enabled, d.c.a.a.b.state_liftable, -d.c.a.a.b.state_lifted}, ObjectAnimator.ofFloat(view, "elevation", CropImageView.DEFAULT_ASPECT_RATIO).setDuration(j));
        stateListAnimator.addState(new int[]{R.attr.enabled}, ObjectAnimator.ofFloat(view, "elevation", f).setDuration(j));
        stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(view, "elevation", CropImageView.DEFAULT_ASPECT_RATIO).setDuration(0L));
        view.setStateListAnimator(stateListAnimator);
    }
}
