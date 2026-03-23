package p016c.p065p;

import android.animation.LayoutTransition;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: c.p.y */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0689y {

    /* JADX INFO: renamed from: a */
    private static LayoutTransition f4064a;

    /* JADX INFO: renamed from: b */
    private static Field f4065b;

    /* JADX INFO: renamed from: c */
    private static boolean f4066c;

    /* JADX INFO: renamed from: d */
    private static Method f4067d;

    /* JADX INFO: renamed from: e */
    private static boolean f4068e;

    /* JADX INFO: renamed from: c.p.y$a */
    static class a extends LayoutTransition {
        a() {
        }

        @Override // android.animation.LayoutTransition
        public boolean isChangingLayout() {
            return true;
        }
    }

    /* JADX INFO: renamed from: a */
    private static void m5182a(LayoutTransition layoutTransition) {
        if (!f4068e) {
            try {
                Method declaredMethod = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f4067d = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (NoSuchMethodException unused) {
            }
            f4068e = true;
        }
        Method method = f4067d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException | InvocationTargetException unused2) {
            }
        }
    }

    /* JADX INFO: renamed from: b */
    static void m5183b(ViewGroup viewGroup, boolean z) {
        boolean z2 = false;
        if (f4064a == null) {
            a aVar = new a();
            f4064a = aVar;
            aVar.setAnimator(2, null);
            f4064a.setAnimator(0, null);
            f4064a.setAnimator(1, null);
            f4064a.setAnimator(3, null);
            f4064a.setAnimator(4, null);
        }
        if (z) {
            LayoutTransition layoutTransition = viewGroup.getLayoutTransition();
            if (layoutTransition != null) {
                if (layoutTransition.isRunning()) {
                    m5182a(layoutTransition);
                }
                if (layoutTransition != f4064a) {
                    viewGroup.setTag(C0670j.transition_layout_save, layoutTransition);
                }
            }
            viewGroup.setLayoutTransition(f4064a);
            return;
        }
        viewGroup.setLayoutTransition(null);
        if (!f4066c) {
            try {
                Field declaredField = ViewGroup.class.getDeclaredField("mLayoutSuppressed");
                f4065b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f4066c = true;
        }
        Field field = f4065b;
        if (field != null) {
            try {
                boolean z3 = field.getBoolean(viewGroup);
                if (z3) {
                    try {
                        f4065b.setBoolean(viewGroup, false);
                    } catch (IllegalAccessException unused2) {
                    }
                }
                z2 = z3;
            } catch (IllegalAccessException unused3) {
            }
        }
        if (z2) {
            viewGroup.requestLayout();
        }
        LayoutTransition layoutTransition2 = (LayoutTransition) viewGroup.getTag(C0670j.transition_layout_save);
        if (layoutTransition2 != null) {
            viewGroup.setTag(C0670j.transition_layout_save, null);
            viewGroup.setLayoutTransition(layoutTransition2);
        }
    }
}
