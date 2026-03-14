package p016c.p041g.p048i;

import android.icu.util.ULocale;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: renamed from: c.g.i.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0614b {

    /* JADX INFO: renamed from: a */
    private static Method f3788a;

    /* JADX INFO: renamed from: b */
    private static Method f3789b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i < 24) {
                try {
                    f3789b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
                    return;
                } catch (Exception e) {
                    throw new IllegalStateException(e);
                }
            }
            return;
        }
        try {
            Class<?> cls = Class.forName("libcore.icu.ICU");
            if (cls != null) {
                f3788a = cls.getMethod("getScript", String.class);
                f3789b = cls.getMethod("addLikelySubtags", String.class);
            }
        } catch (Exception unused) {
            f3788a = null;
            f3789b = null;
        }
    }

    /* JADX INFO: renamed from: a */
    private static String m4823a(Locale locale) {
        String string = locale.toString();
        try {
            if (f3789b != null) {
                return (String) f3789b.invoke(null, string);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return string;
    }

    /* JADX INFO: renamed from: b */
    private static String m4824b(String str) {
        try {
            if (f3788a != null) {
                return (String) f3788a.invoke(null, str);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: c */
    public static String m4825c(Locale locale) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i >= 21) {
            try {
                return ((Locale) f3789b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return locale.getScript();
            }
        }
        String strM4823a = m4823a(locale);
        if (strM4823a != null) {
            return m4824b(strM4823a);
        }
        return null;
    }
}
