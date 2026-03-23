package com.google.android.material.internal;

import android.annotation.SuppressLint;
import android.widget.ImageButton;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"AppCompatCustomView"})
public class m extends ImageButton {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f2172b;

    public final void b(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f2172b = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f2172b;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        b(i, true);
    }
}
