package androidx.lifecycle;

import androidx.lifecycle.AbstractC0392f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: renamed from: androidx.lifecycle.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0386b {

    /* JADX INFO: renamed from: c */
    static C0386b f2501c = new C0386b();

    /* JADX INFO: renamed from: a */
    private final Map<Class<?>, a> f2502a = new HashMap();

    /* JADX INFO: renamed from: b */
    private final Map<Class<?>, Boolean> f2503b = new HashMap();

    /* JADX INFO: renamed from: androidx.lifecycle.b$a */
    static class a {

        /* JADX INFO: renamed from: a */
        final Map<AbstractC0392f.b, List<b>> f2504a = new HashMap();

        /* JADX INFO: renamed from: b */
        final Map<b, AbstractC0392f.b> f2505b;

        a(Map<b, AbstractC0392f.b> map) {
            this.f2505b = map;
            for (Map.Entry<b, AbstractC0392f.b> entry : map.entrySet()) {
                AbstractC0392f.b value = entry.getValue();
                List<b> arrayList = this.f2504a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f2504a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* JADX INFO: renamed from: b */
        private static void m2984b(List<b> list, InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m2986a(interfaceC0396j, bVar, obj);
                }
            }
        }

        /* JADX INFO: renamed from: a */
        void m2985a(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar, Object obj) {
            m2984b(this.f2504a.get(bVar), interfaceC0396j, bVar, obj);
            m2984b(this.f2504a.get(AbstractC0392f.b.ON_ANY), interfaceC0396j, bVar, obj);
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.b$b */
    static final class b {

        /* JADX INFO: renamed from: a */
        final int f2506a;

        /* JADX INFO: renamed from: b */
        final Method f2507b;

        b(int i, Method method) {
            this.f2506a = i;
            this.f2507b = method;
            method.setAccessible(true);
        }

        /* JADX INFO: renamed from: a */
        void m2986a(InterfaceC0396j interfaceC0396j, AbstractC0392f.b bVar, Object obj) {
            try {
                int i = this.f2506a;
                if (i == 0) {
                    this.f2507b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f2507b.invoke(obj, interfaceC0396j);
                } else {
                    if (i != 2) {
                        return;
                    }
                    this.f2507b.invoke(obj, interfaceC0396j, bVar);
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
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f2506a == bVar.f2506a && this.f2507b.getName().equals(bVar.f2507b.getName());
        }

        public int hashCode() {
            return (this.f2506a * 31) + this.f2507b.getName().hashCode();
        }
    }

    C0386b() {
    }

    /* JADX INFO: renamed from: a */
    private a m2979a(Class<?> cls, Method[] methodArr) {
        int i;
        a aVarM2982c;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarM2982c = m2982c(superclass)) != null) {
            map.putAll(aVarM2982c.f2505b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<b, AbstractC0392f.b> entry : m2982c(cls2).f2505b.entrySet()) {
                m2981e(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m2980b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            InterfaceC0403q interfaceC0403q = (InterfaceC0403q) method.getAnnotation(InterfaceC0403q.class);
            if (interfaceC0403q != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(InterfaceC0396j.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i = 1;
                }
                AbstractC0392f.b bVarValue = interfaceC0403q.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0392f.b.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (bVarValue != AbstractC0392f.b.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m2981e(map, new b(i, method), bVarValue, cls);
                z = true;
            }
        }
        a aVar = new a(map);
        this.f2502a.put(cls, aVar);
        this.f2503b.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    /* JADX INFO: renamed from: b */
    private Method[] m2980b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* JADX INFO: renamed from: e */
    private void m2981e(Map<b, AbstractC0392f.b> map, b bVar, AbstractC0392f.b bVar2, Class<?> cls) {
        AbstractC0392f.b bVar3 = map.get(bVar);
        if (bVar3 == null || bVar2 == bVar3) {
            if (bVar3 == null) {
                map.put(bVar, bVar2);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + bVar.f2507b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + bVar3 + ", new value " + bVar2);
    }

    /* JADX INFO: renamed from: c */
    a m2982c(Class<?> cls) {
        a aVar = this.f2502a.get(cls);
        return aVar != null ? aVar : m2979a(cls, null);
    }

    /* JADX INFO: renamed from: d */
    boolean m2983d(Class<?> cls) {
        Boolean bool = this.f2503b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] methodArrM2980b = m2980b(cls);
        for (Method method : methodArrM2980b) {
            if (((InterfaceC0403q) method.getAnnotation(InterfaceC0403q.class)) != null) {
                m2979a(cls, methodArrM2980b);
                return true;
            }
        }
        this.f2503b.put(cls, Boolean.FALSE);
        return false;
    }
}
