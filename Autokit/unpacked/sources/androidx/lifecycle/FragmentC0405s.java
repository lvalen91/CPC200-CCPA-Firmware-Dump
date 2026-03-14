package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.AbstractC0392f;

/* JADX INFO: renamed from: androidx.lifecycle.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FragmentC0405s extends Fragment {

    /* JADX INFO: renamed from: b */
    private a f2540b;

    /* JADX INFO: renamed from: androidx.lifecycle.s$a */
    interface a {
        /* JADX INFO: renamed from: a */
        void mo3031a();

        /* JADX INFO: renamed from: b */
        void mo3032b();

        /* JADX INFO: renamed from: c */
        void mo3033c();
    }

    /* JADX INFO: renamed from: androidx.lifecycle.s$b */
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
            FragmentC0405s.m3034a(activity, AbstractC0392f.b.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            FragmentC0405s.m3034a(activity, AbstractC0392f.b.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            FragmentC0405s.m3034a(activity, AbstractC0392f.b.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            FragmentC0405s.m3034a(activity, AbstractC0392f.b.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            FragmentC0405s.m3034a(activity, AbstractC0392f.b.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            FragmentC0405s.m3034a(activity, AbstractC0392f.b.ON_STOP);
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
    /* JADX INFO: renamed from: a */
    static void m3034a(Activity activity, AbstractC0392f.b bVar) {
        if (activity instanceof InterfaceC0398l) {
            ((InterfaceC0398l) activity).getLifecycle().m3012h(bVar);
        } else if (activity instanceof InterfaceC0396j) {
            AbstractC0392f lifecycle = ((InterfaceC0396j) activity).getLifecycle();
            if (lifecycle instanceof C0397k) {
                ((C0397k) lifecycle).m3012h(bVar);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    private void m3035b(AbstractC0392f.b bVar) {
        if (Build.VERSION.SDK_INT < 29) {
            m3034a(getActivity(), bVar);
        }
    }

    /* JADX INFO: renamed from: c */
    private void m3036c(a aVar) {
        if (aVar != null) {
            aVar.mo3031a();
        }
    }

    /* JADX INFO: renamed from: d */
    private void m3037d(a aVar) {
        if (aVar != null) {
            aVar.mo3032b();
        }
    }

    /* JADX INFO: renamed from: e */
    private void m3038e(a aVar) {
        if (aVar != null) {
            aVar.mo3033c();
        }
    }

    /* JADX INFO: renamed from: f */
    static FragmentC0405s m3039f(Activity activity) {
        return (FragmentC0405s) activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
    }

    /* JADX INFO: renamed from: g */
    public static void m3040g(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            b.registerIn(activity);
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new FragmentC0405s(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }

    /* JADX INFO: renamed from: h */
    void m3041h(a aVar) {
        this.f2540b = aVar;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        m3036c(this.f2540b);
        m3035b(AbstractC0392f.b.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        m3035b(AbstractC0392f.b.ON_DESTROY);
        this.f2540b = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        m3035b(AbstractC0392f.b.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        m3037d(this.f2540b);
        m3035b(AbstractC0392f.b.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        m3038e(this.f2540b);
        m3035b(AbstractC0392f.b.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        m3035b(AbstractC0392f.b.ON_STOP);
    }
}
