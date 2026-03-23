package c.g.i;

import android.os.Build;
import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class f {
    private static final Locale a = new Locale(BuildConfig.FLAVOR, BuildConfig.FLAVOR);

    private static int a(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    public static int b(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(a)) {
            return 0;
        }
        String strC = b.c(locale);
        return strC == null ? a(locale) : (strC.equalsIgnoreCase("Arab") || strC.equalsIgnoreCase("Hebr")) ? 1 : 0;
    }
}
