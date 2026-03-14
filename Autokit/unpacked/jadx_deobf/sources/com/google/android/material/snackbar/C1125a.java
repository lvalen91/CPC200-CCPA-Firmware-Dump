package com.google.android.material.snackbar;

import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.C1129e;

/* JADX INFO: renamed from: com.google.android.material.snackbar.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1125a {

    /* JADX INFO: renamed from: a */
    private C1129e.b f7212a;

    public C1125a(SwipeDismissBehavior<?> swipeDismissBehavior) {
        swipeDismissBehavior.m7944K(0.1f);
        swipeDismissBehavior.m7943J(0.6f);
        swipeDismissBehavior.m7945L(0);
    }

    /* JADX INFO: renamed from: a */
    public boolean m8740a(View view) {
        return view instanceof C1128d;
    }

    /* JADX INFO: renamed from: b */
    public void m8741b(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            if (coordinatorLayout.m1548B(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                C1129e.m8745b().m8749e(this.f7212a);
            }
        } else if (actionMasked == 1 || actionMasked == 3) {
            C1129e.m8745b().m8750f(this.f7212a);
        }
    }
}
