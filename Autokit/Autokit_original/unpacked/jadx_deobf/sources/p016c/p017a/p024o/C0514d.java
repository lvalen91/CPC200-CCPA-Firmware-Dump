package p016c.p017a.p024o;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import p016c.p017a.C0501i;

/* JADX INFO: renamed from: c.a.o.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0514d extends ContextWrapper {

    /* JADX INFO: renamed from: a */
    private int f3163a;

    /* JADX INFO: renamed from: b */
    private Resources.Theme f3164b;

    /* JADX INFO: renamed from: c */
    private LayoutInflater f3165c;

    /* JADX INFO: renamed from: d */
    private Configuration f3166d;

    /* JADX INFO: renamed from: e */
    private Resources f3167e;

    public C0514d() {
        super(null);
    }

    /* JADX INFO: renamed from: b */
    private Resources m4130b() {
        if (this.f3167e == null) {
            Configuration configuration = this.f3166d;
            if (configuration == null) {
                this.f3167e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.f3167e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f3166d);
                this.f3167e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.f3167e;
    }

    /* JADX INFO: renamed from: d */
    private void m4131d() {
        boolean z = this.f3164b == null;
        if (z) {
            this.f3164b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f3164b.setTo(theme);
            }
        }
        m4134e(this.f3164b, this.f3163a, z);
    }

    /* JADX INFO: renamed from: a */
    public void mo4132a(Configuration configuration) {
        if (this.f3167e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f3166d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f3166d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    /* JADX INFO: renamed from: c */
    public int m4133c() {
        return this.f3163a;
    }

    /* JADX INFO: renamed from: e */
    protected void m4134e(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return m4130b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f3165c == null) {
            this.f3165c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f3165c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f3164b;
        if (theme != null) {
            return theme;
        }
        if (this.f3163a == 0) {
            this.f3163a = C0501i.Theme_AppCompat_Light;
        }
        m4131d();
        return this.f3164b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.f3163a != i) {
            this.f3163a = i;
            m4131d();
        }
    }

    public C0514d(Context context, int i) {
        super(context);
        this.f3163a = i;
    }

    public C0514d(Context context, Resources.Theme theme) {
        super(context);
        this.f3164b = theme;
    }
}
