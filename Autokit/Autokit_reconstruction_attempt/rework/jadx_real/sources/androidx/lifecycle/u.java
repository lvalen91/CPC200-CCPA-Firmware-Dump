package androidx.lifecycle;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Bundle;
import androidx.lifecycle.w;
import androidx.savedstate.SavedStateRegistry;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class u extends w.c {
    private static final Class<?>[] f = {Application.class, t.class};
    private static final Class<?>[] g = {t.class};
    private final Application a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w.b f838b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Bundle f839c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f f840d;
    private final SavedStateRegistry e;

    @SuppressLint({"LambdaLast"})
    public u(Application application, androidx.savedstate.c cVar, Bundle bundle) {
        this.e = cVar.getSavedStateRegistry();
        this.f840d = cVar.getLifecycle();
        this.f839c = bundle;
        this.a = application;
        this.f838b = application != null ? w.a.c(application) : w.d.b();
    }

    private static <T> Constructor<T> d(Class<T> cls, Class<?>[] clsArr) {
        for (Object obj : cls.getConstructors()) {
            Constructor<T> constructor = (Constructor<T>) obj;
            if (Arrays.equals(clsArr, constructor.getParameterTypes())) {
                return constructor;
            }
        }
        return null;
    }

    @Override // androidx.lifecycle.w.c, androidx.lifecycle.w.b
    public <T extends v> T a(Class<T> cls) {
        String canonicalName = cls.getCanonicalName();
        if (canonicalName != null) {
            return (T) c(canonicalName, cls);
        }
        throw new IllegalArgumentException("Local and anonymous classes can not be ViewModels");
    }

    @Override // androidx.lifecycle.w.e
    void b(v vVar) {
        SavedStateHandleController.h(vVar, this.e, this.f840d);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0048 A[Catch: InvocationTargetException -> 0x005c, InstantiationException -> 0x0078, IllegalAccessException -> 0x0095, TryCatch #2 {IllegalAccessException -> 0x0095, InstantiationException -> 0x0078, InvocationTargetException -> 0x005c, blocks: (B:13:0x0030, B:15:0x0034, B:17:0x0056, B:16:0x0048), top: B:28:0x0030 }] */
    @Override // androidx.lifecycle.w.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T extends v> T c(String str, Class<T> cls) {
        T t;
        boolean zIsAssignableFrom = a.class.isAssignableFrom(cls);
        Constructor constructorD = (!zIsAssignableFrom || this.a == null) ? d(cls, g) : d(cls, f);
        if (constructorD == null) {
            return (T) this.f838b.a(cls);
        }
        SavedStateHandleController savedStateHandleControllerJ = SavedStateHandleController.j(this.e, this.f840d, str, this.f839c);
        if (zIsAssignableFrom) {
            try {
                t = this.a != null ? (T) constructorD.newInstance(this.a, savedStateHandleControllerJ.k()) : (T) constructorD.newInstance(savedStateHandleControllerJ.k());
            } catch (IllegalAccessException e) {
                throw new RuntimeException("Failed to access " + cls, e);
            } catch (InstantiationException e2) {
                throw new RuntimeException("A " + cls + " cannot be instantiated.", e2);
            } catch (InvocationTargetException e3) {
                throw new RuntimeException("An exception happened in constructor of " + cls, e3.getCause());
            }
        }
        t.h("androidx.lifecycle.savedstate.vm.tag", savedStateHandleControllerJ);
        return t;
    }
}
