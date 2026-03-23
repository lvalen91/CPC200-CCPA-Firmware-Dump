package p016c.p041g.p042d;

import android.graphics.Color;

/* JADX INFO: renamed from: c.g.d.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0588a {
    static {
        new ThreadLocal();
    }

    /* JADX INFO: renamed from: a */
    private static int m4668a(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }

    /* JADX INFO: renamed from: b */
    public static int m4669b(int i, int i2) {
        int iAlpha = Color.alpha(i2);
        int iAlpha2 = Color.alpha(i);
        int iM4668a = m4668a(iAlpha2, iAlpha);
        return Color.argb(iM4668a, m4670c(Color.red(i), iAlpha2, Color.red(i2), iAlpha, iM4668a), m4670c(Color.green(i), iAlpha2, Color.green(i2), iAlpha, iM4668a), m4670c(Color.blue(i), iAlpha2, Color.blue(i2), iAlpha, iM4668a));
    }

    /* JADX INFO: renamed from: c */
    private static int m4670c(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    /* JADX INFO: renamed from: d */
    public static int m4671d(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & 16777215) | (i2 << 24);
    }
}
