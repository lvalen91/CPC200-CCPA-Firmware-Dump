package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class c {
    private static final Handler g = new Handler(Looper.getMainLooper());
    protected static final Class<?> a = a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final Field f509b = b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final Field f510c = f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final Method f511d = d(a);
    protected static final Method e = c(a);
    protected static final Method f = e(a);

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ d f512b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f513c;

        a(d dVar, Object obj) {
            this.f512b = dVar;
            this.f513c = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f512b.a = this.f513c;
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Application f514b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ d f515c;

        b(Application application, d dVar) {
            this.f514b = application;
            this.f515c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f514b.unregisterActivityLifecycleCallbacks(this.f515c);
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.c$c, reason: collision with other inner class name */
    class RunnableC0018c implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f516b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f517c;

        RunnableC0018c(Object obj, Object obj2) {
            this.f516b = obj;
            this.f517c = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (c.f511d != null) {
                    c.f511d.invoke(this.f516b, this.f517c, Boolean.FALSE, "AppCompat recreation");
                } else {
                    c.e.invoke(this.f516b, this.f517c, Boolean.FALSE);
                }
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable unused) {
            }
        }
    }

    private static final class d implements Application.ActivityLifecycleCallbacks {
        Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Activity f518b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f519c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f520d = false;
        private boolean e = false;
        private boolean f = false;

        d(Activity activity) {
            this.f518b = activity;
            this.f519c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f518b == activity) {
                this.f518b = null;
                this.e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.e || this.f || this.f520d || !c.h(this.a, this.f519c, activity)) {
                return;
            }
            this.f = true;
            this.a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f518b == activity) {
                this.f520d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    private static Class<?> a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method e(Class<?> cls) {
        if (g() && cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    protected static boolean h(Object obj, int i, Activity activity) {
        try {
            Object obj2 = f510c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                g.postAtFrontOfQueue(new RunnableC0018c(f509b.get(activity), obj2));
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    static boolean i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (g() && f == null) {
            return false;
        }
        if (e == null && f511d == null) {
            return false;
        }
        try {
            Object obj2 = f510c.get(activity);
            if (obj2 == null || (obj = f509b.get(activity)) == null) {
                return false;
            }
            Application application = activity.getApplication();
            d dVar = new d(activity);
            application.registerActivityLifecycleCallbacks(dVar);
            g.post(new a(dVar, obj2));
            try {
                if (g()) {
                    f.invoke(obj, obj2, null, null, 0, Boolean.FALSE, null, null, Boolean.FALSE, Boolean.FALSE);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                g.post(new b(application, dVar));
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}
