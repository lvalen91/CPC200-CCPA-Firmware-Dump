package p016c.p041g.p049j;

import android.os.Build;
import java.util.Arrays;
import p000.C0000a;

/* JADX INFO: renamed from: c.g.j.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0621c {
    /* JADX INFO: renamed from: a */
    public static boolean m4846a(Object obj, Object obj2) {
        return Build.VERSION.SDK_INT >= 19 ? C0000a.m0a(obj, obj2) : obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX INFO: renamed from: b */
    public static int m4847b(Object... objArr) {
        return Build.VERSION.SDK_INT >= 19 ? Arrays.hashCode(objArr) : Arrays.hashCode(objArr);
    }
}
