package p093d.p099c.p120b.p123e.p125c;

import p093d.p099c.p120b.C1267c;
import p093d.p099c.p120b.p121d.C1268a;
import p093d.p099c.p120b.p123e.p124b.C1277c;
import p093d.p099c.p120b.p123e.p124b.EnumC1275a;

/* JADX INFO: renamed from: d.c.b.e.c.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1282e {

    /* JADX INFO: renamed from: a */
    private static final int[][] f7967a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: b */
    private static final int[][] f7968b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: c */
    private static final int[][] f7969c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* JADX INFO: renamed from: d */
    private static final int[][] f7970d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* JADX INFO: renamed from: a */
    static void m9575a(C1268a c1268a, EnumC1275a enumC1275a, C1277c c1277c, int i, C1279b c1279b) throws C1267c {
        m9577c(c1279b);
        m9578d(c1277c, c1279b);
        m9586l(enumC1275a, i, c1279b);
        m9593s(c1277c, c1279b);
        m9580f(c1268a, i, c1279b);
    }

    /* JADX INFO: renamed from: b */
    static int m9576b(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iM9588n = m9588n(i2);
        int iM9588n2 = i << (iM9588n - 1);
        while (m9588n(iM9588n2) >= iM9588n) {
            iM9588n2 ^= i2 << (m9588n(iM9588n2) - iM9588n);
        }
        return iM9588n2;
    }

    /* JADX INFO: renamed from: c */
    static void m9577c(C1279b c1279b) {
        c1279b.m9538a((byte) -1);
    }

    /* JADX INFO: renamed from: d */
    static void m9578d(C1277c c1277c, C1279b c1279b) throws C1267c {
        m9584j(c1279b);
        m9579e(c1279b);
        m9592r(c1277c, c1279b);
        m9585k(c1279b);
    }

    /* JADX INFO: renamed from: e */
    private static void m9579e(C1279b c1279b) throws C1267c {
        if (c1279b.m9539b(8, c1279b.m9541d() - 8) == 0) {
            throw new C1267c();
        }
        c1279b.m9543f(8, c1279b.m9541d() - 8, 1);
    }

    /* JADX INFO: renamed from: f */
    static void m9580f(C1268a c1268a, int i, C1279b c1279b) throws C1267c {
        boolean zM9489f;
        int iM9542e = c1279b.m9542e() - 1;
        int iM9541d = c1279b.m9541d() - 1;
        int i2 = 0;
        int i3 = -1;
        while (iM9542e > 0) {
            if (iM9542e == 6) {
                iM9542e--;
            }
            while (iM9541d >= 0 && iM9541d < c1279b.m9541d()) {
                for (int i4 = 0; i4 < 2; i4++) {
                    int i5 = iM9542e - i4;
                    if (m9589o(c1279b.m9539b(i5, iM9541d))) {
                        if (i2 < c1268a.m9490g()) {
                            zM9489f = c1268a.m9489f(i2);
                            i2++;
                        } else {
                            zM9489f = false;
                        }
                        if (i != -1 && C1281d.m9572f(i, i5, iM9541d)) {
                            zM9489f = !zM9489f;
                        }
                        c1279b.m9544g(i5, iM9541d, zM9489f);
                    }
                }
                iM9541d += i3;
            }
            i3 = -i3;
            iM9541d += i3;
            iM9542e -= 2;
        }
        if (i2 == c1268a.m9490g()) {
            return;
        }
        throw new C1267c("Not all bits consumed: " + i2 + '/' + c1268a.m9490g());
    }

    /* JADX INFO: renamed from: g */
    private static void m9581g(int i, int i2, C1279b c1279b) throws C1267c {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!m9589o(c1279b.m9539b(i4, i2))) {
                throw new C1267c();
            }
            c1279b.m9543f(i4, i2, 0);
        }
    }

    /* JADX INFO: renamed from: h */
    private static void m9582h(int i, int i2, C1279b c1279b) {
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 = 0; i4 < 5; i4++) {
                c1279b.m9543f(i + i4, i2 + i3, f7968b[i3][i4]);
            }
        }
    }

    /* JADX INFO: renamed from: i */
    private static void m9583i(int i, int i2, C1279b c1279b) {
        for (int i3 = 0; i3 < 7; i3++) {
            for (int i4 = 0; i4 < 7; i4++) {
                c1279b.m9543f(i + i4, i2 + i3, f7967a[i3][i4]);
            }
        }
    }

    /* JADX INFO: renamed from: j */
    private static void m9584j(C1279b c1279b) throws C1267c {
        int length = f7967a[0].length;
        m9583i(0, 0, c1279b);
        m9583i(c1279b.m9542e() - length, 0, c1279b);
        m9583i(0, c1279b.m9542e() - length, c1279b);
        m9581g(0, 7, c1279b);
        m9581g(c1279b.m9542e() - 8, 7, c1279b);
        m9581g(0, c1279b.m9542e() - 8, c1279b);
        m9587m(7, 0, c1279b);
        m9587m((c1279b.m9541d() - 7) - 1, 0, c1279b);
        m9587m(7, c1279b.m9541d() - 7, c1279b);
    }

    /* JADX INFO: renamed from: k */
    private static void m9585k(C1279b c1279b) {
        int i = 8;
        while (i < c1279b.m9542e() - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (m9589o(c1279b.m9539b(i, 6))) {
                c1279b.m9543f(i, 6, i3);
            }
            if (m9589o(c1279b.m9539b(6, i))) {
                c1279b.m9543f(6, i, i3);
            }
            i = i2;
        }
    }

    /* JADX INFO: renamed from: l */
    static void m9586l(EnumC1275a enumC1275a, int i, C1279b c1279b) throws C1267c {
        C1268a c1268a = new C1268a();
        m9590p(enumC1275a, i, c1268a);
        for (int i2 = 0; i2 < c1268a.m9490g(); i2++) {
            boolean zM9489f = c1268a.m9489f((c1268a.m9490g() - 1) - i2);
            int[][] iArr = f7970d;
            c1279b.m9544g(iArr[i2][0], iArr[i2][1], zM9489f);
            if (i2 < 8) {
                c1279b.m9544g((c1279b.m9542e() - i2) - 1, 8, zM9489f);
            } else {
                c1279b.m9544g(8, (c1279b.m9541d() - 7) + (i2 - 8), zM9489f);
            }
        }
    }

    /* JADX INFO: renamed from: m */
    private static void m9587m(int i, int i2, C1279b c1279b) throws C1267c {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!m9589o(c1279b.m9539b(i, i4))) {
                throw new C1267c();
            }
            c1279b.m9543f(i, i4, 0);
        }
    }

    /* JADX INFO: renamed from: n */
    static int m9588n(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    /* JADX INFO: renamed from: o */
    private static boolean m9589o(int i) {
        return i == -1;
    }

    /* JADX INFO: renamed from: p */
    static void m9590p(EnumC1275a enumC1275a, int i, C1268a c1268a) throws C1267c {
        if (!C1283f.m9594b(i)) {
            throw new C1267c("Invalid mask pattern");
        }
        int iM9521a = (enumC1275a.m9521a() << 3) | i;
        c1268a.m9487c(iM9521a, 5);
        c1268a.m9487c(m9576b(iM9521a, 1335), 10);
        C1268a c1268a2 = new C1268a();
        c1268a2.m9487c(21522, 15);
        c1268a.m9493k(c1268a2);
        if (c1268a.m9490g() == 15) {
            return;
        }
        throw new C1267c("should not happen but we got: " + c1268a.m9490g());
    }

    /* JADX INFO: renamed from: q */
    static void m9591q(C1277c c1277c, C1268a c1268a) throws C1267c {
        c1268a.m9487c(c1277c.m9529f(), 6);
        c1268a.m9487c(m9576b(c1277c.m9529f(), 7973), 12);
        if (c1268a.m9490g() == 18) {
            return;
        }
        throw new C1267c("should not happen but we got: " + c1268a.m9490g());
    }

    /* JADX INFO: renamed from: r */
    private static void m9592r(C1277c c1277c, C1279b c1279b) {
        if (c1277c.m9529f() < 2) {
            return;
        }
        int iM9529f = c1277c.m9529f() - 1;
        int[][] iArr = f7969c;
        int[] iArr2 = iArr[iM9529f];
        int length = iArr[iM9529f].length;
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr2[i];
                int i4 = iArr2[i2];
                if (i4 != -1 && i3 != -1 && m9589o(c1279b.m9539b(i4, i3))) {
                    m9582h(i4 - 2, i3 - 2, c1279b);
                }
            }
        }
    }

    /* JADX INFO: renamed from: s */
    static void m9593s(C1277c c1277c, C1279b c1279b) throws C1267c {
        if (c1277c.m9529f() < 7) {
            return;
        }
        C1268a c1268a = new C1268a();
        m9591q(c1277c, c1268a);
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean zM9489f = c1268a.m9489f(i);
                i--;
                c1279b.m9544g(i2, (c1279b.m9541d() - 11) + i3, zM9489f);
                c1279b.m9544g((c1279b.m9541d() - 11) + i3, i2, zM9489f);
            }
        }
    }
}
