package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class FragmentStateAdapter$5 implements h {
    final /* synthetic */ Handler a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Runnable f1000b;

    @Override // androidx.lifecycle.h
    public void d(j jVar, f.b bVar) {
        if (bVar == f.b.ON_DESTROY) {
            this.a.removeCallbacks(this.f1000b);
            jVar.getLifecycle().c(this);
        }
    }
}
