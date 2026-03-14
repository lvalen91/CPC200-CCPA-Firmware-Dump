package c.b.a.b;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class b<K, V> implements Iterable<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c<K, V> f1050b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c<K, V> f1051c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private WeakHashMap<f<K, V>, Boolean> f1052d = new WeakHashMap<>();
    private int e = 0;

    static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // c.b.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.e;
        }

        @Override // c.b.a.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.f1055d;
        }
    }

    /* JADX INFO: renamed from: c.b.a.b.b$b, reason: collision with other inner class name */
    private static class C0047b<K, V> extends e<K, V> {
        C0047b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // c.b.a.b.b.e
        c<K, V> b(c<K, V> cVar) {
            return cVar.f1055d;
        }

        @Override // c.b.a.b.b.e
        c<K, V> c(c<K, V> cVar) {
            return cVar.e;
        }
    }

    static class c<K, V> implements Map.Entry<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final K f1053b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final V f1054c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        c<K, V> f1055d;
        c<K, V> e;

        c(K k, V v) {
            this.f1053b = k;
            this.f1054c = v;
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
            return this.f1053b.equals(cVar.f1053b) && this.f1054c.equals(cVar.f1054c);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f1053b;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f1054c;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.f1053b.hashCode() ^ this.f1054c.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return this.f1053b + "=" + this.f1054c;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private c<K, V> f1056b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private boolean f1057c = true;

        d() {
        }

        @Override // c.b.a.b.b.f
        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.f1056b;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.e;
                this.f1056b = cVar3;
                this.f1057c = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (this.f1057c) {
                this.f1057c = false;
                this.f1056b = b.this.f1050b;
            } else {
                c<K, V> cVar = this.f1056b;
                this.f1056b = cVar != null ? cVar.f1055d : null;
            }
            return this.f1056b;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f1057c) {
                return b.this.f1050b != null;
            }
            c<K, V> cVar = this.f1056b;
            return (cVar == null || cVar.f1055d == null) ? false : true;
        }
    }

    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        c<K, V> f1059b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        c<K, V> f1060c;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.f1059b = cVar2;
            this.f1060c = cVar;
        }

        private c<K, V> e() {
            c<K, V> cVar = this.f1060c;
            c<K, V> cVar2 = this.f1059b;
            if (cVar == cVar2 || cVar2 == null) {
                return null;
            }
            return c(cVar);
        }

        @Override // c.b.a.b.b.f
        public void a(c<K, V> cVar) {
            if (this.f1059b == cVar && cVar == this.f1060c) {
                this.f1060c = null;
                this.f1059b = null;
            }
            c<K, V> cVar2 = this.f1059b;
            if (cVar2 == cVar) {
                this.f1059b = b(cVar2);
            }
            if (this.f1060c == cVar) {
                this.f1060c = e();
            }
        }

        abstract c<K, V> b(c<K, V> cVar);

        abstract c<K, V> c(c<K, V> cVar);

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            c<K, V> cVar = this.f1060c;
            this.f1060c = e();
            return cVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1060c != null;
        }
    }

    interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public Iterator<Map.Entry<K, V>> a() {
        C0047b c0047b = new C0047b(this.f1051c, this.f1050b);
        this.f1052d.put(c0047b, Boolean.FALSE);
        return c0047b;
    }

    public Map.Entry<K, V> b() {
        return this.f1050b;
    }

    protected c<K, V> c(K k) {
        c<K, V> cVar = this.f1050b;
        while (cVar != null && !cVar.f1053b.equals(k)) {
            cVar = cVar.f1055d;
        }
        return cVar;
    }

    public b<K, V>.d d() {
        b<K, V>.d dVar = new d();
        this.f1052d.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public Map.Entry<K, V> e() {
        return this.f1051c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (size() != bVar.size()) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it = iterator();
        Iterator<Map.Entry<K, V>> it2 = bVar.iterator();
        while (it.hasNext() && it2.hasNext()) {
            Map.Entry<K, V> next = it.next();
            Map.Entry<K, V> next2 = it2.next();
            if ((next == null && next2 != null) || (next != null && !next.equals(next2))) {
                return false;
            }
        }
        return (it.hasNext() || it2.hasNext()) ? false : true;
    }

    protected c<K, V> f(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.e++;
        c<K, V> cVar2 = this.f1051c;
        if (cVar2 == null) {
            this.f1050b = cVar;
            this.f1051c = cVar;
            return cVar;
        }
        cVar2.f1055d = cVar;
        cVar.e = cVar2;
        this.f1051c = cVar;
        return cVar;
    }

    public V g(K k, V v) {
        c<K, V> cVarC = c(k);
        if (cVarC != null) {
            return cVarC.f1054c;
        }
        f(k, v);
        return null;
    }

    public V h(K k) {
        c<K, V> cVarC = c(k);
        if (cVarC == null) {
            return null;
        }
        this.e--;
        if (!this.f1052d.isEmpty()) {
            Iterator<f<K, V>> it = this.f1052d.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(cVarC);
            }
        }
        c<K, V> cVar = cVarC.e;
        if (cVar != null) {
            cVar.f1055d = cVarC.f1055d;
        } else {
            this.f1050b = cVarC.f1055d;
        }
        c<K, V> cVar2 = cVarC.f1055d;
        if (cVar2 != null) {
            cVar2.e = cVarC.e;
        } else {
            this.f1051c = cVarC.e;
        }
        cVarC.f1055d = null;
        cVarC.e = null;
        return cVarC.f1054c;
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
        a aVar = new a(this.f1050b, this.f1051c);
        this.f1052d.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.e;
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
