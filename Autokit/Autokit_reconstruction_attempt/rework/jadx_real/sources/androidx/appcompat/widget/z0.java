package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class z0 extends Resources {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f440b;
    private final WeakReference<Context> a;

    public z0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.a = new WeakReference<>(context);
    }

    public static boolean a() {
        return f440b;
    }

    public static void b(boolean z) {
        f440b = z;
    }

    public static boolean c() {
        return a() && Build.VERSION.SDK_INT <= 20;
    }

    final Drawable d(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.a.get();
        return context != null ? k0.h().t(context, this, i) : super.getDrawable(i);
    }
}
