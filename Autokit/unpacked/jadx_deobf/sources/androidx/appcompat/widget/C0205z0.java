package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;

/* JADX INFO: renamed from: androidx.appcompat.widget.z0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0205z0 extends Resources {

    /* JADX INFO: renamed from: b */
    private static boolean f1399b;

    /* JADX INFO: renamed from: a */
    private final WeakReference<Context> f1400a;

    public C0205z0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1400a = new WeakReference<>(context);
    }

    /* JADX INFO: renamed from: a */
    public static boolean m1436a() {
        return f1399b;
    }

    /* JADX INFO: renamed from: b */
    public static void m1437b(boolean z) {
        f1399b = z;
    }

    /* JADX INFO: renamed from: c */
    public static boolean m1438c() {
        return m1436a() && Build.VERSION.SDK_INT <= 20;
    }

    /* JADX INFO: renamed from: d */
    final Drawable m1439d(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.f1400a.get();
        return context != null ? C0175k0.m1202h().m1216t(context, this, i) : super.getDrawable(i);
    }
}
