package p016c.p032d;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: renamed from: c.d.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0535b<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: f */
    private static final int[] f3289f = new int[0];

    /* JADX INFO: renamed from: g */
    private static final Object[] f3290g = new Object[0];

    /* JADX INFO: renamed from: h */
    private static Object[] f3291h;

    /* JADX INFO: renamed from: i */
    private static int f3292i;

    /* JADX INFO: renamed from: j */
    private static Object[] f3293j;

    /* JADX INFO: renamed from: k */
    private static int f3294k;

    /* JADX INFO: renamed from: b */
    private int[] f3295b;

    /* JADX INFO: renamed from: c */
    Object[] f3296c;

    /* JADX INFO: renamed from: d */
    int f3297d;

    /* JADX INFO: renamed from: e */
    private AbstractC0539f<E, E> f3298e;

    /* JADX INFO: renamed from: c.d.b$a */
    class a extends AbstractC0539f<E, E> {
        a() {
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: a */
        protected void mo4231a() {
            C0535b.this.clear();
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: b */
        protected Object mo4232b(int i, int i2) {
            return C0535b.this.f3296c[i];
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: c */
        protected Map<E, E> mo4233c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: d */
        protected int mo4234d() {
            return C0535b.this.f3297d;
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: e */
        protected int mo4235e(Object obj) {
            return C0535b.this.indexOf(obj);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: f */
        protected int mo4236f(Object obj) {
            return C0535b.this.indexOf(obj);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: g */
        protected void mo4237g(E e, E e2) {
            C0535b.this.add(e);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: h */
        protected void mo4238h(int i) {
            C0535b.this.m4246g(i);
        }

        @Override // p016c.p032d.AbstractC0539f
        /* JADX INFO: renamed from: i */
        protected E mo4239i(int i, E e) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public C0535b() {
        this(0);
    }

    /* JADX INFO: renamed from: a */
    private void m4240a(int i) {
        if (i == 8) {
            synchronized (C0535b.class) {
                if (f3293j != null) {
                    Object[] objArr = f3293j;
                    this.f3296c = objArr;
                    f3293j = (Object[]) objArr[0];
                    this.f3295b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f3294k--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (C0535b.class) {
                if (f3291h != null) {
                    Object[] objArr2 = f3291h;
                    this.f3296c = objArr2;
                    f3291h = (Object[]) objArr2[0];
                    this.f3295b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f3292i--;
                    return;
                }
            }
        }
        this.f3295b = new int[i];
        this.f3296c = new Object[i];
    }

    /* JADX INFO: renamed from: c */
    private static void m4241c(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0535b.class) {
                if (f3294k < 10) {
                    objArr[0] = f3293j;
                    objArr[1] = iArr;
                    for (int i2 = i - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f3293j = objArr;
                    f3294k++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (C0535b.class) {
                if (f3292i < 10) {
                    objArr[0] = f3291h;
                    objArr[1] = iArr;
                    for (int i3 = i - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f3291h = objArr;
                    f3292i++;
                }
            }
        }
    }

    /* JADX INFO: renamed from: d */
    private AbstractC0539f<E, E> m4242d() {
        if (this.f3298e == null) {
            this.f3298e = new a();
        }
        return this.f3298e;
    }

    /* JADX INFO: renamed from: e */
    private int m4243e(Object obj, int i) {
        int i2 = this.f3297d;
        if (i2 == 0) {
            return -1;
        }
        int iM4248a = C0536c.m4248a(this.f3295b, i2, i);
        if (iM4248a < 0 || obj.equals(this.f3296c[iM4248a])) {
            return iM4248a;
        }
        int i3 = iM4248a + 1;
        while (i3 < i2 && this.f3295b[i3] == i) {
            if (obj.equals(this.f3296c[i3])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iM4248a - 1; i4 >= 0 && this.f3295b[i4] == i; i4--) {
            if (obj.equals(this.f3296c[i4])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    /* JADX INFO: renamed from: f */
    private int m4244f() {
        int i = this.f3297d;
        if (i == 0) {
            return -1;
        }
        int iM4248a = C0536c.m4248a(this.f3295b, i, 0);
        if (iM4248a < 0 || this.f3296c[iM4248a] == null) {
            return iM4248a;
        }
        int i2 = iM4248a + 1;
        while (i2 < i && this.f3295b[i2] == 0) {
            if (this.f3296c[i2] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iM4248a - 1; i3 >= 0 && this.f3295b[i3] == 0; i3--) {
            if (this.f3296c[i3] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i;
        int iM4243e;
        if (e == null) {
            iM4243e = m4244f();
            i = 0;
        } else {
            int iHashCode = e.hashCode();
            i = iHashCode;
            iM4243e = m4243e(e, iHashCode);
        }
        if (iM4243e >= 0) {
            return false;
        }
        int i2 = iM4243e ^ (-1);
        int i3 = this.f3297d;
        if (i3 >= this.f3295b.length) {
            int i4 = 4;
            if (i3 >= 8) {
                i4 = (i3 >> 1) + i3;
            } else if (i3 >= 4) {
                i4 = 8;
            }
            int[] iArr = this.f3295b;
            Object[] objArr = this.f3296c;
            m4240a(i4);
            int[] iArr2 = this.f3295b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f3296c, 0, objArr.length);
            }
            m4241c(iArr, objArr, this.f3297d);
        }
        int i5 = this.f3297d;
        if (i2 < i5) {
            int[] iArr3 = this.f3295b;
            int i6 = i2 + 1;
            System.arraycopy(iArr3, i2, iArr3, i6, i5 - i2);
            Object[] objArr2 = this.f3296c;
            System.arraycopy(objArr2, i2, objArr2, i6, this.f3297d - i2);
        }
        this.f3295b[i2] = i;
        this.f3296c[i2] = e;
        this.f3297d++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        m4245b(this.f3297d + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    /* JADX INFO: renamed from: b */
    public void m4245b(int i) {
        int[] iArr = this.f3295b;
        if (iArr.length < i) {
            Object[] objArr = this.f3296c;
            m4240a(i);
            int i2 = this.f3297d;
            if (i2 > 0) {
                System.arraycopy(iArr, 0, this.f3295b, 0, i2);
                System.arraycopy(objArr, 0, this.f3296c, 0, this.f3297d);
            }
            m4241c(iArr, objArr, this.f3297d);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i = this.f3297d;
        if (i != 0) {
            m4241c(this.f3295b, this.f3296c, i);
            this.f3295b = f3289f;
            this.f3296c = f3290g;
            this.f3297d = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i = 0; i < this.f3297d; i++) {
                try {
                    if (!set.contains(m4247h(i))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: g */
    public E m4246g(int i) {
        Object[] objArr = this.f3296c;
        E e = (E) objArr[i];
        int i2 = this.f3297d;
        if (i2 <= 1) {
            m4241c(this.f3295b, objArr, i2);
            this.f3295b = f3289f;
            this.f3296c = f3290g;
            this.f3297d = 0;
        } else {
            int[] iArr = this.f3295b;
            if (iArr.length <= 8 || i2 >= iArr.length / 3) {
                int i3 = this.f3297d - 1;
                this.f3297d = i3;
                if (i < i3) {
                    int[] iArr2 = this.f3295b;
                    int i4 = i + 1;
                    System.arraycopy(iArr2, i4, iArr2, i, i3 - i);
                    Object[] objArr2 = this.f3296c;
                    System.arraycopy(objArr2, i4, objArr2, i, this.f3297d - i);
                }
                this.f3296c[this.f3297d] = null;
            } else {
                int i5 = i2 > 8 ? i2 + (i2 >> 1) : 8;
                int[] iArr3 = this.f3295b;
                Object[] objArr3 = this.f3296c;
                m4240a(i5);
                this.f3297d--;
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f3295b, 0, i);
                    System.arraycopy(objArr3, 0, this.f3296c, 0, i);
                }
                int i6 = this.f3297d;
                if (i < i6) {
                    int i7 = i + 1;
                    System.arraycopy(iArr3, i7, this.f3295b, i, i6 - i);
                    System.arraycopy(objArr3, i7, this.f3296c, i, this.f3297d - i);
                }
            }
        }
        return e;
    }

    /* JADX INFO: renamed from: h */
    public E m4247h(int i) {
        return (E) this.f3296c[i];
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f3295b;
        int i = this.f3297d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    public int indexOf(Object obj) {
        return obj == null ? m4244f() : m4243e(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f3297d <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return m4242d().m4279m().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        m4246g(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        for (int i = this.f3297d - 1; i >= 0; i--) {
            if (!collection.contains(this.f3296c[i])) {
                m4246g(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f3297d;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i = this.f3297d;
        Object[] objArr = new Object[i];
        System.arraycopy(this.f3296c, 0, objArr, 0, i);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3297d * 14);
        sb.append('{');
        for (int i = 0; i < this.f3297d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            E eM4247h = m4247h(i);
            if (eM4247h != this) {
                sb.append(eM4247h);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public C0535b(int i) {
        if (i == 0) {
            this.f3295b = f3289f;
            this.f3296c = f3290g;
        } else {
            m4240a(i);
        }
        this.f3297d = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f3297d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f3297d));
        }
        System.arraycopy(this.f3296c, 0, tArr, 0, this.f3297d);
        int length = tArr.length;
        int i = this.f3297d;
        if (length > i) {
            tArr[i] = null;
        }
        return tArr;
    }
}
