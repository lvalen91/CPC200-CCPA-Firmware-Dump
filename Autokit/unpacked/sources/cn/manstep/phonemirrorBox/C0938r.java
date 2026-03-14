package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0938r extends ContextWrapper {
    /* JADX INFO: renamed from: a */
    public static ContextWrapper m6931a(Context context, Locale locale) {
        Configuration configuration = context.getResources().getConfiguration();
        configuration.orientation = 0;
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            configuration.setLocale(locale);
            LocaleList localeList = new LocaleList(locale);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
            context = context.createConfigurationContext(configuration);
        } else if (i >= 19) {
            configuration.setLocale(locale);
            context = context.createConfigurationContext(configuration);
        }
        return new ContextWrapper(context);
    }
}
