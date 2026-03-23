package p016c.p032d;

/* JADX INFO: renamed from: c.d.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0541h<E> implements Cloneable {

    /* JADX INFO: renamed from: f */
    private static final Object f3338f = new Object();

    /* JADX INFO: renamed from: b */
    private boolean f3339b;

    /* JADX INFO: renamed from: c */
    private int[] f3340c;

    /* JADX INFO: renamed from: d */
    private Object[] f3341d;

    /* JADX INFO: renamed from: e */
    private int f3342e;

    public C0541h() {
        this(10);
    }

    /* JADX INFO: renamed from: d */
    private void m4298d() {
        int i = this.f3342e;
        int[] iArr = this.f3340c;
        Object[] objArr = this.f3341d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f3338f) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f3339b = false;
        this.f3342e = i2;
    }

    /* JADX INFO: renamed from: a */
    public void m4299a(int i, E e) {
        int i2 = this.f3342e;
        if (i2 != 0 && i <= this.f3340c[i2 - 1]) {
            m4306i(i, e);
            return;
        }
        if (this.f3339b && this.f3342e >= this.f3340c.length) {
            m4298d();
        }
        int i3 = this.f3342e;
        if (i3 >= this.f3340c.length) {
            int iM4252e = C0536c.m4252e(i3 + 1);
            int[] iArr = new int[iM4252e];
            Object[] objArr = new Object[iM4252e];
            int[] iArr2 = this.f3340c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f3341d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f3340c = iArr;
            this.f3341d = objArr;
        }
        this.f3340c[i3] = i;
        this.f3341d[i3] = e;
        this.f3342e = i3 + 1;
    }

    /* JADX INFO: renamed from: b */
    public void m4300b() {
        int i = this.f3342e;
        Object[] objArr = this.f3341d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.f3342e = 0;
        this.f3339b = false;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public C0541h<E> clone() {
        try {
            C0541h<E> c0541h = (C0541h) super.clone();
            c0541h.f3340c = (int[]) this.f3340c.clone();
            c0541h.f3341d = (Object[]) this.f3341d.clone();
            return c0541h;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    /* JADX INFO: renamed from: e */
    public E m4302e(int i) {
        return m4303f(i, null);
    }

    /* JADX INFO: renamed from: f */
    public E m4303f(int i, E e) {
        int iM4248a = C0536c.m4248a(this.f3340c, this.f3342e, i);
        if (iM4248a >= 0) {
            Object[] objArr = this.f3341d;
            if (objArr[iM4248a] != f3338f) {
                return (E) objArr[iM4248a];
            }
        }
        return e;
    }

    /* JADX INFO: renamed from: g */
    public int m4304g(E e) {
        if (this.f3339b) {
            m4298d();
        }
        for (int i = 0; i < this.f3342e; i++) {
            if (this.f3341d[i] == e) {
                return i;
            }
        }
        return -1;
    }

    /* JADX INFO: renamed from: h */
    public int m4305h(int i) {
        if (this.f3339b) {
            m4298d();
        }
        return this.f3340c[i];
    }

    /* JADX INFO: renamed from: i */
    public void m4306i(int i, E e) {
        int iM4248a = C0536c.m4248a(this.f3340c, this.f3342e, i);
        if (iM4248a >= 0) {
            this.f3341d[iM4248a] = e;
            return;
        }
        int iM4248a2 = iM4248a ^ (-1);
        if (iM4248a2 < this.f3342e) {
            Object[] objArr = this.f3341d;
            if (objArr[iM4248a2] == f3338f) {
                this.f3340c[iM4248a2] = i;
                objArr[iM4248a2] = e;
                return;
            }
        }
        if (this.f3339b && this.f3342e >= this.f3340c.length) {
            m4298d();
            iM4248a2 = C0536c.m4248a(this.f3340c, this.f3342e, i) ^ (-1);
        }
        int i2 = this.f3342e;
        if (i2 >= this.f3340c.length) {
            int iM4252e = C0536c.m4252e(i2 + 1);
            int[] iArr = new int[iM4252e];
            Object[] objArr2 = new Object[iM4252e];
            int[] iArr2 = this.f3340c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f3341d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f3340c = iArr;
            this.f3341d = objArr2;
        }
        int i3 = this.f3342e;
        if (i3 - iM4248a2 != 0) {
            int[] iArr3 = this.f3340c;
            int i4 = iM4248a2 + 1;
            System.arraycopy(iArr3, iM4248a2, iArr3, i4, i3 - iM4248a2);
            Object[] objArr4 = this.f3341d;
            System.arraycopy(objArr4, iM4248a2, objArr4, i4, this.f3342e - iM4248a2);
        }
        this.f3340c[iM4248a2] = i;
        this.f3341d[iM4248a2] = e;
        this.f3342e++;
    }

    /* JADX INFO: renamed from: j */
    public int m4307j() {
        if (this.f3339b) {
            m4298d();
        }
        return this.f3342e;
    }

    /* JADX INFO: renamed from: k */
    public E m4308k(int i) {
        if (this.f3339b) {
            m4298d();
        }
        return (E) this.f3341d[i];
    }

    public String toString() {
        if (m4307j() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f3342e * 28);
        sb.append('{');
        for (int i = 0; i < this.f3342e; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(m4305h(i));
            sb.append('=');
            E eM4308k = m4308k(i);
            if (eM4308k != this) {
                sb.append(eM4308k);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public C0541h(int i) {
        this.f3339b = false;
        if (i == 0) {
            this.f3340c = C0536c.f3300a;
            this.f3341d = C0536c.f3302c;
        } else {
            int iM4252e = C0536c.m4252e(i);
            this.f3340c = new int[iM4252e];
            this.f3341d = new Object[iM4252e];
        }
    }
}
