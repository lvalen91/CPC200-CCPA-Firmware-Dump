package c.b.a.b;

import c.b.a.b.b;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a<K, V> extends b<K, V> {
    private HashMap<K, b.c<K, V>> f = new HashMap<>();

    @Override // c.b.a.b.b
    protected b.c<K, V> c(K k) {
        return this.f.get(k);
    }

    public boolean contains(K k) {
        return this.f.containsKey(k);
    }

    @Override // c.b.a.b.b
    public V g(K k, V v) {
        b.c<K, V> cVarC = c(k);
        if (cVarC != null) {
            return cVarC.f1054c;
        }
        this.f.put(k, f(k, v));
        return null;
    }

    @Override // c.b.a.b.b
    public V h(K k) {
        V v = (V) super.h(k);
        this.f.remove(k);
        return v;
    }

    public Map.Entry<K, V> i(K k) {
        if (contains(k)) {
            return this.f.get(k).e;
        }
        return null;
    }
}
