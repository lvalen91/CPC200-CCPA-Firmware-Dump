package cn.manstep.phonemirrorBox;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class r extends ContextWrapper {
    public static ContextWrapper a(Context context, Locale locale) {
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
