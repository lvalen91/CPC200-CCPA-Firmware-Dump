package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class BaseTransientBottomBar$Behavior extends SwipeDismissBehavior<View> {

    /* JADX INFO: renamed from: k */
    private final C1125a f7207k = new C1125a(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    /* JADX INFO: renamed from: E */
    public boolean mo7942E(View view) {
        return this.f7207k.m8740a(view);
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: k */
    public boolean mo1583k(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        this.f7207k.m8741b(coordinatorLayout, view, motionEvent);
        return super.mo1583k(coordinatorLayout, view, motionEvent);
    }
}
