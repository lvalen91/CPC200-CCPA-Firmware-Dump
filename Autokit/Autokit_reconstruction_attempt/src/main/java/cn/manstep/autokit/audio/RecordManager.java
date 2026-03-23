/**
 * RecordManager.java
 * Deobfuscated from: cn.manstep.phonemirrorBox.r
 *
 * Audio recording / microphone context management — wraps an Android Context
 * with a specific Locale configuration, forcing landscape-neutral orientation.
 * Used to create locale-aware ContextWrappers for recording UI or mic sessions.
 */
package cn.manstep.autokit.audio;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

public class RecordManager extends ContextWrapper {

    /**
     * Creates a locale-configured ContextWrapper with orientation reset.
     * /* was: 'a' */
     *
     * @param context the base context
     * @param locale  the desired locale
     * @return a ContextWrapper configured for the specified locale
     */
    public static ContextWrapper createLocalizedContext(/* was: 'a' */ Context context, Locale locale) {
        Configuration configuration = context.getResources().getConfiguration();
        configuration.orientation = 0;
        int sdkInt = Build.VERSION.SDK_INT;
        if (sdkInt >= 24) {
            configuration.setLocale(locale);
            LocaleList localeList = new LocaleList(locale);
            LocaleList.setDefault(localeList);
            configuration.setLocales(localeList);
            context = context.createConfigurationContext(configuration);
        } else if (sdkInt >= 19) {
            configuration.setLocale(locale);
            context = context.createConfigurationContext(configuration);
        }
        return new ContextWrapper(context);
    }
}
