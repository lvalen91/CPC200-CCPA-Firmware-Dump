package com.google.android.material.internal;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: renamed from: com.google.android.material.internal.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1122k {
    /* JADX INFO: renamed from: a */
    public static TextView m8728a(Toolbar toolbar) {
        return m8729b(toolbar, toolbar.getSubtitle());
    }

    /* JADX INFO: renamed from: b */
    private static TextView m8729b(Toolbar toolbar, CharSequence charSequence) {
        for (int i = 0; i < toolbar.getChildCount(); i++) {
            View childAt = toolbar.getChildAt(i);
            if (childAt instanceof TextView) {
                TextView textView = (TextView) childAt;
                if (TextUtils.equals(textView.getText(), charSequence)) {
                    return textView;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static TextView m8730c(Toolbar toolbar) {
        return m8729b(toolbar, toolbar.getTitle());
    }
}
