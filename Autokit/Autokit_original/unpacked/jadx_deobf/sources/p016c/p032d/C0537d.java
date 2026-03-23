package p016c.p032d;

/* JADX INFO: renamed from: c.d.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0537d<E> implements Cloneable {

    /* JADX INFO: renamed from: f */
    private static final Object f3303f = new Object();

    /* JADX INFO: renamed from: b */
    private boolean f3304b;

    /* JADX INFO: renamed from: c */
    private long[] f3305c;

    /* JADX INFO: renamed from: d */
    private Object[] f3306d;

    /* JADX INFO: renamed from: e */
    private int f3307e;

    public C0537d() {
        this(10);
    }

    /* JADX INFO: renamed from: d */
    private void m4254d() {
        int i = this.f3307e;
        long[] jArr = this.f3305c;
        Object[] objArr = this.f3306d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f3303f) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f3304b = false;
        this.f3307e = i2;
    }

    /* JADX INFO: renamed from: a */
    public void m4255a(long j, E e) {
        int i = this.f3307e;
        if (i != 0 && j <= this.f3305c[i - 1]) {
            m4262i(j, e);
            return;
        }
        if (this.f3304b && this.f3307e >= this.f3305c.length) {
            m4254d();
        }
        int i2 = this.f3307e;
        if (i2 >= this.f3305c.length) {
            int iM4253f = C0536c.m4253f(i2 + 1);
            long[] jArr = new long[iM4253f];
            Object[] objArr = new Object[iM4253f];
            long[] jArr2 = this.f3305c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f3306d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f3305c = jArr;
            this.f3306d = objArr;
        }
        this.f3305c[i2] = j;
        this.f3306d[i2] = e;
        this.f3307e = i2 + 1;
    }

    /* JADX INFO: renamed from: b */
    public void m4256b() {
        int i = this.f3307e;
        Object[] objArr = this.f3306d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f3307e = 0;
        this.f3304b = false;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public C0537d<E> clone() {
        try {
            C0537d<E> c0537d = (C0537d) super.clone();
            c0537d.f3305c = (long[]) this.f3305c.clone();
            c0537d.f3306d = (Object[]) this.f3306d.clone();
            return c0537d;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX INFO: renamed from: e */
    public E m4258e(long j) {
        return m4259f(j, null);
    }

    /* JADX INFO: renamed from: f */
    public E m4259f(long j, E e) {
        int iM4249b = C0536c.m4249b(this.f3305c, this.f3307e, j);
        if (iM4249b >= 0) {
            Object[] objArr = this.f3306d;
            if (objArr[iM4249b] != f3303f) {
                return (E) objArr[iM4249b];
            }
        }
        return e;
    }

    /* JADX INFO: renamed from: g */
    public int m4260g(long j) {
        if (this.f3304b) {
            m4254d();
        }
        return C0536c.m4249b(this.f3305c, this.f3307e, j);
    }

    /* JADX INFO: renamed from: h */
    public long m4261h(int i) {
        if (this.f3304b) {
            m4254d();
        }
        return this.f3305c[i];
    }

    /* JADX INFO: renamed from: i */
    public void m4262i(long j, E e) {
        int iM4249b = C0536c.m4249b(this.f3305c, this.f3307e, j);
        if (iM4249b >= 0) {
            this.f3306d[iM4249b] = e;
            return;
        }
        int iM4249b2 = iM4249b ^ (-1);
        if (iM4249b2 < this.f3307e) {
            Object[] objArr = this.f3306d;
            if (objArr[iM4249b2] == f3303f) {
                this.f3305c[iM4249b2] = j;
                objArr[iM4249b2] = e;
                return;
            }
        }
        if (this.f3304b && this.f3307e >= this.f3305c.length) {
            m4254d();
            iM4249b2 = C0536c.m4249b(this.f3305c, this.f3307e, j) ^ (-1);
        }
        int i = this.f3307e;
        if (i >= this.f3305c.length) {
            int iM4253f = C0536c.m4253f(i + 1);
            long[] jArr = new long[iM4253f];
            Object[] objArr2 = new Object[iM4253f];
            long[] jArr2 = this.f3305c;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f3306d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f3305c = jArr;
            this.f3306d = objArr2;
        }
        int i2 = this.f3307e;
        if (i2 - iM4249b2 != 0) {
            long[] jArr3 = this.f3305c;
            int i3 = iM4249b2 + 1;
            System.arraycopy(jArr3, iM4249b2, jArr3, i3, i2 - iM4249b2);
            Object[] objArr4 = this.f3306d;
            System.arraycopy(objArr4, iM4249b2, objArr4, i3, this.f3307e - iM4249b2);
        }
        this.f3305c[iM4249b2] = j;
        this.f3306d[iM4249b2] = e;
        this.f3307e++;
    }

    /* JADX INFO: renamed from: j */
    public void m4263j(long j) {
        int iM4249b = C0536c.m4249b(this.f3305c, this.f3307e, j);
        if (iM4249b >= 0) {
            Object[] objArr = this.f3306d;
            Object obj = objArr[iM4249b];
            Object obj2 = f3303f;
            if (obj != obj2) {
                objArr[iM4249b] = obj2;
                this.f3304b = true;
            }
        }
    }

    /* JADX INFO: renamed from: k */
    public void m4264k(int i) {
        Object[] objArr = this.f3306d;
        Object obj = objArr[i];
        Object obj2 = f3303f;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f3304b = true;
        }
    }

    /* JADX INFO: renamed from: l */
    public int m4265l() {
        if (this.f3304b) {
            m4254d();
        }
        return this.f3307e;
    }

    /* JADX INFO: renamed from: m */
    public E m4266m(int i) {
        if (this.f3304b) {
            m4254d();
        }
        return (E) this.f3306d[i];
    }

    public String toString() {
        if (m4265l() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3307e * 28);
        sb.append('{');
        for (int i = 0; i < this.f3307e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m4261h(i));
            sb.append('=');
            E eM4266m = m4266m(i);
            if (eM4266m != this) {
                sb.append(eM4266m);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public C0537d(int i) {
        this.f3304b = false;
        if (i == 0) {
            this.f3305c = C0536c.f3301b;
            this.f3306d = C0536c.f3302c;
        } else {
            int iM4253f = C0536c.m4253f(i);
            this.f3305c = new long[iM4253f];
            this.f3306d = new Object[iM4253f];
        }
    }
}
