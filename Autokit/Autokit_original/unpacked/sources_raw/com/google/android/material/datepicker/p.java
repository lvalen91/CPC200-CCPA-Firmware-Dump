package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class p<S> extends Fragment {
    protected final LinkedHashSet<o<S>> a0 = new LinkedHashSet<>();

    p() {
    }

    boolean g2(o<S> oVar) {
        return this.a0.add(oVar);
    }

    void h2() {
        this.a0.clear();
    }
}
