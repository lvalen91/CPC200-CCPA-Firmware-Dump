package androidx.core.app;

import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class e {

    static class a {
        private static Method a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f521b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Method f522c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f523d;

        public static IBinder a(Bundle bundle, String str) {
            if (!f521b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f521b = true;
            }
            Method method2 = a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    a = null;
                }
            }
            return null;
        }

        public static void b(Bundle bundle, String str, IBinder iBinder) {
            if (!f523d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f522c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f523d = true;
            }
            Method method2 = f522c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused2) {
                    f522c = null;
                }
            }
        }
    }

    public static IBinder a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? bundle.getBinder(str) : a.a(bundle, str);
    }

    public static void b(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            a.b(bundle, str, iBinder);
        }
    }
}
