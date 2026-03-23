package c.g.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.c.c;
import androidx.core.content.c.f;
import c.g.h.f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"NewApi"})
public class d {
    private static final j a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final c.d.e<String, Typeface> f1174b;

    public static class a extends f.c {
        private f.a a;

        public a(f.a aVar) {
            this.a = aVar;
        }

        @Override // c.g.h.f.c
        public void a(int i) {
            f.a aVar = this.a;
            if (aVar != null) {
                aVar.d(i);
            }
        }

        @Override // c.g.h.f.c
        public void b(Typeface typeface) {
            f.a aVar = this.a;
            if (aVar != null) {
                aVar.e(typeface);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            a = new i();
        } else if (i >= 28) {
            a = new h();
        } else if (i >= 26) {
            a = new g();
        } else if (i >= 24 && f.m()) {
            a = new f();
        } else if (Build.VERSION.SDK_INT >= 21) {
            a = new e();
        } else {
            a = new j();
        }
        f1174b = new c.d.e<>(16);
    }

    public static Typeface a(Context context, Typeface typeface, int i) {
        Typeface typefaceG;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (typefaceG = g(context, typeface, i)) == null) ? Typeface.create(typeface, i) : typefaceG;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, f.b[] bVarArr, int i) {
        return a.c(context, cancellationSignal, bVarArr, i);
    }

    public static Typeface c(Context context, c.a aVar, Resources resources, int i, int i2, f.a aVar2, Handler handler, boolean z) {
        Typeface typefaceB;
        if (aVar instanceof c.d) {
            c.d dVar = (c.d) aVar;
            Typeface typefaceH = h(dVar.c());
            if (typefaceH != null) {
                if (aVar2 != null) {
                    aVar2.b(typefaceH, handler);
                }
                return typefaceH;
            }
            typefaceB = c.g.h.f.a(context, dVar.b(), i2, !z ? aVar2 != null : dVar.a() != 0, z ? dVar.d() : -1, f.a.c(handler), new a(aVar2));
        } else {
            typefaceB = a.b(context, (c.b) aVar, resources, i2);
            if (aVar2 != null) {
                if (typefaceB != null) {
                    aVar2.b(typefaceB, handler);
                } else {
                    aVar2.a(-3, handler);
                }
            }
        }
        if (typefaceB != null) {
            f1174b.d(e(resources, i, i2), typefaceB);
        }
        return typefaceB;
    }

    public static Typeface d(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceE = a.e(context, resources, i, str, i2);
        if (typefaceE != null) {
            f1174b.d(e(resources, i, i2), typefaceE);
        }
        return typefaceE;
    }

    private static String e(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    public static Typeface f(Resources resources, int i, int i2) {
        return f1174b.c(e(resources, i, i2));
    }

    private static Typeface g(Context context, Typeface typeface, int i) {
        c.b bVarI = a.i(typeface);
        if (bVarI == null) {
            return null;
        }
        return a.b(context, bVarI, context.getResources(), i);
    }

    private static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface typefaceCreate = Typeface.create(str, 0);
        Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }
}
