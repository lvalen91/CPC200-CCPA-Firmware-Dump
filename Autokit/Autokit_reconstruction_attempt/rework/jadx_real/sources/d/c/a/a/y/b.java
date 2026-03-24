package d.c.a.a.y;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Build;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class b {
    public static final boolean a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[] f2347b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final String f2348c;

    static {
        a = Build.VERSION.SDK_INT >= 21;
        f2347b = new int[]{R.attr.state_enabled, R.attr.state_pressed};
        f2348c = b.class.getSimpleName();
    }

    private b() {
    }

    public static ColorStateList a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return ColorStateList.valueOf(0);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 22 && i <= 27 && Color.alpha(colorStateList.getDefaultColor()) == 0) {
            Color.alpha(colorStateList.getColorForState(f2347b, 0));
        }
        return colorStateList;
    }

    public static boolean b(int[] iArr) {
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
