package p016c.p041g.p046g;

import android.os.Build;
import android.os.Trace;

/* JADX INFO: renamed from: c.g.g.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@Deprecated
public final class C0605c {
    static {
        int i = Build.VERSION.SDK_INT;
        if (i < 18 || i >= 29) {
            return;
        }
        try {
            Trace.class.getField("TRACE_TAG_APP").getLong(null);
            Trace.class.getMethod("isTagEnabled", Long.TYPE);
            Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            Trace.class.getMethod("traceCounter", Long.TYPE, String.class, Integer.TYPE);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m4756a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.beginSection(str);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m4757b() {
        if (Build.VERSION.SDK_INT >= 18) {
            Trace.endSection();
        }
    }
}
