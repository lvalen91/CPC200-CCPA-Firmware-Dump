package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class LayoutInflaterCompat {
    private static final String TAG = "LayoutInflaterCompatHC";
    private static boolean sCheckedField;
    private static Field sLayoutInflaterFactory2Field;

    /* JADX INFO: renamed from: androidx.core.view.LayoutInflaterCompat$a */
    static class LayoutInflaterFactory2C0257a implements LayoutInflater.Factory2 {

        /* JADX INFO: renamed from: b */
        final InterfaceC0277g f1804b;

        LayoutInflaterFactory2C0257a(InterfaceC0277g interfaceC0277g) {
            this.f1804b = interfaceC0277g;
        }

        @Override // android.view.LayoutInflater.Factory
        public View onCreateView(String str, Context context, AttributeSet attributeSet) {
            return this.f1804b.onCreateView(null, str, context, attributeSet);
        }

        public String toString() {
            return LayoutInflaterFactory2C0257a.class.getName() + "{" + this.f1804b + "}";
        }

        @Override // android.view.LayoutInflater.Factory2
        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.f1804b.onCreateView(view, str, context, attributeSet);
        }
    }

    private LayoutInflaterCompat() {
    }

    private static void forceSetFactory2(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        if (!sCheckedField) {
            try {
                Field declaredField = LayoutInflater.class.getDeclaredField("mFactory2");
                sLayoutInflaterFactory2Field = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                String str = "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.";
            }
            sCheckedField = true;
        }
        Field field = sLayoutInflaterFactory2Field;
        if (field != null) {
            try {
                field.set(layoutInflater, factory2);
            } catch (IllegalAccessException unused2) {
                String str2 = "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.";
            }
        }
    }

    @Deprecated
    public static InterfaceC0277g getFactory(LayoutInflater layoutInflater) {
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflaterFactory2C0257a) {
            return ((LayoutInflaterFactory2C0257a) factory).f1804b;
        }
        return null;
    }

    @Deprecated
    public static void setFactory(LayoutInflater layoutInflater, InterfaceC0277g interfaceC0277g) {
        if (Build.VERSION.SDK_INT >= 21) {
            layoutInflater.setFactory2(interfaceC0277g != null ? new LayoutInflaterFactory2C0257a(interfaceC0277g) : null);
            return;
        }
        LayoutInflaterFactory2C0257a layoutInflaterFactory2C0257a = interfaceC0277g != null ? new LayoutInflaterFactory2C0257a(interfaceC0277g) : null;
        layoutInflater.setFactory2(layoutInflaterFactory2C0257a);
        LayoutInflater.Factory factory = layoutInflater.getFactory();
        if (factory instanceof LayoutInflater.Factory2) {
            forceSetFactory2(layoutInflater, (LayoutInflater.Factory2) factory);
        } else {
            forceSetFactory2(layoutInflater, layoutInflaterFactory2C0257a);
        }
    }

    public static void setFactory2(LayoutInflater layoutInflater, LayoutInflater.Factory2 factory2) {
        layoutInflater.setFactory2(factory2);
        if (Build.VERSION.SDK_INT < 21) {
            LayoutInflater.Factory factory = layoutInflater.getFactory();
            if (factory instanceof LayoutInflater.Factory2) {
                forceSetFactory2(layoutInflater, (LayoutInflater.Factory2) factory);
            } else {
                forceSetFactory2(layoutInflater, factory2);
            }
        }
    }
}
