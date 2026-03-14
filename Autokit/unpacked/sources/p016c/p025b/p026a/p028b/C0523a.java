package p016c.p025b.p026a.p028b;

import java.util.HashMap;
import java.util.Map;
import p016c.p025b.p026a.p028b.C0524b;

/* JADX INFO: renamed from: c.b.a.b.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0523a<K, V> extends C0524b<K, V> {

    /* JADX INFO: renamed from: f */
    private HashMap<K, C0524b.c<K, V>> f3237f = new HashMap<>();

    @Override // p016c.p025b.p026a.p028b.C0524b
    /* JADX INFO: renamed from: c */
    protected C0524b.c<K, V> mo4161c(K k) {
        return this.f3237f.get(k);
    }

    public boolean contains(K k) {
        return this.f3237f.containsKey(k);
    }

    @Override // p016c.p025b.p026a.p028b.C0524b
    /* JADX INFO: renamed from: g */
    public V mo4162g(K k, V v) {
        C0524b.c<K, V> cVarMo4161c = mo4161c(k);
        if (cVarMo4161c != null) {
            return cVarMo4161c.f3243c;
        }
        this.f3237f.put(k, m4169f(k, v));
        return null;
    }

    @Override // p016c.p025b.p026a.p028b.C0524b
    /* JADX INFO: renamed from: h */
    public V mo4163h(K k) {
        V v = (V) super.mo4163h(k);
        this.f3237f.remove(k);
        return v;
    }

    /* JADX INFO: renamed from: i */
    public Map.Entry<K, V> m4164i(K k) {
        if (contains(k)) {
            return this.f3237f.get(k).f3245e;
        }
        return null;
    }
}
