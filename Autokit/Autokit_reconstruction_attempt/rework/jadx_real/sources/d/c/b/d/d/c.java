package d.c.b.d.d;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class c {
    private final a a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<b> f2370b;

    public c(a aVar) {
        this.a = aVar;
        ArrayList arrayList = new ArrayList();
        this.f2370b = arrayList;
        arrayList.add(new b(aVar, new int[]{1}));
    }

    private b a(int i) {
        if (i >= this.f2370b.size()) {
            List<b> list = this.f2370b;
            b bVarG = list.get(list.size() - 1);
            for (int size = this.f2370b.size(); size <= i; size++) {
                a aVar = this.a;
                bVarG = bVarG.g(new b(aVar, new int[]{1, aVar.c((size - 1) + aVar.d())}));
                this.f2370b.add(bVarG);
            }
        }
        return this.f2370b.get(i);
    }

    public void b(int[] iArr, int i) {
        if (i == 0) {
            throw new IllegalArgumentException("No error correction bytes");
        }
        int length = iArr.length - i;
        if (length <= 0) {
            throw new IllegalArgumentException("No data bytes provided");
        }
        b bVarA = a(i);
        int[] iArr2 = new int[length];
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArrD = new b(this.a, iArr2).h(i, 1).b(bVarA)[1].d();
        int length2 = i - iArrD.length;
        for (int i2 = 0; i2 < length2; i2++) {
            iArr[length + i2] = 0;
        }
        System.arraycopy(iArrD, 0, iArr, length + length2, iArrD.length);
    }
}
