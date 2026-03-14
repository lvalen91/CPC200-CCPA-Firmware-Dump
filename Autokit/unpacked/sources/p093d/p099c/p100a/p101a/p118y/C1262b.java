package p093d.p099c.p100a.p101a.p118y;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;

/* JADX INFO: renamed from: d.c.a.a.y.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1262b {

    /* JADX INFO: renamed from: a */
    public static final boolean f7838a;

    /* JADX INFO: renamed from: b */
    private static final int[] f7839b;

    /* JADX INFO: renamed from: c */
    static final String f7840c;

    static {
        f7838a = Build.VERSION.SDK_INT >= 21;
        f7839b = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        f7840c = C1262b.class.getSimpleName();
    }

    private C1262b() {
    }

    /* JADX INFO: renamed from: a */
    public static ColorStateList m9477a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 22 && i <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
            Color.alpha(colorStateList.getColorForState(f7839b, 0));
        }
        return colorStateList;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m9478b(int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i : iArr) {
            if (i == 16842910) {
                z = true;
            } else if (i == 16842908 || i == 16842919 || i == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
