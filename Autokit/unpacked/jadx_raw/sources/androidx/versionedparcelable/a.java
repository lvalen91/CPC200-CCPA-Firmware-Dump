package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a {
    protected final c.d.a<String, Method> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final c.d.a<String, Method> f996b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final c.d.a<String, Class> f997c;

    public a(c.d.a<String, Method> aVar, c.d.a<String, Method> aVar2, c.d.a<String, Class> aVar3) {
        this.a = aVar;
        this.f996b = aVar2;
        this.f997c = aVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void N(c cVar) {
        try {
            I(c(cVar.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(cVar.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    private Class c(Class<? extends c> cls) throws ClassNotFoundException {
        Class cls2 = this.f997c.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.f997c.put(cls.getName(), cls3);
        return cls3;
    }

    private Method d(String str) throws NoSuchMethodException {
        Method method = this.a.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, a.class.getClassLoader()).getDeclaredMethod("read", a.class);
        this.a.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Method e(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        Method method = this.f996b.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsC = c(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsC.getDeclaredMethod("write", cls, a.class);
        this.f996b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    protected abstract void A(byte[] bArr);

    public void B(byte[] bArr, int i) {
        w(i);
        A(bArr);
    }

    protected abstract void C(CharSequence charSequence);

    public void D(CharSequence charSequence, int i) {
        w(i);
        C(charSequence);
    }

    protected abstract void E(int i);

    public void F(int i, int i2) {
        w(i2);
        E(i);
    }

    protected abstract void G(Parcelable parcelable);

    public void H(Parcelable parcelable, int i) {
        w(i);
        G(parcelable);
    }

    protected abstract void I(String str);

    public void J(String str, int i) {
        w(i);
        I(str);
    }

    protected <T extends c> void K(T t, a aVar) {
        try {
            e(t.getClass()).invoke(null, t, aVar);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (!(e4.getCause() instanceof RuntimeException)) {
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
            throw ((RuntimeException) e4.getCause());
        }
    }

    protected void L(c cVar) {
        if (cVar == null) {
            I(null);
            return;
        }
        N(cVar);
        a aVarB = b();
        K(cVar, aVarB);
        aVarB.a();
    }

    public void M(c cVar, int i) {
        w(i);
        L(cVar);
    }

    protected abstract void a();

    protected abstract a b();

    public boolean f() {
        return false;
    }

    protected abstract boolean g();

    public boolean h(boolean z, int i) {
        return !m(i) ? z : g();
    }

    protected abstract byte[] i();

    public byte[] j(byte[] bArr, int i) {
        return !m(i) ? bArr : i();
    }

    protected abstract CharSequence k();

    public CharSequence l(CharSequence charSequence, int i) {
        return !m(i) ? charSequence : k();
    }

    protected abstract boolean m(int i);

    protected <T extends c> T n(String str, a aVar) {
        try {
            return (T) d(str).invoke(null, aVar);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    protected abstract int o();

    public int p(int i, int i2) {
        return !m(i2) ? i : o();
    }

    protected abstract <T extends Parcelable> T q();

    public <T extends Parcelable> T r(T t, int i) {
        return !m(i) ? t : (T) q();
    }

    protected abstract String s();

    public String t(String str, int i) {
        return !m(i) ? str : s();
    }

    protected <T extends c> T u() {
        String strS = s();
        if (strS == null) {
            return null;
        }
        return (T) n(strS, b());
    }

    public <T extends c> T v(T t, int i) {
        return !m(i) ? t : (T) u();
    }

    protected abstract void w(int i);

    public void x(boolean z, boolean z2) {
    }

    protected abstract void y(boolean z);

    public void z(boolean z, int i) {
        w(i);
        y(z);
    }
}
