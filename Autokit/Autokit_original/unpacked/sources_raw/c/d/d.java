package c.d;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d<E> implements Cloneable {
    private static final Object f = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1077b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long[] f1078c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f1079d;
    private int e;

    public d() {
        this(10);
    }

    private void d() {
        int i = this.e;
        long[] jArr = this.f1078c;
        Object[] objArr = this.f1079d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1077b = false;
        this.e = i2;
    }

    public void a(long j, E e) {
        int i = this.e;
        if (i != 0 && j <= this.f1078c[i - 1]) {
            i(j, e);
            return;
        }
        if (this.f1077b && this.e >= this.f1078c.length) {
            d();
        }
        int i2 = this.e;
        if (i2 >= this.f1078c.length) {
            int iF = c.f(i2 + 1);
            long[] jArr = new long[iF];
            Object[] objArr = new Object[iF];
            long[] jArr2 = this.f1078c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f1079d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1078c = jArr;
            this.f1079d = objArr;
        }
        this.f1078c[i2] = j;
        this.f1079d[i2] = e;
        this.e = i2 + 1;
    }

    public void b() {
        int i = this.e;
        Object[] objArr = this.f1079d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f1077b = false;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f1078c = (long[]) this.f1078c.clone();
            dVar.f1079d = (Object[]) this.f1079d.clone();
            return dVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public E e(long j) {
        return f(j, null);
    }

    public E f(long j, E e) {
        int iB = c.b(this.f1078c, this.e, j);
        if (iB >= 0) {
            Object[] objArr = this.f1079d;
            if (objArr[iB] != f) {
                return (E) objArr[iB];
            }
        }
        return e;
    }

    public int g(long j) {
        if (this.f1077b) {
            d();
        }
        return c.b(this.f1078c, this.e, j);
    }

    public long h(int i) {
        if (this.f1077b) {
            d();
        }
        return this.f1078c[i];
    }

    public void i(long j, E e) {
        int iB = c.b(this.f1078c, this.e, j);
        if (iB >= 0) {
            this.f1079d[iB] = e;
            return;
        }
        int iB2 = iB ^ (-1);
        if (iB2 < this.e) {
            Object[] objArr = this.f1079d;
            if (objArr[iB2] == f) {
                this.f1078c[iB2] = j;
                objArr[iB2] = e;
                return;
            }
        }
        if (this.f1077b && this.e >= this.f1078c.length) {
            d();
            iB2 = c.b(this.f1078c, this.e, j) ^ (-1);
        }
        int i = this.e;
        if (i >= this.f1078c.length) {
            int iF = c.f(i + 1);
            long[] jArr = new long[iF];
            Object[] objArr2 = new Object[iF];
            long[] jArr2 = this.f1078c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f1079d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1078c = jArr;
            this.f1079d = objArr2;
        }
        int i2 = this.e;
        if (i2 - iB2 != 0) {
            long[] jArr3 = this.f1078c;
            int i3 = iB2 + 1;
            System.arraycopy(jArr3, iB2, jArr3, i3, i2 - iB2);
            Object[] objArr4 = this.f1079d;
            System.arraycopy(objArr4, iB2, objArr4, i3, this.e - iB2);
        }
        this.f1078c[iB2] = j;
        this.f1079d[iB2] = e;
        this.e++;
    }

    public void j(long j) {
        int iB = c.b(this.f1078c, this.e, j);
        if (iB >= 0) {
            Object[] objArr = this.f1079d;
            Object obj = objArr[iB];
            Object obj2 = f;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f1077b = true;
            }
        }
    }

    public void k(int i) {
        Object[] objArr = this.f1079d;
        Object obj = objArr[i];
        Object obj2 = f;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f1077b = true;
        }
    }

    public int l() {
        if (this.f1077b) {
            d();
        }
        return this.e;
    }

    public E m(int i) {
        if (this.f1077b) {
            d();
        }
        return (E) this.f1079d[i];
    }

    public String toString() {
        if (l() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.e * 28);
        sb.append('{');
        for (int i = 0; i < this.e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(h(i));
            sb.append('=');
            E eM = m(i);
            if (eM != this) {
                sb.append(eM);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public d(int i) {
        this.f1077b = false;
        if (i == 0) {
            this.f1078c = c.f1075b;
            this.f1079d = c.f1076c;
        } else {
            int iF = c.f(i);
            this.f1078c = new long[iF];
            this.f1079d = new Object[iF];
        }
    }
}
