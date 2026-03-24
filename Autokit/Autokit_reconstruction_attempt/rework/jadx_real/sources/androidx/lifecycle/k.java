package androidx.lifecycle;

import android.annotation.SuppressLint;
import androidx.lifecycle.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class k extends f {
    private c.b.a.b.a<i, a> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f.c f825b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final WeakReference<j> f826c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f827d;
    private boolean e;
    private boolean f;
    private ArrayList<f.c> g;
    private final boolean h;

    static class a {
        f.c a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        h f828b;

        a(i iVar, f.c cVar) {
            this.f828b = m.f(iVar);
            this.a = cVar;
        }

        void a(j jVar, f.b bVar) {
            f.c cVarB = bVar.b();
            this.a = k.k(this.a, cVarB);
            this.f828b.d(jVar, bVar);
            this.a = cVarB;
        }
    }

    public k(j jVar) {
        this(jVar, true);
    }

    private void d(j jVar) {
        Iterator<Map.Entry<i, a>> itA = this.a.a();
        while (itA.hasNext() && !this.f) {
            Map.Entry<i, a> next = itA.next();
            a value = next.getValue();
            while (value.a.compareTo(this.f825b) > 0 && !this.f && this.a.contains(next.getKey())) {
                f.b bVarA = f.b.a(value.a);
                if (bVarA == null) {
                    throw new IllegalStateException("no event down from " + value.a);
                }
                n(bVarA.b());
                value.a(jVar, bVarA);
                m();
            }
        }
    }

    private f.c e(i iVar) {
        Map.Entry<i, a> entryI = this.a.i(iVar);
        f.c cVar = null;
        f.c cVar2 = entryI != null ? entryI.getValue().a : null;
        if (!this.g.isEmpty()) {
            cVar = this.g.get(r0.size() - 1);
        }
        return k(k(this.f825b, cVar2), cVar);
    }

    @SuppressLint({"RestrictedApi"})
    private void f(String str) {
        if (!this.h || c.b.a.a.a.b().a()) {
            return;
        }
        throw new IllegalStateException("Method " + str + " must be called on the main thread");
    }

    private void g(j jVar) {
        c.b.a.b.b<i, a>.d dVarD = this.a.d();
        while (dVarD.hasNext() && !this.f) {
            Map.Entry next = dVarD.next();
            a aVar = (a) next.getValue();
            while (aVar.a.compareTo(this.f825b) < 0 && !this.f && this.a.contains((i) next.getKey())) {
                n(aVar.a);
                f.b bVarC = f.b.c(aVar.a);
                if (bVarC == null) {
                    throw new IllegalStateException("no event up from " + aVar.a);
                }
                aVar.a(jVar, bVarC);
                m();
            }
        }
    }

    private boolean i() {
        if (this.a.size() == 0) {
            return true;
        }
        f.c cVar = this.a.b().getValue().a;
        f.c cVar2 = this.a.e().getValue().a;
        return cVar == cVar2 && this.f825b == cVar2;
    }

    static f.c k(f.c cVar, f.c cVar2) {
        return (cVar2 == null || cVar2.compareTo(cVar) >= 0) ? cVar : cVar2;
    }

    private void l(f.c cVar) {
        if (this.f825b == cVar) {
            return;
        }
        this.f825b = cVar;
        if (this.e || this.f827d != 0) {
            this.f = true;
            return;
        }
        this.e = true;
        p();
        this.e = false;
    }

    private void m() {
        this.g.remove(r0.size() - 1);
    }

    private void n(f.c cVar) {
        this.g.add(cVar);
    }

    private void p() {
        j jVar = this.f826c.get();
        if (jVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (!i()) {
            this.f = false;
            if (this.f825b.compareTo(this.a.b().getValue().a) < 0) {
                d(jVar);
            }
            Map.Entry<i, a> entryE = this.a.e();
            if (!this.f && entryE != null && this.f825b.compareTo(entryE.getValue().a) > 0) {
                g(jVar);
            }
        }
        this.f = false;
    }

    @Override // androidx.lifecycle.f
    public void a(i iVar) {
        j jVar;
        f("addObserver");
        f.c cVar = this.f825b;
        f.c cVar2 = f.c.DESTROYED;
        if (cVar != cVar2) {
            cVar2 = f.c.INITIALIZED;
        }
        a aVar = new a(iVar, cVar2);
        if (this.a.g(iVar, aVar) == null && (jVar = this.f826c.get()) != null) {
            boolean z = this.f827d != 0 || this.e;
            f.c cVarE = e(iVar);
            this.f827d++;
            while (aVar.a.compareTo(cVarE) < 0 && this.a.contains(iVar)) {
                n(aVar.a);
                f.b bVarC = f.b.c(aVar.a);
                if (bVarC == null) {
                    throw new IllegalStateException("no event up from " + aVar.a);
                }
                aVar.a(jVar, bVarC);
                m();
                cVarE = e(iVar);
            }
            if (!z) {
                p();
            }
            this.f827d--;
        }
    }

    @Override // androidx.lifecycle.f
    public f.c b() {
        return this.f825b;
    }

    @Override // androidx.lifecycle.f
    public void c(i iVar) {
        f("removeObserver");
        this.a.h(iVar);
    }

    public void h(f.b bVar) {
        f("handleLifecycleEvent");
        l(bVar.b());
    }

    @Deprecated
    public void j(f.c cVar) {
        f("markState");
        o(cVar);
    }

    public void o(f.c cVar) {
        f("setCurrentState");
        l(cVar);
    }

    private k(j jVar, boolean z) {
        this.a = new c.b.a.b.a<>();
        this.f827d = 0;
        this.e = false;
        this.f = false;
        this.g = new ArrayList<>();
        this.f826c = new WeakReference<>(jVar);
        this.f825b = f.c.INITIALIZED;
        this.h = z;
    }
}
