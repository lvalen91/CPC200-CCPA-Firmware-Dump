package androidx.appcompat.widget;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Build;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.appcompat.widget.r0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0189r0 extends ContextWrapper {

    /* JADX INFO: renamed from: c */
    private static final Object f1267c = new Object();

    /* JADX INFO: renamed from: d */
    private static ArrayList<WeakReference<C0189r0>> f1268d;

    /* JADX INFO: renamed from: a */
    private final Resources f1269a;

    /* JADX INFO: renamed from: b */
    private final Resources.Theme f1270b;

    private C0189r0(Context context) {
        super(context);
        if (!C0205z0.m1438c()) {
            this.f1269a = new C0193t0(this, context.getResources());
            this.f1270b = null;
            return;
        }
        C0205z0 c0205z0 = new C0205z0(this, context.getResources());
        this.f1269a = c0205z0;
        Resources.Theme themeNewTheme = c0205z0.newTheme();
        this.f1270b = themeNewTheme;
        themeNewTheme.setTo(context.getTheme());
    }

    /* JADX INFO: renamed from: a */
    private static boolean m1285a(Context context) {
        if ((context instanceof C0189r0) || (context.getResources() instanceof C0193t0) || (context.getResources() instanceof C0205z0)) {
            return false;
        }
        return Build.VERSION.SDK_INT < 21 || C0205z0.m1438c();
    }

    /* JADX INFO: renamed from: b */
    public static Context m1286b(Context context) {
        if (!m1285a(context)) {
            return context;
        }
        synchronized (f1267c) {
            if (f1268d == null) {
                f1268d = new ArrayList<>();
            } else {
                for (int size = f1268d.size() - 1; size >= 0; size--) {
                    WeakReference<C0189r0> weakReference = f1268d.get(size);
                    if (weakReference == null || weakReference.get() == null) {
                        f1268d.remove(size);
                    }
                }
                for (int size2 = f1268d.size() - 1; size2 >= 0; size2--) {
                    WeakReference<C0189r0> weakReference2 = f1268d.get(size2);
                    C0189r0 c0189r0 = weakReference2 != null ? weakReference2.get() : null;
                    if (c0189r0 != null && c0189r0.getBaseContext() == context) {
                        return c0189r0;
                    }
                }
            }
            C0189r0 c0189r02 = new C0189r0(context);
            f1268d.add(new WeakReference<>(c0189r02));
            return c0189r02;
        }
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return this.f1269a.getAssets();
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources getResources() {
        return this.f1269a;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f1270b;
        return theme == null ? super.getTheme() : theme;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i) {
        Resources.Theme theme = this.f1270b;
        if (theme == null) {
            super.setTheme(i);
        } else {
            theme.applyStyle(i, true);
        }
    }
}
