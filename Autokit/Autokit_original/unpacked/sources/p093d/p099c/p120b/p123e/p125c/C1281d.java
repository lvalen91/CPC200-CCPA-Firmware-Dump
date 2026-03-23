package p093d.p099c.p120b.p123e.p125c;

/* JADX INFO: renamed from: d.c.b.e.c.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1281d {
    /* JADX INFO: renamed from: a */
    static int m9567a(C1279b c1279b) {
        return m9568b(c1279b, true) + m9568b(c1279b, false);
    }

    /* JADX INFO: renamed from: b */
    private static int m9568b(C1279b c1279b, boolean z) {
        int iM9541d = z ? c1279b.m9541d() : c1279b.m9542e();
        int iM9542e = z ? c1279b.m9542e() : c1279b.m9541d();
        byte[][] bArrM9540c = c1279b.m9540c();
        int i = 0;
        for (int i2 = 0; i2 < iM9541d; i2++) {
            byte b2 = -1;
            int i3 = 0;
            for (int i4 = 0; i4 < iM9542e; i4++) {
                byte b3 = z ? bArrM9540c[i2][i4] : bArrM9540c[i4][i2];
                if (b3 == b2) {
                    i3++;
                } else {
                    if (i3 >= 5) {
                        i += (i3 - 5) + 3;
                    }
                    b2 = b3;
                    i3 = 1;
                }
            }
            if (i3 >= 5) {
                i += (i3 - 5) + 3;
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: c */
    static int m9569c(C1279b c1279b) {
        byte[][] bArrM9540c = c1279b.m9540c();
        int iM9542e = c1279b.m9542e();
        int iM9541d = c1279b.m9541d();
        int i = 0;
        for (int i2 = 0; i2 < iM9541d - 1; i2++) {
            int i3 = 0;
            while (i3 < iM9542e - 1) {
                byte b2 = bArrM9540c[i2][i3];
                int i4 = i3 + 1;
                if (b2 == bArrM9540c[i2][i4]) {
                    int i5 = i2 + 1;
                    if (b2 == bArrM9540c[i5][i3] && b2 == bArrM9540c[i5][i4]) {
                        i++;
                    }
                }
                i3 = i4;
            }
        }
        return i * 3;
    }

    /* JADX INFO: renamed from: d */
    static int m9570d(C1279b c1279b) {
        byte[][] bArrM9540c = c1279b.m9540c();
        int iM9542e = c1279b.m9542e();
        int iM9541d = c1279b.m9541d();
        int i = 0;
        for (int i2 = 0; i2 < iM9541d; i2++) {
            for (int i3 = 0; i3 < iM9542e; i3++) {
                byte[] bArr = bArrM9540c[i2];
                int i4 = i3 + 6;
                if (i4 < iM9542e && bArr[i3] == 1 && bArr[i3 + 1] == 0 && bArr[i3 + 2] == 1 && bArr[i3 + 3] == 1 && bArr[i3 + 4] == 1 && bArr[i3 + 5] == 0 && bArr[i4] == 1 && (m9573g(bArr, i3 - 4, i3) || m9573g(bArr, i3 + 7, i3 + 11))) {
                    i++;
                }
                int i5 = i2 + 6;
                if (i5 < iM9541d && bArrM9540c[i2][i3] == 1 && bArrM9540c[i2 + 1][i3] == 0 && bArrM9540c[i2 + 2][i3] == 1 && bArrM9540c[i2 + 3][i3] == 1 && bArrM9540c[i2 + 4][i3] == 1 && bArrM9540c[i2 + 5][i3] == 0 && bArrM9540c[i5][i3] == 1 && (m9574h(bArrM9540c, i3, i2 - 4, i2) || m9574h(bArrM9540c, i3, i2 + 7, i2 + 11))) {
                    i++;
                }
            }
        }
        return i * 40;
    }

    /* JADX INFO: renamed from: e */
    static int m9571e(C1279b c1279b) {
        byte[][] bArrM9540c = c1279b.m9540c();
        int iM9542e = c1279b.m9542e();
        int iM9541d = c1279b.m9541d();
        int i = 0;
        for (int i2 = 0; i2 < iM9541d; i2++) {
            byte[] bArr = bArrM9540c[i2];
            for (int i3 = 0; i3 < iM9542e; i3++) {
                if (bArr[i3] == 1) {
                    i++;
                }
            }
        }
        int iM9541d2 = c1279b.m9541d() * c1279b.m9542e();
        return ((Math.abs((i << 1) - iM9541d2) * 10) / iM9541d2) * 10;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0044 A[RETURN] */
    /* JADX INFO: renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static boolean m9572f(int i, int i2, int i3) {
        int i4;
        int i5;
        switch (i) {
            case 0:
                i3 += i2;
                i4 = i3 & 1;
                return i4 != 0;
            case 1:
                i4 = i3 & 1;
                if (i4 != 0) {
                }
                break;
            case 2:
                i4 = i2 % 3;
                if (i4 != 0) {
                }
                break;
            case 3:
                i4 = (i3 + i2) % 3;
                if (i4 != 0) {
                }
                break;
            case 4:
                i3 /= 2;
                i2 /= 3;
                i3 += i2;
                i4 = i3 & 1;
                if (i4 != 0) {
                }
                break;
            case 5:
                int i6 = i3 * i2;
                i4 = (i6 & 1) + (i6 % 3);
                if (i4 != 0) {
                }
                break;
            case 6:
                int i7 = i3 * i2;
                i5 = (i7 & 1) + (i7 % 3);
                i4 = i5 & 1;
                if (i4 != 0) {
                }
                break;
            case 7:
                i5 = ((i3 * i2) % 3) + ((i3 + i2) & 1);
                i4 = i5 & 1;
                if (i4 != 0) {
                }
                break;
            default:
                throw new IllegalArgumentException("Invalid mask pattern: " + i);
        }
    }

    /* JADX INFO: renamed from: g */
    private static boolean m9573g(byte[] bArr, int i, int i2) {
        int iMin = Math.min(i2, bArr.length);
        for (int iMax = Math.max(i, 0); iMax < iMin; iMax++) {
            if (bArr[iMax] == 1) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: h */
    private static boolean m9574h(byte[][] bArr, int i, int i2, int i3) {
        int iMin = Math.min(i3, bArr.length);
        for (int iMax = Math.max(i2, 0); iMax < iMin; iMax++) {
            if (bArr[iMax][i] == 1) {
                return false;
            }
        }
        return true;
    }
}
