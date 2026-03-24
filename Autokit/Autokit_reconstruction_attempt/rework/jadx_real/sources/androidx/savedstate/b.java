package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.f;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class b {
    private final c a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SavedStateRegistry f994b = new SavedStateRegistry();

    private b(c cVar) {
        this.a = cVar;
    }

    public static b a(c cVar) {
        return new b(cVar);
    }

    public SavedStateRegistry b() {
        return this.f994b;
    }

    public void c(Bundle bundle) {
        f lifecycle = this.a.getLifecycle();
        if (lifecycle.b() != f.c.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new Recreator(this.a));
        this.f994b.b(lifecycle, bundle);
    }

    public void d(Bundle bundle) {
        this.f994b.c(bundle);
    }
}
