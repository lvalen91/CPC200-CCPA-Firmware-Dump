package androidx.fragment.app;

import androidx.lifecycle.w;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class q extends androidx.lifecycle.v {
    private static final w.b j = new a();
    private final boolean f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final HashMap<String, Fragment> f756c = new HashMap<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashMap<String, q> f757d = new HashMap<>();
    private final HashMap<String, androidx.lifecycle.x> e = new HashMap<>();
    private boolean g = false;
    private boolean h = false;
    private boolean i = false;

    class a implements w.b {
        a() {
        }

        @Override // androidx.lifecycle.w.b
        public <T extends androidx.lifecycle.v> T a(Class<T> cls) {
            return new q(true);
        }
    }

    q(boolean z) {
        this.f = z;
    }

    static q m(androidx.lifecycle.x xVar) {
        return (q) new androidx.lifecycle.w(xVar, j).a(q.class);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        return this.f756c.equals(qVar.f756c) && this.f757d.equals(qVar.f757d) && this.e.equals(qVar.e);
    }

    @Override // androidx.lifecycle.v
    protected void g() {
        if (n.E0(3)) {
            String str = "onCleared called for " + this;
        }
        this.g = true;
    }

    public int hashCode() {
        return (((this.f756c.hashCode() * 31) + this.f757d.hashCode()) * 31) + this.e.hashCode();
    }

    void i(Fragment fragment) {
        if (this.i) {
            n.E0(2);
            return;
        }
        if (this.f756c.containsKey(fragment.g)) {
            return;
        }
        this.f756c.put(fragment.g, fragment);
        if (n.E0(2)) {
            String str = "Updating retained Fragments: Added " + fragment;
        }
    }

    void j(Fragment fragment) {
        if (n.E0(3)) {
            String str = "Clearing non-config state for " + fragment;
        }
        q qVar = this.f757d.get(fragment.g);
        if (qVar != null) {
            qVar.g();
            this.f757d.remove(fragment.g);
        }
        androidx.lifecycle.x xVar = this.e.get(fragment.g);
        if (xVar != null) {
            xVar.a();
            this.e.remove(fragment.g);
        }
    }

    Fragment k(String str) {
        return this.f756c.get(str);
    }

    q l(Fragment fragment) {
        q qVar = this.f757d.get(fragment.g);
        if (qVar != null) {
            return qVar;
        }
        q qVar2 = new q(this.f);
        this.f757d.put(fragment.g, qVar2);
        return qVar2;
    }

    Collection<Fragment> n() {
        return new ArrayList(this.f756c.values());
    }

    androidx.lifecycle.x o(Fragment fragment) {
        androidx.lifecycle.x xVar = this.e.get(fragment.g);
        if (xVar != null) {
            return xVar;
        }
        androidx.lifecycle.x xVar2 = new androidx.lifecycle.x();
        this.e.put(fragment.g, xVar2);
        return xVar2;
    }

    boolean p() {
        return this.g;
    }

    void q(Fragment fragment) {
        if (this.i) {
            n.E0(2);
            return;
        }
        if ((this.f756c.remove(fragment.g) != null) && n.E0(2)) {
            String str = "Updating retained Fragments: Removed " + fragment;
        }
    }

    void r(boolean z) {
        this.i = z;
    }

    boolean s(Fragment fragment) {
        if (this.f756c.containsKey(fragment.g)) {
            return this.f ? this.g : !this.h;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f756c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f757d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append(it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
