package androidx.appcompat.widget;

import android.R;
import android.annotation.SuppressLint;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.graphics.drawable.InterfaceC0253c;
import java.lang.reflect.Field;
import p016c.p017a.p020l.p021a.C0506c;

/* JADX INFO: renamed from: androidx.appcompat.widget.c0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"RestrictedAPI"})
public class C0159c0 {

    /* JADX INFO: renamed from: a */
    private static final int[] f1060a = {R.attr.state_checked};

    /* JADX INFO: renamed from: b */
    private static final int[] f1061b = new int[0];

    /* JADX INFO: renamed from: c */
    public static final Rect f1062c = new Rect();

    /* JADX INFO: renamed from: d */
    private static Class<?> f1063d;

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f1063d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static boolean m1070a(Drawable drawable) {
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            return false;
        }
        if (!(drawable instanceof DrawableContainer)) {
            if (drawable instanceof InterfaceC0253c) {
                return m1070a(((InterfaceC0253c) drawable).mo1798a());
            }
            if (drawable instanceof C0506c) {
                return m1070a(((C0506c) drawable).m4114a());
            }
            if (drawable instanceof ScaleDrawable) {
                return m1070a(((ScaleDrawable) drawable).getDrawable());
            }
            return true;
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!m1070a(drawable2)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: renamed from: b */
    static void m1071b(Drawable drawable) {
        if (Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            m1072c(drawable);
        }
    }

    /* JADX INFO: renamed from: c */
    private static void m1072c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1060a);
        } else {
            drawable.setState(f1061b);
        }
        drawable.setState(state);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX INFO: renamed from: d */
    public static Rect m1073d(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 29) {
            Insets opticalInsets = drawable.getOpticalInsets();
            Rect rect = new Rect();
            rect.left = opticalInsets.left;
            rect.right = opticalInsets.right;
            rect.top = opticalInsets.top;
            rect.bottom = opticalInsets.bottom;
            return rect;
        }
        if (f1063d != null) {
            try {
                Drawable drawableM1796q = C0251a.m1796q(drawable);
                Object objInvoke = drawableM1796q.getClass().getMethod("getOpticalInsets", new Class[0]).invoke(drawableM1796q, new Object[0]);
                if (objInvoke != null) {
                    Rect rect2 = new Rect();
                    for (Field field : f1063d.getFields()) {
                        String name = field.getName();
                        byte b2 = -1;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    b2 = 3;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    b2 = 1;
                                }
                                break;
                            case 3317767:
                                if (name.equals("left")) {
                                    b2 = 0;
                                }
                                break;
                            case 108511772:
                                if (name.equals("right")) {
                                    b2 = 2;
                                }
                                break;
                        }
                        if (b2 == 0) {
                            rect2.left = field.getInt(objInvoke);
                        } else if (b2 == 1) {
                            rect2.top = field.getInt(objInvoke);
                        } else if (b2 == 2) {
                            rect2.right = field.getInt(objInvoke);
                        } else if (b2 == 3) {
                            rect2.bottom = field.getInt(objInvoke);
                        }
                    }
                    return rect2;
                }
            } catch (Exception unused) {
            }
        }
        return f1062c;
    }

    /* JADX INFO: renamed from: e */
    public static PorterDuff.Mode m1074e(int i, PorterDuff.Mode mode) {
        if (i == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
