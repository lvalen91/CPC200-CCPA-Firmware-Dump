package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: renamed from: androidx.lifecycle.w */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0409w {

    /* JADX INFO: renamed from: a */
    private final b f2556a;

    /* JADX INFO: renamed from: b */
    private final C0410x f2557b;

    /* JADX INFO: renamed from: androidx.lifecycle.w$a */
    public static class a extends d {

        /* JADX INFO: renamed from: c */
        private static a f2558c;

        /* JADX INFO: renamed from: b */
        private Application f2559b;

        public a(Application application) {
            this.f2559b = application;
        }

        /* JADX INFO: renamed from: c */
        public static a m3055c(Application application) {
            if (f2558c == null) {
                f2558c = new a(application);
            }
            return f2558c;
        }

        @Override // androidx.lifecycle.C0409w.d, androidx.lifecycle.C0409w.b
        /* JADX INFO: renamed from: a */
        public <T extends AbstractC0408v> T mo2836a(Class<T> cls) {
            if (!C0384a.class.isAssignableFrom(cls)) {
                return (T) super.mo2836a(cls);
            }
            try {
                return cls.getConstructor(Application.class).newInstance(this.f2559b);
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("Cannot create an instance of " + cls, e3);
            } catch (InvocationTargetException e4) {
                throw new RuntimeException("Cannot create an instance of " + cls, e4);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.w$b */
    public interface b {
        /* JADX INFO: renamed from: a */
        <T extends AbstractC0408v> T mo2836a(Class<T> cls);
    }

    /* JADX INFO: renamed from: androidx.lifecycle.w$c */
    static abstract class c extends e implements b {
        c() {
        }

        /* JADX INFO: renamed from: a */
        public <T extends AbstractC0408v> T mo2836a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        /* JADX INFO: renamed from: c */
        public abstract <T extends AbstractC0408v> T mo3048c(String str, Class<T> cls);
    }

    /* JADX INFO: renamed from: androidx.lifecycle.w$d */
    public static class d implements b {

        /* JADX INFO: renamed from: a */
        private static d f2560a;

        /* JADX INFO: renamed from: b */
        static d m3056b() {
            if (f2560a == null) {
                f2560a = new d();
            }
            return f2560a;
        }

        @Override // androidx.lifecycle.C0409w.b
        /* JADX INFO: renamed from: a */
        public <T extends AbstractC0408v> T mo2836a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.w$e */
    static class e {
        e() {
        }

        /* JADX INFO: renamed from: b */
        void mo3047b(AbstractC0408v abstractC0408v) {
        }
    }

    public C0409w(InterfaceC0411y interfaceC0411y, b bVar) {
        this(interfaceC0411y.getViewModelStore(), bVar);
    }

    /* JADX INFO: renamed from: a */
    public <T extends AbstractC0408v> T m3053a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) m3054b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /* JADX INFO: renamed from: b */
    public <T extends AbstractC0408v> T m3054b(String str, Class<T> cls) {
        T t = (T) this.f2557b.m3058b(str);
        if (cls.isInstance(t)) {
            Object obj = this.f2556a;
            if (obj instanceof e) {
                ((e) obj).mo3047b(t);
            }
            return t;
        }
        b bVar = this.f2556a;
        T t2 = bVar instanceof c ? (T) ((c) bVar).mo3048c(str, cls) : (T) bVar.mo2836a(cls);
        this.f2557b.m3060d(str, t2);
        return t2;
    }

    public C0409w(C0410x c0410x, b bVar) {
        this.f2556a = bVar;
        this.f2557b = c0410x;
    }
}
