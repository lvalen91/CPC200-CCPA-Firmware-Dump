package com.google.android.material.textfield;

import android.content.Context;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: renamed from: com.google.android.material.textfield.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractC1142e {

    /* JADX INFO: renamed from: a */
    TextInputLayout f7379a;

    /* JADX INFO: renamed from: b */
    Context f7380b;

    /* JADX INFO: renamed from: c */
    CheckableImageButton f7381c;

    AbstractC1142e(TextInputLayout textInputLayout) {
        this.f7379a = textInputLayout;
        this.f7380b = textInputLayout.getContext();
        this.f7381c = textInputLayout.getEndIconView();
    }

    /* JADX INFO: renamed from: a */
    abstract void mo8852a();

    /* JADX INFO: renamed from: b */
    boolean mo8893b(int i) {
        return true;
    }

    /* JADX INFO: renamed from: c */
    void mo8853c(boolean z) {
    }

    /* JADX INFO: renamed from: d */
    boolean mo8894d() {
        return false;
    }
}
