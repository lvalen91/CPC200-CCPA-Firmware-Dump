package p016c.p041g.p042d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.core.content.p003c.C0246c;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import p016c.p032d.C0540g;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.d.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0593f extends C0597j {

    /* JADX INFO: renamed from: b */
    private static final Class<?> f3711b;

    /* JADX INFO: renamed from: c */
    private static final Constructor<?> f3712c;

    /* JADX INFO: renamed from: d */
    private static final Method f3713d;

    /* JADX INFO: renamed from: e */
    private static final Method f3714e;

    static {
        Class<?> cls;
        Method method;
        Method method2;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            e.getClass().getName();
            cls = null;
            method = null;
            method2 = null;
        }
        f3712c = constructor;
        f3711b = cls;
        f3713d = method2;
        f3714e = method;
    }

    C0593f() {
    }

    /* JADX INFO: renamed from: k */
    private static boolean m4709k(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f3713d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: l */
    private static Typeface m4710l(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(f3711b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f3714e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: m */
    public static boolean m4711m() {
        Method method = f3713d;
        return f3713d != null;
    }

    /* JADX INFO: renamed from: n */
    private static Object m4712n() {
        try {
            return f3712c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: b */
    public Typeface mo4707b(Context context, C0246c.b bVar, Resources resources, int i) {
        Object objM4712n = m4712n();
        if (objM4712n == null) {
            return null;
        }
        for (C0246c.c cVar : bVar.m1732a()) {
            ByteBuffer byteBufferM4742b = C0598k.m4742b(context, resources, cVar.m1734b());
            if (byteBufferM4742b == null || !m4709k(objM4712n, byteBufferM4742b, cVar.m1735c(), cVar.m1737e(), cVar.m1738f())) {
                return null;
            }
        }
        return m4710l(objM4712n);
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: c */
    public Typeface mo4708c(Context context, CancellationSignal cancellationSignal, C0611f.b[] bVarArr, int i) {
        Object objM4712n = m4712n();
        if (objM4712n == null) {
            return null;
        }
        C0540g c0540g = new C0540g();
        for (C0611f.b bVar : bVarArr) {
            Uri uriM4794d = bVar.m4794d();
            ByteBuffer byteBufferM4746f = (ByteBuffer) c0540g.get(uriM4794d);
            if (byteBufferM4746f == null) {
                byteBufferM4746f = C0598k.m4746f(context, cancellationSignal, uriM4794d);
                c0540g.put(uriM4794d, byteBufferM4746f);
            }
            if (byteBufferM4746f == null || !m4709k(objM4712n, byteBufferM4746f, bVar.m4793c(), bVar.m4795e(), bVar.m4796f())) {
                return null;
            }
        }
        Typeface typefaceM4710l = m4710l(objM4712n);
        if (typefaceM4710l == null) {
            return null;
        }
        return Typeface.create(typefaceM4710l, i);
    }
}
