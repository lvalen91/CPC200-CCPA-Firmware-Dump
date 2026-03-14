package p016c.p032d;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: c.d.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0534a<K, V> extends C0540g<K, V> implements Map<K, V> {

    /* JADX INFO: renamed from: i */
    AbstractC0539f<K, V> f3287i;

    /* JADX INFO: renamed from: c.d.a$a */
    class a extends AbstractC0539f<K, V> {
        a() {
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: a */
        protected void mo4231a() {
            C0534a.this.clear();
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: b */
        protected Object mo4232b(int i, int i2) {
            return C0534a.this.f3336c[(i << 1) + i2];
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: c */
        protected Map<K, V> mo4233c() {
            return C0534a.this;
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: d */
        protected int mo4234d() {
            return C0534a.this.f3337d;
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: e */
        protected int mo4235e(Object obj) {
            return C0534a.this.m4290f(obj);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: f */
        protected int mo4236f(Object obj) {
            return C0534a.this.m4292h(obj);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: g */
        protected void mo4237g(K k, V v) {
            C0534a.this.put(k, v);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: h */
        protected void mo4238h(int i) {
            C0534a.this.m4295k(i);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: i */
        protected V mo4239i(int i, V v) {
            return C0534a.this.m4296l(i, v);
        }
    }

    public C0534a() {
    }

    /* JADX INFO: renamed from: n */
    private AbstractC0539f<K, V> m4229n() {
        if (this.f3287i == null) {
            this.f3287i = new a();
        }
        return this.f3287i;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m4229n().m4278l();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m4229n().m4279m();
    }

    /* JADX INFO: renamed from: o */
    public boolean m4230o(Collection<?> collection) {
        return AbstractC0539f.m4277p(this, collection);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        m4288c(this.f3337d + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m4229n().m4280n();
    }

    public C0534a(int i) {
        super(i);
    }

    public C0534a(C0540g c0540g) {
        super(c0540g);
    }
}
