package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.FragmentC0405s;

/* JADX INFO: renamed from: androidx.lifecycle.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0404r implements InterfaceC0396j {

    /* JADX INFO: renamed from: j */
    private static final C0404r f2529j = new C0404r();

    /* JADX INFO: renamed from: f */
    private Handler f2534f;

    /* JADX INFO: renamed from: b */
    private int f2530b = 0;

    /* JADX INFO: renamed from: c */
    private int f2531c = 0;

    /* JADX INFO: renamed from: d */
    private boolean f2532d = true;

    /* JADX INFO: renamed from: e */
    private boolean f2533e = true;

    /* JADX INFO: renamed from: g */
    private final C0397k f2535g = new C0397k(this);

    /* JADX INFO: renamed from: h */
    private Runnable f2536h = new a();

    /* JADX INFO: renamed from: i */
    FragmentC0405s.a f2537i = new b();

    /* JADX INFO: renamed from: androidx.lifecycle.r$a */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C0404r.this.m3029f();
            C0404r.this.m3030g();
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.r$b */
    class b implements FragmentC0405s.a {
        b() {
        }

        @Override // androidx.lifecycle.FragmentC0405s.a
        /* JADX INFO: renamed from: a */
        public void mo3031a() {
        }

        @Override // androidx.lifecycle.FragmentC0405s.a
        /* JADX INFO: renamed from: b */
        public void mo3032b() {
            C0404r.this.m3025b();
        }

        @Override // androidx.lifecycle.FragmentC0405s.a
        /* JADX INFO: renamed from: c */
        public void mo3033c() {
            C0404r.this.m3026c();
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.r$c */
    class c extends C0388c {

        /* JADX INFO: renamed from: androidx.lifecycle.r$c$a */
        class a extends C0388c {
            a() {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                C0404r.this.m3025b();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                C0404r.this.m3026c();
            }
        }

        c() {
        }

        @Override // androidx.lifecycle.C0388c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 29) {
                FragmentC0405s.m3039f(activity).m3041h(C0404r.this.f2537i);
            }
        }

        @Override // androidx.lifecycle.C0388c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            C0404r.this.m3024a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // androidx.lifecycle.C0388c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            C0404r.this.m3027d();
        }
    }

    private C0404r() {
    }

    /* JADX INFO: renamed from: h */
    static void m3023h(Context context) {
        f2529j.m3028e(context);
    }

    /* JADX INFO: renamed from: a */
    void m3024a() {
        int i = this.f2531c - 1;
        this.f2531c = i;
        if (i == 0) {
            this.f2534f.postDelayed(this.f2536h, 700L);
        }
    }

    /* JADX INFO: renamed from: b */
    void m3025b() {
        int i = this.f2531c + 1;
        this.f2531c = i;
        if (i == 1) {
            if (!this.f2532d) {
                this.f2534f.removeCallbacks(this.f2536h);
            } else {
                this.f2535g.m3012h(AbstractC0392f.b.ON_RESUME);
                this.f2532d = false;
            }
        }
    }

    /* JADX INFO: renamed from: c */
    void m3026c() {
        int i = this.f2530b + 1;
        this.f2530b = i;
        if (i == 1 && this.f2533e) {
            this.f2535g.m3012h(AbstractC0392f.b.ON_START);
            this.f2533e = false;
        }
    }

    /* JADX INFO: renamed from: d */
    void m3027d() {
        this.f2530b--;
        m3030g();
    }

    /* JADX INFO: renamed from: e */
    void m3028e(Context context) {
        this.f2534f = new Handler();
        this.f2535g.m3012h(AbstractC0392f.b.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new c());
    }

    /* JADX INFO: renamed from: f */
    void m3029f() {
        if (this.f2531c == 0) {
            this.f2532d = true;
            this.f2535g.m3012h(AbstractC0392f.b.ON_PAUSE);
        }
    }

    /* JADX INFO: renamed from: g */
    void m3030g() {
        if (this.f2530b == 0 && this.f2532d) {
            this.f2535g.m3012h(AbstractC0392f.b.ON_STOP);
            this.f2533e = true;
        }
    }

    @Override // androidx.lifecycle.InterfaceC0396j
    public AbstractC0392f getLifecycle() {
        return this.f2535g;
    }
}
