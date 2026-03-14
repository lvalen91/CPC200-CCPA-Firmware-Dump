package androidx.core.content;

import android.content.Context;
import android.os.Process;
import androidx.core.app.C0234d;

/* JADX INFO: renamed from: androidx.core.content.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0243b {
    /* JADX INFO: renamed from: a */
    public static int m1704a(Context context, String str, int i, int i2, String str2) {
        if (context.checkPermission(str, i, i2) == -1) {
            return -1;
        }
        String strM1662b = C0234d.m1662b(str);
        if (strM1662b == null) {
            return 0;
        }
        if (str2 == null) {
            String[] packagesForUid = context.getPackageManager().getPackagesForUid(i2);
            if (packagesForUid == null || packagesForUid.length <= 0) {
                return -1;
            }
            str2 = packagesForUid[0];
        }
        return C0234d.m1661a(context, strM1662b, str2) != 0 ? -2 : 0;
    }

    /* JADX INFO: renamed from: b */
    public static int m1705b(Context context, String str) {
        return m1704a(context, str, Process.myPid(), Process.myUid(), context.getPackageName());
    }
}
