package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class x {
    public static final String[] a = {"Auto", "简体中文", "繁體中文", "English", "日本語", "العربية", "Deutsch", "Español", "Français", "Nederlands", "Português", "Русский", "Türkçe", "한국의", "עִבְרִית", "Italiano", "ภาษาไทย", "Indonesia", "Melayu", "Norsk"};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final HashMap<Integer, Locale> f1959b = new a(16);

    static class a extends HashMap<Integer, Locale> {
        a(int i) {
            super(i);
            put(1, Locale.SIMPLIFIED_CHINESE);
            put(2, Locale.TRADITIONAL_CHINESE);
            put(3, Locale.ENGLISH);
            put(4, Locale.JAPANESE);
            put(5, new Locale("ar", "IL"));
            put(6, Locale.GERMANY);
            put(7, new Locale("es", "ES"));
            put(8, Locale.FRANCE);
            put(9, new Locale("nl", "NL"));
            put(10, new Locale("pt", "PT"));
            put(11, new Locale("ru", "RU"));
            put(12, new Locale("tr", "TR"));
            put(13, new Locale("ko", "KR"));
            put(14, new Locale("iw", "IL"));
            put(15, Locale.ITALY);
            put(16, new Locale("th", "TH"));
            put(17, new Locale("in", "ID"));
            put(18, new Locale("ms", "MY"));
            put(19, new Locale("nb", "NO"));
        }
    }

    public static void a(Context context, int i) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        Locale localeE = e(i);
        cn.manstep.phonemirrorBox.util.s.i("LanguageConfig", "changeLanguage: " + localeE);
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(localeE);
        } else {
            configuration.locale = localeE;
        }
        resources.updateConfiguration(configuration, displayMetrics);
    }

    public static Context b(Context context, int i) {
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(e(i));
        return context.createConfigurationContext(configuration);
    }

    public static int c() {
        int iM = b0.i().m("LanguageID", 0);
        if (g(iM, Locale.TRADITIONAL_CHINESE)) {
            return 1;
        }
        return f(iM) ? 0 : 2;
    }

    private static Locale d(int i) {
        Locale locale = Locale.ENGLISH;
        if (k(i)) {
            return f1959b.get(Integer.valueOf(i));
        }
        Locale locale2 = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        }
        Iterator<Integer> it = f1959b.keySet().iterator();
        while (it.hasNext()) {
            if (f1959b.get(Integer.valueOf(it.next().intValue())).getLanguage().equals(locale.getLanguage())) {
                return locale2;
            }
        }
        return locale;
    }

    public static Locale e(int i) {
        cn.manstep.phonemirrorBox.util.s.d("LanguageConfig", "getLocaleByLanguage: index=" + i);
        if (k(i)) {
            return f1959b.get(Integer.valueOf(i));
        }
        Locale locale = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        }
        cn.manstep.phonemirrorBox.util.s.d("LanguageConfig", "getLocaleByLanguage: system default:" + locale);
        Iterator<Integer> it = f1959b.keySet().iterator();
        while (it.hasNext()) {
            if (f1959b.get(Integer.valueOf(it.next().intValue())).getLanguage().equals(locale.getLanguage())) {
                return locale;
            }
        }
        return Locale.ENGLISH;
    }

    public static boolean f(int i) {
        return g(i, Locale.SIMPLIFIED_CHINESE) || g(i, Locale.TRADITIONAL_CHINESE) || g(i, Locale.CHINESE);
    }

    private static boolean g(int i, Locale locale) {
        return d(i).equals(locale);
    }

    public static boolean h(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
        }
        String language = locale.getLanguage();
        return language.equals("ar") || language.equals("he") || language.equals("fa") || language.equals("ur") || language.equals("sy") || language.equals("yi") || language.equals("iw");
    }

    public static boolean i() {
        return j(b0.i().m("LanguageID", 0));
    }

    public static boolean j(int i) {
        return g(i, Locale.SIMPLIFIED_CHINESE);
    }

    private static boolean k(int i) {
        return f1959b.containsKey(Integer.valueOf(i));
    }
}
