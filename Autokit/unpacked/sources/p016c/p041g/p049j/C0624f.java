package p016c.p041g.p049j;

/* JADX INFO: renamed from: c.g.j.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0624f<T> implements InterfaceC0623e<T> {

    /* JADX INFO: renamed from: a */
    private final Object[] f3814a;

    /* JADX INFO: renamed from: b */
    private int f3815b;

    public C0624f(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f3814a = new Object[i];
    }

    /* JADX INFO: renamed from: c */
    private boolean m4850c(T t) {
        for (int i = 0; i < this.f3815b; i++) {
            if (this.f3814a[i] == t) {
                return true;
            }
        }
        return false;
    }

    @Override // p016c.p041g.p049j.InterfaceC0623e
    /* JADX INFO: renamed from: a */
    public boolean mo4848a(T t) {
        if (m4850c(t)) {
            throw new IllegalStateException("Already in the pool!");
        }
        int i = this.f3815b;
        Object[] objArr = this.f3814a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.f3815b = i + 1;
        return true;
    }

    @Override // p016c.p041g.p049j.InterfaceC0623e
    /* JADX INFO: renamed from: b */
    public T mo4849b() {
        int i = this.f3815b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f3814a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f3815b = i - 1;
        return t;
    }
}
