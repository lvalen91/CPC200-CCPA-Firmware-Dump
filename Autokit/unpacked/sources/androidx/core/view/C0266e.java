package androidx.core.view;

import android.graphics.Rect;
import android.os.Build;
import android.view.Gravity;

/* JADX INFO: renamed from: androidx.core.view.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0266e {
    /* JADX INFO: renamed from: a */
    public static void m1882a(int i, int i2, int i3, Rect rect, Rect rect2, int i4) {
        if (Build.VERSION.SDK_INT >= 17) {
            Gravity.apply(i, i2, i3, rect, rect2, i4);
        } else {
            Gravity.apply(i, i2, i3, rect, rect2);
        }
    }

    /* JADX INFO: renamed from: b */
    public static int m1883b(int i, int i2) {
        return Build.VERSION.SDK_INT >= 17 ? Gravity.getAbsoluteGravity(i, i2) : i & (-8388609);
    }
}
