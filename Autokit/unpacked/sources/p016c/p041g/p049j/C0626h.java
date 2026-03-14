package p016c.p041g.p049j;

import java.util.Locale;

/* JADX INFO: renamed from: c.g.j.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0626h {
    /* JADX INFO: renamed from: a */
    public static void m4851a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    /* JADX INFO: renamed from: b */
    public static int m4852b(int i, int i2, int i3, String str) {
        if (i < i2) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        if (i <= i3) {
            return i;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    /* JADX INFO: renamed from: c */
    public static int m4853c(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: renamed from: d */
    public static int m4854d(int i, int i2) {
        if ((i & i2) == i) {
            return i;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i) + ", but only 0x" + Integer.toHexString(i2) + " are allowed");
    }

    /* JADX INFO: renamed from: e */
    public static <T> T m4855e(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    /* JADX INFO: renamed from: f */
    public static <T> T m4856f(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
