package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.C0409w;
import androidx.savedstate.InterfaceC0483c;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* JADX INFO: renamed from: androidx.lifecycle.u */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0407u extends C0409w.c {

    /* JADX INFO: renamed from: f */
    private static final Class<?>[] f2547f = {Application.class, C0406t.class};

    /* JADX INFO: renamed from: g */
    private static final Class<?>[] f2548g = {C0406t.class};

    /* JADX INFO: renamed from: a */
    private final Application f2549a;

    /* JADX INFO: renamed from: b */
    private final C0409w.b f2550b;

    /* JADX INFO: renamed from: c */
    private final Bundle f2551c;

    /* JADX INFO: renamed from: d */
    private final AbstractC0392f f2552d;

    /* JADX INFO: renamed from: e */
    private final SavedStateRegistry f2553e;

    @SuppressLint({"LambdaLast"})
    public C0407u(Application application, InterfaceC0483c interfaceC0483c, Bundle bundle) {
        this.f2553e = interfaceC0483c.getSavedStateRegistry();
        this.f2552d = interfaceC0483c.getLifecycle();
        this.f2551c = bundle;
        this.f2549a = application;
        this.f2550b = application != null ? C0409w.a.m3055c(application) : C0409w.d.m3056b();
    }

    /* JADX INFO: renamed from: d */
    private static <T> Constructor<T> m3046d(Class<T> cls, Class<?>[] clsArr) {
        for (Object obj : cls.getConstructors()) {
            Constructor<T> constructor = (Constructor<T>) obj;
            if (Arrays.equals(clsArr, constructor.getParameterTypes())) {
                return constructor;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.C0409w.c, androidx.lifecycle.C0409w.b
    /* JADX INFO: renamed from: a */
    public <T extends AbstractC0408v> T mo2836a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) mo3048c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.C0409w.e
    /* JADX INFO: renamed from: b */
    void mo3047b(AbstractC0408v abstractC0408v) {
        SavedStateHandleController.m2970h(abstractC0408v, this.f2553e, this.f2552d);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048 A[Catch: InvocationTargetException -> 0x005c, InstantiationException -> 0x0078, IllegalAccessException -> 0x0095, TryCatch #2 {IllegalAccessException -> 0x0095, InstantiationException -> 0x0078, InvocationTargetException -> 0x005c, blocks: (B:13:0x0030, B:15:0x0034, B:17:0x0056, B:16:0x0048), top: B:28:0x0030 }] */
    @Override // androidx.lifecycle.C0409w.c
    /* JADX INFO: renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T extends AbstractC0408v> T mo3048c(String str, Class<T> cls) {
        T t;
        boolean zIsAssignableFrom = C0384a.class.isAssignableFrom(cls);
        Constructor constructorM3046d = (!zIsAssignableFrom || this.f2549a == null) ? m3046d(cls, f2548g) : m3046d(cls, f2547f);
        if (constructorM3046d == null) {
            return (T) this.f2550b.mo2836a(cls);
        }
        SavedStateHandleController savedStateHandleControllerM2971j = SavedStateHandleController.m2971j(this.f2553e, this.f2552d, str, this.f2551c);
        if (zIsAssignableFrom) {
            try {
                t = this.f2549a != null ? (T) constructorM3046d.newInstance(this.f2549a, savedStateHandleControllerM2971j.m2974k()) : (T) constructorM3046d.newInstance(savedStateHandleControllerM2971j.m2974k());
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Failed to access " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("An exception happened in constructor of " + cls, e3.getCause());
            }
        }
        t.m3052h("androidx.lifecycle.savedstate.vm.tag", savedStateHandleControllerM2971j);
        return t;
    }
}
