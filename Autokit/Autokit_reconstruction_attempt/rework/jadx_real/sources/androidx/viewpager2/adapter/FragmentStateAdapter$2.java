package androidx.viewpager2.adapter;

import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class FragmentStateAdapter$2 implements h {
    final /* synthetic */ b a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f999b;

    @Override // androidx.lifecycle.h
    public void d(j jVar, f.b bVar) {
        if (this.f999b.u()) {
            return;
        }
        jVar.getLifecycle().c(this);
        this.a.M();
        throw null;
    }
}
