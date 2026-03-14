package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* JADX INFO: renamed from: androidx.appcompat.app.k */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0088k {

    /* JADX INFO: renamed from: a */
    private static Field f448a;

    /* JADX INFO: renamed from: b */
    private static boolean f449b;

    /* JADX INFO: renamed from: c */
    private static Class<?> f450c;

    /* JADX INFO: renamed from: d */
    private static boolean f451d;

    /* JADX INFO: renamed from: e */
    private static Field f452e;

    /* JADX INFO: renamed from: f */
    private static boolean f453f;

    /* JADX INFO: renamed from: g */
    private static Field f454g;

    /* JADX INFO: renamed from: h */
    private static boolean f455h;

    /* JADX INFO: renamed from: a */
    static void m585a(Resources resources) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            return;
        }
        if (i >= 24) {
            m588d(resources);
        } else if (i >= 23) {
            m587c(resources);
        } else if (i >= 21) {
            m586b(resources);
        }
    }

    /* JADX INFO: renamed from: b */
    private static void m586b(Resources resources) {
        if (!f449b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f448a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f449b = true;
        }
        Field field = f448a;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException unused2) {
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    /* JADX INFO: renamed from: c */
    private static void m587c(Resources resources) {
        if (!f449b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f448a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f449b = true;
        }
        Object obj = null;
        Field field = f448a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException unused2) {
            }
        }
        if (obj == null) {
            return;
        }
        m589e(obj);
    }

    /* JADX INFO: renamed from: d */
    private static void m588d(Resources resources) {
        Object obj;
        if (!f455h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f454g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f455h = true;
        }
        Field field = f454g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException unused2) {
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f449b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f448a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException unused3) {
            }
            f449b = true;
        }
        Field field2 = f448a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException unused4) {
            }
        }
        if (obj2 != null) {
            m589e(obj2);
        }
    }

    /* JADX INFO: renamed from: e */
    private static void m589e(Object obj) {
        if (!f451d) {
            try {
                f450c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException unused) {
            }
            f451d = true;
        }
        Class<?> cls = f450c;
        if (cls == null) {
            return;
        }
        if (!f453f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f452e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused2) {
            }
            f453f = true;
        }
        Field field = f452e;
        if (field == null) {
            return;
        }
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException unused3) {
        }
        if (longSparseArray != null) {
            longSparseArray.clear();
        }
    }
}
