package p016c.p041g.p047h;

import android.graphics.Typeface;
import android.os.Handler;
import p016c.p041g.p047h.C0610e;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.h.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0606a {

    /* JADX INFO: renamed from: a */
    private final C0611f.c f3727a;

    /* JADX INFO: renamed from: b */
    private final Handler f3728b;

    /* JADX INFO: renamed from: c.g.h.a$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ C0611f.c f3729b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Typeface f3730c;

        a(C0606a c0606a, C0611f.c cVar, Typeface typeface) {
            this.f3729b = cVar;
            this.f3730c = typeface;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3729b.mo4701b(this.f3730c);
        }
    }

    /* JADX INFO: renamed from: c.g.h.a$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ C0611f.c f3731b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f3732c;

        b(C0606a c0606a, C0611f.c cVar, int i) {
            this.f3731b = cVar;
            this.f3732c = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3731b.mo4700a(this.f3732c);
        }
    }

    C0606a(C0611f.c cVar, Handler handler) {
        this.f3727a = cVar;
        this.f3728b = handler;
    }

    /* JADX INFO: renamed from: a */
    private void m4758a(int i) {
        this.f3728b.post(new b(this, this.f3727a, i));
    }

    /* JADX INFO: renamed from: c */
    private void m4759c(Typeface typeface) {
        this.f3728b.post(new a(this, this.f3727a, typeface));
    }

    /* JADX INFO: renamed from: b */
    void m4760b(C0610e.e eVar) {
        if (eVar.m4786a()) {
            m4759c(eVar.f3754a);
        } else {
            m4758a(eVar.f3755b);
        }
    }
}
