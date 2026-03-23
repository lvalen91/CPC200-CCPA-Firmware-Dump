package p016c.p025b.p026a.p028b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: c.b.a.b.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0524b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: b */
    c<K, V> f3238b;

    /* JADX INFO: renamed from: c */
    private c<K, V> f3239c;

    /* JADX INFO: renamed from: d */
    private WeakHashMap<f<K, V>, Boolean> f3240d = new WeakHashMap<>();

    /* JADX INFO: renamed from: e */
    private int f3241e = 0;

    /* JADX INFO: renamed from: c.b.a.b.b$a */
    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // p016c.p025b.p026a.p028b.C0524b.e
        /* JADX INFO: renamed from: b */
        c<K, V> mo4170b(c<K, V> cVar) {
            return cVar.f3245e;
        }

        @Override // p016c.p025b.p026a.p028b.C0524b.e
        /* JADX INFO: renamed from: c */
        c<K, V> mo4171c(c<K, V> cVar) {
            return cVar.f3244d;
        }
    }

    /* JADX INFO: renamed from: c.b.a.b.b$b */
    private static class b<K, V> extends e<K, V> {
        b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // p016c.p025b.p026a.p028b.C0524b.e
        /* JADX INFO: renamed from: b */
        c<K, V> mo4170b(c<K, V> cVar) {
            return cVar.f3244d;
        }

        @Override // p016c.p025b.p026a.p028b.C0524b.e
        /* JADX INFO: renamed from: c */
        c<K, V> mo4171c(c<K, V> cVar) {
            return cVar.f3245e;
        }
    }

    /* JADX INFO: renamed from: c.b.a.b.b$c */
    static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b */
        final K f3242b;

        /* JADX INFO: renamed from: c */
        final V f3243c;

        /* JADX INFO: renamed from: d */
        c<K, V> f3244d;

        /* JADX INFO: renamed from: e */
        c<K, V> f3245e;

        c(K k, V v) {
            this.f3242b = k;
            this.f3243c = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.f3242b.equals(cVar.f3242b) && this.f3243c.equals(cVar.f3243c);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f3242b;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f3243c;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f3242b.hashCode() ^ this.f3243c.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f3242b + "=" + this.f3243c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c.b.a.b.b$d */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: b */
        private c<K, V> f3246b;

        /* JADX INFO: renamed from: c */
        private boolean f3247c = true;

        d() {
        }

        @Override // p016c.p025b.p026a.p028b.C0524b.f
        /* JADX INFO: renamed from: a */
        public void mo4172a(c<K, V> cVar) {
            c<K, V> cVar2 = this.f3246b;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.f3245e;
                this.f3246b = cVar3;
                this.f3247c = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.f3247c) {
                this.f3247c = false;
                this.f3246b = C0524b.this.f3238b;
            } else {
                c<K, V> cVar = this.f3246b;
                this.f3246b = cVar != null ? cVar.f3244d : null;
            }
            return this.f3246b;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f3247c) {
                return C0524b.this.f3238b != null;
            }
            c<K, V> cVar = this.f3246b;
            return (cVar == null || cVar.f3244d == null) ? false : true;
        }
    }

    /* JADX INFO: renamed from: c.b.a.b.b$e */
    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: b */
        c<K, V> f3249b;

        /* JADX INFO: renamed from: c */
        c<K, V> f3250c;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f3249b = cVar2;
            this.f3250c = cVar;
        }

        /* JADX INFO: renamed from: e */
        private c<K, V> m4174e() {
            c<K, V> cVar = this.f3250c;
            c<K, V> cVar2 = this.f3249b;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return mo4171c(cVar);
        }

        @Override // p016c.p025b.p026a.p028b.C0524b.f
        /* JADX INFO: renamed from: a */
        public void mo4172a(c<K, V> cVar) {
            if (this.f3249b == cVar && cVar == this.f3250c) {
                this.f3250c = null;
                this.f3249b = null;
            }
            c<K, V> cVar2 = this.f3249b;
            if (cVar2 == cVar) {
                this.f3249b = mo4170b(cVar2);
            }
            if (this.f3250c == cVar) {
                this.f3250c = m4174e();
            }
        }

        /* JADX INFO: renamed from: b */
        abstract c<K, V> mo4170b(c<K, V> cVar);

        /* JADX INFO: renamed from: c */
        abstract c<K, V> mo4171c(c<K, V> cVar);

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f3250c;
            this.f3250c = m4174e();
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3250c != null;
        }
    }

    /* JADX INFO: renamed from: c.b.a.b.b$f */
    interface f<K, V> {
        /* JADX INFO: renamed from: a */
        void mo4172a(c<K, V> cVar);
    }

    /* JADX INFO: renamed from: a */
    public Iterator<Map.Entry<K, V>> m4165a() {
        b bVar = new b(this.f3239c, this.f3238b);
        this.f3240d.put(bVar, Boolean.FALSE);
        return bVar;
    }

    /* JADX INFO: renamed from: b */
    public Map.Entry<K, V> m4166b() {
        return this.f3238b;
    }

    /* JADX INFO: renamed from: c */
    protected c<K, V> mo4161c(K k) {
        c<K, V> cVar = this.f3238b;
        while (cVar != null && !cVar.f3242b.equals(k)) {
            cVar = cVar.f3244d;
        }
        return cVar;
    }

    /* JADX INFO: renamed from: d */
    public C0524b<K, V>.d m4167d() {
        C0524b<K, V>.d dVar = new d();
        this.f3240d.put(dVar, Boolean.FALSE);
        return dVar;
    }

    /* JADX INFO: renamed from: e */
    public Map.Entry<K, V> m4168e() {
        return this.f3239c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0524b)) {
            return false;
        }
        C0524b c0524b = (C0524b) obj;
        if (size() != c0524b.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = c0524b.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    /* JADX INFO: renamed from: f */
    protected c<K, V> m4169f(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.f3241e++;
        c<K, V> cVar2 = this.f3239c;
        if (cVar2 == null) {
            this.f3238b = cVar;
            this.f3239c = cVar;
            return cVar;
        }
        cVar2.f3244d = cVar;
        cVar.f3245e = cVar2;
        this.f3239c = cVar;
        return cVar;
    }

    /* JADX INFO: renamed from: g */
    public V mo4162g(K k, V v) {
        c<K, V> cVarMo4161c = mo4161c(k);
        if (cVarMo4161c != null) {
            return cVarMo4161c.f3243c;
        }
        m4169f(k, v);
        return null;
    }

    /* JADX INFO: renamed from: h */
    public V mo4163h(K k) {
        c<K, V> cVarMo4161c = mo4161c(k);
        if (cVarMo4161c == null) {
            return null;
        }
        this.f3241e--;
        if (!this.f3240d.isEmpty()) {
            Iterator<f<K, V>> it = this.f3240d.keySet().iterator();
            while (it.hasNext()) {
                it.next().mo4172a(cVarMo4161c);
            }
        }
        c<K, V> cVar = cVarMo4161c.f3245e;
        if (cVar != null) {
            cVar.f3244d = cVarMo4161c.f3244d;
        } else {
            this.f3238b = cVarMo4161c.f3244d;
        }
        c<K, V> cVar2 = cVarMo4161c.f3244d;
        if (cVar2 != null) {
            cVar2.f3245e = cVarMo4161c.f3245e;
        } else {
            this.f3239c = cVarMo4161c.f3245e;
        }
        cVarMo4161c.f3244d = null;
        cVarMo4161c.f3245e = null;
        return cVarMo4161c.f3243c;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            iHashCode += it.next().hashCode();
        }
        return iHashCode;
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.f3238b, this.f3239c);
        this.f3240d.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.f3241e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (it.hasNext()) {
            sb.append(it.next().toString());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append("]");
        return sb.toString();
    }
}
