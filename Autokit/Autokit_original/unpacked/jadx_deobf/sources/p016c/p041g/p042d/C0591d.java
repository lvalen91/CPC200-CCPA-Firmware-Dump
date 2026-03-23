package p016c.p041g.p042d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.p003c.C0246c;
import androidx.core.content.p003c.C0249f;
import p016c.p032d.C0538e;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.d.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"NewApi"})
public class C0591d {

    /* JADX INFO: renamed from: a */
    private static final C0597j f3703a;

    /* JADX INFO: renamed from: b */
    private static final C0538e<String, Typeface> f3704b;

    /* JADX INFO: renamed from: c.g.d.d$a */
    public static class a extends C0611f.c {

        /* JADX INFO: renamed from: a */
        private C0249f.a f3705a;

        public a(C0249f.a aVar) {
            this.f3705a = aVar;
        }

        @Override // p016c.p041g.p047h.C0611f.c
        /* JADX INFO: renamed from: a */
        public void mo4700a(int i) {
            C0249f.a aVar = this.f3705a;
            if (aVar != null) {
                aVar.mo1386d(i);
            }
        }

        @Override // p016c.p041g.p047h.C0611f.c
        /* JADX INFO: renamed from: b */
        public void mo4701b(Typeface typeface) {
            C0249f.a aVar = this.f3705a;
            if (aVar != null) {
                aVar.mo1387e(typeface);
            }
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            f3703a = new C0596i();
        } else if (i >= 28) {
            f3703a = new C0595h();
        } else if (i >= 26) {
            f3703a = new C0594g();
        } else if (i >= 24 && C0593f.m4711m()) {
            f3703a = new C0593f();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f3703a = new C0592e();
        } else {
            f3703a = new C0597j();
        }
        f3704b = new C0538e<>(16);
    }

    /* JADX INFO: renamed from: a */
    public static Typeface m4692a(Context context, Typeface typeface, int i) {
        Typeface typefaceM4698g;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (typefaceM4698g = m4698g(context, typeface, i)) == null) ? Typeface.create(typeface, i) : typefaceM4698g;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    /* JADX INFO: renamed from: b */
    public static Typeface m4693b(Context context, CancellationSignal cancellationSignal, C0611f.b[] bVarArr, int i) {
        return f3703a.mo4708c(context, cancellationSignal, bVarArr, i);
    }

    /* JADX INFO: renamed from: c */
    public static Typeface m4694c(Context context, C0246c.a aVar, Resources resources, int i, int i2, C0249f.a aVar2, Handler handler, boolean z) {
        Typeface typefaceMo4707b;
        if (aVar instanceof C0246c.d) {
            C0246c.d dVar = (C0246c.d) aVar;
            Typeface typefaceM4699h = m4699h(dVar.m1741c());
            if (typefaceM4699h != null) {
                if (aVar2 != null) {
                    aVar2.m1759b(typefaceM4699h, handler);
                }
                return typefaceM4699h;
            }
            typefaceMo4707b = C0611f.m4787a(context, dVar.m1740b(), i2, !z ? aVar2 != null : dVar.m1739a() != 0, z ? dVar.m1742d() : -1, C0249f.a.m1757c(handler), new a(aVar2));
        } else {
            typefaceMo4707b = f3703a.mo4707b(context, (C0246c.b) aVar, resources, i2);
            if (aVar2 != null) {
                if (typefaceMo4707b != null) {
                    aVar2.m1759b(typefaceMo4707b, handler);
                } else {
                    aVar2.m1758a(-3, handler);
                }
            }
        }
        if (typefaceMo4707b != null) {
            f3704b.m4271d(m4696e(resources, i, i2), typefaceMo4707b);
        }
        return typefaceMo4707b;
    }

    /* JADX INFO: renamed from: d */
    public static Typeface m4695d(Context context, Resources resources, int i, String str, int i2) {
        Typeface typefaceMo4720e = f3703a.mo4720e(context, resources, i, str, i2);
        if (typefaceMo4720e != null) {
            f3704b.m4271d(m4696e(resources, i, i2), typefaceMo4720e);
        }
        return typefaceMo4720e;
    }

    /* JADX INFO: renamed from: e */
    private static String m4696e(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    /* JADX INFO: renamed from: f */
    public static Typeface m4697f(Resources resources, int i, int i2) {
        return f3704b.m4270c(m4696e(resources, i, i2));
    }

    /* JADX INFO: renamed from: g */
    private static Typeface m4698g(Context context, Typeface typeface, int i) {
        C0246c.b bVarM4734i = f3703a.m4734i(typeface);
        if (bVarM4734i == null) {
            return null;
        }
        return f3703a.mo4707b(context, bVarM4734i, context.getResources(), i);
    }

    /* JADX INFO: renamed from: h */
    private static Typeface m4699h(String str) {
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
