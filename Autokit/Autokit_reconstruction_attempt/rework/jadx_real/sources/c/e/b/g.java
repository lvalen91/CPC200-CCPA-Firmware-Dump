package c.e.b;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class g<T> implements f<T> {
    private final Object[] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1115b;

    g(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.a = new Object[i];
    }

    @Override // c.e.b.f
    public boolean a(T t) {
        int i = this.f1115b;
        Object[] objArr = this.a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.f1115b = i + 1;
        return true;
    }

    @Override // c.e.b.f
    public T b() {
        int i = this.f1115b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f1115b = i - 1;
        return t;
    }

    @Override // c.e.b.f
    public void c(T[] tArr, int i) {
        if (i > tArr.length) {
            i = tArr.length;
        }
        for (int i2 = 0; i2 < i; i2++) {
            T t = tArr[i2];
            int i3 = this.f1115b;
            Object[] objArr = this.a;
            if (i3 < objArr.length) {
                objArr[i3] = t;
                this.f1115b = i3 + 1;
            }
        }
    }
}
