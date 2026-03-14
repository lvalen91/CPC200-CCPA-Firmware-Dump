package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.AbstractC0366n;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: androidx.fragment.app.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0365m {

    /* JADX INFO: renamed from: a */
    private final CopyOnWriteArrayList<a> f2277a = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: b */
    private final AbstractC0366n f2278b;

    /* JADX INFO: renamed from: androidx.fragment.app.m$a */
    private static final class a {

        /* JADX INFO: renamed from: a */
        final AbstractC0366n.l f2279a;

        /* JADX INFO: renamed from: b */
        final boolean f2280b;
    }

    C0365m(AbstractC0366n abstractC0366n) {
        this.f2278b = abstractC0366n;
    }

    /* JADX INFO: renamed from: a */
    void m2663a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2663a(fragment, bundle, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2802a(this.f2278b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    void m2664b(Fragment fragment, boolean z) {
        Context contextM2659f = this.f2278b.m2783s0().m2659f();
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2664b(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2803b(this.f2278b, fragment, contextM2659f);
            }
        }
    }

    /* JADX INFO: renamed from: c */
    void m2665c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2665c(fragment, bundle, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2804c(this.f2278b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    void m2666d(Fragment fragment, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2666d(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2805d(this.f2278b, fragment);
            }
        }
    }

    /* JADX INFO: renamed from: e */
    void m2667e(Fragment fragment, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2667e(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2806e(this.f2278b, fragment);
            }
        }
    }

    /* JADX INFO: renamed from: f */
    void m2668f(Fragment fragment, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2668f(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2807f(this.f2278b, fragment);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    void m2669g(Fragment fragment, boolean z) {
        Context contextM2659f = this.f2278b.m2783s0().m2659f();
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2669g(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2808g(this.f2278b, fragment, contextM2659f);
            }
        }
    }

    /* JADX INFO: renamed from: h */
    void m2670h(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2670h(fragment, bundle, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2809h(this.f2278b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: renamed from: i */
    void m2671i(Fragment fragment, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2671i(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2810i(this.f2278b, fragment);
            }
        }
    }

    /* JADX INFO: renamed from: j */
    void m2672j(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2672j(fragment, bundle, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2811j(this.f2278b, fragment, bundle);
            }
        }
    }

    /* JADX INFO: renamed from: k */
    void m2673k(Fragment fragment, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2673k(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2812k(this.f2278b, fragment);
            }
        }
    }

    /* JADX INFO: renamed from: l */
    void m2674l(Fragment fragment, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2674l(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2813l(this.f2278b, fragment);
            }
        }
    }

    /* JADX INFO: renamed from: m */
    void m2675m(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2675m(fragment, view, bundle, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2814m(this.f2278b, fragment, view, bundle);
            }
        }
    }

    /* JADX INFO: renamed from: n */
    void m2676n(Fragment fragment, boolean z) {
        Fragment fragmentM2788v0 = this.f2278b.m2788v0();
        if (fragmentM2788v0 != null) {
            fragmentM2788v0.m2441X().m2786u0().m2676n(fragment, true);
        }
        for (a aVar : this.f2277a) {
            if (!z || aVar.f2280b) {
                aVar.f2279a.m2815n(this.f2278b, fragment);
            }
        }
    }
}
