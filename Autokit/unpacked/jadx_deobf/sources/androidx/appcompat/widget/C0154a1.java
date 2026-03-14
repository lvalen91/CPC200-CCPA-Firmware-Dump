package androidx.appcompat.widget;

import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.core.view.C0292v;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: androidx.appcompat.widget.a1 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0154a1 {

    /* JADX INFO: renamed from: a */
    private static Method f1030a;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                f1030a = declaredMethod;
                if (declaredMethod.isAccessible()) {
                    return;
                }
                f1030a.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m1021a(View view, Rect rect, Rect rect2) {
        Method method = f1030a;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1022b(View view) {
        return C0292v.m2046C(view) == 1;
    }

    /* JADX INFO: renamed from: c */
    public static void m1023c(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
                if (!method.isAccessible()) {
                    method.setAccessible(true);
                }
                method.invoke(view, new Object[0]);
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
        }
    }
}
