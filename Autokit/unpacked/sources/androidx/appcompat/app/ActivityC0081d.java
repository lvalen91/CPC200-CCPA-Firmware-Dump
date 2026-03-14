package androidx.appcompat.app;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.p001d.InterfaceC0055b;
import androidx.appcompat.widget.C0205z0;
import androidx.appcompat.widget.Toolbar;
import androidx.core.app.C0231a;
import androidx.core.app.C0237g;
import androidx.core.app.C0239i;
import androidx.fragment.app.ActivityC0356e;
import androidx.lifecycle.C0385a0;
import androidx.lifecycle.C0412z;
import androidx.savedstate.C0484d;
import androidx.savedstate.SavedStateRegistry;
import p016c.p017a.p024o.AbstractC0512b;

/* JADX INFO: renamed from: androidx.appcompat.app.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActivityC0081d extends ActivityC0356e implements InterfaceC0082e, C0239i.a {
    private static final String DELEGATE_TAG = "androidx:appcompat";
    private AbstractC0083f mDelegate;
    private Resources mResources;

    /* JADX INFO: renamed from: androidx.appcompat.app.d$a */
    class a implements SavedStateRegistry.InterfaceC0480b {
        a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.InterfaceC0480b
        /* JADX INFO: renamed from: a */
        public Bundle mo429a() {
            Bundle bundle = new Bundle();
            ActivityC0081d.this.getDelegate().mo463x(bundle);
            return bundle;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.d$b */
    class b implements InterfaceC0055b {
        b() {
        }

        @Override // androidx.activity.p001d.InterfaceC0055b
        /* JADX INFO: renamed from: a */
        public void mo320a(Context context) {
            AbstractC0083f delegate = ActivityC0081d.this.getDelegate();
            delegate.mo456q();
            delegate.mo459t(ActivityC0081d.this.getSavedStateRegistry().m3984a(ActivityC0081d.DELEGATE_TAG));
        }
    }

    public ActivityC0081d() {
        initDelegate();
    }

    private void initDelegate() {
        getSavedStateRegistry().m3987d(DELEGATE_TAG, new a());
        addOnContextAvailableListener(new b());
    }

    private void initViewTreeOwners() {
        C0412z.m3061a(getWindow().getDecorView(), this);
        C0385a0.m2978a(getWindow().getDecorView(), this);
        C0484d.m3993a(getWindow().getDecorView(), this);
    }

    private boolean performMenuItemShortcut(KeyEvent keyEvent) {
        Window window;
        return (Build.VERSION.SDK_INT >= 26 || keyEvent.isCtrlPressed() || KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) || keyEvent.getRepeatCount() != 0 || KeyEvent.isModifierKey(keyEvent.getKeyCode()) || (window = getWindow()) == null || window.getDecorView() == null || !window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) ? false : true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        getDelegate().mo447d(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(getDelegate().mo450h(context));
    }

    @Override // android.app.Activity
    public void closeOptionsMenu() {
        AbstractC0078a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.mo396g()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // androidx.core.app.ActivityC0236f, android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        AbstractC0078a supportActionBar = getSupportActionBar();
        if (keyCode == 82 && supportActionBar != null && supportActionBar.mo406q(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public <T extends View> T findViewById(int i) {
        return (T) getDelegate().mo451k(i);
    }

    public AbstractC0083f getDelegate() {
        if (this.mDelegate == null) {
            this.mDelegate = AbstractC0083f.m436i(this, this);
        }
        return this.mDelegate;
    }

    public InterfaceC0079b getDrawerToggleDelegate() {
        return getDelegate().mo452m();
    }

    @Override // android.app.Activity
    public MenuInflater getMenuInflater() {
        return getDelegate().mo454o();
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        if (this.mResources == null && C0205z0.m1438c()) {
            this.mResources = new C0205z0(this, super.getResources());
        }
        Resources resources = this.mResources;
        return resources == null ? super.getResources() : resources;
    }

    public AbstractC0078a getSupportActionBar() {
        return getDelegate().mo455p();
    }

    @Override // androidx.core.app.C0239i.a
    public Intent getSupportParentActivityIntent() {
        return C0237g.m1667a(this);
    }

    @Override // android.app.Activity
    public void invalidateOptionsMenu() {
        getDelegate().mo457r();
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (this.mResources != null) {
            this.mResources.updateConfiguration(configuration, super.getResources().getDisplayMetrics());
        }
        getDelegate().mo458s(configuration);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onContentChanged() {
        onSupportContentChanged();
    }

    public void onCreateSupportNavigateUpTaskStack(C0239i c0239i) {
        c0239i.m1682b(this);
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        getDelegate().mo460u();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (performMenuItemShortcut(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        AbstractC0078a supportActionBar = getSupportActionBar();
        if (menuItem.getItemId() != 16908332 || supportActionBar == null || (supportActionBar.mo399j() & 4) == 0) {
            return false;
        }
        return onSupportNavigateUp();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuOpened(int i, Menu menu) {
        return super.onMenuOpened(i, menu);
    }

    protected void onNightModeChanged(int i) {
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        getDelegate().mo461v(bundle);
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onPostResume() {
        super.onPostResume();
        getDelegate().mo462w();
    }

    public void onPrepareSupportNavigateUpTaskStack(C0239i c0239i) {
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStart() {
        super.onStart();
        getDelegate().mo464y();
    }

    @Override // androidx.fragment.app.ActivityC0356e, android.app.Activity
    protected void onStop() {
        super.onStop();
        getDelegate().mo465z();
    }

    @Override // androidx.appcompat.app.InterfaceC0082e
    public void onSupportActionModeFinished(AbstractC0512b abstractC0512b) {
    }

    @Override // androidx.appcompat.app.InterfaceC0082e
    public void onSupportActionModeStarted(AbstractC0512b abstractC0512b) {
    }

    @Deprecated
    public void onSupportContentChanged() {
    }

    public boolean onSupportNavigateUp() {
        Intent supportParentActivityIntent = getSupportParentActivityIntent();
        if (supportParentActivityIntent == null) {
            return false;
        }
        if (!supportShouldUpRecreateTask(supportParentActivityIntent)) {
            supportNavigateUpTo(supportParentActivityIntent);
            return true;
        }
        C0239i c0239iM1680d = C0239i.m1680d(this);
        onCreateSupportNavigateUpTaskStack(c0239iM1680d);
        onPrepareSupportNavigateUpTaskStack(c0239iM1680d);
        c0239iM1680d.m1684e();
        try {
            C0231a.m1639i(this);
            return true;
        } catch (IllegalStateException unused) {
            finish();
            return true;
        }
    }

    @Override // android.app.Activity
    protected void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        getDelegate().mo445K(charSequence);
    }

    @Override // androidx.appcompat.app.InterfaceC0082e
    public AbstractC0512b onWindowStartingSupportActionMode(AbstractC0512b.a aVar) {
        return null;
    }

    @Override // android.app.Activity
    public void openOptionsMenu() {
        AbstractC0078a supportActionBar = getSupportActionBar();
        if (getWindow().hasFeature(0)) {
            if (supportActionBar == null || !supportActionBar.mo407r()) {
                super.openOptionsMenu();
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        getDelegate().mo440E(i);
    }

    public void setSupportActionBar(Toolbar toolbar) {
        getDelegate().mo443I(toolbar);
    }

    @Deprecated
    public void setSupportProgress(int i) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminate(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarIndeterminateVisibility(boolean z) {
    }

    @Deprecated
    public void setSupportProgressBarVisibility(boolean z) {
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        super.setTheme(i);
        getDelegate().mo444J(i);
    }

    public AbstractC0512b startSupportActionMode(AbstractC0512b.a aVar) {
        return getDelegate().mo446L(aVar);
    }

    @Override // androidx.fragment.app.ActivityC0356e
    public void supportInvalidateOptionsMenu() {
        getDelegate().mo457r();
    }

    public void supportNavigateUpTo(Intent intent) {
        C0237g.m1671e(this, intent);
    }

    public boolean supportRequestWindowFeature(int i) {
        return getDelegate().mo439C(i);
    }

    public boolean supportShouldUpRecreateTask(Intent intent) {
        return C0237g.m1672f(this, intent);
    }

    public ActivityC0081d(int i) {
        super(i);
        initDelegate();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view) {
        initViewTreeOwners();
        getDelegate().mo441F(view);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        getDelegate().mo442G(view, layoutParams);
    }
}
