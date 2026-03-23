package p093d.p126d.p127a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ConfigurationInfo;

/* JADX INFO: renamed from: d.d.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1284a {
    /* JADX INFO: renamed from: a */
    public static boolean m9601a(Context context) {
        ConfigurationInfo deviceConfigurationInfo = ((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo();
        C1288e.m9616b("info.reqGlEsVersion = " + deviceConfigurationInfo.reqGlEsVersion);
        return deviceConfigurationInfo.reqGlEsVersion >= 131072;
    }
}
