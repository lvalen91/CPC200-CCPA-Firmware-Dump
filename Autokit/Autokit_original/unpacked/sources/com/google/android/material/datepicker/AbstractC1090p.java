package com.google.android.material.datepicker;

import androidx.fragment.app.Fragment;
import java.util.LinkedHashSet;

/* JADX INFO: renamed from: com.google.android.material.datepicker.p */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractC1090p<S> extends Fragment {

    /* JADX INFO: renamed from: a0 */
    protected final LinkedHashSet<AbstractC1089o<S>> f6967a0 = new LinkedHashSet<>();

    AbstractC1090p() {
    }

    /* JADX INFO: renamed from: g2 */
    boolean mo8398g2(AbstractC1089o<S> abstractC1089o) {
        return this.f6967a0.add(abstractC1089o);
    }

    /* JADX INFO: renamed from: h2 */
    void m8463h2() {
        this.f6967a0.clear();
    }
}
