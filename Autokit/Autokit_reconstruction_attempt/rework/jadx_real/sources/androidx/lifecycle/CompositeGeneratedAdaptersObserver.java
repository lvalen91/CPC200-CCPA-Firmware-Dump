package androidx.lifecycle;

import androidx.lifecycle.f;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class CompositeGeneratedAdaptersObserver implements h {
    private final e[] a;

    CompositeGeneratedAdaptersObserver(e[] eVarArr) {
        this.a = eVarArr;
    }

    @Override // androidx.lifecycle.h
    public void d(j jVar, f.b bVar) {
        n nVar = new n();
        for (e eVar : this.a) {
            eVar.a(jVar, bVar, false, nVar);
        }
        for (e eVar2 : this.a) {
            eVar2.a(jVar, bVar, true, nVar);
        }
    }
}
