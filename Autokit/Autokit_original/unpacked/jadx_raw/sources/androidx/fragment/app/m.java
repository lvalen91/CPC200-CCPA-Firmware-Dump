package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.n;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class m {
    private final CopyOnWriteArrayList<a> a = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n f735b;

    private static final class a {
        final n.l a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final boolean f736b;
    }

    m(n nVar) {
        this.f735b = nVar;
    }

    void a(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().a(fragment, bundle, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.a(this.f735b, fragment, bundle);
            }
        }
    }

    void b(Fragment fragment, boolean z) {
        Context contextF = this.f735b.s0().f();
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().b(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.b(this.f735b, fragment, contextF);
            }
        }
    }

    void c(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().c(fragment, bundle, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.c(this.f735b, fragment, bundle);
            }
        }
    }

    void d(Fragment fragment, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().d(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.d(this.f735b, fragment);
            }
        }
    }

    void e(Fragment fragment, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().e(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.e(this.f735b, fragment);
            }
        }
    }

    void f(Fragment fragment, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().f(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.f(this.f735b, fragment);
            }
        }
    }

    void g(Fragment fragment, boolean z) {
        Context contextF = this.f735b.s0().f();
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().g(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.g(this.f735b, fragment, contextF);
            }
        }
    }

    void h(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().h(fragment, bundle, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.h(this.f735b, fragment, bundle);
            }
        }
    }

    void i(Fragment fragment, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().i(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.i(this.f735b, fragment);
            }
        }
    }

    void j(Fragment fragment, Bundle bundle, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().j(fragment, bundle, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.j(this.f735b, fragment, bundle);
            }
        }
    }

    void k(Fragment fragment, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().k(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.k(this.f735b, fragment);
            }
        }
    }

    void l(Fragment fragment, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().l(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.l(this.f735b, fragment);
            }
        }
    }

    void m(Fragment fragment, View view, Bundle bundle, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().m(fragment, view, bundle, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.m(this.f735b, fragment, view, bundle);
            }
        }
    }

    void n(Fragment fragment, boolean z) {
        Fragment fragmentV0 = this.f735b.v0();
        if (fragmentV0 != null) {
            fragmentV0.X().u0().n(fragment, true);
        }
        for (a aVar : this.a) {
            if (!z || aVar.f736b) {
                aVar.a.n(this.f735b, fragment);
            }
        }
    }
}
