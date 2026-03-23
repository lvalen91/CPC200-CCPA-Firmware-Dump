package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import p016c.p032d.C0540g;

/* JADX INFO: renamed from: androidx.fragment.app.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0362j {

    /* JADX INFO: renamed from: a */
    private static final C0540g<ClassLoader, C0540g<String, Class<?>>> f2269a = new C0540g<>();

    /* JADX INFO: renamed from: b */
    static boolean m2654b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m2655c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: c */
    private static Class<?> m2655c(ClassLoader classLoader, String str) throws ClassNotFoundException {
        C0540g<String, Class<?>> c0540g = f2269a.get(classLoader);
        if (c0540g == null) {
            c0540g = new C0540g<>();
            f2269a.put(classLoader, c0540g);
        }
        Class<?> cls = c0540g.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        c0540g.put(str, cls2);
        return cls2;
    }

    /* JADX INFO: renamed from: d */
    public static Class<? extends Fragment> m2656d(ClassLoader classLoader, String str) {
        try {
            return m2655c(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.C0345i("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.C0345i("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* JADX INFO: renamed from: a */
    public Fragment mo2657a(ClassLoader classLoader, String str) {
        throw null;
    }
}
