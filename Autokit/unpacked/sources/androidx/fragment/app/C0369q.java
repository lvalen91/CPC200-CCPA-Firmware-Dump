package androidx.fragment.app;

import androidx.lifecycle.AbstractC0408v;
import androidx.lifecycle.C0409w;
import androidx.lifecycle.C0410x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: renamed from: androidx.fragment.app.q */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0369q extends AbstractC0408v {

    /* JADX INFO: renamed from: j */
    private static final C0409w.b f2351j = new a();

    /* JADX INFO: renamed from: f */
    private final boolean f2355f;

    /* JADX INFO: renamed from: c */
    private final HashMap<String, Fragment> f2352c = new HashMap<>();

    /* JADX INFO: renamed from: d */
    private final HashMap<String, C0369q> f2353d = new HashMap<>();

    /* JADX INFO: renamed from: e */
    private final HashMap<String, C0410x> f2354e = new HashMap<>();

    /* JADX INFO: renamed from: g */
    private boolean f2356g = false;

    /* JADX INFO: renamed from: h */
    private boolean f2357h = false;

    /* JADX INFO: renamed from: i */
    private boolean f2358i = false;

    /* JADX INFO: renamed from: androidx.fragment.app.q$a */
    class a implements C0409w.b {
        a() {
        }

        @Override // androidx.lifecycle.C0409w.b
        /* JADX INFO: renamed from: a */
        public <T extends AbstractC0408v> T mo2836a(Class<T> cls) {
            return new C0369q(true);
        }
    }

    C0369q(boolean z) {
        this.f2355f = z;
    }

    /* JADX INFO: renamed from: m */
    static C0369q m2824m(C0410x c0410x) {
        return (C0369q) new C0409w(c0410x, f2351j).m3053a(C0369q.class);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0369q.class != obj.getClass()) {
            return false;
        }
        C0369q c0369q = (C0369q) obj;
        return this.f2352c.equals(c0369q.f2352c) && this.f2353d.equals(c0369q.f2353d) && this.f2354e.equals(c0369q.f2354e);
    }

    @Override // androidx.lifecycle.AbstractC0408v
    /* JADX INFO: renamed from: g */
    protected void mo2825g() {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "onCleared called for " + this;
        }
        this.f2356g = true;
    }

    public int hashCode() {
        return (((this.f2352c.hashCode() * 31) + this.f2353d.hashCode()) * 31) + this.f2354e.hashCode();
    }

    /* JADX INFO: renamed from: i */
    void m2826i(Fragment fragment) {
        if (this.f2358i) {
            AbstractC0366n.m2677E0(2);
            return;
        }
        if (this.f2352c.containsKey(fragment.f2076g)) {
            return;
        }
        this.f2352c.put(fragment.f2076g, fragment);
        if (AbstractC0366n.m2677E0(2)) {
            String str = "Updating retained Fragments: Added " + fragment;
        }
    }

    /* JADX INFO: renamed from: j */
    void m2827j(Fragment fragment) {
        if (AbstractC0366n.m2677E0(3)) {
            String str = "Clearing non-config state for " + fragment;
        }
        C0369q c0369q = this.f2353d.get(fragment.f2076g);
        if (c0369q != null) {
            c0369q.mo2825g();
            this.f2353d.remove(fragment.f2076g);
        }
        C0410x c0410x = this.f2354e.get(fragment.f2076g);
        if (c0410x != null) {
            c0410x.m3057a();
            this.f2354e.remove(fragment.f2076g);
        }
    }

    /* JADX INFO: renamed from: k */
    Fragment m2828k(String str) {
        return this.f2352c.get(str);
    }

    /* JADX INFO: renamed from: l */
    C0369q m2829l(Fragment fragment) {
        C0369q c0369q = this.f2353d.get(fragment.f2076g);
        if (c0369q != null) {
            return c0369q;
        }
        C0369q c0369q2 = new C0369q(this.f2355f);
        this.f2353d.put(fragment.f2076g, c0369q2);
        return c0369q2;
    }

    /* JADX INFO: renamed from: n */
    Collection<Fragment> m2830n() {
        return new ArrayList(this.f2352c.values());
    }

    /* JADX INFO: renamed from: o */
    C0410x m2831o(Fragment fragment) {
        C0410x c0410x = this.f2354e.get(fragment.f2076g);
        if (c0410x != null) {
            return c0410x;
        }
        C0410x c0410x2 = new C0410x();
        this.f2354e.put(fragment.f2076g, c0410x2);
        return c0410x2;
    }

    /* JADX INFO: renamed from: p */
    boolean m2832p() {
        return this.f2356g;
    }

    /* JADX INFO: renamed from: q */
    void m2833q(Fragment fragment) {
        if (this.f2358i) {
            AbstractC0366n.m2677E0(2);
            return;
        }
        if ((this.f2352c.remove(fragment.f2076g) != null) && AbstractC0366n.m2677E0(2)) {
            String str = "Updating retained Fragments: Removed " + fragment;
        }
    }

    /* JADX INFO: renamed from: r */
    void m2834r(boolean z) {
        this.f2358i = z;
    }

    /* JADX INFO: renamed from: s */
    boolean m2835s(Fragment fragment) {
        if (this.f2352c.containsKey(fragment.f2076g)) {
            return this.f2355f ? this.f2356g : !this.f2357h;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator<Fragment> it = this.f2352c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator<String> it2 = this.f2353d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append(it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator<String> it3 = this.f2354e.keySet().iterator();
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
