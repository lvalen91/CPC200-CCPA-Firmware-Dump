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
import androidx.activity.p001d.C0054a;
import androidx.activity.p001d.InterfaceC0055b;
import androidx.activity.result.AbstractC0063c;
import androidx.activity.result.ActivityResultRegistry;
import androidx.activity.result.C0065e;
import androidx.activity.result.InterfaceC0062b;
import androidx.activity.result.InterfaceC0064d;
import androidx.activity.result.p002f.AbstractC0066a;
import androidx.core.app.ActivityC0236f;
import androidx.core.app.C0231a;
import androidx.core.app.C0232b;
import androidx.core.content.C0242a;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.C0385a0;
import androidx.lifecycle.C0397k;
import androidx.lifecycle.C0407u;
import androidx.lifecycle.C0409w;
import androidx.lifecycle.C0410x;
import androidx.lifecycle.C0412z;
import androidx.lifecycle.FragmentC0405s;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;
import androidx.lifecycle.InterfaceC0411y;
import androidx.savedstate.C0482b;
import androidx.savedstate.C0484d;
import androidx.savedstate.InterfaceC0483c;
import androidx.savedstate.SavedStateRegistry;
import java.util.concurrent.atomic.AtomicInteger;
import p016c.p064o.C0650a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ComponentActivity extends ActivityC0236f implements InterfaceC0396j, InterfaceC0411y, InterfaceC0483c, InterfaceC0053c, InterfaceC0064d {
    private final ActivityResultRegistry mActivityResultRegistry;
    private int mContentLayoutId;
    final C0054a mContextAwareHelper;
    private C0409w.b mDefaultFactory;
    private final C0397k mLifecycleRegistry;
    private final AtomicInteger mNextLocalRequestCode;
    private final OnBackPressedDispatcher mOnBackPressedDispatcher;
    final C0482b mSavedStateRegistryController;
    private C0410x mViewModelStore;

    /* JADX INFO: renamed from: androidx.activity.ComponentActivity$a */
    class RunnableC0047a implements Runnable {
        RunnableC0047a() {
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

    /* JADX INFO: renamed from: androidx.activity.ComponentActivity$b */
    class C0048b extends ActivityResultRegistry {

        /* JADX INFO: renamed from: androidx.activity.ComponentActivity$b$a */
        class a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ int f157b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ AbstractC0066a.a f158c;

            a(int i, AbstractC0066a.a aVar) {
                this.f157b = i;
                this.f158c = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0048b.this.m326c(this.f157b, this.f158c.m355a());
            }
        }

        /* JADX INFO: renamed from: androidx.activity.ComponentActivity$b$b */
        class b implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ int f160b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ IntentSender.SendIntentException f161c;

            b(int i, IntentSender.SendIntentException sendIntentException) {
                this.f160b = i;
                this.f161c = sendIntentException;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0048b.this.m325b(this.f160b, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f161c));
            }
        }

        C0048b() {
        }

        @Override // androidx.activity.result.ActivityResultRegistry
        /* JADX INFO: renamed from: f */
        public <I, O> void mo304f(int i, AbstractC0066a<I, O> abstractC0066a, I i2, C0232b c0232b) {
            Bundle bundle;
            ComponentActivity componentActivity = ComponentActivity.this;
            AbstractC0066a.a<O> aVarMo353b = abstractC0066a.mo353b(componentActivity, i2);
            if (aVarMo353b != null) {
                new Handler(Looper.getMainLooper()).post(new a(i, aVarMo353b));
                return;
            }
            Intent intentMo352a = abstractC0066a.mo352a(componentActivity, i2);
            if (intentMo352a.getExtras() != null && intentMo352a.getExtras().getClassLoader() == null) {
                intentMo352a.setExtrasClassLoader(componentActivity.getClassLoader());
            }
            if (intentMo352a.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                Bundle bundleExtra = intentMo352a.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentMo352a.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                bundle = bundleExtra;
            } else {
                if (c0232b != null) {
                    c0232b.m1651a();
                    throw null;
                }
                bundle = null;
            }
            if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentMo352a.getAction())) {
                String[] stringArrayExtra = intentMo352a.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new String[0];
                }
                C0231a.m1643m(componentActivity, stringArrayExtra, i);
                return;
            }
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentMo352a.getAction())) {
                C0231a.m1647q(componentActivity, intentMo352a, i, bundle);
                return;
            }
            C0065e c0065e = (C0065e) intentMo352a.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                C0231a.m1648r(componentActivity, c0065e.m346m(), i, c0065e.m343j(), c0065e.m344k(), c0065e.m345l(), 0, bundle);
            } catch (IntentSender.SendIntentException e) {
                new Handler(Looper.getMainLooper()).post(new b(i, e));
            }
        }
    }

    /* JADX INFO: renamed from: androidx.activity.ComponentActivity$c */
    static final class C0049c {

        /* JADX INFO: renamed from: a */
        Object f163a;

        /* JADX INFO: renamed from: b */
        C0410x f164b;

        C0049c() {
        }
    }

    public ComponentActivity() {
        this.mContextAwareHelper = new C0054a();
        this.mLifecycleRegistry = new C0397k(this);
        this.mSavedStateRegistryController = C0482b.m3989a(this);
        this.mOnBackPressedDispatcher = new OnBackPressedDispatcher(new RunnableC0047a());
        this.mNextLocalRequestCode = new AtomicInteger();
        this.mActivityResultRegistry = new C0048b();
        if (getLifecycle() == null) {
            throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        if (Build.VERSION.SDK_INT >= 19) {
            getLifecycle().mo2994a(new InterfaceC0394h() { // from class: androidx.activity.ComponentActivity.3
                @Override // androidx.lifecycle.InterfaceC0394h
                /* JADX INFO: renamed from: d */
                public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
                    if (bVar == AbstractC0392f.b.ON_STOP) {
                        Window window = ComponentActivity.this.getWindow();
                        View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                        if (viewPeekDecorView != null) {
                            viewPeekDecorView.cancelPendingInputEvents();
                        }
                    }
                }
            });
        }
        getLifecycle().mo2994a(new InterfaceC0394h() { // from class: androidx.activity.ComponentActivity.4
            @Override // androidx.lifecycle.InterfaceC0394h
            /* JADX INFO: renamed from: d */
            public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
                if (bVar == AbstractC0392f.b.ON_DESTROY) {
                    ComponentActivity.this.mContextAwareHelper.m316b();
                    if (ComponentActivity.this.isChangingConfigurations()) {
                        return;
                    }
                    ComponentActivity.this.getViewModelStore().m3057a();
                }
            }
        });
        getLifecycle().mo2994a(new InterfaceC0394h() { // from class: androidx.activity.ComponentActivity.5
            @Override // androidx.lifecycle.InterfaceC0394h
            /* JADX INFO: renamed from: d */
            public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
                ComponentActivity.this.ensureViewModelStore();
                ComponentActivity.this.getLifecycle().mo2996c(this);
            }
        });
        int i = Build.VERSION.SDK_INT;
        if (19 > i || i > 23) {
            return;
        }
        getLifecycle().mo2994a(new ImmLeaksCleaner(this));
    }

    private void initViewTreeOwners() {
        C0412z.m3061a(getWindow().getDecorView(), this);
        C0385a0.m2978a(getWindow().getDecorView(), this);
        C0484d.m3993a(getWindow().getDecorView(), this);
    }

    @Override // android.app.Activity
    public void addContentView(@SuppressLint({"UnknownNullness", "MissingNullability"}) View view, @SuppressLint({"UnknownNullness", "MissingNullability"}) ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    public final void addOnContextAvailableListener(InterfaceC0055b interfaceC0055b) {
        this.mContextAwareHelper.m315a(interfaceC0055b);
    }

    void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            C0049c c0049c = (C0049c) getLastNonConfigurationInstance();
            if (c0049c != null) {
                this.mViewModelStore = c0049c.f164b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new C0410x();
            }
        }
    }

    @Override // androidx.activity.result.InterfaceC0064d
    public final ActivityResultRegistry getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    public C0409w.b getDefaultViewModelProviderFactory() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new C0407u(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    @Deprecated
    public Object getLastCustomNonConfigurationInstance() {
        C0049c c0049c = (C0049c) getLastNonConfigurationInstance();
        if (c0049c != null) {
            return c0049c.f163a;
        }
        return null;
    }

    @Override // androidx.core.app.ActivityC0236f, androidx.lifecycle.InterfaceC0396j
    public AbstractC0392f getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // androidx.activity.InterfaceC0053c
    public final OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // androidx.savedstate.InterfaceC0483c
    public final SavedStateRegistry getSavedStateRegistry() {
        return this.mSavedStateRegistryController.m3990b();
    }

    @Override // androidx.lifecycle.InterfaceC0411y
    public C0410x getViewModelStore() {
        if (getApplication() == null) {
            throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        ensureViewModelStore();
        return this.mViewModelStore;
    }

    @Override // android.app.Activity
    @Deprecated
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (this.mActivityResultRegistry.m325b(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.m308c();
    }

    @Override // androidx.core.app.ActivityC0236f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        this.mSavedStateRegistryController.m3991c(bundle);
        this.mContextAwareHelper.m317c(this);
        super.onCreate(bundle);
        this.mActivityResultRegistry.m327g(bundle);
        FragmentC0405s.m3040g(this);
        int i = this.mContentLayoutId;
        if (i != 0) {
            setContentView(i);
        }
    }

    @Override // android.app.Activity
    @Deprecated
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.m325b(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || Build.VERSION.SDK_INT < 23) {
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
        C0049c c0049c;
        Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        C0410x c0410x = this.mViewModelStore;
        if (c0410x == null && (c0049c = (C0049c) getLastNonConfigurationInstance()) != null) {
            c0410x = c0049c.f164b;
        }
        if (c0410x == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        C0049c c0049c2 = new C0049c();
        c0049c2.f163a = objOnRetainCustomNonConfigurationInstance;
        c0049c2.f164b = c0410x;
        return c0049c2;
    }

    @Override // androidx.core.app.ActivityC0236f, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        AbstractC0392f lifecycle = getLifecycle();
        if (lifecycle instanceof C0397k) {
            ((C0397k) lifecycle).m3014o(AbstractC0392f.c.CREATED);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.m3992d(bundle);
        this.mActivityResultRegistry.m328h(bundle);
    }

    public Context peekAvailableContext() {
        return this.mContextAwareHelper.m318d();
    }

    public final <I, O> AbstractC0063c<I> registerForActivityResult(AbstractC0066a<I, O> abstractC0066a, ActivityResultRegistry activityResultRegistry, InterfaceC0062b<O> interfaceC0062b) {
        return activityResultRegistry.m330j("activity_rq#" + this.mNextLocalRequestCode.getAndIncrement(), this, abstractC0066a, interfaceC0062b);
    }

    public final void removeOnContextAvailableListener(InterfaceC0055b interfaceC0055b) {
        this.mContextAwareHelper.m319e(interfaceC0055b);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (C0650a.m5023d()) {
                C0650a.m5020a("reportFullyDrawn() for " + getComponentName());
            }
            if (Build.VERSION.SDK_INT > 19) {
                super.reportFullyDrawn();
            } else if (Build.VERSION.SDK_INT == 19 && C0242a.m1696a(this, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                super.reportFullyDrawn();
            }
        } finally {
            C0650a.m5021b();
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

    public final <I, O> AbstractC0063c<I> registerForActivityResult(AbstractC0066a<I, O> abstractC0066a, InterfaceC0062b<O> interfaceC0062b) {
        return registerForActivityResult(abstractC0066a, this.mActivityResultRegistry, interfaceC0062b);
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
