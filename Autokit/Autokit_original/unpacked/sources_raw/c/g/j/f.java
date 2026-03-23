package c.g.j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f<T> implements e<T> {
    private final Object[] a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1238b;

    public f(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.a = new Object[i];
    }

    private boolean c(T t) {
        for (int i = 0; i < this.f1238b; i++) {
            if (this.a[i] == t) {
                return true;
            }
        }
        return false;
    }

    @Override // c.g.j.e
    public boolean a(T t) {
        if (c(t)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i = this.f1238b;
        Object[] objArr = this.a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.f1238b = i + 1;
        return true;
    }

    @Override // c.g.j.e
    public T b() {
        int i = this.f1238b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f1238b = i - 1;
        return t;
    }
}
