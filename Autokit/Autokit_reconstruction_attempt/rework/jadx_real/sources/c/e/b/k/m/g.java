package c.e.b.k.m;

import c.e.b.k.m.f;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class g extends f {
    public int m;

    public g(p pVar) {
        super(pVar);
        if (pVar instanceof l) {
            this.e = f.a.HORIZONTAL_DIMENSION;
        } else {
            this.e = f.a.VERTICAL_DIMENSION;
        }
    }

    @Override // c.e.b.k.m.f
    public void d(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        for (d dVar : this.k) {
            dVar.a(dVar);
        }
    }
}
