package androidx.core.content.c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.core.content.c.c;
import c.g.j.h;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class f {

    public static abstract class a {

        /* JADX INFO: renamed from: androidx.core.content.c.f$a$a, reason: collision with other inner class name */
        class RunnableC0020a implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ Typeface f540b;

            RunnableC0020a(Typeface typeface) {
                this.f540b = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.e(this.f540b);
            }
        }

        class b implements Runnable {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f542b;

            b(int i) {
                this.f542b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.d(this.f542b);
            }
        }

        public static Handler c(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        public final void a(int i, Handler handler) {
            c(handler).post(new b(i));
        }

        public final void b(Typeface typeface, Handler handler) {
            c(handler).post(new RunnableC0020a(typeface));
        }

        public abstract void d(int i);

        public abstract void e(Typeface typeface);
    }

    public static final class b {

        static class a {
            private static final Object a = new Object();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static Method f544b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private static boolean f545c;

            static void a(Resources.Theme theme) {
                synchronized (a) {
                    if (!f545c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f544b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        f545c = true;
                    }
                    if (f544b != null) {
                        try {
                            f544b.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            f544b = null;
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: androidx.core.content.c.f$b$b, reason: collision with other inner class name */
        static class C0021b {
            static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C0021b.a(theme);
            } else if (i >= 23) {
                a.a(theme);
            }
        }
    }

    public static Typeface a(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return f(context, i, new TypedValue(), 0, null, null, false, true);
    }

    public static Drawable b(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    public static Typeface c(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return f(context, i, new TypedValue(), 0, null, null, false, false);
    }

    public static Typeface d(Context context, int i, TypedValue typedValue, int i2, a aVar) {
        if (context.isRestricted()) {
            return null;
        }
        return f(context, i, typedValue, i2, aVar, null, true, false);
    }

    public static void e(Context context, int i, a aVar, Handler handler) {
        h.e(aVar);
        if (context.isRestricted()) {
            aVar.a(-4, handler);
        } else {
            f(context, i, new TypedValue(), 0, aVar, handler, false, false);
        }
    }

    private static Typeface f(Context context, int i, TypedValue typedValue, int i2, a aVar, Handler handler, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface typefaceG = g(context, resources, typedValue, i, i2, aVar, handler, z, z2);
        if (typefaceG != null || aVar != null || z2) {
            return typefaceG;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Typeface g(Context context, Resources resources, TypedValue typedValue, int i, int i2, a aVar, Handler handler, boolean z, boolean z2) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        if (!string.startsWith("res/")) {
            if (aVar != null) {
                aVar.a(-3, handler);
            }
            return null;
        }
        Typeface typefaceF = c.g.d.d.f(resources, i, i2);
        if (typefaceF != null) {
            if (aVar != null) {
                aVar.b(typefaceF, handler);
            }
            return typefaceF;
        }
        if (z2) {
            return null;
        }
        try {
            if (string.toLowerCase().endsWith(".xml")) {
                c.a aVarB = c.b(resources.getXml(i), resources);
                if (aVarB != null) {
                    return c.g.d.d.c(context, aVarB, resources, i, i2, aVar, handler, z);
                }
                if (aVar != null) {
                    aVar.a(-3, handler);
                }
                return null;
            }
            Typeface typefaceD = c.g.d.d.d(context, resources, i, string, i2);
            if (aVar != null) {
                if (typefaceD != null) {
                    aVar.b(typefaceD, handler);
                } else {
                    aVar.a(-3, handler);
                }
            }
            return typefaceD;
        } catch (IOException unused) {
            String str = "Failed to read xml resource " + string;
            if (aVar != null) {
                aVar.a(-3, handler);
            }
            return null;
        } catch (XmlPullParserException unused2) {
            String str2 = "Failed to parse xml resource " + string;
            if (aVar != null) {
            }
            return null;
        }
    }
}
