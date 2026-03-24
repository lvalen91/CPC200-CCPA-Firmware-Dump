package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.f;
import androidx.lifecycle.h;
import androidx.lifecycle.j;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class ImmLeaksCleaner implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f65b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Field f66c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f67d;
    private static Field e;
    private Activity a;

    ImmLeaksCleaner(Activity activity) {
        this.a = activity;
    }

    private static void h() {
        try {
            f65b = 2;
            Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
            f67d = declaredField;
            declaredField.setAccessible(true);
            Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
            e = declaredField2;
            declaredField2.setAccessible(true);
            Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
            f66c = declaredField3;
            declaredField3.setAccessible(true);
            f65b = 1;
        } catch (NoSuchFieldException unused) {
        }
    }

    @Override // androidx.lifecycle.h
    public void d(j jVar, f.b bVar) {
        if (bVar != f.b.ON_DESTROY) {
            return;
        }
        if (f65b == 0) {
            h();
        }
        if (f65b == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.a.getSystemService("input_method");
            try {
                Object obj = f66c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f67d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                e.set(inputMethodManager, null);
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
