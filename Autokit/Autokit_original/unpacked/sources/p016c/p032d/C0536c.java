package p016c.p032d;

/* JADX INFO: renamed from: c.d.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0536c {

    /* JADX INFO: renamed from: a */
    static final int[] f3300a = new int[0];

    /* JADX INFO: renamed from: b */
    static final long[] f3301b = new long[0];

    /* JADX INFO: renamed from: c */
    static final Object[] f3302c = new Object[0];

    /* JADX INFO: renamed from: a */
    static int m4248a(int[] iArr, int i, int i2) {
        int i3 = i - 1;
        int i4 = 0;
        while (i4 <= i3) {
            int i5 = (i4 + i3) >>> 1;
            int i6 = iArr[i5];
            if (i6 < i2) {
                i4 = i5 + 1;
            } else {
                if (i6 <= i2) {
                    return i5;
                }
                i3 = i5 - 1;
            }
        }
        return i4 ^ (-1);
    }

    /* JADX INFO: renamed from: b */
    static int m4249b(long[] jArr, int i, long j) {
        int i2 = i - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            long j2 = jArr[i4];
            if (j2 < j) {
                i3 = i4 + 1;
            } else {
                if (j2 <= j) {
                    return i4;
                }
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    /* JADX INFO: renamed from: c */
    public static boolean m4250c(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    /* JADX INFO: renamed from: d */
    public static int m4251d(int i) {
        for (int i2 = 4; i2 < 32; i2++) {
            int i3 = (1 << i2) - 12;
            if (i <= i3) {
                return i3;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: e */
    public static int m4252e(int i) {
        return m4251d(i * 4) / 4;
    }

    /* JADX INFO: renamed from: f */
    public static int m4253f(int i) {
        return m4251d(i * 8) / 8;
    }
}
