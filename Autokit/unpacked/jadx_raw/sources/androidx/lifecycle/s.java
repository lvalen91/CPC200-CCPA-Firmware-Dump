package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class s extends Fragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f834b;

    interface a {
        void a();

        void b();

        void c();
    }

    static class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        static void registerIn(Activity activity) {
            activity.registerActivityLifecycleCallbacks(new b());
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            s.a(activity, f.b.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            s.a(activity, f.b.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            s.a(activity, f.b.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            s.a(activity, f.b.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            s.a(activity, f.b.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            s.a(activity, f.b.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static void a(Activity activity, f.b bVar) {
        if (activity instanceof l) {
            ((l) activity).getLifecycle().h(bVar);
        } else if (activity instanceof j) {
            f lifecycle = ((j) activity).getLifecycle();
            if (lifecycle instanceof k) {
                ((k) lifecycle).h(bVar);
            }
        }
    }

    private void b(f.b bVar) {
        if (Build.VERSION.SDK_INT < 29) {
            a(getActivity(), bVar);
        }
    }

    private void c(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    private void d(a aVar) {
        if (aVar != null) {
            aVar.b();
        }
    }

    private void e(a aVar) {
        if (aVar != null) {
            aVar.c();
        }
    }

    static s f(Activity activity) {
        return (s) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    public static void g(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new s(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    void h(a aVar) {
        this.f834b = aVar;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        c(this.f834b);
        b(f.b.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        b(f.b.ON_DESTROY);
        this.f834b = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        b(f.b.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        d(this.f834b);
        b(f.b.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        e(this.f834b);
        b(f.b.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        b(f.b.ON_STOP);
    }
}
