package androidx.core.view;

import android.os.Build;
import android.view.ViewGroup;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class x {
    public static boolean a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(c.g.b.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && v.L(viewGroup) == null) ? false : true;
    }
}
