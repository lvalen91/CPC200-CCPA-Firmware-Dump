package c.d;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class h<E> implements Cloneable {
    private static final Object f = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f1097b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int[] f1098c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object[] f1099d;
    private int e;

    public h() {
        this(10);
    }

    private void d() {
        int i = this.e;
        int[] iArr = this.f1098c;
        Object[] objArr = this.f1099d;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != f) {
                if (i3 != i2) {
                    iArr[i2] = iArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f1097b = false;
        this.e = i2;
    }

    public void a(int i, E e) {
        int i2 = this.e;
        if (i2 != 0 && i <= this.f1098c[i2 - 1]) {
            i(i, e);
            return;
        }
        if (this.f1097b && this.e >= this.f1098c.length) {
            d();
        }
        int i3 = this.e;
        if (i3 >= this.f1098c.length) {
            int iE = c.e(i3 + 1);
            int[] iArr = new int[iE];
            Object[] objArr = new Object[iE];
            int[] iArr2 = this.f1098c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f1099d;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f1098c = iArr;
            this.f1099d = objArr;
        }
        this.f1098c[i3] = i;
        this.f1099d[i3] = e;
        this.e = i3 + 1;
    }

    public void b() {
        int i = this.e;
        Object[] objArr = this.f1099d;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.e = 0;
        this.f1097b = false;
    }

    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.f1098c = (int[]) this.f1098c.clone();
            hVar.f1099d = (Object[]) this.f1099d.clone();
            return hVar;
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public E e(int i) {
        return f(i, null);
    }

    public E f(int i, E e) {
        int iA = c.a(this.f1098c, this.e, i);
        if (iA >= 0) {
            Object[] objArr = this.f1099d;
            if (objArr[iA] != f) {
                return (E) objArr[iA];
            }
        }
        return e;
    }

    public int g(E e) {
        if (this.f1097b) {
            d();
        }
        for (int i = 0; i < this.e; i++) {
            if (this.f1099d[i] == e) {
                return i;
            }
        }
        return -1;
    }

    public int h(int i) {
        if (this.f1097b) {
            d();
        }
        return this.f1098c[i];
    }

    public void i(int i, E e) {
        int iA = c.a(this.f1098c, this.e, i);
        if (iA >= 0) {
            this.f1099d[iA] = e;
            return;
        }
        int iA2 = iA ^ (-1);
        if (iA2 < this.e) {
            Object[] objArr = this.f1099d;
            if (objArr[iA2] == f) {
                this.f1098c[iA2] = i;
                objArr[iA2] = e;
                return;
            }
        }
        if (this.f1097b && this.e >= this.f1098c.length) {
            d();
            iA2 = c.a(this.f1098c, this.e, i) ^ (-1);
        }
        int i2 = this.e;
        if (i2 >= this.f1098c.length) {
            int iE = c.e(i2 + 1);
            int[] iArr = new int[iE];
            Object[] objArr2 = new Object[iE];
            int[] iArr2 = this.f1098c;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f1099d;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f1098c = iArr;
            this.f1099d = objArr2;
        }
        int i3 = this.e;
        if (i3 - iA2 != 0) {
            int[] iArr3 = this.f1098c;
            int i4 = iA2 + 1;
            System.arraycopy(iArr3, iA2, iArr3, i4, i3 - iA2);
            Object[] objArr4 = this.f1099d;
            System.arraycopy(objArr4, iA2, objArr4, i4, this.e - iA2);
        }
        this.f1098c[iA2] = i;
        this.f1099d[iA2] = e;
        this.e++;
    }

    public int j() {
        if (this.f1097b) {
            d();
        }
        return this.e;
    }

    public E k(int i) {
        if (this.f1097b) {
            d();
        }
        return (E) this.f1099d[i];
    }

    public String toString() {
        if (j() <= 0) {
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
            E eK = k(i);
            if (eK != this) {
                sb.append(eK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public h(int i) {
        this.f1097b = false;
        if (i == 0) {
            this.f1098c = c.a;
            this.f1099d = c.f1076c;
        } else {
            int iE = c.e(i);
            this.f1098c = new int[iE];
            this.f1099d = new Object[iE];
        }
    }
}
