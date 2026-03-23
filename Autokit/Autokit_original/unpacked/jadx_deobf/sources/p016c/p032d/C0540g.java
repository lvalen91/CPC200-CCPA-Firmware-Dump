package p016c.p032d;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: renamed from: c.d.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0540g<K, V> {

    /* JADX INFO: renamed from: e */
    static Object[] f3331e;

    /* JADX INFO: renamed from: f */
    static int f3332f;

    /* JADX INFO: renamed from: g */
    static Object[] f3333g;

    /* JADX INFO: renamed from: h */
    static int f3334h;

    /* JADX INFO: renamed from: b */
    int[] f3335b;

    /* JADX INFO: renamed from: c */
    Object[] f3336c;

    /* JADX INFO: renamed from: d */
    int f3337d;

    public C0540g() {
        this.f3335b = C0536c.f3300a;
        this.f3336c = C0536c.f3302c;
        this.f3337d = 0;
    }

    /* JADX INFO: renamed from: a */
    private void m4285a(int i) {
        if (i == 8) {
            synchronized (C0540g.class) {
                if (f3333g != null) {
                    Object[] objArr = f3333g;
                    this.f3336c = objArr;
                    f3333g = (Object[]) objArr[0];
                    this.f3335b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f3334h--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (C0540g.class) {
                if (f3331e != null) {
                    Object[] objArr2 = f3331e;
                    this.f3336c = objArr2;
                    f3331e = (Object[]) objArr2[0];
                    this.f3335b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f3332f--;
                    return;
                }
            }
        }
        this.f3335b = new int[i];
        this.f3336c = new Object[i << 1];
    }

    /* JADX INFO: renamed from: b */
    private static int m4286b(int[] iArr, int i, int i2) {
        try {
            return C0536c.m4248a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    /* JADX INFO: renamed from: d */
    private static void m4287d(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (C0540g.class) {
                if (f3334h < 10) {
                    objArr[0] = f3333g;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f3333g = objArr;
                    f3334h++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (C0540g.class) {
                if (f3332f < 10) {
                    objArr[0] = f3331e;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f3331e = objArr;
                    f3332f++;
                }
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public void m4288c(int i) {
        int i2 = this.f3337d;
        int[] iArr = this.f3335b;
        if (iArr.length < i) {
            Object[] objArr = this.f3336c;
            m4285a(i);
            if (this.f3337d > 0) {
                System.arraycopy(iArr, 0, this.f3335b, 0, i2);
                System.arraycopy(objArr, 0, this.f3336c, 0, i2 << 1);
            }
            m4287d(iArr, objArr, i2);
        }
        if (this.f3337d != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i = this.f3337d;
        if (i > 0) {
            int[] iArr = this.f3335b;
            Object[] objArr = this.f3336c;
            this.f3335b = C0536c.f3300a;
            this.f3336c = C0536c.f3302c;
            this.f3337d = 0;
            m4287d(iArr, objArr, i);
        }
        if (this.f3337d > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return m4290f(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m4292h(obj) >= 0;
    }

    /* JADX INFO: renamed from: e */
    int m4289e(Object obj, int i) {
        int i2 = this.f3337d;
        if (i2 == 0) {
            return -1;
        }
        int iM4286b = m4286b(this.f3335b, i2, i);
        if (iM4286b < 0 || obj.equals(this.f3336c[iM4286b << 1])) {
            return iM4286b;
        }
        int i3 = iM4286b + 1;
        while (i3 < i2 && this.f3335b[i3] == i) {
            if (obj.equals(this.f3336c[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iM4286b - 1; i4 >= 0 && this.f3335b[i4] == i; i4--) {
            if (obj.equals(this.f3336c[i4 << 1])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0540g) {
            C0540g c0540g = (C0540g) obj;
            if (size() != c0540g.size()) {
                return false;
            }
            for (int i = 0; i < this.f3337d; i++) {
                try {
                    K kM4293i = m4293i(i);
                    V vM4297m = m4297m(i);
                    Object obj2 = c0540g.get(kM4293i);
                    if (vM4297m == null) {
                        if (obj2 != null || !c0540g.containsKey(kM4293i)) {
                            return false;
                        }
                    } else if (!vM4297m.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f3337d; i2++) {
                try {
                    K kM4293i2 = m4293i(i2);
                    V vM4297m2 = m4297m(i2);
                    Object obj3 = map.get(kM4293i2);
                    if (vM4297m2 == null) {
                        if (obj3 != null || !map.containsKey(kM4293i2)) {
                            return false;
                        }
                    } else if (!vM4297m2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: renamed from: f */
    public int m4290f(Object obj) {
        return obj == null ? m4291g() : m4289e(obj, obj.hashCode());
    }

    /* JADX INFO: renamed from: g */
    int m4291g() {
        int i = this.f3337d;
        if (i == 0) {
            return -1;
        }
        int iM4286b = m4286b(this.f3335b, i, 0);
        if (iM4286b < 0 || this.f3336c[iM4286b << 1] == null) {
            return iM4286b;
        }
        int i2 = iM4286b + 1;
        while (i2 < i && this.f3335b[i2] == 0) {
            if (this.f3336c[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iM4286b - 1; i3 >= 0 && this.f3335b[i3] == 0; i3--) {
            if (this.f3336c[i3 << 1] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int iM4290f = m4290f(obj);
        return iM4290f >= 0 ? (V) this.f3336c[(iM4290f << 1) + 1] : v;
    }

    /* JADX INFO: renamed from: h */
    int m4292h(Object obj) {
        int i = this.f3337d * 2;
        Object[] objArr = this.f3336c;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public int hashCode() {
        int[] iArr = this.f3335b;
        Object[] objArr = this.f3336c;
        int i = this.f3337d;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    /* JADX INFO: renamed from: i */
    public K m4293i(int i) {
        return (K) this.f3336c[i << 1];
    }

    public boolean isEmpty() {
        return this.f3337d <= 0;
    }

    /* JADX INFO: renamed from: j */
    public void m4294j(C0540g<? extends K, ? extends V> c0540g) {
        int i = c0540g.f3337d;
        m4288c(this.f3337d + i);
        if (this.f3337d != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c0540g.m4293i(i2), c0540g.m4297m(i2));
            }
        } else if (i > 0) {
            System.arraycopy(c0540g.f3335b, 0, this.f3335b, 0, i);
            System.arraycopy(c0540g.f3336c, 0, this.f3336c, 0, i << 1);
            this.f3337d = i;
        }
    }

    /* JADX INFO: renamed from: k */
    public V m4295k(int i) {
        Object[] objArr = this.f3336c;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f3337d;
        int i4 = 0;
        if (i3 <= 1) {
            m4287d(this.f3335b, objArr, i3);
            this.f3335b = C0536c.f3300a;
            this.f3336c = C0536c.f3302c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f3335b;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int[] iArr2 = this.f3335b;
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr2, i6, iArr2, i, i7);
                    Object[] objArr2 = this.f3336c;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                Object[] objArr3 = this.f3336c;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                int i9 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.f3335b;
                Object[] objArr4 = this.f3336c;
                m4285a(i9);
                if (i3 != this.f3337d) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f3335b, 0, i);
                    System.arraycopy(objArr4, 0, this.f3336c, 0, i2);
                }
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    System.arraycopy(iArr3, i10, this.f3335b, i, i11);
                    System.arraycopy(objArr4, i10 << 1, this.f3336c, i2, i11 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 != this.f3337d) {
            throw new ConcurrentModificationException();
        }
        this.f3337d = i4;
        return v;
    }

    /* JADX INFO: renamed from: l */
    public V m4296l(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f3336c;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    /* JADX INFO: renamed from: m */
    public V m4297m(int i) {
        return (V) this.f3336c[(i << 1) + 1];
    }

    public V put(K k, V v) {
        int i;
        int iM4289e;
        int i2 = this.f3337d;
        if (k == null) {
            iM4289e = m4291g();
            i = 0;
        } else {
            int iHashCode = k.hashCode();
            i = iHashCode;
            iM4289e = m4289e(k, iHashCode);
        }
        if (iM4289e >= 0) {
            int i3 = (iM4289e << 1) + 1;
            Object[] objArr = this.f3336c;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = iM4289e ^ (-1);
        if (i2 >= this.f3335b.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f3335b;
            Object[] objArr2 = this.f3336c;
            m4285a(i5);
            if (i2 != this.f3337d) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f3335b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f3336c, 0, objArr2.length);
            }
            m4287d(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.f3335b;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f3336c;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f3337d - i4) << 1);
        }
        int i7 = this.f3337d;
        if (i2 == i7) {
            int[] iArr4 = this.f3335b;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f3336c;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f3337d = i7 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k, V v) {
        V v2 = get(k);
        return v2 == null ? put(k, v) : v2;
    }

    public V remove(Object obj) {
        int iM4290f = m4290f(obj);
        if (iM4290f >= 0) {
            return m4295k(iM4290f);
        }
        return null;
    }

    public V replace(K k, V v) {
        int iM4290f = m4290f(k);
        if (iM4290f >= 0) {
            return m4296l(iM4290f, v);
        }
        return null;
    }

    public int size() {
        return this.f3337d;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3337d * 28);
        sb.append('{');
        for (int i = 0; i < this.f3337d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K kM4293i = m4293i(i);
            if (kM4293i != this) {
                sb.append(kM4293i);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vM4297m = m4297m(i);
            if (vM4297m != this) {
                sb.append(vM4297m);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int iM4290f = m4290f(obj);
        if (iM4290f < 0) {
            return false;
        }
        V vM4297m = m4297m(iM4290f);
        if (obj2 != vM4297m && (obj2 == null || !obj2.equals(vM4297m))) {
            return false;
        }
        m4295k(iM4290f);
        return true;
    }

    public boolean replace(K k, V v, V v2) {
        int iM4290f = m4290f(k);
        if (iM4290f < 0) {
            return false;
        }
        V vM4297m = m4297m(iM4290f);
        if (vM4297m != v && (v == null || !v.equals(vM4297m))) {
            return false;
        }
        m4296l(iM4290f, v2);
        return true;
    }

    public C0540g(int i) {
        if (i == 0) {
            this.f3335b = C0536c.f3300a;
            this.f3336c = C0536c.f3302c;
        } else {
            m4285a(i);
        }
        this.f3337d = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C0540g(C0540g<K, V> c0540g) {
        this();
        if (c0540g != 0) {
            m4294j(c0540g);
        }
    }
}
