package p016c.p041g.p042d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import androidx.core.content.p003c.C0246c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import p016c.p041g.p047h.C0611f;

/* JADX INFO: renamed from: c.g.d.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0597j {

    /* JADX INFO: renamed from: a */
    @SuppressLint({"BanConcurrentHashMap"})
    private ConcurrentHashMap<Long, C0246c.b> f3722a = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: c.g.d.j$a */
    class a implements c<C0611f.b> {
        a(C0597j c0597j) {
        }

        @Override // p016c.p041g.p042d.C0597j.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int mo4735a(C0611f.b bVar) {
            return bVar.m4795e();
        }

        @Override // p016c.p041g.p042d.C0597j.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean mo4736b(C0611f.b bVar) {
            return bVar.m4796f();
        }
    }

    /* JADX INFO: renamed from: c.g.d.j$b */
    class b implements c<C0246c.c> {
        b(C0597j c0597j) {
        }

        @Override // p016c.p041g.p042d.C0597j.c
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public int mo4735a(C0246c.c cVar) {
            return cVar.m1737e();
        }

        @Override // p016c.p041g.p042d.C0597j.c
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean mo4736b(C0246c.c cVar) {
            return cVar.m1738f();
        }
    }

    /* JADX INFO: renamed from: c.g.d.j$c */
    private interface c<T> {
        /* JADX INFO: renamed from: a */
        int mo4735a(T t);

        /* JADX INFO: renamed from: b */
        boolean mo4736b(T t);
    }

    C0597j() {
    }

    /* JADX INFO: renamed from: a */
    private void m4730a(Typeface typeface, C0246c.b bVar) {
        long jM4733j = m4733j(typeface);
        if (jM4733j != 0) {
            this.f3722a.put(Long.valueOf(jM4733j), bVar);
        }
    }

    /* JADX INFO: renamed from: f */
    private C0246c.c m4731f(C0246c.b bVar, int i) {
        return (C0246c.c) m4732g(bVar.m1732a(), i, new b(this));
    }

    /* JADX INFO: renamed from: g */
    private static <T> T m4732g(T[] tArr, int i, c<T> cVar) {
        int i2 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i3 = Integer.MAX_VALUE;
        for (T t2 : tArr) {
            int iAbs = (Math.abs(cVar.mo4735a(t2) - i2) * 2) + (cVar.mo4736b(t2) == z ? 0 : 1);
            if (t == null || i3 > iAbs) {
                t = t2;
                i3 = iAbs;
            }
        }
        return t;
    }

    /* JADX INFO: renamed from: j */
    private static long m4733j(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException | NoSuchFieldException unused) {
            return 0L;
        }
    }

    /* JADX INFO: renamed from: b */
    public Typeface mo4707b(Context context, C0246c.b bVar, Resources resources, int i) {
        C0246c.c cVarM4731f = m4731f(bVar, i);
        if (cVarM4731f == null) {
            return null;
        }
        Typeface typefaceM4695d = C0591d.m4695d(context, resources, cVarM4731f.m1734b(), cVarM4731f.m1733a(), i);
        m4730a(typefaceM4695d, bVar);
        return typefaceM4695d;
    }

    /* JADX INFO: renamed from: c */
    public Typeface mo4708c(Context context, CancellationSignal cancellationSignal, C0611f.b[] bVarArr, int i) throws Throwable {
        InputStream inputStreamOpenInputStream;
        InputStream inputStream = null;
        if (bVarArr.length < 1) {
            return null;
        }
        try {
            inputStreamOpenInputStream = context.getContentResolver().openInputStream(mo4729h(bVarArr, i).m4794d());
        } catch (IOException unused) {
            inputStreamOpenInputStream = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            Typeface typefaceMo4728d = mo4728d(context, inputStreamOpenInputStream);
            C0598k.m4741a(inputStreamOpenInputStream);
            return typefaceMo4728d;
        } catch (IOException unused2) {
            C0598k.m4741a(inputStreamOpenInputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = inputStreamOpenInputStream;
            C0598k.m4741a(inputStream);
            throw th;
        }
    }

    /* JADX INFO: renamed from: d */
    protected Typeface mo4728d(Context context, InputStream inputStream) {
        File fileM4745e = C0598k.m4745e(context);
        if (fileM4745e == null) {
            return null;
        }
        try {
            if (C0598k.m4744d(fileM4745e, inputStream)) {
                return Typeface.createFromFile(fileM4745e.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileM4745e.delete();
        }
    }

    /* JADX INFO: renamed from: e */
    public Typeface mo4720e(Context context, Resources resources, int i, String str, int i2) {
        File fileM4745e = C0598k.m4745e(context);
        if (fileM4745e == null) {
            return null;
        }
        try {
            if (C0598k.m4743c(fileM4745e, resources, i)) {
                return Typeface.createFromFile(fileM4745e.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileM4745e.delete();
        }
    }

    /* JADX INFO: renamed from: h */
    protected C0611f.b mo4729h(C0611f.b[] bVarArr, int i) {
        return (C0611f.b) m4732g(bVarArr, i, new a(this));
    }

    /* JADX INFO: renamed from: i */
    C0246c.b m4734i(Typeface typeface) {
        long jM4733j = m4733j(typeface);
        if (jM4733j == 0) {
            return null;
        }
        return this.f3722a.get(Long.valueOf(jM4733j));
    }
}
