package androidx.core.content.p003c;

import java.lang.reflect.Array;

/* JADX INFO: renamed from: androidx.core.content.c.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0248e {
    /* JADX INFO: renamed from: a */
    public static int[] m1747a(int[] iArr, int i, int i2) {
        if (i + 1 > iArr.length) {
            int[] iArr2 = new int[m1749c(i)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            iArr = iArr2;
        }
        iArr[i] = i2;
        return iArr;
    }

    /* JADX INFO: renamed from: b */
    public static <T> T[] m1748b(T[] tArr, int i, T t) {
        if (i + 1 > tArr.length) {
            Object[] objArr = (Object[]) Array.newInstance(tArr.getClass().getComponentType(), m1749c(i));
            System.arraycopy(tArr, 0, objArr, 0, i);
            tArr = (T[]) objArr;
        }
        tArr[i] = t;
        return tArr;
    }

    /* JADX INFO: renamed from: c */
    public static int m1749c(int i) {
        if (i <= 4) {
            return 8;
        }
        return i * 2;
    }
}
