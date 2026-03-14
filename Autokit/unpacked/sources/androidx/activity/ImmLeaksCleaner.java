package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.AbstractC0392f;
import androidx.lifecycle.InterfaceC0394h;
import androidx.lifecycle.InterfaceC0396j;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class ImmLeaksCleaner implements InterfaceC0394h {

    /* JADX INFO: renamed from: b */
    private static int f165b;

    /* JADX INFO: renamed from: c */
    private static Field f166c;

    /* JADX INFO: renamed from: d */
    private static Field f167d;

    /* JADX INFO: renamed from: e */
    private static Field f168e;

    /* JADX INFO: renamed from: a */
    private Activity f169a;

    ImmLeaksCleaner(Activity activity) {
        this.f169a = activity;
    }

    /* JADX INFO: renamed from: h */
    private static void m305h() {
        try {
            f165b = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f167d = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            f168e = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f166c = declaredField3;
            declaredField3.setAccessible(true);
            f165b = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    @Override // androidx.lifecycle.InterfaceC0394h
    /* JADX INFO: renamed from: d */
    public void mo303d(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar) {
        if (bVar != AbstractC0392f.b.ON_DESTROY) {
            return;
        }
        if (f165b == 0) {
            m305h();
        }
        if (f165b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f169a.getSystemService("input_method");
            try {
                Object obj = f166c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f167d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f168e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused) {
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    } catch (ClassCastException unused2) {
                    } catch (IllegalAccessException unused3) {
                    }
                }
            } catch (IllegalAccessException unused4) {
            }
        }
    }
}
