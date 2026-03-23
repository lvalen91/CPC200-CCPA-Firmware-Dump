package p016c.p032d;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: renamed from: c.d.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractC0539f<K, V> {

    /* JADX INFO: renamed from: a */
    AbstractC0539f<K, V>.b f3316a;

    /* JADX INFO: renamed from: b */
    AbstractC0539f<K, V>.c f3317b;

    /* JADX INFO: renamed from: c */
    AbstractC0539f<K, V>.e f3318c;

    /* JADX INFO: renamed from: c.d.f$a */
    final class a<T> implements Iterator<T> {

        /* JADX INFO: renamed from: b */
        final int f3319b;

        /* JADX INFO: renamed from: c */
        int f3320c;

        /* JADX INFO: renamed from: d */
        int f3321d;

        /* JADX INFO: renamed from: e */
        boolean f3322e = false;

        a(int i) {
            this.f3319b = i;
            this.f3320c = AbstractC0539f.this.mo4234d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3321d < this.f3320c;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) AbstractC0539f.this.mo4232b(this.f3321d, this.f3319b);
            this.f3321d++;
            this.f3322e = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f3322e) {
                throw new IllegalStateException();
            }
            int i = this.f3321d - 1;
            this.f3321d = i;
            this.f3320c--;
            this.f3322e = false;
            AbstractC0539f.this.mo4238h(i);
        }
    }

    /* JADX INFO: renamed from: c.d.f$b */
    final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        /* JADX INFO: renamed from: a */
        public boolean m4283a(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public /* bridge */ /* synthetic */ boolean add(Object obj) {
            m4283a((Map.Entry) obj);
            throw null;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int iMo4234d = AbstractC0539f.this.mo4234d();
            for (Map.Entry<K, V> entry : collection) {
                AbstractC0539f.this.mo4237g(entry.getKey(), entry.getValue());
            }
            return iMo4234d != AbstractC0539f.this.mo4234d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC0539f.this.mo4231a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iMo4235e = AbstractC0539f.this.mo4235e(entry.getKey());
            if (iMo4235e < 0) {
                return false;
            }
            return C0536c.m4250c(AbstractC0539f.this.mo4232b(iMo4235e, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC0539f.m4275k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iMo4234d = AbstractC0539f.this.mo4234d() - 1; iMo4234d >= 0; iMo4234d--) {
                Object objMo4232b = AbstractC0539f.this.mo4232b(iMo4234d, 0);
                Object objMo4232b2 = AbstractC0539f.this.mo4232b(iMo4234d, 1);
                iHashCode += (objMo4232b == null ? 0 : objMo4232b.hashCode()) ^ (objMo4232b2 == null ? 0 : objMo4232b2.hashCode());
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0539f.this.mo4234d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC0539f.this.mo4234d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: renamed from: c.d.f$c */
    final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            AbstractC0539f.this.mo4231a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0539f.this.mo4235e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return AbstractC0539f.m4274j(AbstractC0539f.this.mo4233c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return AbstractC0539f.m4275k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iMo4234d = AbstractC0539f.this.mo4234d() - 1; iMo4234d >= 0; iMo4234d--) {
                Object objMo4232b = AbstractC0539f.this.mo4232b(iMo4234d, 0);
                iHashCode += objMo4232b == null ? 0 : objMo4232b.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return AbstractC0539f.this.mo4234d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int iMo4235e = AbstractC0539f.this.mo4235e(obj);
            if (iMo4235e < 0) {
                return false;
            }
            AbstractC0539f.this.mo4238h(iMo4235e);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return AbstractC0539f.m4276o(AbstractC0539f.this.mo4233c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return AbstractC0539f.m4277p(AbstractC0539f.this.mo4233c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return AbstractC0539f.this.mo4234d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return AbstractC0539f.this.m4281q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0539f.this.m4282r(tArr, 0);
        }
    }

    /* JADX INFO: renamed from: c.d.f$d */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* JADX INFO: renamed from: b */
        int f3326b;

        /* JADX INFO: renamed from: d */
        boolean f3328d = false;

        /* JADX INFO: renamed from: c */
        int f3327c = -1;

        d() {
            this.f3326b = AbstractC0539f.this.mo4234d() - 1;
        }

        /* JADX INFO: renamed from: a */
        public Map.Entry<K, V> m4284a() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f3327c++;
            this.f3328d = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f3328d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return C0536c.m4250c(entry.getKey(), AbstractC0539f.this.mo4232b(this.f3327c, 0)) && C0536c.m4250c(entry.getValue(), AbstractC0539f.this.mo4232b(this.f3327c, 1));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f3328d) {
                return (K) AbstractC0539f.this.mo4232b(this.f3327c, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f3328d) {
                return (V) AbstractC0539f.this.mo4232b(this.f3327c, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f3327c < this.f3326b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f3328d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object objMo4232b = AbstractC0539f.this.mo4232b(this.f3327c, 0);
            Object objMo4232b2 = AbstractC0539f.this.mo4232b(this.f3327c, 1);
            return (objMo4232b == null ? 0 : objMo4232b.hashCode()) ^ (objMo4232b2 != null ? objMo4232b2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public /* bridge */ /* synthetic */ Object next() {
            m4284a();
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f3328d) {
                throw new IllegalStateException();
            }
            AbstractC0539f.this.mo4238h(this.f3327c);
            this.f3327c--;
            this.f3326b--;
            this.f3328d = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f3328d) {
                return (V) AbstractC0539f.this.mo4239i(this.f3327c, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* JADX INFO: renamed from: c.d.f$e */
    final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            AbstractC0539f.this.mo4231a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return AbstractC0539f.this.mo4236f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return AbstractC0539f.this.mo4234d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iMo4236f = AbstractC0539f.this.mo4236f(obj);
            if (iMo4236f < 0) {
                return false;
            }
            AbstractC0539f.this.mo4238h(iMo4236f);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int iMo4234d = AbstractC0539f.this.mo4234d();
            int i = 0;
            boolean z = false;
            while (i < iMo4234d) {
                if (collection.contains(AbstractC0539f.this.mo4232b(i, 1))) {
                    AbstractC0539f.this.mo4238h(i);
                    i--;
                    iMo4234d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int iMo4234d = AbstractC0539f.this.mo4234d();
            int i = 0;
            boolean z = false;
            while (i < iMo4234d) {
                if (!collection.contains(AbstractC0539f.this.mo4232b(i, 1))) {
                    AbstractC0539f.this.mo4238h(i);
                    i--;
                    iMo4234d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return AbstractC0539f.this.mo4234d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return AbstractC0539f.this.m4281q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) AbstractC0539f.this.m4282r(tArr, 1);
        }
    }

    AbstractC0539f() {
    }

    /* JADX INFO: renamed from: j */
    public static <K, V> boolean m4274j(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!map.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: k */
    public static <T> boolean m4275k(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: o */
    public static <K, V> boolean m4276o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            map.remove(it.next());
        }
        return size != map.size();
    }

    /* JADX INFO: renamed from: p */
    public static <K, V> boolean m4277p(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    /* JADX INFO: renamed from: a */
    protected abstract void mo4231a();

    /* JADX INFO: renamed from: b */
    protected abstract Object mo4232b(int i, int i2);

    /* JADX INFO: renamed from: c */
    protected abstract Map<K, V> mo4233c();

    /* JADX INFO: renamed from: d */
    protected abstract int mo4234d();

    /* JADX INFO: renamed from: e */
    protected abstract int mo4235e(Object obj);

    /* JADX INFO: renamed from: f */
    protected abstract int mo4236f(Object obj);

    /* JADX INFO: renamed from: g */
    protected abstract void mo4237g(K k, V v);

    /* JADX INFO: renamed from: h */
    protected abstract void mo4238h(int i);

    /* JADX INFO: renamed from: i */
    protected abstract V mo4239i(int i, V v);

    /* JADX INFO: renamed from: l */
    public Set<Map.Entry<K, V>> m4278l() {
        if (this.f3316a == null) {
            this.f3316a = new b();
        }
        return this.f3316a;
    }

    /* JADX INFO: renamed from: m */
    public Set<K> m4279m() {
        if (this.f3317b == null) {
            this.f3317b = new c();
        }
        return this.f3317b;
    }

    /* JADX INFO: renamed from: n */
    public Collection<V> m4280n() {
        if (this.f3318c == null) {
            this.f3318c = new e();
        }
        return this.f3318c;
    }

    /* JADX INFO: renamed from: q */
    public Object[] m4281q(int i) {
        int iMo4234d = mo4234d();
        Object[] objArr = new Object[iMo4234d];
        for (int i2 = 0; i2 < iMo4234d; i2++) {
            objArr[i2] = mo4232b(i2, i);
        }
        return objArr;
    }

    /* JADX INFO: renamed from: r */
    public <T> T[] m4282r(T[] tArr, int i) {
        int iMo4234d = mo4234d();
        if (tArr.length < iMo4234d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), iMo4234d));
        }
        for (int i2 = 0; i2 < iMo4234d; i2++) {
            tArr[i2] = mo4232b(i2, i);
        }
        if (tArr.length > iMo4234d) {
            tArr[iMo4234d] = null;
        }
        return tArr;
    }
}
