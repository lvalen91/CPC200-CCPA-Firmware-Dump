package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.f;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class FragmentManager$6 implements androidx.lifecycle.h {
    final /* synthetic */ String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ s f659b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ androidx.lifecycle.f f660c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ n f661d;

    @Override // androidx.lifecycle.h
    public void d(androidx.lifecycle.j jVar, f.b bVar) {
        Bundle bundle;
        if (bVar == f.b.ON_START && (bundle = (Bundle) this.f661d.j.get(this.a)) != null) {
            this.f659b.a(this.a, bundle);
            this.f661d.q(this.a);
        }
        if (bVar == f.b.ON_DESTROY) {
            this.f660c.c(this);
            this.f661d.k.remove(this.a);
        }
    }
}
