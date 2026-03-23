package androidx.core.view.p004e0;

import android.os.Build;
import android.view.View;
import android.view.accessibility.AccessibilityRecord;

/* JADX INFO: renamed from: androidx.core.view.e0.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0271e {
    /* JADX INFO: renamed from: a */
    public static void m1972a(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollX(i);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m1973b(AccessibilityRecord accessibilityRecord, int i) {
        if (Build.VERSION.SDK_INT >= 15) {
            accessibilityRecord.setMaxScrollY(i);
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m1974c(AccessibilityRecord accessibilityRecord, View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            accessibilityRecord.setSource(view, i);
        }
    }
}
