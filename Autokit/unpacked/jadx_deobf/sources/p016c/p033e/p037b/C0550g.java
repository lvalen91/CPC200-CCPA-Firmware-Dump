package p016c.p033e.p037b;

/* JADX INFO: renamed from: c.e.b.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0550g<T> implements InterfaceC0549f<T> {

    /* JADX INFO: renamed from: a */
    private final Object[] f3419a;

    /* JADX INFO: renamed from: b */
    private int f3420b;

    C0550g(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f3419a = new Object[i];
    }

    @Override // p016c.p033e.p037b.InterfaceC0549f
    /* JADX INFO: renamed from: a */
    public boolean mo4381a(T t) {
        int i = this.f3420b;
        Object[] objArr = this.f3419a;
        if (i >= objArr.length) {
            return false;
        }
        objArr[i] = t;
        this.f3420b = i + 1;
        return true;
    }

    @Override // p016c.p033e.p037b.InterfaceC0549f
    /* JADX INFO: renamed from: b */
    public T mo4382b() {
        int i = this.f3420b;
        if (i <= 0) {
            return null;
        }
        int i2 = i - 1;
        Object[] objArr = this.f3419a;
        T t = (T) objArr[i2];
        objArr[i2] = null;
        this.f3420b = i - 1;
        return t;
    }

    @Override // p016c.p033e.p037b.InterfaceC0549f
    /* JADX INFO: renamed from: c */
    public void mo4383c(T[] tArr, int i) {
        if (i > tArr.length) {
            i = tArr.length;
        }
        for (int i2 = 0; i2 < i; i2++) {
            T t = tArr[i2];
            int i3 = this.f3420b;
            Object[] objArr = this.f3419a;
            if (i3 < objArr.length) {
                objArr[i3] = t;
                this.f3420b = i3 + 1;
            }
        }
    }
}
