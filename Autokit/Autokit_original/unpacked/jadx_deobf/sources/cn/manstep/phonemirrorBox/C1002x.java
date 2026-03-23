package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import cn.manstep.phonemirrorBox.util.C0982s;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1002x {

    /* JADX INFO: renamed from: a */
    public static final String[] f6235a = {"Auto", "简体中文", "繁體中文", "English", "日本語", "العربية", "Deutsch", "Español", "Français", "Nederlands", "Português", "Русский", "Türkçe", "한국의", "עִבְרִית", "Italiano", "ภาษาไทย", "Indonesia", "Melayu", "Norsk"};

    /* JADX INFO: renamed from: b */
    private static final HashMap<Integer, Locale> f6236b = new a(16);

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.x$a */
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

    /* JADX INFO: renamed from: a */
    public static void m7493a(Context context, int i) {
        Resources resources = context.getResources();
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        Configuration configuration = resources.getConfiguration();
        Locale localeM7497e = m7497e(i);
        C0982s.m7379i("LanguageConfig", "changeLanguage: " + localeM7497e);
        if (Build.VERSION.SDK_INT >= 17) {
            configuration.setLocale(localeM7497e);
        } else {
            configuration.locale = localeM7497e;
        }
        resources.updateConfiguration(configuration, displayMetrics);
    }

    /* JADX INFO: renamed from: b */
    public static Context m7494b(Context context, int i) {
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(m7497e(i));
        return context.createConfigurationContext(configuration);
    }

    /* JADX INFO: renamed from: c */
    public static int m7495c() {
        int iM6091m = C0795b0.m6071i().m6091m("LanguageID", 0);
        if (m7499g(iM6091m, Locale.TRADITIONAL_CHINESE)) {
            return 1;
        }
        return m7498f(iM6091m) ? 0 : 2;
    }

    /* JADX INFO: renamed from: d */
    private static Locale m7496d(int i) {
        Locale locale = Locale.ENGLISH;
        if (m7503k(i)) {
            return f6236b.get(Integer.valueOf(i));
        }
        Locale locale2 = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        }
        Iterator<Integer> it = f6236b.keySet().iterator();
        while (it.hasNext()) {
            if (f6236b.get(Integer.valueOf(it.next().intValue())).getLanguage().equals(locale.getLanguage())) {
                return locale2;
            }
        }
        return locale;
    }

    /* JADX INFO: renamed from: e */
    public static Locale m7497e(int i) {
        C0982s.m7374d("LanguageConfig", "getLocaleByLanguage: index=" + i);
        if (m7503k(i)) {
            return f6236b.get(Integer.valueOf(i));
        }
        Locale locale = Locale.getDefault();
        if (Build.VERSION.SDK_INT >= 24) {
            locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        }
        C0982s.m7374d("LanguageConfig", "getLocaleByLanguage: system default:" + locale);
        Iterator<Integer> it = f6236b.keySet().iterator();
        while (it.hasNext()) {
            if (f6236b.get(Integer.valueOf(it.next().intValue())).getLanguage().equals(locale.getLanguage())) {
                return locale;
            }
        }
        return Locale.ENGLISH;
    }

    /* JADX INFO: renamed from: f */
    public static boolean m7498f(int i) {
        return m7499g(i, Locale.SIMPLIFIED_CHINESE) || m7499g(i, Locale.TRADITIONAL_CHINESE) || m7499g(i, Locale.CHINESE);
    }

    /* JADX INFO: renamed from: g */
    private static boolean m7499g(int i, Locale locale) {
        return m7496d(i).equals(locale);
    }

    /* JADX INFO: renamed from: h */
    public static boolean m7500h(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale) == 1;
        }
        String language = locale.getLanguage();
        return language.equals("ar") || language.equals("he") || language.equals("fa") || language.equals("ur") || language.equals("sy") || language.equals("yi") || language.equals("iw");
    }

    /* JADX INFO: renamed from: i */
    public static boolean m7501i() {
        return m7502j(C0795b0.m6071i().m6091m("LanguageID", 0));
    }

    /* JADX INFO: renamed from: j */
    public static boolean m7502j(int i) {
        return m7499g(i, Locale.SIMPLIFIED_CHINESE);
    }

    /* JADX INFO: renamed from: k */
    private static boolean m7503k(int i) {
        return f6236b.containsKey(Integer.valueOf(i));
    }
}
