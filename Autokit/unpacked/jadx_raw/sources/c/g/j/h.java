package c.g.j;

import java.util.Locale;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class h {
    public static void a(boolean z, Object obj) {
        if (!z) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int b(int i, int i2, int i3, String str) {
        if (i < i2) {
            throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too low)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
        }
        if (i <= i3) {
            return i;
        }
        throw new IllegalArgumentException(String.format(Locale.US, "%s is out of range of [%d, %d] (too high)", str, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public static int c(int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException();
    }

    public static int d(int i, int i2) {
        if ((i & i2) == i) {
            return i;
        }
        throw new IllegalArgumentException("Requested flags 0x" + Integer.toHexString(i) + ", but only 0x" + Integer.toHexString(i2) + " are allowed");
    }

    public static <T> T e(T t) {
        if (t != null) {
            return t;
        }
        throw null;
    }

    public static <T> T f(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }
}
