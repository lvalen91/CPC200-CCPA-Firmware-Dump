package d.c.b.e.c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class e {
    private static final int[][] a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int[][] f2385b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int[][] f2386c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, 170}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[][] f2387d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    static void a(d.c.b.d.a aVar, d.c.b.e.b.a aVar2, d.c.b.e.b.c cVar, int i, b bVar) throws d.c.b.c {
        c(bVar);
        d(cVar, bVar);
        l(aVar2, i, bVar);
        s(cVar, bVar);
        f(aVar, i, bVar);
    }

    static int b(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iN = n(i2);
        int iN2 = i << (iN - 1);
        while (n(iN2) >= iN) {
            iN2 ^= i2 << (n(iN2) - iN);
        }
        return iN2;
    }

    static void c(b bVar) {
        bVar.a((byte) -1);
    }

    static void d(d.c.b.e.b.c cVar, b bVar) throws d.c.b.c {
        j(bVar);
        e(bVar);
        r(cVar, bVar);
        k(bVar);
    }

    private static void e(b bVar) throws d.c.b.c {
        if (bVar.b(8, bVar.d() - 8) == 0) {
            throw new d.c.b.c();
        }
        bVar.f(8, bVar.d() - 8, 1);
    }

    static void f(d.c.b.d.a aVar, int i, b bVar) throws d.c.b.c {
        boolean zF;
        int iE = bVar.e() - 1;
        int iD = bVar.d() - 1;
        int i2 = 0;
        int i3 = -1;
        while (iE > 0) {
            if (iE == 6) {
                iE--;
            }
            while (iD >= 0 && iD < bVar.d()) {
                for (int i4 = 0; i4 < 2; i4++) {
                    int i5 = iE - i4;
                    if (o(bVar.b(i5, iD))) {
                        if (i2 < aVar.g()) {
                            zF = aVar.f(i2);
                            i2++;
                        } else {
                            zF = false;
                        }
                        if (i != -1 && d.f(i, i5, iD)) {
                            zF = !zF;
                        }
                        bVar.g(i5, iD, zF);
                    }
                }
                iD += i3;
            }
            i3 = -i3;
            iD += i3;
            iE -= 2;
        }
        if (i2 == aVar.g()) {
            return;
        }
        throw new d.c.b.c("Not all bits consumed: " + i2 + '/' + aVar.g());
    }

    private static void g(int i, int i2, b bVar) throws d.c.b.c {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!o(bVar.b(i4, i2))) {
                throw new d.c.b.c();
            }
            bVar.f(i4, i2, 0);
        }
    }

    private static void h(int i, int i2, b bVar) {
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 = 0; i4 < 5; i4++) {
                bVar.f(i + i4, i2 + i3, f2385b[i3][i4]);
            }
        }
    }

    private static void i(int i, int i2, b bVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            for (int i4 = 0; i4 < 7; i4++) {
                bVar.f(i + i4, i2 + i3, a[i3][i4]);
            }
        }
    }

    private static void j(b bVar) throws d.c.b.c {
        int length = a[0].length;
        i(0, 0, bVar);
        i(bVar.e() - length, 0, bVar);
        i(0, bVar.e() - length, bVar);
        g(0, 7, bVar);
        g(bVar.e() - 8, 7, bVar);
        g(0, bVar.e() - 8, bVar);
        m(7, 0, bVar);
        m((bVar.d() - 7) - 1, 0, bVar);
        m(7, bVar.d() - 7, bVar);
    }

    private static void k(b bVar) {
        int i = 8;
        while (i < bVar.e() - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (o(bVar.b(i, 6))) {
                bVar.f(i, 6, i3);
            }
            if (o(bVar.b(6, i))) {
                bVar.f(6, i, i3);
            }
            i = i2;
        }
    }

    static void l(d.c.b.e.b.a aVar, int i, b bVar) throws d.c.b.c {
        d.c.b.d.a aVar2 = new d.c.b.d.a();
        p(aVar, i, aVar2);
        for (int i2 = 0; i2 < aVar2.g(); i2++) {
            boolean zF = aVar2.f((aVar2.g() - 1) - i2);
            int[][] iArr = f2387d;
            bVar.g(iArr[i2][0], iArr[i2][1], zF);
            if (i2 < 8) {
                bVar.g((bVar.e() - i2) - 1, 8, zF);
            } else {
                bVar.g(8, (bVar.d() - 7) + (i2 - 8), zF);
            }
        }
    }

    private static void m(int i, int i2, b bVar) throws d.c.b.c {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!o(bVar.b(i, i4))) {
                throw new d.c.b.c();
            }
            bVar.f(i, i4, 0);
        }
    }

    static int n(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    private static boolean o(int i) {
        return i == -1;
    }

    static void p(d.c.b.e.b.a aVar, int i, d.c.b.d.a aVar2) throws d.c.b.c {
        if (!f.b(i)) {
            throw new d.c.b.c("Invalid mask pattern");
        }
        int iA = (aVar.a() << 3) | i;
        aVar2.c(iA, 5);
        aVar2.c(b(iA, 1335), 10);
        d.c.b.d.a aVar3 = new d.c.b.d.a();
        aVar3.c(21522, 15);
        aVar2.k(aVar3);
        if (aVar2.g() == 15) {
            return;
        }
        throw new d.c.b.c("should not happen but we got: " + aVar2.g());
    }

    static void q(d.c.b.e.b.c cVar, d.c.b.d.a aVar) throws d.c.b.c {
        aVar.c(cVar.f(), 6);
        aVar.c(b(cVar.f(), 7973), 12);
        if (aVar.g() == 18) {
            return;
        }
        throw new d.c.b.c("should not happen but we got: " + aVar.g());
    }

    private static void r(d.c.b.e.b.c cVar, b bVar) {
        if (cVar.f() < 2) {
            return;
        }
        int iF = cVar.f() - 1;
        int[][] iArr = f2386c;
        int[] iArr2 = iArr[iF];
        int length = iArr[iF].length;
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr2[i];
                int i4 = iArr2[i2];
                if (i4 != -1 && i3 != -1 && o(bVar.b(i4, i3))) {
                    h(i4 - 2, i3 - 2, bVar);
                }
            }
        }
    }

    static void s(d.c.b.e.b.c cVar, b bVar) throws d.c.b.c {
        if (cVar.f() < 7) {
            return;
        }
        d.c.b.d.a aVar = new d.c.b.d.a();
        q(cVar, aVar);
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean zF = aVar.f(i);
                i--;
                bVar.g(i2, (bVar.d() - 11) + i3, zF);
                bVar.g((bVar.d() - 11) + i3, i2, zF);
            }
        }
    }
}
