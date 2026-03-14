package p016c.p041g.p049j;

/* JADX INFO: renamed from: c.g.j.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0625g<T> extends C0624f<T> {

    /* JADX INFO: renamed from: c */
    private final Object f3816c;

    public C0625g(int i) {
        super(i);
        this.f3816c = new Object();
    }

    @Override // p016c.p041g.p049j.C0624f, p016c.p041g.p049j.InterfaceC0623e
    /* JADX INFO: renamed from: a */
    public boolean mo4848a(T t) {
        boolean zMo4848a;
        synchronized (this.f3816c) {
            zMo4848a = super.mo4848a(t);
        }
        return zMo4848a;
    }

    @Override // p016c.p041g.p049j.C0624f, p016c.p041g.p049j.InterfaceC0623e
    /* JADX INFO: renamed from: b */
    public T mo4849b() {
        T t;
        synchronized (this.f3816c) {
            t = (T) super.mo4849b();
        }
        return t;
    }
}
