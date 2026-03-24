package d.d.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a {
    public static boolean a(Context context) {
        ConfigurationInfo deviceConfigurationInfo = ((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo();
        e.b("info.reqGlEsVersion = " + deviceConfigurationInfo.reqGlEsVersion);
        return deviceConfigurationInfo.reqGlEsVersion >= 131072;
    }
}
