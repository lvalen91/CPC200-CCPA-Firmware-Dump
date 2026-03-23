package androidx.core.content;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.TypedValue;
import java.io.File;

/* JADX INFO: renamed from: androidx.core.content.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0242a {

    /* JADX INFO: renamed from: a */
    private static final Object f1752a = new Object();

    /* JADX INFO: renamed from: b */
    private static TypedValue f1753b;

    /* JADX INFO: renamed from: a */
    public static int m1696a(Context context, String str) {
        if (str != null) {
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        throw new IllegalArgumentException("permission is null");
    }

    /* JADX INFO: renamed from: b */
    public static int m1697b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColor(i) : context.getResources().getColor(i);
    }

    /* JADX INFO: renamed from: c */
    public static ColorStateList m1698c(Context context, int i) {
        return Build.VERSION.SDK_INT >= 23 ? context.getColorStateList(i) : context.getResources().getColorStateList(i);
    }

    /* JADX INFO: renamed from: d */
    public static Drawable m1699d(Context context, int i) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            return context.getDrawable(i);
        }
        if (i3 >= 16) {
            return context.getResources().getDrawable(i);
        }
        synchronized (f1752a) {
            if (f1753b == null) {
                f1753b = new TypedValue();
            }
            context.getResources().getValue(i, f1753b, true);
            i2 = f1753b.resourceId;
        }
        return context.getResources().getDrawable(i2);
    }

    /* JADX INFO: renamed from: e */
    public static File[] m1700e(Context context) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalCacheDirs() : new File[]{context.getExternalCacheDir()};
    }

    /* JADX INFO: renamed from: f */
    public static File[] m1701f(Context context, String str) {
        return Build.VERSION.SDK_INT >= 19 ? context.getExternalFilesDirs(str) : new File[]{context.getExternalFilesDir(str)};
    }

    /* JADX INFO: renamed from: g */
    public static boolean m1702g(Context context, Intent[] intentArr, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivities(intentArr, bundle);
            return true;
        }
        context.startActivities(intentArr);
        return true;
    }

    /* JADX INFO: renamed from: h */
    public static void m1703h(Context context, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            context.startActivity(intent, bundle);
        } else {
            context.startActivity(intent);
        }
    }
}
