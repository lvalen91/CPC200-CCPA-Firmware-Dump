package androidx.databinding;

import android.R;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class f {
    private static c a = new d();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static e f644b = null;

    static <T extends ViewDataBinding> T a(e eVar, View view, int i) {
        return (T) a.b(eVar, view, i);
    }

    static <T extends ViewDataBinding> T b(e eVar, View[] viewArr, int i) {
        return (T) a.c(eVar, viewArr, i);
    }

    private static <T extends ViewDataBinding> T c(e eVar, ViewGroup viewGroup, int i, int i2) {
        int childCount = viewGroup.getChildCount();
        int i3 = childCount - i;
        if (i3 == 1) {
            return (T) a(eVar, viewGroup.getChildAt(childCount - 1), i2);
        }
        View[] viewArr = new View[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4] = viewGroup.getChildAt(i4 + i);
        }
        return (T) b(eVar, viewArr, i2);
    }

    public static e d() {
        return f644b;
    }

    public static <T extends ViewDataBinding> T e(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        return (T) f(layoutInflater, i, viewGroup, z, f644b);
    }

    public static <T extends ViewDataBinding> T f(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, e eVar) {
        boolean z2 = viewGroup != null && z;
        return z2 ? (T) c(eVar, viewGroup, z2 ? viewGroup.getChildCount() : 0, i) : (T) a(eVar, layoutInflater.inflate(i, viewGroup, z), i);
    }

    public static <T extends ViewDataBinding> T g(Activity activity, int i) {
        return (T) h(activity, i, f644b);
    }

    public static <T extends ViewDataBinding> T h(Activity activity, int i, e eVar) {
        activity.setContentView(i);
        return (T) c(eVar, (ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content), 0, i);
    }
}
