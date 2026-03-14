package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;

/* JADX INFO: renamed from: androidx.appcompat.widget.w0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0199w0 {
    /* JADX INFO: renamed from: a */
    public static void m1388a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            ViewOnLongClickListenerC0201x0.m1394f(view, charSequence);
        }
    }
}
