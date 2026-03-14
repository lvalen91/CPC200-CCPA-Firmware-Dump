package p016c.p025b.p026a.p027a;

/* JADX INFO: renamed from: c.b.a.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0520a extends AbstractC0522c {

    /* JADX INFO: renamed from: c */
    private static volatile C0520a f3231c;

    /* JADX INFO: renamed from: a */
    private AbstractC0522c f3232a;

    /* JADX INFO: renamed from: b */
    private AbstractC0522c f3233b;

    private C0520a() {
        C0521b c0521b = new C0521b();
        this.f3233b = c0521b;
        this.f3232a = c0521b;
    }

    /* JADX INFO: renamed from: b */
    public static C0520a m4159b() {
        if (f3231c != null) {
            return f3231c;
        }
        synchronized (C0520a.class) {
            if (f3231c == null) {
                f3231c = new C0520a();
            }
        }
        return f3231c;
    }

    @Override // p016c.p025b.p026a.p027a.AbstractC0522c
    /* JADX INFO: renamed from: a */
    public boolean mo4160a() {
        return this.f3232a.mo4160a();
    }
}
