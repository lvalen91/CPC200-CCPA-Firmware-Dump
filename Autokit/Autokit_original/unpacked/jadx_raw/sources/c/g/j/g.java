package c.g.j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g<T> extends f<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f1239c;

    public g(int i) {
        super(i);
        this.f1239c = new Object();
    }

    @Override // c.g.j.f, c.g.j.e
    public boolean a(T t) {
        boolean zA;
        synchronized (this.f1239c) {
            zA = super.a(t);
        }
        return zA;
    }

    @Override // c.g.j.f, c.g.j.e
    public T b() {
        T t;
        synchronized (this.f1239c) {
            t = (T) super.b();
        }
        return t;
    }
}
