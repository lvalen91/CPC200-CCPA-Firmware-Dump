package c.a.o;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class d extends ContextWrapper {
    private int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Resources.Theme f1025b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private LayoutInflater f1026c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Configuration f1027d;
    private Resources e;

    public d() {
        super(null);
    }

    private Resources b() {
        if (this.e == null) {
            Configuration configuration = this.f1027d;
            if (configuration == null) {
                this.e = super.getResources();
            } else if (Build.VERSION.SDK_INT >= 17) {
                this.e = createConfigurationContext(configuration).getResources();
            } else {
                Resources resources = super.getResources();
                Configuration configuration2 = new Configuration(resources.getConfiguration());
                configuration2.updateFrom(this.f1027d);
                this.e = new Resources(resources.getAssets(), resources.getDisplayMetrics(), configuration2);
            }
        }
        return this.e;
    }

    private void d() {
        boolean z = this.f1025b == null;
        if (z) {
            this.f1025b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f1025b.setTo(theme);
            }
        }
        e(this.f1025b, this.a, z);
    }

    public void a(Configuration configuration) {
        if (this.e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f1027d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f1027d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public int c() {
        return this.a;
    }

    protected void e(Resources.Theme theme, int i, boolean z) {
        theme.applyStyle(i, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return b();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f1026c == null) {
            this.f1026c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f1026c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1025b;
        if (theme != null) {
            return theme;
        }
        if (this.a == 0) {
            this.a = c.a.i.Theme_AppCompat_Light;
        }
        d();
        return this.f1025b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        if (this.a != i) {
            this.a = i;
            d();
        }
    }

    public d(Context context, int i) {
        super(context);
        this.a = i;
    }

    public d(Context context, Resources.Theme theme) {
        super(context);
        this.f1025b = theme;
    }
}
