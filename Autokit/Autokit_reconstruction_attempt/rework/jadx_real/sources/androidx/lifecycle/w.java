package androidx.lifecycle;

import android.app.Application;
import java.lang.reflect.InvocationTargetException;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class w {
    private final b a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final x f842b;

    public static class a extends d {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static a f843c;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Application f844b;

        public a(Application application) {
            this.f844b = application;
        }

        public static a c(Application application) {
            if (f843c == null) {
                f843c = new a(application);
            }
            return f843c;
        }

        @Override // androidx.lifecycle.w.d, androidx.lifecycle.w.b
        public <T extends v> T a(Class<T> cls) {
            if (!androidx.lifecycle.a.class.isAssignableFrom(cls)) {
                return (T) super.a(cls);
            }
            try {
                return cls.getConstructor(Application.class).newInstance(this.f844b);
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

    public interface b {
        <T extends v> T a(Class<T> cls);
    }

    static abstract class c extends e implements b {
        c() {
        }

        public <T extends v> T a(Class<T> cls) {
            throw new UnsupportedOperationException("create(String, Class<?>) must be called on implementaions of KeyedFactory");
        }

        public abstract <T extends v> T c(String str, Class<T> cls);
    }

    public static class d implements b {
        private static d a;

        static d b() {
            if (a == null) {
                a = new d();
            }
            return a;
        }

        @Override // androidx.lifecycle.w.b
        public <T extends v> T a(Class<T> cls) {
            try {
                return cls.newInstance();
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Cannot create an instance of " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("Cannot create an instance of " + cls, e2);
            }
        }
    }

    static class e {
        e() {
        }

        void b(v vVar) {
        }
    }

    public w(y yVar, b bVar) {
        this(yVar.getViewModelStore(), bVar);
    }

    public <T extends v> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName == null) {
            throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
        }
        return (T) b("androidx.lifecycle.ViewModelProvider.DefaultKey:" + canonicalName, cls);
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
    public <T extends v> T b(String str, Class<T> cls) {
        T t = (T) this.f842b.b(str);
        if (cls.isInstance(t)) {
            Object obj = this.a;
            if (obj instanceof e) {
                ((e) obj).b(t);
            }
            return t;
        }
        b bVar = this.a;
        T t2 = bVar instanceof c ? (T) ((c) bVar).c(str, cls) : (T) bVar.a(cls);
        this.f842b.d(str, t2);
        return t2;
    }

    public w(x xVar, b bVar) {
        this.a = bVar;
        this.f842b = xVar;
    }
}
