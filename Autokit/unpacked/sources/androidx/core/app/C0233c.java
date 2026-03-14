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

/* JADX INFO: renamed from: androidx.core.app.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0233c {

    /* JADX INFO: renamed from: g */
    private static final Handler f1727g = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: a */
    protected static final Class<?> f1721a = m1652a();

    /* JADX INFO: renamed from: b */
    protected static final Field f1722b = m1653b();

    /* JADX INFO: renamed from: c */
    protected static final Field f1723c = m1657f();

    /* JADX INFO: renamed from: d */
    protected static final Method f1724d = m1655d(f1721a);

    /* JADX INFO: renamed from: e */
    protected static final Method f1725e = m1654c(f1721a);

    /* JADX INFO: renamed from: f */
    protected static final Method f1726f = m1656e(f1721a);

    /* JADX INFO: renamed from: androidx.core.app.c$a */
    class a implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ d f1728b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Object f1729c;

        a(d dVar, Object obj) {
            this.f1728b = dVar;
            this.f1729c = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1728b.f1734a = this.f1729c;
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.c$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Application f1730b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ d f1731c;

        b(Application application, d dVar) {
            this.f1730b = application;
            this.f1731c = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1730b.unregisterActivityLifecycleCallbacks(this.f1731c);
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.c$c */
    class c implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Object f1732b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Object f1733c;

        c(Object obj, Object obj2) {
            this.f1732b = obj;
            this.f1733c = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (C0233c.f1724d != null) {
                    C0233c.f1724d.invoke(this.f1732b, this.f1733c, Boolean.FALSE, "AppCompat recreation");
                } else {
                    C0233c.f1725e.invoke(this.f1732b, this.f1733c, Boolean.FALSE);
                }
            } catch (RuntimeException e) {
                if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                    throw e;
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.c$d */
    private static final class d implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: a */
        Object f1734a;

        /* JADX INFO: renamed from: b */
        private Activity f1735b;

        /* JADX INFO: renamed from: c */
        private final int f1736c;

        /* JADX INFO: renamed from: d */
        private boolean f1737d = false;

        /* JADX INFO: renamed from: e */
        private boolean f1738e = false;

        /* JADX INFO: renamed from: f */
        private boolean f1739f = false;

        d(Activity activity) {
            this.f1735b = activity;
            this.f1736c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1735b == activity) {
                this.f1735b = null;
                this.f1738e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f1738e || this.f1739f || this.f1737d || !C0233c.m1659h(this.f1734a, this.f1736c, activity)) {
                return;
            }
            this.f1739f = true;
            this.f1734a = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1735b == activity) {
                this.f1737d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX INFO: renamed from: a */
    private static Class<?> m1652a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: b */
    private static Field m1653b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    private static Method m1654c(Class<?> cls) {
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

    /* JADX INFO: renamed from: d */
    private static Method m1655d(Class<?> cls) {
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

    /* JADX INFO: renamed from: e */
    private static Method m1656e(Class<?> cls) {
        if (m1658g() && cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    private static Field m1657f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: g */
    private static boolean m1658g() {
        int i = Build.VERSION.SDK_INT;
        return i == 26 || i == 27;
    }

    /* JADX INFO: renamed from: h */
    protected static boolean m1659h(Object obj, int i, Activity activity) {
        try {
            Object obj2 = f1723c.get(activity);
            if (obj2 == obj && activity.hashCode() == i) {
                f1727g.postAtFrontOfQueue(new c(f1722b.get(activity), obj2));
                return true;
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    /* JADX INFO: renamed from: i */
    static boolean m1660i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (m1658g() && f1726f == null) {
            return false;
        }
        if (f1725e == null && f1724d == null) {
            return false;
        }
        try {
            Object obj2 = f1723c.get(activity);
            if (obj2 == null || (obj = f1722b.get(activity)) == null) {
                return false;
            }
            Application application = activity.getApplication();
            d dVar = new d(activity);
            application.registerActivityLifecycleCallbacks(dVar);
            f1727g.post(new a(dVar, obj2));
            try {
                if (m1658g()) {
                    f1726f.invoke(obj, obj2, null, null, 0, Boolean.FALSE, null, null, Boolean.FALSE, Boolean.FALSE);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                f1727g.post(new b(application, dVar));
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}
