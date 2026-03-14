package androidx.lifecycle;

import com.yalantis.ucrop.BuildConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: androidx.lifecycle.m */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0399m {

    /* JADX INFO: renamed from: a */
    private static Map<Class<?>, Integer> f2527a = new HashMap();

    /* JADX INFO: renamed from: b */
    private static Map<Class<?>, List<Constructor<? extends InterfaceC0391e>>> f2528b = new HashMap();

    /* JADX INFO: renamed from: a */
    private static InterfaceC0391e m3016a(Constructor<? extends InterfaceC0391e> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX INFO: renamed from: b */
    private static Constructor<? extends InterfaceC0391e> m3017b(Class<?> cls) {
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : BuildConfig.FLAVOR;
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String strM3018c = m3018c(canonicalName);
            if (!name.isEmpty()) {
                strM3018c = name + "." + strM3018c;
            }
            Constructor declaredConstructor = Class.forName(strM3018c).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: renamed from: c */
    public static String m3018c(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* JADX INFO: renamed from: d */
    private static int m3019d(Class<?> cls) {
        Integer num = f2527a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int iM3022g = m3022g(cls);
        f2527a.put(cls, Integer.valueOf(iM3022g));
        return iM3022g;
    }

    /* JADX INFO: renamed from: e */
    private static boolean m3020e(Class<?> cls) {
        return cls != null && InterfaceC0395i.class.isAssignableFrom(cls);
    }

    /* JADX INFO: renamed from: f */
    static InterfaceC0394h m3021f(Object obj) {
        boolean z = obj instanceof InterfaceC0394h;
        boolean z2 = obj instanceof InterfaceC0390d;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((InterfaceC0390d) obj, (InterfaceC0394h) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((InterfaceC0390d) obj, null);
        }
        if (z) {
            return (InterfaceC0394h) obj;
        }
        Class<?> cls = obj.getClass();
        if (m3019d(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends InterfaceC0391e>> list = f2528b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(m3016a(list.get(0), obj));
        }
        InterfaceC0391e[] interfaceC0391eArr = new InterfaceC0391e[list.size()];
        for (int i = 0; i < list.size(); i++) {
            interfaceC0391eArr[i] = m3016a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(interfaceC0391eArr);
    }

    /* JADX INFO: renamed from: g */
    private static int m3022g(Class<?> cls) {
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends InterfaceC0391e> constructorM3017b = m3017b(cls);
        if (constructorM3017b != null) {
            f2528b.put(cls, Collections.singletonList(constructorM3017b));
            return 2;
        }
        if (C0386b.f2501c.m2983d(cls)) {
            return 1;
        }
        Class<? super Object> superclass = cls.getSuperclass();
        ArrayList arrayList = null;
        if (m3020e(superclass)) {
            if (m3019d(superclass) == 1) {
                return 1;
            }
            arrayList = new ArrayList(f2528b.get(superclass));
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            if (m3020e(cls2)) {
                if (m3019d(cls2) == 1) {
                    return 1;
                }
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.addAll(f2528b.get(cls2));
            }
        }
        if (arrayList == null) {
            return 1;
        }
        f2528b.put(cls, arrayList);
        return 2;
    }
}
