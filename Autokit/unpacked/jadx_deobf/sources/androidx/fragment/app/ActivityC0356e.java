package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.Window;
import androidx.activity.ComponentActivity;
import androidx.activity.InterfaceC0053c;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.p001d.InterfaceC0055b;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.InterfaceC0064d;
import androidx.core.app.AbstractC0238h;
import androidx.core.app.C0231a;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.C0397k;
import androidx.lifecycle.C0410x;
import androidx.lifecycle.InterfaceC0411y;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import p016c.p059l.p060a.AbstractC0641a;

/* JADX INFO: renamed from: androidx.fragment.app.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActivityC0356e extends ComponentActivity implements C0231a.c, C0231a.e {
    static final String FRAGMENTS_TAG = "android:support:fragments";
    boolean mCreated;
    final C0397k mFragmentLifecycleRegistry;
    final C0361i mFragments;
    boolean mResumed;
    boolean mStopped;

    /* JADX INFO: renamed from: androidx.fragment.app.e$a */
    class a implements SavedStateRegistry.InterfaceC0480b {
        a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.InterfaceC0480b
        /* JADX INFO: renamed from: a */
        public Bundle mo429a() {
            Bundle bundle = new Bundle();
            ActivityC0356e.this.markFragmentsCreated();
            ActivityC0356e.this.mFragmentLifecycleRegistry.m3012h(AbstractC0392f.b.ON_STOP);
            Parcelable parcelableM2653x = ActivityC0356e.this.mFragments.m2653x();
            if (parcelableM2653x != null) {
                bundle.putParcelable(ActivityC0356e.FRAGMENTS_TAG, parcelableM2653x);
            }
            return bundle;
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.e$b */
    class b implements InterfaceC0055b {
        b() {
        }

        @Override // androidx.activity.p001d.InterfaceC0055b
        /* JADX INFO: renamed from: a */
        public void mo320a(Context context) {
            ActivityC0356e.this.mFragments.m2631a(null);
            Bundle bundleM3984a = ActivityC0356e.this.getSavedStateRegistry().m3984a(ActivityC0356e.FRAGMENTS_TAG);
            if (bundleM3984a != null) {
                ActivityC0356e.this.mFragments.m2652w(bundleM3984a.getParcelable(ActivityC0356e.FRAGMENTS_TAG));
            }
        }
    }

    /* JADX INFO: renamed from: androidx.fragment.app.e$c */
    class c extends AbstractC0363k<ActivityC0356e> implements InterfaceC0411y, InterfaceC0053c, InterfaceC0064d, InterfaceC0370r {
        public c() {
            super(ActivityC0356e.this);
        }

        @Override // androidx.fragment.app.InterfaceC0370r
        /* JADX INFO: renamed from: a */
        public void mo2618a(AbstractC0366n abstractC0366n, Fragment fragment) {
            ActivityC0356e.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.AbstractC0363k, androidx.fragment.app.AbstractC0359g
        /* JADX INFO: renamed from: c */
        public View mo2509c(int i) {
            return ActivityC0356e.this.findViewById(i);
        }

        @Override // androidx.fragment.app.AbstractC0363k, androidx.fragment.app.AbstractC0359g
        /* JADX INFO: renamed from: d */
        public boolean mo2510d() {
            Window window = ActivityC0356e.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.activity.result.InterfaceC0064d
        public ActivityResultRegistry getActivityResultRegistry() {
            return ActivityC0356e.this.getActivityResultRegistry();
        }

        @Override // androidx.lifecycle.InterfaceC0396j
        public AbstractC0392f getLifecycle() {
            return ActivityC0356e.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.InterfaceC0053c
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return ActivityC0356e.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.lifecycle.InterfaceC0411y
        public C0410x getViewModelStore() {
            return ActivityC0356e.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.AbstractC0363k
        /* JADX INFO: renamed from: i */
        public LayoutInflater mo2620i() {
            return ActivityC0356e.this.getLayoutInflater().cloneInContext(ActivityC0356e.this);
        }

        @Override // androidx.fragment.app.AbstractC0363k
        /* JADX INFO: renamed from: j */
        public boolean mo2621j(Fragment fragment) {
            return !ActivityC0356e.this.isFinishing();
        }

        @Override // androidx.fragment.app.AbstractC0363k
        /* JADX INFO: renamed from: m */
        public void mo2622m() {
            ActivityC0356e.this.supportInvalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.AbstractC0363k
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public ActivityC0356e mo2619h() {
            return ActivityC0356e.this;
        }
    }

    public ActivityC0356e() {
        this.mFragments = C0361i.m2630b(new c());
        this.mFragmentLifecycleRegistry = new C0397k(this);
        this.mStopped = true;
        init();
    }

    private void init() {
        getSavedStateRegistry().m3987d(FRAGMENTS_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private static boolean markState(AbstractC0366n abstractC0366n, AbstractC0392f.c cVar) {
        boolean zMarkState = false;
        for (Fragment fragment : abstractC0366n.m2782r0()) {
            if (fragment != null) {
                if (fragment.m2427S() != null) {
                    zMarkState |= markState(fragment.m2401J(), cVar);
                }
                C0349a0 c0349a0 = fragment.f2065T;
                if (c0349a0 != null && c0349a0.getLifecycle().mo2995b().m3000a(AbstractC0392f.c.STARTED)) {
                    fragment.f2065T.m2545f(cVar);
                    zMarkState = true;
                }
                if (fragment.f2064S.mo2995b().m3000a(AbstractC0392f.c.STARTED)) {
                    fragment.f2064S.m3014o(cVar);
                    zMarkState = true;
                }
            }
        }
        return zMarkState;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.m2651v(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            AbstractC0641a.m4970b(this).mo4971a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.m2649t().m2750W(str, fileDescriptor, printWriter, strArr);
    }

    public AbstractC0366n getSupportFragmentManager() {
        return this.mFragments.m2649t();
    }

    @Deprecated
    public AbstractC0641a getSupportLoaderManager() {
        return AbstractC0641a.m4970b(this);
    }

    void markFragmentsCreated() {
        while (markState(getSupportFragmentManager(), AbstractC0392f.c.CREATED)) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.m2650u();
        super.onActivityResult(i, i2, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.m2650u();
        this.mFragments.m2633d(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.ActivityC0236f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.m3012h(AbstractC0392f.b.ON_CREATE);
        this.mFragments.m2635f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.mFragments.m2636g(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mFragments.m2637h();
        this.mFragmentLifecycleRegistry.m3012h(AbstractC0392f.b.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.m2638i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.m2640k(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.m2634e(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.m2639j(z);
    }

    @Override // android.app.Activity
    protected void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.m2650u();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.m2641l(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.m2642m();
        this.mFragmentLifecycleRegistry.m3012h(AbstractC0392f.b.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.m2643n(z);
    }

    @Override // android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @Deprecated
    protected boolean onPrepareOptionsPanel(View view, Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        return i == 0 ? onPrepareOptionsPanel(view, menu) | this.mFragments.m2644o(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.m2650u();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.m2650u();
        this.mFragments.m2648s();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.m3012h(AbstractC0392f.b.ON_RESUME);
        this.mFragments.m2645p();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.m2632c();
        }
        this.mFragments.m2650u();
        this.mFragments.m2648s();
        this.mFragmentLifecycleRegistry.m3012h(AbstractC0392f.b.ON_START);
        this.mFragments.m2646q();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.m2650u();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.m2647r();
        this.mFragmentLifecycleRegistry.m3012h(AbstractC0392f.b.ON_STOP);
    }

    public void setEnterSharedElementCallback(AbstractC0238h abstractC0238h) {
        C0231a.m1644n(this, abstractC0238h);
    }

    public void setExitSharedElementCallback(AbstractC0238h abstractC0238h) {
        C0231a.m1645o(this, abstractC0238h);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i == -1) {
            C0231a.m1648r(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            fragment.m2464e2(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        C0231a.m1640j(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        C0231a.m1641k(this);
    }

    public void supportStartPostponedEnterTransition() {
        C0231a.m1649s(this);
    }

    @Override // androidx.core.app.C0231a.e
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            C0231a.m1647q(this, intent, -1, bundle);
        } else {
            fragment.m2461d2(intent, i, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    public ActivityC0356e(int i) {
        super(i);
        this.mFragments = C0361i.m2630b(new c());
        this.mFragmentLifecycleRegistry = new C0397k(this);
        this.mStopped = true;
        init();
    }
}
