package p016c.p041g.p042d;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import androidx.core.content.p003c.C0246c;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.d.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0594g extends C0592e {

    /* JADX INFO: renamed from: g */
    protected final Class<?> f3715g;

    /* JADX INFO: renamed from: h */
    protected final Constructor<?> f3716h;

    /* JADX INFO: renamed from: i */
    protected final Method f3717i;

    /* JADX INFO: renamed from: j */
    protected final Method f3718j;

    /* JADX INFO: renamed from: k */
    protected final Method f3719k;

    /* JADX INFO: renamed from: l */
    protected final Method f3720l;

    /* JADX INFO: renamed from: m */
    protected final Method f3721m;

    public C0594g() throws NoSuchMethodException {
        Method methodMo4725x;
        Constructor<?> constructorM4727z;
        Method methodM4723v;
        Method methodM4724w;
        Method methodM4719A;
        Method methodM4722u;
        Class<?> cls = null;
        try {
            Class<?> clsM4726y = m4726y();
            constructorM4727z = m4727z(clsM4726y);
            methodM4723v = m4723v(clsM4726y);
            methodM4724w = m4724w(clsM4726y);
            methodM4719A = m4719A(clsM4726y);
            methodM4722u = m4722u(clsM4726y);
            methodMo4725x = mo4725x(clsM4726y);
            cls = clsM4726y;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            String str = "Unable to collect necessary methods for class " + e.getClass().getName();
            methodMo4725x = null;
            constructorM4727z = null;
            methodM4723v = null;
            methodM4724w = null;
            methodM4719A = null;
            methodM4722u = null;
        }
        this.f3715g = cls;
        this.f3716h = constructorM4727z;
        this.f3717i = methodM4723v;
        this.f3718j = methodM4724w;
        this.f3719k = methodM4719A;
        this.f3720l = methodM4722u;
        this.f3721m = methodMo4725x;
    }

    /* JADX INFO: renamed from: o */
    private Object m4713o() {
        try {
            return this.f3716h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: p */
    private void m4714p(Object obj) {
        try {
            this.f3720l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException unused) {
        }
    }

    /* JADX INFO: renamed from: q */
    private boolean m4715q(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f3717i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: r */
    private boolean m4716r(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f3718j.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: s */
    private boolean m4717s(Object obj) {
        try {
            return ((Boolean) this.f3719k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    /* JADX INFO: renamed from: t */
    private boolean m4718t() {
        Method method = this.f3717i;
        return this.f3717i != null;
    }

    /* JADX INFO: renamed from: A */
    protected Method m4719A(Class<?> cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    @Override // p016c.p041g.p042d.C0592e, p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: b */
    public Typeface mo4707b(Context context, C0246c.b bVar, Resources resources, int i) {
        if (!m4718t()) {
            return super.mo4707b(context, bVar, resources, i);
        }
        Object objM4713o = m4713o();
        if (objM4713o == null) {
            return null;
        }
        for (C0246c.c cVar : bVar.m1732a()) {
            if (!m4715q(context, objM4713o, cVar.m1733a(), cVar.m1735c(), cVar.m1737e(), cVar.m1738f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(cVar.m1736d()))) {
                m4714p(objM4713o);
                return null;
            }
        }
        if (m4717s(objM4713o)) {
            return mo4721l(objM4713o);
        }
        return null;
    }

    @Override // p016c.p041g.p042d.C0592e, p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: c */
    public Typeface mo4708c(Context context, CancellationSignal cancellationSignal, C0611f.b[] bVarArr, int i) {
        Typeface typefaceMo4721l;
        if (bVarArr.length < 1) {
            return null;
        }
        if (!m4718t()) {
            C0611f.b bVarMo4729h = mo4729h(bVarArr, i);
            try {
                ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(bVarMo4729h.m4794d(), "r", cancellationSignal);
                if (parcelFileDescriptorOpenFileDescriptor == null) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return null;
                }
                try {
                    Typeface typefaceBuild = new Typeface.Builder(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).setWeight(bVarMo4729h.m4795e()).setItalic(bVarMo4729h.m4796f()).build();
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return typefaceBuild;
                } catch (Throwable th) {
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        try {
                            parcelFileDescriptorOpenFileDescriptor.close();
                        } catch (Throwable unused) {
                        }
                    }
                    throw th;
                }
            } catch (IOException unused2) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> mapM4748h = C0598k.m4748h(context, bVarArr, cancellationSignal);
        Object objM4713o = m4713o();
        if (objM4713o == null) {
            return null;
        }
        boolean z = false;
        for (C0611f.b bVar : bVarArr) {
            ByteBuffer byteBuffer = mapM4748h.get(bVar.m4794d());
            if (byteBuffer != null) {
                if (!m4716r(objM4713o, byteBuffer, bVar.m4793c(), bVar.m4795e(), bVar.m4796f() ? 1 : 0)) {
                    m4714p(objM4713o);
                    return null;
                }
                z = true;
            }
        }
        if (!z) {
            m4714p(objM4713o);
            return null;
        }
        if (m4717s(objM4713o) && (typefaceMo4721l = mo4721l(objM4713o)) != null) {
            return Typeface.create(typefaceMo4721l, i);
        }
        return null;
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: e */
    public Typeface mo4720e(Context context, Resources resources, int i, String str, int i2) {
        if (!m4718t()) {
            return super.mo4720e(context, resources, i, str, i2);
        }
        Object objM4713o = m4713o();
        if (objM4713o == null) {
            return null;
        }
        if (!m4715q(context, objM4713o, str, 0, -1, -1, null)) {
            m4714p(objM4713o);
            return null;
        }
        if (m4717s(objM4713o)) {
            return mo4721l(objM4713o);
        }
        return null;
    }

    /* JADX INFO: renamed from: l */
    protected Typeface mo4721l(Object obj) {
        try {
            Object objNewInstance = Array.newInstance(this.f3715g, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) this.f3721m.invoke(null, objNewInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: u */
    protected Method m4722u(Class<?> cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    /* JADX INFO: renamed from: v */
    protected Method m4723v(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* JADX INFO: renamed from: w */
    protected Method m4724w(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* JADX INFO: renamed from: x */
    protected Method mo4725x(Class<?> cls) throws NoSuchMethodException {
        Class cls2 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), cls2, cls2);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* JADX INFO: renamed from: y */
    protected Class<?> m4726y() {
        return Class.forName("android.graphics.FontFamily");
    }

    /* JADX INFO: renamed from: z */
    protected Constructor<?> m4727z(Class<?> cls) {
        return cls.getConstructor(new Class[0]);
    }
}
