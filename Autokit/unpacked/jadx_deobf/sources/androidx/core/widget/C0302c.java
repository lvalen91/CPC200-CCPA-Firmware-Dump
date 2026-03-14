package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
import java.lang.reflect.Field;

/* JADX INFO: renamed from: androidx.core.widget.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0302c {

    /* JADX INFO: renamed from: a */
    private static Field f1992a;

    /* JADX INFO: renamed from: b */
    private static boolean f1993b;

    /* JADX INFO: renamed from: a */
    public static Drawable m2263a(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 23) {
            return compoundButton.getButtonDrawable();
        }
        if (!f1993b) {
            try {
                Field declaredField = CompoundButton.class.getDeclaredField("mButtonDrawable");
                f1992a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f1993b = true;
        }
        Field field = f1992a;
        if (field != null) {
            try {
                return (Drawable) field.get(compoundButton);
            } catch (IllegalAccessException unused2) {
                f1992a = null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public static ColorStateList m2264b(CompoundButton compoundButton) {
        if (Build.VERSION.SDK_INT >= 21) {
            return compoundButton.getButtonTintList();
        }
        if (compoundButton instanceof InterfaceC0310k) {
            return ((InterfaceC0310k) compoundButton).getSupportButtonTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: c */
    public static void m2265c(CompoundButton compoundButton, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintList(colorStateList);
        } else if (compoundButton instanceof InterfaceC0310k) {
            ((InterfaceC0310k) compoundButton).setSupportButtonTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: d */
    public static void m2266d(CompoundButton compoundButton, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            compoundButton.setButtonTintMode(mode);
        } else if (compoundButton instanceof InterfaceC0310k) {
            ((InterfaceC0310k) compoundButton).setSupportButtonTintMode(mode);
        }
    }
}
