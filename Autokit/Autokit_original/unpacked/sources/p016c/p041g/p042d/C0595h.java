package p016c.p041g.p042d;

import android.graphics.Typeface;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: c.g.d.h */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0595h extends C0594g {
    @Override // p016c.p041g.p042d.C0594g
    /* JADX INFO: renamed from: l */
    protected Typeface mo4721l(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(this.f3715g, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f3721m.invoke(null, objNewInstance, "sans-serif", -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p016c.p041g.p042d.C0594g
    /* JADX INFO: renamed from: x */
    protected Method mo4725x(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), String.class, cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
