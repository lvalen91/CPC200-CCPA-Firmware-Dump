package c.o;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class a {
    private static long a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Method f1269b;

    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            b.a(str);
        }
    }

    public static void b() {
        if (Build.VERSION.SDK_INT >= 18) {
            b.b();
        }
    }

    private static void c(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (!(cause instanceof RuntimeException)) {
                throw new RuntimeException(cause);
            }
            throw ((RuntimeException) cause);
        }
        String str2 = "Unable to call " + str + " via reflection";
    }

    @SuppressLint({"NewApi"})
    public static boolean d() {
        try {
            if (f1269b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        return e();
    }

    private static boolean e() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f1269b == null) {
                    a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f1269b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f1269b.invoke(null, Long.valueOf(a))).booleanValue();
            } catch (Exception e) {
                c("isTagEnabled", e);
            }
        }
        return false;
    }
}
