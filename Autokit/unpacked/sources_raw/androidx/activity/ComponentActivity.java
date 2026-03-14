package androidx.activity;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.d;
import androidx.activity.result.e;
import androidx.activity.result.f.a;
import androidx.core.app.f;
import androidx.lifecycle.a0;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import androidx.lifecycle.k;
import androidx.lifecycle.s;
import androidx.lifecycle.u;
import androidx.lifecycle.w;
import androidx.lifecycle.x;
import androidx.lifecycle.y;
import androidx.lifecycle.z;
import androidx.savedstate.SavedStateRegistry;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ComponentActivity extends f implements j, y, androidx.savedstate.c, androidx.activity.c, d {
    private final ActivityResultRegistry mActivityResultRegistry;
    private int mContentLayoutId;
    final androidx.activity.d.a mContextAwareHelper;
    private w.b mDefaultFactory;
    private final k mLifecycleRegistry;
    private final AtomicInteger mNextLocalRequestCode;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;
    final androidx.savedstate.b mSavedStateRegistryController;
    private x mViewModelStore;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ComponentActivity.super.onBackPressed();
            } catch (IllegalStateException e) {
                if (!TextUtils.equals(e.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                    throw e;
                }
            }
        }
    }

    class b extends ActivityResultRegistry {

        class a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f58b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ a.C0008a f59c;

            a(int i, a.C0008a c0008a) {
                this.f58b = i;
                this.f59c = c0008a;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.c(this.f58b, this.f59c.a());
            }
        }

        /* JADX INFO: renamed from: androidx.activity.ComponentActivity$b$b, reason: collision with other inner class name */
        class RunnableC0006b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f61b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ IntentSender.SendIntentException f62c;

            RunnableC0006b(int i, IntentSender.SendIntentException sendIntentException) {
                this.f61b = i;
                this.f62c = sendIntentException;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.b(this.f61b, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f62c));
            }
        }

        b() {
        }

        @Override // androidx.activity.result.ActivityResultRegistry
        public <I, O> void f(int i, androidx.activity.result.f.a<I, O> aVar, I i2, androidx.core.app.b bVar) {
            Bundle bundle;
            ComponentActivity componentActivity = ComponentActivity.this;
            a.C0008a<O> c0008aB = aVar.b(componentActivity, i2);
            if (c0008aB != null) {
                new Handler(Looper.getMainLooper()).post(new a(i, c0008aB));
                return;
            }
            Intent intentA = aVar.a(componentActivity, i2);
            if (intentA.getExtras() != null && intentA.getExtras().getClassLoader() == null) {
                intentA.setExtrasClassLoader(componentActivity.getClassLoader());
            }
            if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                Bundle bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                bundle = bundleExtra;
            } else {
                if (bVar != null) {
                    bVar.a();
                    throw null;
                }
                bundle = null;
            }
            if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
                String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new String[0];
                }
                androidx.core.app.a.m(componentActivity, stringArrayExtra, i);
                return;
            }
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
                androidx.core.app.a.q(componentActivity, intentA, i, bundle);
                return;
            }
            e eVar = (e) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                androidx.core.app.a.r(componentActivity, eVar.m(), i, eVar.j(), eVar.k(), eVar.l(), 0, bundle);
            } catch (IntentSender.SendIntentException e) {
                new Handler(Looper.getMainLooper()).post(new RunnableC0006b(i, e));
            }
        }
    }

    static final class c {
        Object a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        x f64b;

        c() {
        }
    }

    public ComponentActivity() {
        this.mContextAwareHelper = new androidx.activity.d.a();
        this.mLifecycleRegistry = new k(this);
        this.mSavedStateRegistryController = androidx.savedstate.b.a(this);
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new a());
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new b();
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        if (Build.VERSION.SDK_INT >= 19) {
            getLifecycle().a(new h() { // from class: androidx.activity.ComponentActivity.3
                @Override // androidx.lifecycle.h
                public void d(j jVar, f.b bVar) {
                    if (bVar == f.b.ON_STOP) {
                        Window window = ComponentActivity.this.getWindow();
                        View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                        if (viewPeekDecorView != null) {
                            viewPeekDecorView.cancelPendingInputEvents();
                        }
                    }
                }
            });
        }
        getLifecycle().a(new h() { // from class: androidx.activity.ComponentActivity.4
            @Override // androidx.lifecycle.h
            public void d(j jVar, f.b bVar) {
                if (bVar == f.b.ON_DESTROY) {
                    ComponentActivity.this.mContextAwareHelper.b();
                    if (ComponentActivity.this.isChangingConfigurations()) {
                        return;
                    }
                    ComponentActivity.this.getViewModelStore().a();
                }
            }
        });
        getLifecycle().a(new h() { // from class: androidx.activity.ComponentActivity.5
            @Override // androidx.lifecycle.h
            public void d(j jVar, f.b bVar) {
                ComponentActivity.this.ensureViewModelStore();
                ComponentActivity.this.getLifecycle().c(this);
            }
        });
        int i = Build.VERSION.SDK_INT;
        if (19 > i || i > 23) {
            return;
        }
        getLifecycle().a(new ImmLeaksCleaner(this));
    }

    private void initViewTreeOwners() {
        z.a(getWindow().getDecorView(), this);
        a0.a(getWindow().getDecorView(), this);
        androidx.savedstate.d.a(getWindow().getDecorView(), this);
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    public final void addOnContextAvailableListener(androidx.activity.d.b bVar) {
        this.mContextAwareHelper.a(bVar);
    }

    void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            c cVar = (c) getLastNonConfigurationInstance();
            if (cVar != null) {
                this.mViewModelStore = cVar.f64b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new x();
            }
        }
    }

    @Override // androidx.activity.result.d
    public final ActivityResultRegistry getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    public w.b getDefaultViewModelProviderFactory() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new u(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        c cVar = (c) getLastNonConfigurationInstance();
        if (cVar != null) {
            return cVar.a;
        }
        return null;
    }

    @Override // androidx.core.app.f, androidx.lifecycle.j
    public androidx.lifecycle.f getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.c
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // androidx.savedstate.c
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b();
    }

    @Override // androidx.lifecycle.y
    public x getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        ensureViewModelStore();
        return this.mViewModelStore;
    }

    @Override // android.app.Activity
    @Deprecated
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.mActivityResultRegistry.b(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.c();
    }

    @Override // androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.c(bundle);
        this.mContextAwareHelper.c(this);
        super.onCreate(bundle);
        this.mActivityResultRegistry.g(bundle);
        s.g(this);
        int i = this.mContentLayoutId;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.b(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Deprecated
    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        c cVar;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        x xVar = this.mViewModelStore;
        if (xVar == null && (cVar = (c) getLastNonConfigurationInstance()) != null) {
            xVar = cVar.f64b;
        }
        if (xVar == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        c cVar2 = new c();
        cVar2.a = objOnRetainCustomNonConfigurationInstance;
        cVar2.f64b = xVar;
        return cVar2;
    }

    @Override // androidx.core.app.f, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.f lifecycle = getLifecycle();
        if (lifecycle instanceof k) {
            ((k) lifecycle).o(f.c.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.d(bundle);
        this.mActivityResultRegistry.h(bundle);
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.d();
    }

    public final <I, O> androidx.activity.result.c<I> registerForActivityResult(androidx.activity.result.f.a<I, O> aVar, ActivityResultRegistry activityResultRegistry, androidx.activity.result.b<O> bVar) {
        return activityResultRegistry.j("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, aVar, bVar);
    }

    public final void removeOnContextAvailableListener(androidx.activity.d.b bVar) {
        this.mContextAwareHelper.e(bVar);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (c.o.a.d()) {
                c.o.a.a("reportFullyDrawn() for " + getComponentName());
            }
            if (Build.VERSION.SDK_INT > 19) {
                super.reportFullyDrawn();
            } else if (Build.VERSION.SDK_INT == 19 && androidx.core.content.a.a(this, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                super.reportFullyDrawn();
            }
        } finally {
            c.o.a.b();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startActivityForResult(@SuppressLint({"UnknownNullness"}) Intent intent, int i, Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @Deprecated
    public void startIntentSenderForResult(@SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) throws IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view) {
        initViewTreeOwners();
        super.setContentView(view);
    }

    public final <I, O> androidx.activity.result.c<I> registerForActivityResult(androidx.activity.result.f.a<I, O> aVar, androidx.activity.result.b<O> bVar) {
        return registerForActivityResult(aVar, this.mActivityResultRegistry, bVar);
    }

    @Override // android.app.Activity
    public void setContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.setContentView(view, layoutParams);
    }

    public ComponentActivity(int i) {
        this();
        this.mContentLayoutId = i;
    }
}
