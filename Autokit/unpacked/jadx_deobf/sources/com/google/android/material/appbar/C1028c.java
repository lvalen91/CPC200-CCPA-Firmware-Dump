package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* JADX INFO: renamed from: com.google.android.material.appbar.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1028c<V extends View> extends CoordinatorLayout.AbstractC0221c<V> {

    /* JADX INFO: renamed from: a */
    private C1029d f6543a;

    /* JADX INFO: renamed from: b */
    private int f6544b;

    /* JADX INFO: renamed from: c */
    private int f6545c;

    public C1028c() {
        this.f6544b = 0;
        this.f6545c = 0;
    }

    /* JADX INFO: renamed from: E */
    public int m7924E() {
        C1029d c1029d = this.f6543a;
        if (c1029d != null) {
            return c1029d.m7927b();
        }
        return 0;
    }

    /* JADX INFO: renamed from: F */
    protected void mo7918F(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.m1551I(v, i);
    }

    /* JADX INFO: renamed from: G */
    public boolean m7925G(int i) {
        C1029d c1029d = this.f6543a;
        if (c1029d != null) {
            return c1029d.m7930e(i);
        }
        this.f6544b = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
    /* JADX INFO: renamed from: l */
    public boolean mo1584l(CoordinatorLayout coordinatorLayout, V v, int i) {
        mo7918F(coordinatorLayout, v, i);
        if (this.f6543a == null) {
            this.f6543a = new C1029d(v);
        }
        this.f6543a.m7928c();
        this.f6543a.m7926a();
        int i2 = this.f6544b;
        if (i2 != 0) {
            this.f6543a.m7930e(i2);
            this.f6544b = 0;
        }
        int i3 = this.f6545c;
        if (i3 == 0) {
            return true;
        }
        this.f6543a.m7929d(i3);
        this.f6545c = 0;
        return true;
    }

    public C1028c(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6544b = 0;
        this.f6545c = 0;
    }
}
