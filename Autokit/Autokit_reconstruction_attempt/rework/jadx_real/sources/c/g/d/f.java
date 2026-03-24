package c.g.d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import androidx.core.content.c.c;
import c.g.h.f;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class f extends j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f1178b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Constructor<?> f1179c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final Method f1180d;
    private static final Method e;

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
        } catch (ClassNotFoundException | NoSuchMethodException e2) {
            e2.getClass().getName();
            cls = null;
            method = null;
            method2 = null;
        }
        f1179c = constructor;
        f1178b = cls;
        f1180d = method2;
        e = method;
    }

    f() {
    }

    private static boolean k(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f1180d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    private static Typeface l(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(f1178b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    public static boolean m() {
        Method method = f1180d;
        return f1180d != null;
    }

    private static Object n() {
        try {
            return f1179c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    @Override // c.g.d.j
    public Typeface b(Context context, c.b bVar, Resources resources, int i) {
        Object objN = n();
        if (objN == null) {
            return null;
        }
        for (c.C0019c c0019c : bVar.a()) {
            ByteBuffer byteBufferB = k.b(context, resources, c0019c.b());
            if (byteBufferB == null || !k(objN, byteBufferB, c0019c.c(), c0019c.e(), c0019c.f())) {
                return null;
            }
        }
        return l(objN);
    }

    @Override // c.g.d.j
    public Typeface c(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i) {
        Object objN = n();
        if (objN == null) {
            return null;
        }
        c.d.g gVar = new c.d.g();
        for (f.b bVar : bVarArr) {
            Uri uriD = bVar.d();
            ByteBuffer byteBufferF = (ByteBuffer) gVar.get(uriD);
            if (byteBufferF == null) {
                byteBufferF = k.f(context, cancellationSignal, uriD);
                gVar.put(uriD, byteBufferF);
            }
            if (byteBufferF == null || !k(objN, byteBufferF, bVar.c(), bVar.e(), bVar.f())) {
                return null;
            }
        }
        Typeface typefaceL = l(objN);
        if (typefaceL == null) {
            return null;
        }
        return Typeface.create(typefaceL, i);
    }
}
