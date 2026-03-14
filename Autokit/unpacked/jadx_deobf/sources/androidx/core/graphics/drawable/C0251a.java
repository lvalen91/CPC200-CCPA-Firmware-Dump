package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: renamed from: androidx.core.graphics.drawable.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0251a {

    /* JADX INFO: renamed from: a */
    private static Method f1788a;

    /* JADX INFO: renamed from: b */
    private static boolean f1789b;

    /* JADX INFO: renamed from: c */
    private static Method f1790c;

    /* JADX INFO: renamed from: d */
    private static boolean f1791d;

    /* JADX INFO: renamed from: a */
    public static void m1780a(Drawable drawable, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.applyTheme(theme);
        }
    }

    /* JADX INFO: renamed from: b */
    public static boolean m1781b(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.canApplyTheme();
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: c */
    public static void m1782c(Drawable drawable) {
        DrawableContainer.DrawableContainerState drawableContainerState;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            drawable.clearColorFilter();
            return;
        }
        if (i < 21) {
            drawable.clearColorFilter();
            return;
        }
        drawable.clearColorFilter();
        if (drawable instanceof InsetDrawable) {
            m1782c(((InsetDrawable) drawable).getDrawable());
            return;
        }
        if (drawable instanceof InterfaceC0253c) {
            m1782c(((InterfaceC0253c) drawable).mo1798a());
            return;
        }
        if (!(drawable instanceof DrawableContainer) || (drawableContainerState = (DrawableContainer.DrawableContainerState) ((DrawableContainer) drawable).getConstantState()) == null) {
            return;
        }
        int childCount = drawableContainerState.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            Drawable child = drawableContainerState.getChild(i2);
            if (child != null) {
                m1782c(child);
            }
        }
    }

    /* JADX INFO: renamed from: d */
    public static int m1783d(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.getAlpha();
        }
        return 0;
    }

    /* JADX INFO: renamed from: e */
    public static ColorFilter m1784e(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 21) {
            return drawable.getColorFilter();
        }
        return null;
    }

    /* JADX INFO: renamed from: f */
    public static int m1785f(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return drawable.getLayoutDirection();
        }
        if (i >= 17) {
            if (!f1791d) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("getLayoutDirection", new Class[0]);
                    f1790c = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1791d = true;
            }
            Method method = f1790c;
            if (method != null) {
                try {
                    return ((Integer) method.invoke(drawable, new Object[0])).intValue();
                } catch (Exception unused2) {
                    f1790c = null;
                }
            }
        }
        return 0;
    }

    /* JADX INFO: renamed from: g */
    public static void m1786g(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.inflate(resources, xmlPullParser, attributeSet, theme);
        } else {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        }
    }

    /* JADX INFO: renamed from: h */
    public static boolean m1787h(Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return drawable.isAutoMirrored();
        }
        return false;
    }

    @Deprecated
    /* JADX INFO: renamed from: i */
    public static void m1788i(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    /* JADX INFO: renamed from: j */
    public static void m1789j(Drawable drawable, boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            drawable.setAutoMirrored(z);
        }
    }

    /* JADX INFO: renamed from: k */
    public static void m1790k(Drawable drawable, float f, float f2) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspot(f, f2);
        }
    }

    /* JADX INFO: renamed from: l */
    public static void m1791l(Drawable drawable, int i, int i2, int i3, int i4) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setHotspotBounds(i, i2, i3, i4);
        }
    }

    /* JADX INFO: renamed from: m */
    public static boolean m1792m(Drawable drawable, int i) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            return drawable.setLayoutDirection(i);
        }
        if (i2 >= 17) {
            if (!f1789b) {
                try {
                    Method declaredMethod = Drawable.class.getDeclaredMethod("setLayoutDirection", Integer.TYPE);
                    f1788a = declaredMethod;
                    declaredMethod.setAccessible(true);
                } catch (NoSuchMethodException unused) {
                }
                f1789b = true;
            }
            Method method = f1788a;
            if (method != null) {
                try {
                    method.invoke(drawable, Integer.valueOf(i));
                    return true;
                } catch (Exception unused2) {
                    f1788a = null;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: n */
    public static void m1793n(Drawable drawable, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTint(i);
        } else if (drawable instanceof InterfaceC0252b) {
            ((InterfaceC0252b) drawable).setTint(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: o */
    public static void m1794o(Drawable drawable, ColorStateList colorStateList) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintList(colorStateList);
        } else if (drawable instanceof InterfaceC0252b) {
            ((InterfaceC0252b) drawable).setTintList(colorStateList);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: p */
    public static void m1795p(Drawable drawable, PorterDuff.Mode mode) {
        if (Build.VERSION.SDK_INT >= 21) {
            drawable.setTintMode(mode);
        } else if (drawable instanceof InterfaceC0252b) {
            ((InterfaceC0252b) drawable).setTintMode(mode);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: q */
    public static <T extends Drawable> T m1796q(Drawable drawable) {
        return drawable instanceof InterfaceC0253c ? (T) ((InterfaceC0253c) drawable).mo1798a() : drawable;
    }

    /* JADX INFO: renamed from: r */
    public static Drawable m1797r(Drawable drawable) {
        int i = Build.VERSION.SDK_INT;
        return i >= 23 ? drawable : i >= 21 ? !(drawable instanceof InterfaceC0252b) ? new C0255e(drawable) : drawable : !(drawable instanceof InterfaceC0252b) ? new C0254d(drawable) : drawable;
    }
}
