package androidx.fragment.app;

import android.os.Bundle;
import androidx.lifecycle.f;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class a0 implements androidx.savedstate.c, androidx.lifecycle.y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final androidx.lifecycle.x f662b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private androidx.lifecycle.k f663c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.savedstate.b f664d = null;

    a0(Fragment fragment, androidx.lifecycle.x xVar) {
        this.f662b = xVar;
    }

    void a(f.b bVar) {
        this.f663c.h(bVar);
    }

    void b() {
        if (this.f663c == null) {
            this.f663c = new androidx.lifecycle.k(this);
            this.f664d = androidx.savedstate.b.a(this);
        }
    }

    boolean c() {
        return this.f663c != null;
    }

    void d(Bundle bundle) {
        this.f664d.c(bundle);
    }

    void e(Bundle bundle) {
        this.f664d.d(bundle);
    }

    void f(f.c cVar) {
        this.f663c.o(cVar);
    }

    @Override // androidx.lifecycle.j
    public androidx.lifecycle.f getLifecycle() {
        b();
        return this.f663c;
    }

    @Override // androidx.savedstate.c
    public SavedStateRegistry getSavedStateRegistry() {
        b();
        return this.f664d.b();
    }

    @Override // androidx.lifecycle.y
    public androidx.lifecycle.x getViewModelStore() {
        b();
        return this.f662b;
    }
}
