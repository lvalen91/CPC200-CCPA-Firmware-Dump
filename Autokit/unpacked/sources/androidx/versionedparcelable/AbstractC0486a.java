package androidx.versionedparcelable;

import android.os.Parcelable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p016c.p032d.C0534a;

/* JADX INFO: renamed from: androidx.versionedparcelable.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0486a {

    /* JADX INFO: renamed from: a */
    protected final C0534a<String, Method> f3061a;

    /* JADX INFO: renamed from: b */
    protected final C0534a<String, Method> f3062b;

    /* JADX INFO: renamed from: c */
    protected final C0534a<String, Class> f3063c;

    public AbstractC0486a(C0534a<String, Method> c0534a, C0534a<String, Method> c0534a2, C0534a<String, Class> c0534a3) {
        this.f3061a = c0534a;
        this.f3062b = c0534a2;
        this.f3063c = c0534a3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: N */
    private void m3996N(InterfaceC0488c interfaceC0488c) {
        try {
            mo4008I(m3997c(interfaceC0488c.getClass()).getName());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(interfaceC0488c.getClass().getSimpleName() + " does not have a Parcelizer", e);
        }
    }

    /* JADX INFO: renamed from: c */
    private Class m3997c(Class<? extends InterfaceC0488c> cls) throws ClassNotFoundException {
        Class cls2 = this.f3063c.get(cls.getName());
        if (cls2 != null) {
            return cls2;
        }
        Class<?> cls3 = Class.forName(String.format("%s.%sParcelizer", cls.getPackage().getName(), cls.getSimpleName()), false, cls.getClassLoader());
        this.f3063c.put(cls.getName(), cls3);
        return cls3;
    }

    /* JADX INFO: renamed from: d */
    private Method m3998d(String str) throws NoSuchMethodException {
        Method method = this.f3061a.get(str);
        if (method != null) {
            return method;
        }
        System.currentTimeMillis();
        Method declaredMethod = Class.forName(str, true, AbstractC0486a.class.getClassLoader()).getDeclaredMethod("read", AbstractC0486a.class);
        this.f3061a.put(str, declaredMethod);
        return declaredMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: e */
    private Method m3999e(Class cls) throws NoSuchMethodException, ClassNotFoundException {
        Method method = this.f3062b.get(cls.getName());
        if (method != null) {
            return method;
        }
        Class clsM3997c = m3997c(cls);
        System.currentTimeMillis();
        Method declaredMethod = clsM3997c.getDeclaredMethod("write", cls, AbstractC0486a.class);
        this.f3062b.put(cls.getName(), declaredMethod);
        return declaredMethod;
    }

    /* JADX INFO: renamed from: A */
    protected abstract void mo4000A(byte[] bArr);

    /* JADX INFO: renamed from: B */
    public void m4001B(byte[] bArr, int i) {
        mo4032w(i);
        mo4000A(bArr);
    }

    /* JADX INFO: renamed from: C */
    protected abstract void mo4002C(CharSequence charSequence);

    /* JADX INFO: renamed from: D */
    public void m4003D(CharSequence charSequence, int i) {
        mo4032w(i);
        mo4002C(charSequence);
    }

    /* JADX INFO: renamed from: E */
    protected abstract void mo4004E(int i);

    /* JADX INFO: renamed from: F */
    public void m4005F(int i, int i2) {
        mo4032w(i2);
        mo4004E(i);
    }

    /* JADX INFO: renamed from: G */
    protected abstract void mo4006G(Parcelable parcelable);

    /* JADX INFO: renamed from: H */
    public void m4007H(Parcelable parcelable, int i) {
        mo4032w(i);
        mo4006G(parcelable);
    }

    /* JADX INFO: renamed from: I */
    protected abstract void mo4008I(String str);

    /* JADX INFO: renamed from: J */
    public void m4009J(String str, int i) {
        mo4032w(i);
        mo4008I(str);
    }

    /* JADX INFO: renamed from: K */
    protected <T extends InterfaceC0488c> void m4010K(T t, AbstractC0486a abstractC0486a) {
        try {
            m3999e(t.getClass()).invoke(null, t, abstractC0486a);
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

    /* JADX INFO: renamed from: L */
    protected void m4011L(InterfaceC0488c interfaceC0488c) {
        if (interfaceC0488c == null) {
            mo4008I(null);
            return;
        }
        m3996N(interfaceC0488c);
        AbstractC0486a abstractC0486aMo4014b = mo4014b();
        m4010K(interfaceC0488c, abstractC0486aMo4014b);
        abstractC0486aMo4014b.mo4013a();
    }

    /* JADX INFO: renamed from: M */
    public void m4012M(InterfaceC0488c interfaceC0488c, int i) {
        mo4032w(i);
        m4011L(interfaceC0488c);
    }

    /* JADX INFO: renamed from: a */
    protected abstract void mo4013a();

    /* JADX INFO: renamed from: b */
    protected abstract AbstractC0486a mo4014b();

    /* JADX INFO: renamed from: f */
    public boolean m4015f() {
        return false;
    }

    /* JADX INFO: renamed from: g */
    protected abstract boolean mo4016g();

    /* JADX INFO: renamed from: h */
    public boolean m4017h(boolean z, int i) {
        return !mo4022m(i) ? z : mo4016g();
    }

    /* JADX INFO: renamed from: i */
    protected abstract byte[] mo4018i();

    /* JADX INFO: renamed from: j */
    public byte[] m4019j(byte[] bArr, int i) {
        return !mo4022m(i) ? bArr : mo4018i();
    }

    /* JADX INFO: renamed from: k */
    protected abstract CharSequence mo4020k();

    /* JADX INFO: renamed from: l */
    public CharSequence m4021l(CharSequence charSequence, int i) {
        return !mo4022m(i) ? charSequence : mo4020k();
    }

    /* JADX INFO: renamed from: m */
    protected abstract boolean mo4022m(int i);

    /* JADX INFO: renamed from: n */
    protected <T extends InterfaceC0488c> T m4023n(String str, AbstractC0486a abstractC0486a) {
        try {
            return (T) m3998d(str).invoke(null, abstractC0486a);
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

    /* JADX INFO: renamed from: o */
    protected abstract int mo4024o();

    /* JADX INFO: renamed from: p */
    public int m4025p(int i, int i2) {
        return !mo4022m(i2) ? i : mo4024o();
    }

    /* JADX INFO: renamed from: q */
    protected abstract <T extends Parcelable> T mo4026q();

    /* JADX INFO: renamed from: r */
    public <T extends Parcelable> T m4027r(T t, int i) {
        return !mo4022m(i) ? t : (T) mo4026q();
    }

    /* JADX INFO: renamed from: s */
    protected abstract String mo4028s();

    /* JADX INFO: renamed from: t */
    public String m4029t(String str, int i) {
        return !mo4022m(i) ? str : mo4028s();
    }

    /* JADX INFO: renamed from: u */
    protected <T extends InterfaceC0488c> T m4030u() {
        String strMo4028s = mo4028s();
        if (strMo4028s == null) {
            return null;
        }
        return (T) m4023n(strMo4028s, mo4014b());
    }

    /* JADX INFO: renamed from: v */
    public <T extends InterfaceC0488c> T m4031v(T t, int i) {
        return !mo4022m(i) ? t : (T) m4030u();
    }

    /* JADX INFO: renamed from: w */
    protected abstract void mo4032w(int i);

    /* JADX INFO: renamed from: x */
    public void m4033x(boolean z, boolean z2) {
    }

    /* JADX INFO: renamed from: y */
    protected abstract void mo4034y(boolean z);

    /* JADX INFO: renamed from: z */
    public void m4035z(boolean z, int i) {
        mo4032w(i);
        mo4034y(z);
    }
}
