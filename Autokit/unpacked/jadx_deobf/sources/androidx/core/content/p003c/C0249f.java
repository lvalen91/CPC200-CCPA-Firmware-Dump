package androidx.core.content.p003c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.core.content.p003c.C0246c;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParserException;
import p016c.p041g.p042d.C0591d;
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: androidx.core.content.c.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0249f {

    /* JADX INFO: renamed from: androidx.core.content.c.f$a */
    public static abstract class a {

        /* JADX INFO: renamed from: androidx.core.content.c.f$a$a, reason: collision with other inner class name */
        class RunnableC1343a implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ Typeface f1770b;

            RunnableC1343a(Typeface typeface) {
                this.f1770b = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.mo1387e(this.f1770b);
            }
        }

        /* JADX INFO: renamed from: androidx.core.content.c.f$a$b */
        class b implements Runnable {

            /* JADX INFO: renamed from: b */
            final /* synthetic */ int f1772b;

            b(int i) {
                this.f1772b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                a.this.mo1386d(this.f1772b);
            }
        }

        /* JADX INFO: renamed from: c */
        public static Handler m1757c(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        /* JADX INFO: renamed from: a */
        public final void m1758a(int i, Handler handler) {
            m1757c(handler).post(new b(i));
        }

        /* JADX INFO: renamed from: b */
        public final void m1759b(Typeface typeface, Handler handler) {
            m1757c(handler).post(new RunnableC1343a(typeface));
        }

        /* JADX INFO: renamed from: d */
        public abstract void mo1386d(int i);

        /* JADX INFO: renamed from: e */
        public abstract void mo1387e(Typeface typeface);
    }

    /* JADX INFO: renamed from: androidx.core.content.c.f$b */
    public static final class b {

        /* JADX INFO: renamed from: androidx.core.content.c.f$b$a */
        static class a {

            /* JADX INFO: renamed from: a */
            private static final Object f1774a = new Object();

            /* JADX INFO: renamed from: b */
            private static Method f1775b;

            /* JADX INFO: renamed from: c */
            private static boolean f1776c;

            /* JADX INFO: renamed from: a */
            static void m1761a(Resources.Theme theme) {
                synchronized (f1774a) {
                    if (!f1776c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f1775b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        f1776c = true;
                    }
                    if (f1775b != null) {
                        try {
                            f1775b.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            f1775b = null;
                        }
                    }
                }
            }
        }

        /* JADX INFO: renamed from: androidx.core.content.c.f$b$b, reason: collision with other inner class name */
        static class C1344b {
            /* JADX INFO: renamed from: a */
            static void m1762a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* JADX INFO: renamed from: a */
        public static void m1760a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C1344b.m1762a(theme);
            } else if (i >= 23) {
                a.m1761a(theme);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static Typeface m1750a(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return m1755f(context, i, new TypedValue(), 0, null, null, false, true);
    }

    /* JADX INFO: renamed from: b */
    public static Drawable m1751b(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* JADX INFO: renamed from: c */
    public static Typeface m1752c(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return m1755f(context, i, new TypedValue(), 0, null, null, false, false);
    }

    /* JADX INFO: renamed from: d */
    public static Typeface m1753d(Context context, int i, TypedValue typedValue, int i2, a aVar) {
        if (context.isRestricted()) {
            return null;
        }
        return m1755f(context, i, typedValue, i2, aVar, null, true, false);
    }

    /* JADX INFO: renamed from: e */
    public static void m1754e(Context context, int i, a aVar, Handler handler) {
        C0626h.m4855e(aVar);
        if (context.isRestricted()) {
            aVar.m1758a(-4, handler);
        } else {
            m1755f(context, i, new TypedValue(), 0, aVar, handler, false, false);
        }
    }

    /* JADX INFO: renamed from: f */
    private static Typeface m1755f(Context context, int i, TypedValue typedValue, int i2, a aVar, Handler handler, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface typefaceM1756g = m1756g(context, resources, typedValue, i, i2, aVar, handler, z, z2);
        if (typefaceM1756g != null || aVar != null || z2) {
            return typefaceM1756g;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0092  */
    /* JADX INFO: renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Typeface m1756g(Context context, Resources resources, TypedValue typedValue, int i, int i2, a aVar, Handler handler, boolean z, boolean z2) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        if (!string.startsWith("res/")) {
            if (aVar != null) {
                aVar.m1758a(-3, handler);
            }
            return null;
        }
        Typeface typefaceM4697f = C0591d.m4697f(resources, i, i2);
        if (typefaceM4697f != null) {
            if (aVar != null) {
                aVar.m1759b(typefaceM4697f, handler);
            }
            return typefaceM4697f;
        }
        if (z2) {
            return null;
        }
        try {
            if (string.toLowerCase().endsWith(".xml")) {
                C0246c.a aVarM1725b = C0246c.m1725b(resources.getXml(i), resources);
                if (aVarM1725b != null) {
                    return C0591d.m4694c(context, aVarM1725b, resources, i, i2, aVar, handler, z);
                }
                if (aVar != null) {
                    aVar.m1758a(-3, handler);
                }
                return null;
            }
            Typeface typefaceM4695d = C0591d.m4695d(context, resources, i, string, i2);
            if (aVar != null) {
                if (typefaceM4695d != null) {
                    aVar.m1759b(typefaceM4695d, handler);
                } else {
                    aVar.m1758a(-3, handler);
                }
            }
            return typefaceM4695d;
        } catch (IOException unused) {
            String str = "Failed to read xml resource " + string;
            if (aVar != null) {
                aVar.m1758a(-3, handler);
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
