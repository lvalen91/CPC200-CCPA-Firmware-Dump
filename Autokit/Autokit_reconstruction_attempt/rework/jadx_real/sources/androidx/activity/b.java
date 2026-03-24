package androidx.activity;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public abstract class b {
    private boolean a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private CopyOnWriteArrayList<a> f73b = new CopyOnWriteArrayList<>();

    public b(boolean z) {
        this.a = z;
    }

    void a(a aVar) {
        this.f73b.add(aVar);
    }

    public abstract void b();

    public final boolean c() {
        return this.a;
    }

    public final void d() {
        Iterator<a> it = this.f73b.iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
    }

    void e(a aVar) {
        this.f73b.remove(aVar);
    }

    public final void f(boolean z) {
        this.a = z;
    }
}
