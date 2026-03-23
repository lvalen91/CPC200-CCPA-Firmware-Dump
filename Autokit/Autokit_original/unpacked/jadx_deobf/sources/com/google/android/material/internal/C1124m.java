package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.widget.ImageButton;

/* JADX INFO: renamed from: com.google.android.material.internal.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"AppCompatCustomView"})
public class C1124m extends ImageButton {

    /* JADX INFO: renamed from: b */
    private int f7206b;

    /* JADX INFO: renamed from: b */
    public final void m8737b(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f7206b = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f7206b;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        m8737b(i, true);
    }
}
