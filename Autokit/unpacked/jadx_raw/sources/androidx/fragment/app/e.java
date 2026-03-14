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
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResultRegistry;
import androidx.core.app.a;
import androidx.lifecycle.f;
import androidx.savedstate.SavedStateRegistry;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class e extends ComponentActivity implements a.c, a.e {
    static final String FRAGMENTS_TAG = "android:support:fragments";
    boolean mCreated;
    final androidx.lifecycle.k mFragmentLifecycleRegistry;
    final i mFragments;
    boolean mResumed;
    boolean mStopped;

    class a implements SavedStateRegistry.b {
        a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            e.this.markFragmentsCreated();
            e.this.mFragmentLifecycleRegistry.h(f.b.ON_STOP);
            Parcelable parcelableX = e.this.mFragments.x();
            if (parcelableX != null) {
                bundle.putParcelable(e.FRAGMENTS_TAG, parcelableX);
            }
            return bundle;
        }
    }

    class b implements androidx.activity.d.b {
        b() {
        }

        @Override // androidx.activity.d.b
        public void a(Context context) {
            e.this.mFragments.a(null);
            Bundle bundleA = e.this.getSavedStateRegistry().a(e.FRAGMENTS_TAG);
            if (bundleA != null) {
                e.this.mFragments.w(bundleA.getParcelable(e.FRAGMENTS_TAG));
            }
        }
    }

    class c extends k<e> implements androidx.lifecycle.y, androidx.activity.c, androidx.activity.result.d, r {
        public c() {
            super(e.this);
        }

        @Override // androidx.fragment.app.r
        public void a(n nVar, Fragment fragment) {
            e.this.onAttachFragment(fragment);
        }

        @Override // androidx.fragment.app.k, androidx.fragment.app.g
        public View c(int i) {
            return e.this.findViewById(i);
        }

        @Override // androidx.fragment.app.k, androidx.fragment.app.g
        public boolean d() {
            Window window = e.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // androidx.activity.result.d
        public ActivityResultRegistry getActivityResultRegistry() {
            return e.this.getActivityResultRegistry();
        }

        @Override // androidx.lifecycle.j
        public androidx.lifecycle.f getLifecycle() {
            return e.this.mFragmentLifecycleRegistry;
        }

        @Override // androidx.activity.c
        public OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return e.this.getOnBackPressedDispatcher();
        }

        @Override // androidx.lifecycle.y
        public androidx.lifecycle.x getViewModelStore() {
            return e.this.getViewModelStore();
        }

        @Override // androidx.fragment.app.k
        public LayoutInflater i() {
            return e.this.getLayoutInflater().cloneInContext(e.this);
        }

        @Override // androidx.fragment.app.k
        public boolean j(Fragment fragment) {
            return !e.this.isFinishing();
        }

        @Override // androidx.fragment.app.k
        public void m() {
            e.this.supportInvalidateOptionsMenu();
        }

        @Override // androidx.fragment.app.k
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public e h() {
            return e.this;
        }
    }

    public e() {
        this.mFragments = i.b(new c());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.k(this);
        this.mStopped = true;
        init();
    }

    private void init() {
        getSavedStateRegistry().d(FRAGMENTS_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private static boolean markState(n nVar, f.c cVar) {
        boolean zMarkState = false;
        for (Fragment fragment : nVar.r0()) {
            if (fragment != null) {
                if (fragment.S() != null) {
                    zMarkState |= markState(fragment.J(), cVar);
                }
                a0 a0Var = fragment.T;
                if (a0Var != null && a0Var.getLifecycle().b().a(f.c.STARTED)) {
                    fragment.T.f(cVar);
                    zMarkState = true;
                }
                if (fragment.S.b().a(f.c.STARTED)) {
                    fragment.S.o(cVar);
                    zMarkState = true;
                }
            }
        }
        return zMarkState;
    }

    final View dispatchFragmentsOnCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return this.mFragments.v(view, str, context, attributeSet);
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
            c.l.a.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.t().W(str, fileDescriptor, printWriter, strArr);
    }

    public n getSupportFragmentManager() {
        return this.mFragments.t();
    }

    @Deprecated
    public c.l.a.a getSupportLoaderManager() {
        return c.l.a.a.b(this);
    }

    void markFragmentsCreated() {
        while (markState(getSupportFragmentManager(), f.c.CREATED)) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        this.mFragments.u();
        super.onActivityResult(i, i2, intent);
    }

    @Deprecated
    public void onAttachFragment(Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.u();
        this.mFragments.d(configuration);
    }

    @Override // androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.h(f.b.ON_CREATE);
        this.mFragments.f();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        return i == 0 ? super.onCreatePanelMenu(i, menu) | this.mFragments.g(menu, getMenuInflater()) : super.onCreatePanelMenu(i, menu);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.mFragments.h();
        this.mFragmentLifecycleRegistry.h(f.b.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.i();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.k(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.e(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.j(z);
    }

    @Override // android.app.Activity
    protected void onNewIntent(@SuppressLint({"UnknownNullness"}) Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.u();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        if (i == 0) {
            this.mFragments.l(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.m();
        this.mFragmentLifecycleRegistry.h(f.b.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.n(z);
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
        return i == 0 ? onPrepareOptionsPanel(view, menu) | this.mFragments.o(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.mFragments.u();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.u();
        this.mFragments.s();
    }

    protected void onResumeFragments() {
        this.mFragmentLifecycleRegistry.h(f.b.ON_RESUME);
        this.mFragments.p();
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            this.mFragments.c();
        }
        this.mFragments.u();
        this.mFragments.s();
        this.mFragmentLifecycleRegistry.h(f.b.ON_START);
        this.mFragments.q();
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.u();
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        this.mFragments.r();
        this.mFragmentLifecycleRegistry.h(f.b.ON_STOP);
    }

    public void setEnterSharedElementCallback(androidx.core.app.h hVar) {
        androidx.core.app.a.n(this, hVar);
    }

    public void setExitSharedElementCallback(androidx.core.app.h hVar) {
        androidx.core.app.a.o(this, hVar);
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (Bundle) null);
    }

    @Deprecated
    public void startIntentSenderFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        if (i == -1) {
            androidx.core.app.a.r(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            fragment.e2(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        androidx.core.app.a.j(this);
    }

    @Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        androidx.core.app.a.k(this);
    }

    public void supportStartPostponedEnterTransition() {
        androidx.core.app.a.s(this);
    }

    @Override // androidx.core.app.a.e
    @Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }

    public void startActivityFromFragment(Fragment fragment, @SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        if (i == -1) {
            androidx.core.app.a.q(this, intent, -1, bundle);
        } else {
            fragment.d2(intent, i, bundle);
        }
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    public e(int i) {
        super(i);
        this.mFragments = i.b(new c());
        this.mFragmentLifecycleRegistry = new androidx.lifecycle.k(this);
        this.mStopped = true;
        init();
    }
}
