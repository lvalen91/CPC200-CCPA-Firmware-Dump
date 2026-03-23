package p016c.p041g.p048i;

import android.os.Build;
import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;

/* JADX INFO: renamed from: c.g.i.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0618f {

    /* JADX INFO: renamed from: a */
    private static final Locale f3811a = new Locale(BuildConfig.FLAVOR, BuildConfig.FLAVOR);

    /* JADX INFO: renamed from: a */
    private static int m4843a(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    /* JADX INFO: renamed from: b */
    public static int m4844b(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f3811a)) {
            return 0;
        }
        String strM4825c = C0614b.m4825c(locale);
        return strM4825c == null ? m4843a(locale) : (strM4825c.equalsIgnoreCase("Arab") || strM4825c.equalsIgnoreCase("Hebr")) ? 1 : 0;
    }
}
