package androidx.core.view;

import android.os.Build;
import android.view.ViewGroup;
import p016c.p041g.C0586b;

/* JADX INFO: renamed from: androidx.core.view.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0294x {
    /* JADX INFO: renamed from: a */
    public static boolean m2169a(ViewGroup viewGroup) {
        if (Build.VERSION.SDK_INT >= 21) {
            return viewGroup.isTransitionGroup();
        }
        Boolean bool = (Boolean) viewGroup.getTag(C0586b.tag_transition_group);
        return ((bool == null || !bool.booleanValue()) && viewGroup.getBackground() == null && C0292v.m2061L(viewGroup) == null) ? false : true;
    }
}
