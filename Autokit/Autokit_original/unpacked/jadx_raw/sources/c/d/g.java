package c.d;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g<K, V> {
    static Object[] e;
    static int f;
    static Object[] g;
    static int h;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int[] f1094b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object[] f1095c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f1096d;

    public g() {
        this.f1094b = c.a;
        this.f1095c = c.f1076c;
        this.f1096d = 0;
    }

    private void a(int i) {
        if (i == 8) {
            synchronized (g.class) {
                if (g != null) {
                    Object[] objArr = g;
                    this.f1095c = objArr;
                    g = (Object[]) objArr[0];
                    this.f1094b = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    h--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (g.class) {
                if (e != null) {
                    Object[] objArr2 = e;
                    this.f1095c = objArr2;
                    e = (Object[]) objArr2[0];
                    this.f1094b = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f--;
                    return;
                }
            }
        }
        this.f1094b = new int[i];
        this.f1095c = new Object[i << 1];
    }

    private static int b(int[] iArr, int i, int i2) {
        try {
            return c.a(iArr, i, i2);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void d(int[] iArr, Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (g.class) {
                if (h < 10) {
                    objArr[0] = g;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    g = objArr;
                    h++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (g.class) {
                if (f < 10) {
                    objArr[0] = e;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    e = objArr;
                    f++;
                }
            }
        }
    }

    public void c(int i) {
        int i2 = this.f1096d;
        int[] iArr = this.f1094b;
        if (iArr.length < i) {
            Object[] objArr = this.f1095c;
            a(i);
            if (this.f1096d > 0) {
                System.arraycopy(iArr, 0, this.f1094b, 0, i2);
                System.arraycopy(objArr, 0, this.f1095c, 0, i2 << 1);
            }
            d(iArr, objArr, i2);
        }
        if (this.f1096d != i2) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i = this.f1096d;
        if (i > 0) {
            int[] iArr = this.f1094b;
            Object[] objArr = this.f1095c;
            this.f1094b = c.a;
            this.f1095c = c.f1076c;
            this.f1096d = 0;
            d(iArr, objArr, i);
        }
        if (this.f1096d > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return f(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return h(obj) >= 0;
    }

    int e(Object obj, int i) {
        int i2 = this.f1096d;
        if (i2 == 0) {
            return -1;
        }
        int iB = b(this.f1094b, i2, i);
        if (iB < 0 || obj.equals(this.f1095c[iB << 1])) {
            return iB;
        }
        int i3 = iB + 1;
        while (i3 < i2 && this.f1094b[i3] == i) {
            if (obj.equals(this.f1095c[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iB - 1; i4 >= 0 && this.f1094b[i4] == i; i4--) {
            if (obj.equals(this.f1095c[i4 << 1])) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i = 0; i < this.f1096d; i++) {
                try {
                    K kI = i(i);
                    V vM = m(i);
                    Object obj2 = gVar.get(kI);
                    if (vM == null) {
                        if (obj2 != null || !gVar.containsKey(kI)) {
                            return false;
                        }
                    } else if (!vM.equals(obj2)) {
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
            for (int i2 = 0; i2 < this.f1096d; i2++) {
                try {
                    K kI2 = i(i2);
                    V vM2 = m(i2);
                    Object obj3 = map.get(kI2);
                    if (vM2 == null) {
                        if (obj3 != null || !map.containsKey(kI2)) {
                            return false;
                        }
                    } else if (!vM2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int f(Object obj) {
        return obj == null ? g() : e(obj, obj.hashCode());
    }

    int g() {
        int i = this.f1096d;
        if (i == 0) {
            return -1;
        }
        int iB = b(this.f1094b, i, 0);
        if (iB < 0 || this.f1095c[iB << 1] == null) {
            return iB;
        }
        int i2 = iB + 1;
        while (i2 < i && this.f1094b[i2] == 0) {
            if (this.f1095c[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = iB - 1; i3 >= 0 && this.f1094b[i3] == 0; i3--) {
            if (this.f1095c[i3 << 1] == null) {
                return i3;
            }
        }
        return i2 ^ (-1);
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v) {
        int iF = f(obj);
        return iF >= 0 ? (V) this.f1095c[(iF << 1) + 1] : v;
    }

    int h(Object obj) {
        int i = this.f1096d * 2;
        Object[] objArr = this.f1095c;
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
        int[] iArr = this.f1094b;
        Object[] objArr = this.f1095c;
        int i = this.f1096d;
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

    public K i(int i) {
        return (K) this.f1095c[i << 1];
    }

    public boolean isEmpty() {
        return this.f1096d <= 0;
    }

    public void j(g<? extends K, ? extends V> gVar) {
        int i = gVar.f1096d;
        c(this.f1096d + i);
        if (this.f1096d != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(gVar.i(i2), gVar.m(i2));
            }
        } else if (i > 0) {
            System.arraycopy(gVar.f1094b, 0, this.f1094b, 0, i);
            System.arraycopy(gVar.f1095c, 0, this.f1095c, 0, i << 1);
            this.f1096d = i;
        }
    }

    public V k(int i) {
        Object[] objArr = this.f1095c;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f1096d;
        int i4 = 0;
        if (i3 <= 1) {
            d(this.f1094b, objArr, i3);
            this.f1094b = c.a;
            this.f1095c = c.f1076c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.f1094b;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int[] iArr2 = this.f1094b;
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    System.arraycopy(iArr2, i6, iArr2, i, i7);
                    Object[] objArr2 = this.f1095c;
                    System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                Object[] objArr3 = this.f1095c;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                int i9 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.f1094b;
                Object[] objArr4 = this.f1095c;
                a(i9);
                if (i3 != this.f1096d) {
                    throw new ConcurrentModificationException();
                }
                if (i > 0) {
                    System.arraycopy(iArr3, 0, this.f1094b, 0, i);
                    System.arraycopy(objArr4, 0, this.f1095c, 0, i2);
                }
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    System.arraycopy(iArr3, i10, this.f1094b, i, i11);
                    System.arraycopy(objArr4, i10 << 1, this.f1095c, i2, i11 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 != this.f1096d) {
            throw new ConcurrentModificationException();
        }
        this.f1096d = i4;
        return v;
    }

    public V l(int i, V v) {
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f1095c;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    public V m(int i) {
        return (V) this.f1095c[(i << 1) + 1];
    }

    public V put(K k, V v) {
        int i;
        int iE;
        int i2 = this.f1096d;
        if (k == null) {
            iE = g();
            i = 0;
        } else {
            int iHashCode = k.hashCode();
            i = iHashCode;
            iE = e(k, iHashCode);
        }
        if (iE >= 0) {
            int i3 = (iE << 1) + 1;
            Object[] objArr = this.f1095c;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = iE ^ (-1);
        if (i2 >= this.f1094b.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.f1094b;
            Object[] objArr2 = this.f1095c;
            a(i5);
            if (i2 != this.f1096d) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f1094b;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f1095c, 0, objArr2.length);
            }
            d(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.f1094b;
            int i6 = i4 + 1;
            System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            Object[] objArr3 = this.f1095c;
            System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f1096d - i4) << 1);
        }
        int i7 = this.f1096d;
        if (i2 == i7) {
            int[] iArr4 = this.f1094b;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                Object[] objArr4 = this.f1095c;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f1096d = i7 + 1;
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
        int iF = f(obj);
        if (iF >= 0) {
            return k(iF);
        }
        return null;
    }

    public V replace(K k, V v) {
        int iF = f(k);
        if (iF >= 0) {
            return l(iF, v);
        }
        return null;
    }

    public int size() {
        return this.f1096d;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f1096d * 28);
        sb.append('{');
        for (int i = 0; i < this.f1096d; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K kI = i(i);
            if (kI != this) {
                sb.append(kI);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vM = m(i);
            if (vM != this) {
                sb.append(vM);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int iF = f(obj);
        if (iF < 0) {
            return false;
        }
        V vM = m(iF);
        if (obj2 != vM && (obj2 == null || !obj2.equals(vM))) {
            return false;
        }
        k(iF);
        return true;
    }

    public boolean replace(K k, V v, V v2) {
        int iF = f(k);
        if (iF < 0) {
            return false;
        }
        V vM = m(iF);
        if (vM != v && (v == null || !v.equals(vM))) {
            return false;
        }
        l(iF, v2);
        return true;
    }

    public g(int i) {
        if (i == 0) {
            this.f1094b = c.a;
            this.f1095c = c.f1076c;
        } else {
            a(i);
        }
        this.f1096d = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(g<K, V> gVar) {
        this();
        if (gVar != 0) {
            j(gVar);
        }
    }
}
