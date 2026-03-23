package p093d.p099c.p120b.p121d.p122d;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: renamed from: d.c.b.d.d.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1273c {

    /* JADX INFO: renamed from: a */
    private final C1271a f7931a;

    /* JADX INFO: renamed from: b */
    private final List<C1272b> f7932b;

    public C1273c(C1271a c1271a) {
        this.f7931a = c1271a;
        ArrayList arrayList = new ArrayList();
        this.f7932b = arrayList;
        arrayList.add(new C1272b(c1271a, new int[]{1}));
    }

    /* JADX INFO: renamed from: a */
    private C1272b m9517a(int i) {
        if (i >= this.f7932b.size()) {
            List<C1272b> list = this.f7932b;
            C1272b c1272bM9515g = list.get(list.size() - 1);
            for (int size = this.f7932b.size(); size <= i; size++) {
                C1271a c1271a = this.f7931a;
                c1272bM9515g = c1272bM9515g.m9515g(new C1272b(c1271a, new int[]{1, c1271a.m9503c((size - 1) + c1271a.m9504d())}));
                this.f7932b.add(c1272bM9515g);
            }
        }
        return this.f7932b.get(i);
    }

    /* JADX INFO: renamed from: b */
    public void m9518b(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        C1272b c1272bM9517a = m9517a(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrM9512d = new C1272b(this.f7931a, iArr2).m9516h(i, 1).m9510b(c1272bM9517a)[1].m9512d();
        int length2 = i - iArrM9512d.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(iArrM9512d, 0, iArr, length + length2, iArrM9512d.length);
    }
}
