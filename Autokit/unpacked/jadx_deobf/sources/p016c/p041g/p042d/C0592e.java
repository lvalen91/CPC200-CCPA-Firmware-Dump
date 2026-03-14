package p016c.p041g.p042d;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import androidx.core.content.p003c.C0246c;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.d.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0592e extends C0597j {

    /* JADX INFO: renamed from: b */
    private static Class<?> f3706b;

    /* JADX INFO: renamed from: c */
    private static Constructor<?> f3707c;

    /* JADX INFO: renamed from: d */
    private static Method f3708d;

    /* JADX INFO: renamed from: e */
    private static Method f3709e;

    /* JADX INFO: renamed from: f */
    private static boolean f3710f;

    C0592e() {
    }

    /* JADX INFO: renamed from: k */
    private static boolean m4702k(Object obj, String str, int i, boolean z) throws NoSuchMethodException {
        m4705n();
        try {
            return ((Boolean) f3708d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: renamed from: l */
    private static Typeface m4703l(Object obj) throws NoSuchMethodException {
        m4705n();
        try {
            Object objNewInstance = Array.newInstance(f3706b, 1);
            Array.set(objNewInstance, 0, obj);
            return (Typeface) f3709e.invoke(null, objNewInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX INFO: renamed from: m */
    private File m4704m(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String str = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(str).st_mode)) {
                return new File(str);
            }
        } catch (ErrnoException unused) {
        }
        return null;
    }

    /* JADX INFO: renamed from: n */
    private static void m4705n() throws NoSuchMethodException {
        Method method;
        Class<?> cls;
        Method method2;
        if (f3710f) {
            return;
        }
        f3710f = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            e.getClass().getName();
            method = null;
            cls = null;
            method2 = null;
        }
        f3707c = constructor;
        f3706b = cls;
        f3708d = method2;
        f3709e = method;
    }

    /* JADX INFO: renamed from: o */
    private static Object m4706o() throws NoSuchMethodException {
        m4705n();
        try {
            return f3707c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: b */
    public Typeface mo4707b(Context context, C0246c.b bVar, Resources resources, int i) throws NoSuchMethodException {
        Object objM4706o = m4706o();
        for (C0246c.c cVar : bVar.m1732a()) {
            File fileM4745e = C0598k.m4745e(context);
            if (fileM4745e == null) {
                return null;
            }
            try {
                if (!C0598k.m4743c(fileM4745e, resources, cVar.m1734b())) {
                    return null;
                }
                if (!m4702k(objM4706o, fileM4745e.getPath(), cVar.m1737e(), cVar.m1738f())) {
                    return null;
                }
                fileM4745e.delete();
            } catch (RuntimeException unused) {
                return null;
            } finally {
                fileM4745e.delete();
            }
        }
        return m4703l(objM4706o);
    }

    @Override // p016c.p041g.p042d.C0597j
    /* JADX INFO: renamed from: c */
    public Typeface mo4708c(Context context, CancellationSignal cancellationSignal, C0611f.b[] bVarArr, int i) {
        if (bVarArr.length < 1) {
            return null;
        }
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
                File fileM4704m = m4704m(parcelFileDescriptorOpenFileDescriptor);
                if (fileM4704m != null && fileM4704m.canRead()) {
                    Typeface typefaceCreateFromFile = Typeface.createFromFile(fileM4704m);
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return typefaceCreateFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                try {
                    Typeface typefaceMo4728d = super.mo4728d(context, fileInputStream);
                    fileInputStream.close();
                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    }
                    return typefaceMo4728d;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                if (parcelFileDescriptorOpenFileDescriptor != null) {
                    try {
                        parcelFileDescriptorOpenFileDescriptor.close();
                    } catch (Throwable unused2) {
                    }
                }
                throw th2;
            }
        } catch (IOException unused3) {
            return null;
        }
    }
}
