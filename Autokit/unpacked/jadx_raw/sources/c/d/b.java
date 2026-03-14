package c.d;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class b<E> implements Collection<E>, Set<E> {
    private static final int[] f = new int[0];
    private static final Object[] g = new Object[0];
    private static Object[] h;
    private static int i;
    private static Object[] j;
    private static int k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int[] f1071b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object[] f1072c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1073d;
    private f<E, E> e;

    class a extends f<E, E> {
        a() {
        }

        @Override // c.d.f
        protected void a() {
            b.this.clear();
        }

        @Override // c.d.f
        protected Object b(int i, int i2) {
            return b.this.f1072c[i];
        }

        @Override // c.d.f
        protected Map<E, E> c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // c.d.f
        protected int d() {
            return b.this.f1073d;
        }

        @Override // c.d.f
        protected int e(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // c.d.f
        protected int f(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // c.d.f
        protected void g(E e, E e2) {
            b.this.add(e);
        }

        @Override // c.d.f
        protected void h(int i) {
            b.this.g(i);
        }

        @Override // c.d.f
        protected E i(int i, E e) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public b() {
        this(0);
    }

    private void a(int i2) {
        if (i2 == 8) {
            synchronized (b.class) {
                if (j != null) {
                    Object[] objArr = j;
                    this.f1072c = objArr;
                    j = (Object[]) objArr[0];
                    this.f1071b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    k--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (b.class) {
                if (h != null) {
                    Object[] objArr2 = h;
                    this.f1072c = objArr2;
                    h = (Object[]) objArr2[0];
                    this.f1071b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    i--;
                    return;
                }
            }
        }
        this.f1071b = new int[i2];
        this.f1072c = new Object[i2];
    }

    private static void c(int[] iArr, Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (k < 10) {
                    objArr[0] = j;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    j = objArr;
                    k++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (i < 10) {
                    objArr[0] = h;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    h = objArr;
                    i++;
                }
            }
        }
    }

    private f<E, E> d() {
        if (this.e == null) {
            this.e = new a();
        }
        return this.e;
    }

    private int e(Object obj, int i2) {
        int i3 = this.f1073d;
        if (i3 == 0) {
            return -1;
        }
        int iA = c.a(this.f1071b, i3, i2);
        if (iA < 0 || obj.equals(this.f1072c[iA])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.f1071b[i4] == i2) {
            if (obj.equals(this.f1072c[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.f1071b[i5] == i2; i5--) {
            if (obj.equals(this.f1072c[i5])) {
                return i5;
            }
        }
        return i4 ^ (-1);
    }

    private int f() {
        int i2 = this.f1073d;
        if (i2 == 0) {
            return -1;
        }
        int iA = c.a(this.f1071b, i2, 0);
        if (iA < 0 || this.f1072c[iA] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.f1071b[i3] == 0) {
            if (this.f1072c[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.f1071b[i4] == 0; i4--) {
            if (this.f1072c[i4] == null) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e) {
        int i2;
        int iE;
        if (e == null) {
            iE = f();
            i2 = 0;
        } else {
            int iHashCode = e.hashCode();
            i2 = iHashCode;
            iE = e(e, iHashCode);
        }
        if (iE >= 0) {
            return false;
        }
        int i3 = iE ^ (-1);
        int i4 = this.f1073d;
        if (i4 >= this.f1071b.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f1071b;
            Object[] objArr = this.f1072c;
            a(i5);
            int[] iArr2 = this.f1071b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f1072c, 0, objArr.length);
            }
            c(iArr, objArr, this.f1073d);
        }
        int i6 = this.f1073d;
        if (i3 < i6) {
            int[] iArr3 = this.f1071b;
            int i7 = i3 + 1;
            System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            Object[] objArr2 = this.f1072c;
            System.arraycopy(objArr2, i3, objArr2, i7, this.f1073d - i3);
        }
        this.f1071b[i3] = i2;
        this.f1072c[i3] = e;
        this.f1073d++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        b(this.f1073d + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public void b(int i2) {
        int[] iArr = this.f1071b;
        if (iArr.length < i2) {
            Object[] objArr = this.f1072c;
            a(i2);
            int i3 = this.f1073d;
            if (i3 > 0) {
                System.arraycopy(iArr, 0, this.f1071b, 0, i3);
                System.arraycopy(objArr, 0, this.f1072c, 0, this.f1073d);
            }
            c(iArr, objArr, this.f1073d);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f1073d;
        if (i2 != 0) {
            c(this.f1071b, this.f1072c, i2);
            this.f1071b = f;
            this.f1072c = g;
            this.f1073d = 0;
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
            for (int i2 = 0; i2 < this.f1073d; i2++) {
                try {
                    if (!set.contains(h(i2))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public E g(int i2) {
        Object[] objArr = this.f1072c;
        E e = (E) objArr[i2];
        int i3 = this.f1073d;
        if (i3 <= 1) {
            c(this.f1071b, objArr, i3);
            this.f1071b = f;
            this.f1072c = g;
            this.f1073d = 0;
        } else {
            int[] iArr = this.f1071b;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                int i4 = this.f1073d - 1;
                this.f1073d = i4;
                if (i2 < i4) {
                    int[] iArr2 = this.f1071b;
                    int i5 = i2 + 1;
                    System.arraycopy(iArr2, i5, iArr2, i2, i4 - i2);
                    Object[] objArr2 = this.f1072c;
                    System.arraycopy(objArr2, i5, objArr2, i2, this.f1073d - i2);
                }
                this.f1072c[this.f1073d] = null;
            } else {
                int i6 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.f1071b;
                Object[] objArr3 = this.f1072c;
                a(i6);
                this.f1073d--;
                if (i2 > 0) {
                    System.arraycopy(iArr3, 0, this.f1071b, 0, i2);
                    System.arraycopy(objArr3, 0, this.f1072c, 0, i2);
                }
                int i7 = this.f1073d;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    System.arraycopy(iArr3, i8, this.f1071b, i2, i7 - i2);
                    System.arraycopy(objArr3, i8, this.f1072c, i2, this.f1073d - i2);
                }
            }
        }
        return e;
    }

    public E h(int i2) {
        return (E) this.f1072c[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f1071b;
        int i2 = this.f1073d;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(Object obj) {
        return obj == null ? f() : e(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f1073d <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return d().m().iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        g(iIndexOf);
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
        for (int i2 = this.f1073d - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.f1072c[i2])) {
                g(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f1073d;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i2 = this.f1073d;
        Object[] objArr = new Object[i2];
        System.arraycopy(this.f1072c, 0, objArr, 0, i2);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1073d * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f1073d; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            E eH = h(i2);
            if (eH != this) {
                sb.append(eH);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public b(int i2) {
        if (i2 == 0) {
            this.f1071b = f;
            this.f1072c = g;
        } else {
            a(i2);
        }
        this.f1073d = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f1073d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f1073d));
        }
        System.arraycopy(this.f1072c, 0, tArr, 0, this.f1073d);
        int length = tArr.length;
        int i2 = this.f1073d;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }
}
