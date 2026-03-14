package androidx.core.widget;

import android.os.Build;
import android.widget.EdgeEffect;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class d {
    public static void a(EdgeEffect edgeEffect, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            edgeEffect.onPull(f, f2);
        } else {
            edgeEffect.onPull(f);
        }
    }
}
