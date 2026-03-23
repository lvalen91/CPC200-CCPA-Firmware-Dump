package p016c.p064o;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: c.o.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0650a {

    /* JADX INFO: renamed from: a */
    private static long f3907a;

    /* JADX INFO: renamed from: b */
    private static Method f3908b;

    /* JADX INFO: renamed from: a */
    public static void m5020a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            C0651b.m5025a(str);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m5021b() {
        if (Build.VERSION.SDK_INT >= 18) {
            C0651b.m5026b();
        }
    }

    /* JADX INFO: renamed from: c */
    private static void m5022c(String str, Exception exc) {
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
    /* JADX INFO: renamed from: d */
    public static boolean m5023d() {
        try {
            if (f3908b == null) {
                return Trace.isEnabled();
            }
        } catch (NoClassDefFoundError | NoSuchMethodError unused) {
        }
        return m5024e();
    }

    /* JADX INFO: renamed from: e */
    private static boolean m5024e() {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                if (f3908b == null) {
                    f3907a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                    f3908b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
                }
                return ((Boolean) f3908b.invoke(null, Long.valueOf(f3907a))).booleanValue();
            } catch (Exception e) {
                m5022c("isTagEnabled", e);
            }
        }
        return false;
    }
}
