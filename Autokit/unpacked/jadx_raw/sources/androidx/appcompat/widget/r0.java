package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class r0 extends ContextWrapper {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f383c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static ArrayList<WeakReference<r0>> f384d;
    private final Resources a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Resources.Theme f385b;

    private r0(Context context) {
        super(context);
        if (!z0.c()) {
            this.a = new t0(this, context.getResources());
            this.f385b = null;
            return;
        }
        z0 z0Var = new z0(this, context.getResources());
        this.a = z0Var;
        Resources.Theme themeNewTheme = z0Var.newTheme();
        this.f385b = themeNewTheme;
        themeNewTheme.setTo(context.getTheme());
    }

    private static boolean a(Context context) {
        if ((context instanceof r0) || (context.getResources() instanceof t0) || (context.getResources() instanceof z0)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || z0.c();
    }

    public static Context b(Context context) {
        if (!a(context)) {
            return context;
        }
        synchronized (f383c) {
            if (f384d == null) {
                f384d = new ArrayList<>();
            } else {
                for (int size = f384d.size() - 1; size >= 0; size--) {
                    WeakReference<r0> weakReference = f384d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f384d.remove(size);
                    }
                }
                for (int size2 = f384d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<r0> weakReference2 = f384d.get(size2);
                    r0 r0Var = weakReference2 != null ? weakReference2.get() : null;
                    if (r0Var != null && r0Var.getBaseContext() == context) {
                        return r0Var;
                    }
                }
            }
            r0 r0Var2 = new r0(context);
            f384d.add(new WeakReference<>(r0Var2));
            return r0Var2;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f385b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f385b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
