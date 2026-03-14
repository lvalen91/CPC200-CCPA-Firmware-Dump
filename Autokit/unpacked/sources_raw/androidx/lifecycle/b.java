package androidx.lifecycle;

import androidx.lifecycle.f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static b f817c = new b();
    private final Map<Class<?>, a> a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, Boolean> f818b = new HashMap();

    static class a {
        final Map<f.b, List<C0034b>> a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<C0034b, f.b> f819b;

        a(Map<C0034b, f.b> map) {
            this.f819b = map;
            for (Map.Entry<C0034b, f.b> entry : map.entrySet()) {
                f.b value = entry.getValue();
                List<C0034b> arrayList = this.a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        private static void b(List<C0034b> list, j jVar, f.b bVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(jVar, bVar, obj);
                }
            }
        }

        void a(j jVar, f.b bVar, Object obj) {
            b(this.a.get(bVar), jVar, bVar, obj);
            b(this.a.get(f.b.ON_ANY), jVar, bVar, obj);
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.b$b, reason: collision with other inner class name */
    static final class C0034b {
        final int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f820b;

        C0034b(int i, Method method) {
            this.a = i;
            this.f820b = method;
            method.setAccessible(true);
        }

        void a(j jVar, f.b bVar, Object obj) {
            try {
                int i = this.a;
                if (i == 0) {
                    this.f820b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f820b.invoke(obj, jVar);
                } else {
                    if (i != 2) {
                        return;
                    }
                    this.f820b.invoke(obj, jVar, bVar);
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0034b)) {
                return false;
            }
            C0034b c0034b = (C0034b) obj;
            return this.a == c0034b.a && this.f820b.getName().equals(c0034b.f820b.getName());
        }

        public int hashCode() {
            return (this.a * 31) + this.f820b.getName().hashCode();
        }
    }

    b() {
    }

    private a a(Class<?> cls, Method[] methodArr) {
        int i;
        a aVarC;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarC = c(superclass)) != null) {
            map.putAll(aVarC.f819b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0034b, f.b> entry : c(cls2).f819b.entrySet()) {
                e(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            q qVar = (q) method.getAnnotation(q.class);
            if (qVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(j.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                f.b bVarValue = qVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(f.b.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (bVarValue != f.b.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                e(map, new C0034b(i, method), bVarValue, cls);
                z = true;
            }
        }
        a aVar = new a(map);
        this.a.put(cls, aVar);
        this.f818b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    private Method[] b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    private void e(Map<C0034b, f.b> map, C0034b c0034b, f.b bVar, Class<?> cls) {
        f.b bVar2 = map.get(c0034b);
        if (bVar2 == null || bVar == bVar2) {
            if (bVar2 == null) {
                map.put(c0034b, bVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0034b.f820b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + bVar2 + ", new value " + bVar);
    }

    a c(Class<?> cls) {
        a aVar = this.a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    boolean d(Class<?> cls) {
        Boolean bool = this.f818b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] methodArrB = b(cls);
        for (Method method : methodArrB) {
            if (((q) method.getAnnotation(q.class)) != null) {
                a(cls, methodArrB);
                return true;
            }
        }
        this.f818b.put(cls, Boolean.FALSE);
        return false;
    }
}
