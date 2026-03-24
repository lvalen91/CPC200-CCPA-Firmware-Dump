package c.g.i;

import android.icu.util.ULocale;
import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b {
    private static Method a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f1221b;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i < 24) {
                try {
                    f1221b = Class.forName("libcore.icu.ICU").getMethod("addLikelySubtags", Locale.class);
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
                a = cls.getMethod("getScript", String.class);
                f1221b = cls.getMethod("addLikelySubtags", String.class);
            }
        } catch (Exception unused) {
            a = null;
            f1221b = null;
        }
    }

    private static String a(Locale locale) {
        String string = locale.toString();
        try {
            if (f1221b != null) {
                return (String) f1221b.invoke(null, string);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return string;
    }

    private static String b(String str) {
        try {
            if (a != null) {
                return (String) a.invoke(null, str);
            }
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
        return null;
    }

    public static String c(Locale locale) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            return ULocale.addLikelySubtags(ULocale.forLocale(locale)).getScript();
        }
        if (i >= 21) {
            try {
                return ((Locale) f1221b.invoke(null, locale)).getScript();
            } catch (IllegalAccessException | InvocationTargetException unused) {
                return locale.getScript();
            }
        }
        String strA = a(locale);
        if (strA != null) {
            return b(strA);
        }
        return null;
    }
}
