package d.c.a.a.x;

import android.graphics.Typeface;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a extends f {
    private final Typeface a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final InterfaceC0124a f2337b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f2338c;

    /* JADX INFO: renamed from: d.c.a.a.x.a$a, reason: collision with other inner class name */
    public interface InterfaceC0124a {
        void a(Typeface typeface);
    }

    public a(InterfaceC0124a interfaceC0124a, Typeface typeface) {
        this.a = typeface;
        this.f2337b = interfaceC0124a;
    }

    private void d(Typeface typeface) {
        if (this.f2338c) {
            return;
        }
        this.f2337b.a(typeface);
    }

    @Override // d.c.a.a.x.f
    public void a(int i) {
        d(this.a);
    }

    @Override // d.c.a.a.x.f
    public void b(Typeface typeface, boolean z) {
        d(typeface);
    }

    public void c() {
        this.f2338c = true;
    }
}
