package androidx.databinding;

import android.R;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: renamed from: androidx.databinding.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0328f {

    /* JADX INFO: renamed from: a */
    private static AbstractC0325c f2037a = new C0326d();

    /* JADX INFO: renamed from: b */
    private static InterfaceC0327e f2038b = null;

    /* JADX INFO: renamed from: a */
    static <T extends ViewDataBinding> T m2355a(InterfaceC0327e interfaceC0327e, View view, int i) {
        return (T) f2037a.mo2353b(interfaceC0327e, view, i);
    }

    /* JADX INFO: renamed from: b */
    static <T extends ViewDataBinding> T m2356b(InterfaceC0327e interfaceC0327e, View[] viewArr, int i) {
        return (T) f2037a.mo2354c(interfaceC0327e, viewArr, i);
    }

    /* JADX INFO: renamed from: c */
    private static <T extends ViewDataBinding> T m2357c(InterfaceC0327e interfaceC0327e, ViewGroup viewGroup, int i, int i2) {
        int childCount = viewGroup.getChildCount();
        int i3 = childCount - i;
        if (i3 == 1) {
            return (T) m2355a(interfaceC0327e, viewGroup.getChildAt(childCount - 1), i2);
        }
        View[] viewArr = new View[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            viewArr[i4] = viewGroup.getChildAt(i4 + i);
        }
        return (T) m2356b(interfaceC0327e, viewArr, i2);
    }

    /* JADX INFO: renamed from: d */
    public static InterfaceC0327e m2358d() {
        return f2038b;
    }

    /* JADX INFO: renamed from: e */
    public static <T extends ViewDataBinding> T m2359e(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z) {
        return (T) m2360f(layoutInflater, i, viewGroup, z, f2038b);
    }

    /* JADX INFO: renamed from: f */
    public static <T extends ViewDataBinding> T m2360f(LayoutInflater layoutInflater, int i, ViewGroup viewGroup, boolean z, InterfaceC0327e interfaceC0327e) {
        boolean z2 = viewGroup != null && z;
        return z2 ? (T) m2357c(interfaceC0327e, viewGroup, z2 ? viewGroup.getChildCount() : 0, i) : (T) m2355a(interfaceC0327e, layoutInflater.inflate(i, viewGroup, z), i);
    }

    /* JADX INFO: renamed from: g */
    public static <T extends ViewDataBinding> T m2361g(Activity activity, int i) {
        return (T) m2362h(activity, i, f2038b);
    }

    /* JADX INFO: renamed from: h */
    public static <T extends ViewDataBinding> T m2362h(Activity activity, int i, InterfaceC0327e interfaceC0327e) {
        activity.setContentView(i);
        return (T) m2357c(interfaceC0327e, (ViewGroup) activity.getWindow().getDecorView().findViewById(R.id.content), 0, i);
    }
}
