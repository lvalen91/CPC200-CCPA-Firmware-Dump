package p093d.p099c.p120b.p123e;

import java.util.Map;
import p093d.p099c.p120b.EnumC1265a;
import p093d.p099c.p120b.EnumC1266b;
import p093d.p099c.p120b.p121d.C1269b;
import p093d.p099c.p120b.p123e.p124b.EnumC1275a;
import p093d.p099c.p120b.p123e.p125c.C1279b;
import p093d.p099c.p120b.p123e.p125c.C1280c;
import p093d.p099c.p120b.p123e.p125c.C1283f;

/* JADX INFO: renamed from: d.c.b.e.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1274a {
    /* JADX INFO: renamed from: b */
    private static C1269b m9519b(C1283f c1283f, int i, int i2, int i3) {
        C1279b c1279bM9595a = c1283f.m9595a();
        if (c1279bM9595a == null) {
            throw new IllegalStateException();
        }
        int iM9542e = c1279bM9595a.m9542e();
        int iM9541d = c1279bM9595a.m9541d();
        int i4 = i3 << 1;
        int i5 = iM9542e + i4;
        int i6 = i4 + iM9541d;
        int iMax = Math.max(i, i5);
        int iMax2 = Math.max(i2, i6);
        int iMin = Math.min(iMax / i5, iMax2 / i6);
        int i7 = (iMax - (iM9542e * iMin)) / 2;
        int i8 = (iMax2 - (iM9541d * iMin)) / 2;
        C1269b c1269b = new C1269b(iMax, iMax2);
        int i9 = 0;
        while (i9 < iM9541d) {
            int i10 = i7;
            int i11 = 0;
            while (i11 < iM9542e) {
                if (c1279bM9595a.m9539b(i11, i9) == 1) {
                    c1269b.m9497d(i10, i8, iMin, iMin);
                }
                i11++;
                i10 += iMin;
            }
            i9++;
            i8 += iMin;
        }
        return c1269b;
    }

    /* JADX INFO: renamed from: a */
    public C1269b m9520a(String str, EnumC1265a enumC1265a, int i, int i2, Map<EnumC1266b, ?> map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (enumC1265a != EnumC1265a.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + enumC1265a);
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        EnumC1275a enumC1275aValueOf = EnumC1275a.L;
        int i3 = 4;
        if (map != null) {
            if (map.containsKey(EnumC1266b.ERROR_CORRECTION)) {
                enumC1275aValueOf = EnumC1275a.valueOf(map.get(EnumC1266b.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(EnumC1266b.MARGIN)) {
                i3 = Integer.parseInt(map.get(EnumC1266b.MARGIN).toString());
            }
        }
        return m9519b(C1280c.m9558n(str, enumC1275aValueOf, map), i, i2, i3);
    }
}
