package d.c.b.e;

import d.c.b.d.b;
import d.c.b.e.c.c;
import d.c.b.e.c.f;
import java.util.Map;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a {
    private static b b(f fVar, int i, int i2, int i3) {
        d.c.b.e.c.b bVarA = fVar.a();
        if (bVarA == null) {
            throw new IllegalStateException();
        }
        int iE = bVarA.e();
        int iD = bVarA.d();
        int i4 = i3 << 1;
        int i5 = iE + i4;
        int i6 = i4 + iD;
        int iMax = Math.max(i, i5);
        int iMax2 = Math.max(i2, i6);
        int iMin = Math.min(iMax / i5, iMax2 / i6);
        int i7 = (iMax - (iE * iMin)) / 2;
        int i8 = (iMax2 - (iD * iMin)) / 2;
        b bVar = new b(iMax, iMax2);
        int i9 = 0;
        while (i9 < iD) {
            int i10 = i7;
            int i11 = 0;
            while (i11 < iE) {
                if (bVarA.b(i11, i9) == 1) {
                    bVar.d(i10, i8, iMin, iMin);
                }
                i11++;
                i10 += iMin;
            }
            i9++;
            i8 += iMin;
        }
        return bVar;
    }

    public b a(String str, d.c.b.a aVar, int i, int i2, Map<d.c.b.b, ?> map) {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (aVar != d.c.b.a.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + aVar);
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        d.c.b.e.b.a aVarValueOf = d.c.b.e.b.a.L;
        int i3 = 4;
        if (map != null) {
            if (map.containsKey(d.c.b.b.ERROR_CORRECTION)) {
                aVarValueOf = d.c.b.e.b.a.valueOf(map.get(d.c.b.b.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(d.c.b.b.MARGIN)) {
                i3 = Integer.parseInt(map.get(d.c.b.b.MARGIN).toString());
            }
        }
        return b(c.n(str, aVarValueOf, map), i, i2, i3);
    }
}
