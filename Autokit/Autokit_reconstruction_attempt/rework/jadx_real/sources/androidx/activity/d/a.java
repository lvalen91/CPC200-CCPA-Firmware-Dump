package androidx.activity.d;

import android.content.Context;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a {
    private final Set<b> a = new CopyOnWriteArraySet();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Context f74b;

    public void a(b bVar) {
        if (this.f74b != null) {
            bVar.a(this.f74b);
        }
        this.a.add(bVar);
    }

    public void b() {
        this.f74b = null;
    }

    public void c(Context context) {
        this.f74b = context;
        Iterator<b> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().a(context);
        }
    }

    public Context d() {
        return this.f74b;
    }

    public void e(b bVar) {
        this.a.remove(bVar);
    }
}
