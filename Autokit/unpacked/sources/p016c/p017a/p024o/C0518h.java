package p016c.p017a.p024o;

import android.view.View;
import android.view.animation.Interpolator;
import androidx.core.view.C0261b0;
import androidx.core.view.C0296z;
import androidx.core.view.InterfaceC0259a0;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: renamed from: c.a.o.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0518h {

    /* JADX INFO: renamed from: c */
    private Interpolator f3223c;

    /* JADX INFO: renamed from: d */
    InterfaceC0259a0 f3224d;

    /* JADX INFO: renamed from: e */
    private boolean f3225e;

    /* JADX INFO: renamed from: b */
    private long f3222b = -1;

    /* JADX INFO: renamed from: f */
    private final C0261b0 f3226f = new a();

    /* JADX INFO: renamed from: a */
    final ArrayList<C0296z> f3221a = new ArrayList<>();

    /* JADX INFO: renamed from: c.a.o.h$a */
    class a extends C0261b0 {

        /* JADX INFO: renamed from: a */
        private boolean f3227a = false;

        /* JADX INFO: renamed from: b */
        private int f3228b = 0;

        a() {
        }

        @Override // androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: a */
        public void mo530a(View view) {
            int i = this.f3228b + 1;
            this.f3228b = i;
            if (i == C0518h.this.f3221a.size()) {
                InterfaceC0259a0 interfaceC0259a0 = C0518h.this.f3224d;
                if (interfaceC0259a0 != null) {
                    interfaceC0259a0.mo530a(null);
                }
                m4157d();
            }
        }

        @Override // androidx.core.view.C0261b0, androidx.core.view.InterfaceC0259a0
        /* JADX INFO: renamed from: b */
        public void mo531b(View view) {
            if (this.f3227a) {
                return;
            }
            this.f3227a = true;
            InterfaceC0259a0 interfaceC0259a0 = C0518h.this.f3224d;
            if (interfaceC0259a0 != null) {
                interfaceC0259a0.mo531b(null);
            }
        }

        /* JADX INFO: renamed from: d */
        void m4157d() {
            this.f3228b = 0;
            this.f3227a = false;
            C0518h.this.m4150b();
        }
    }

    /* JADX INFO: renamed from: a */
    public void m4149a() {
        if (this.f3225e) {
            Iterator<C0296z> it = this.f3221a.iterator();
            while (it.hasNext()) {
                it.next().m2180b();
            }
            this.f3225e = false;
        }
    }

    /* JADX INFO: renamed from: b */
    void m4150b() {
        this.f3225e = false;
    }

    /* JADX INFO: renamed from: c */
    public C0518h m4151c(C0296z c0296z) {
        if (!this.f3225e) {
            this.f3221a.add(c0296z);
        }
        return this;
    }

    /* JADX INFO: renamed from: d */
    public C0518h m4152d(C0296z c0296z, C0296z c0296z2) {
        this.f3221a.add(c0296z);
        c0296z2.m2185h(c0296z.m2181c());
        this.f3221a.add(c0296z2);
        return this;
    }

    /* JADX INFO: renamed from: e */
    public C0518h m4153e(long j) {
        if (!this.f3225e) {
            this.f3222b = j;
        }
        return this;
    }

    /* JADX INFO: renamed from: f */
    public C0518h m4154f(Interpolator interpolator) {
        if (!this.f3225e) {
            this.f3223c = interpolator;
        }
        return this;
    }

    /* JADX INFO: renamed from: g */
    public C0518h m4155g(InterfaceC0259a0 interfaceC0259a0) {
        if (!this.f3225e) {
            this.f3224d = interfaceC0259a0;
        }
        return this;
    }

    /* JADX INFO: renamed from: h */
    public void m4156h() {
        if (this.f3225e) {
            return;
        }
        for (C0296z c0296z : this.f3221a) {
            long j = this.f3222b;
            if (j >= 0) {
                c0296z.m2182d(j);
            }
            Interpolator interpolator = this.f3223c;
            if (interpolator != null) {
                c0296z.m2183e(interpolator);
            }
            if (this.f3224d != null) {
                c0296z.m2184f(this.f3226f);
            }
            c0296z.m2187j();
        }
        this.f3225e = true;
    }
}
