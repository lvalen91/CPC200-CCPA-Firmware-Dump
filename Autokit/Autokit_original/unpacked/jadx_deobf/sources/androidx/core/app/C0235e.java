package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: androidx.core.app.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0235e {

    /* JADX INFO: renamed from: androidx.core.app.e$a */
    static class a {

        /* JADX INFO: renamed from: a */
        private static Method f1740a;

        /* JADX INFO: renamed from: b */
        private static boolean f1741b;

        /* JADX INFO: renamed from: c */
        private static Method f1742c;

        /* JADX INFO: renamed from: d */
        private static boolean f1743d;

        /* JADX INFO: renamed from: a */
        public static IBinder m1665a(Bundle bundle, String str) {
            if (!f1741b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f1740a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1741b = true;
            }
            Method method2 = f1740a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f1740a = null;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: b */
        public static void m1666b(Bundle bundle, String str, IBinder iBinder) {
            if (!f1743d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f1742c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1743d = true;
            }
            Method method2 = f1742c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f1742c = null;
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static IBinder m1663a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : a.m1665a(bundle, str);
    }

    /* JADX INFO: renamed from: b */
    public static void m1664b(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.m1666b(bundle, str, iBinder);
        }
    }
}
