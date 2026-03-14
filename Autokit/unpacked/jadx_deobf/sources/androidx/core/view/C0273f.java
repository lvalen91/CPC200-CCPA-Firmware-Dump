package androidx.core.view;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: androidx.core.view.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0273f {

    /* JADX INFO: renamed from: a */
    private static boolean f1875a;

    /* JADX INFO: renamed from: b */
    private static Method f1876b;

    /* JADX INFO: renamed from: c */
    private static boolean f1877c;

    /* JADX INFO: renamed from: d */
    private static Field f1878d;

    /* JADX INFO: renamed from: androidx.core.view.f$a */
    public interface a {
        boolean superDispatchKeyEvent(KeyEvent keyEvent);
    }

    /* JADX INFO: renamed from: a */
    private static boolean m1977a(ActionBar actionBar, KeyEvent keyEvent) {
        if (!f1875a) {
            try {
                f1876b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
            } catch (NoSuchMethodException unused) {
            }
            f1875a = true;
        }
        Method method = f1876b;
        if (method != null) {
            try {
                return ((Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: b */
    private static boolean m1978b(Activity activity, KeyEvent keyEvent) {
        activity.onUserInteraction();
        Window window = activity.getWindow();
        if (window.hasFeature(8)) {
            ActionBar actionBar = activity.getActionBar();
            if (keyEvent.getKeyCode() == 82 && actionBar != null && m1977a(actionBar, keyEvent)) {
                return true;
            }
        }
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C0292v.m2092i(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
    }

    /* JADX INFO: renamed from: c */
    private static boolean m1979c(Dialog dialog, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListenerM1982f = m1982f(dialog);
        if (onKeyListenerM1982f != null && onKeyListenerM1982f.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window = dialog.getWindow();
        if (window.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView = window.getDecorView();
        if (C0292v.m2092i(decorView, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView != null ? decorView.getKeyDispatcherState() : null, dialog);
    }

    /* JADX INFO: renamed from: d */
    public static boolean m1980d(View view, KeyEvent keyEvent) {
        return C0292v.m2094j(view, keyEvent);
    }

    /* JADX INFO: renamed from: e */
    public static boolean m1981e(a aVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        if (aVar == null) {
            return false;
        }
        return Build.VERSION.SDK_INT >= 28 ? aVar.superDispatchKeyEvent(keyEvent) : callback instanceof Activity ? m1978b((Activity) callback, keyEvent) : callback instanceof Dialog ? m1979c((Dialog) callback, keyEvent) : (view != null && C0292v.m2092i(view, keyEvent)) || aVar.superDispatchKeyEvent(keyEvent);
    }

    /* JADX INFO: renamed from: f */
    private static DialogInterface.OnKeyListener m1982f(Dialog dialog) {
        if (!f1877c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f1878d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f1877c = true;
        }
        Field field = f1878d;
        if (field == null) {
            return null;
        }
        try {
            return (DialogInterface.OnKeyListener) field.get(dialog);
        } catch (IllegalAccessException unused2) {
            return null;
        }
    }
}
