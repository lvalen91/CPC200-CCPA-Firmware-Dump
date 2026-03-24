package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.f;
import androidx.lifecycle.s;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class r implements j {
    private static final r j = new r();
    private Handler f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f830b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f831c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f832d = true;
    private boolean e = true;
    private final k g = new k(this);
    private Runnable h = new a();
    s.a i = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            r.this.f();
            r.this.g();
        }
    }

    class b implements s.a {
        b() {
        }

        @Override // androidx.lifecycle.s.a
        public void a() {
        }

        @Override // androidx.lifecycle.s.a
        public void b() {
            r.this.b();
        }

        @Override // androidx.lifecycle.s.a
        public void c() {
            r.this.c();
        }
    }

    class c extends androidx.lifecycle.c {

        class a extends androidx.lifecycle.c {
            a() {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                r.this.b();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                r.this.c();
            }
        }

        c() {
        }

        @Override // androidx.lifecycle.c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (Build.VERSION.SDK_INT < 29) {
                s.f(activity).h(r.this.i);
            }
        }

        @Override // androidx.lifecycle.c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            r.this.a();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            activity.registerActivityLifecycleCallbacks(new a());
        }

        @Override // androidx.lifecycle.c, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            r.this.d();
        }
    }

    private r() {
    }

    static void h(Context context) {
        j.e(context);
    }

    void a() {
        int i = this.f831c - 1;
        this.f831c = i;
        if (i == 0) {
            this.f.postDelayed(this.h, 700L);
        }
    }

    void b() {
        int i = this.f831c + 1;
        this.f831c = i;
        if (i == 1) {
            if (!this.f832d) {
                this.f.removeCallbacks(this.h);
            } else {
                this.g.h(f.b.ON_RESUME);
                this.f832d = false;
            }
        }
    }

    void c() {
        int i = this.f830b + 1;
        this.f830b = i;
        if (i == 1 && this.e) {
            this.g.h(f.b.ON_START);
            this.e = false;
        }
    }

    void d() {
        this.f830b--;
        g();
    }

    void e(Context context) {
        this.f = new Handler();
        this.g.h(f.b.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new c());
    }

    void f() {
        if (this.f831c == 0) {
            this.f832d = true;
            this.g.h(f.b.ON_PAUSE);
        }
    }

    void g() {
        if (this.f830b == 0 && this.f832d) {
            this.g.h(f.b.ON_STOP);
            this.e = true;
        }
    }

    @Override // androidx.lifecycle.j
    public f getLifecycle() {
        return this.g;
    }
}
