package c.b.a.a;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a extends c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile a f1047c;
    private c a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f1048b;

    private a() {
        b bVar = new b();
        this.f1048b = bVar;
        this.a = bVar;
    }

    public static a b() {
        if (f1047c != null) {
            return f1047c;
        }
        synchronized (a.class) {
            if (f1047c == null) {
                f1047c = new a();
            }
        }
        return f1047c;
    }

    @Override // c.b.a.a.c
    public boolean a() {
        return this.a.a();
    }
}
