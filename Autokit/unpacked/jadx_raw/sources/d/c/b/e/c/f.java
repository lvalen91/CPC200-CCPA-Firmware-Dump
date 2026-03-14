package d.c.b.e.c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class f {
    private d.c.b.e.b.b a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private d.c.b.e.b.a f2388b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d.c.b.e.b.c f2389c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2390d = -1;
    private b e;

    public static boolean b(int i) {
        return i >= 0 && i < 8;
    }

    public b a() {
        return this.e;
    }

    public void c(d.c.b.e.b.a aVar) {
        this.f2388b = aVar;
    }

    public void d(int i) {
        this.f2390d = i;
    }

    public void e(b bVar) {
        this.e = bVar;
    }

    public void f(d.c.b.e.b.b bVar) {
        this.a = bVar;
    }

    public void g(d.c.b.e.b.c cVar) {
        this.f2389c = cVar;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(200);
        sb.append("<<\n");
        sb.append(" mode: ");
        sb.append(this.a);
        sb.append("\n ecLevel: ");
        sb.append(this.f2388b);
        sb.append("\n version: ");
        sb.append(this.f2389c);
        sb.append("\n maskPattern: ");
        sb.append(this.f2390d);
        if (this.e == null) {
            sb.append("\n matrix: null\n");
        } else {
            sb.append("\n matrix:\n");
            sb.append(this.e);
        }
        sb.append(">>\n");
        return sb.toString();
    }
}
