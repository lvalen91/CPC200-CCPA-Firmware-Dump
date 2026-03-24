package c.g.h;

import android.graphics.Typeface;
import android.os.Handler;
import c.g.h.e;
import c.g.h.f;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class a {
    private final f.c a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f1184b;

    /* JADX INFO: renamed from: c.g.h.a$a, reason: collision with other inner class name */
    class RunnableC0050a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f.c f1185b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Typeface f1186c;

        RunnableC0050a(a aVar, f.c cVar, Typeface typeface) {
            this.f1185b = cVar;
            this.f1186c = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1185b.b(this.f1186c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ f.c f1187b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f1188c;

        b(a aVar, f.c cVar, int i) {
            this.f1187b = cVar;
            this.f1188c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1187b.a(this.f1188c);
        }
    }

    a(f.c cVar, Handler handler) {
        this.a = cVar;
        this.f1184b = handler;
    }

    private void a(int i) {
        this.f1184b.post(new b(this, this.a, i));
    }

    private void c(Typeface typeface) {
        this.f1184b.post(new RunnableC0050a(this, this.a, typeface));
    }

    void b(e.C0051e c0051e) {
        if (c0051e.a()) {
            c(c0051e.a);
        } else {
            a(c0051e.f1201b);
        }
    }
}
