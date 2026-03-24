package c.g.h;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import c.g.h.f;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class e {
    static final c.d.e<String, Typeface> a = new c.d.e<>(16);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ExecutorService f1192b = g.a("fonts-androidx", 10, 10000);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final Object f1193c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final c.d.g<String, ArrayList<c.g.j.a<C0051e>>> f1194d = new c.d.g<>();

    class a implements Callable<C0051e> {
        final /* synthetic */ String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f1195b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ c.g.h.d f1196c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1197d;

        a(String str, Context context, c.g.h.d dVar, int i) {
            this.a = str;
            this.f1195b = context;
            this.f1196c = dVar;
            this.f1197d = i;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0051e call() {
            return e.c(this.a, this.f1195b, this.f1196c, this.f1197d);
        }
    }

    class b implements c.g.j.a<C0051e> {
        final /* synthetic */ c.g.h.a a;

        b(c.g.h.a aVar) {
            this.a = aVar;
        }

        @Override // c.g.j.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(C0051e c0051e) {
            this.a.b(c0051e);
        }
    }

    class c implements Callable<C0051e> {
        final /* synthetic */ String a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f1198b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ c.g.h.d f1199c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f1200d;

        c(String str, Context context, c.g.h.d dVar, int i) {
            this.a = str;
            this.f1198b = context;
            this.f1199c = dVar;
            this.f1200d = i;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0051e call() {
            return e.c(this.a, this.f1198b, this.f1199c, this.f1200d);
        }
    }

    class d implements c.g.j.a<C0051e> {
        final /* synthetic */ String a;

        d(String str) {
            this.a = str;
        }

        @Override // c.g.j.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(C0051e c0051e) {
            synchronized (e.f1193c) {
                ArrayList<c.g.j.a<C0051e>> arrayList = e.f1194d.get(this.a);
                if (arrayList == null) {
                    return;
                }
                e.f1194d.remove(this.a);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).a(c0051e);
                }
            }
        }
    }

    private static String a(c.g.h.d dVar, int i) {
        return dVar.d() + "-" + i;
    }

    @SuppressLint({"WrongConstant"})
    private static int b(f.a aVar) {
        int i = 1;
        if (aVar.c() != 0) {
            return aVar.c() != 1 ? -3 : -2;
        }
        f.b[] bVarArrB = aVar.b();
        if (bVarArrB != null && bVarArrB.length != 0) {
            i = 0;
            for (f.b bVar : bVarArrB) {
                int iB = bVar.b();
                if (iB != 0) {
                    if (iB < 0) {
                        return -3;
                    }
                    return iB;
                }
            }
        }
        return i;
    }

    static C0051e c(String str, Context context, c.g.h.d dVar, int i) {
        Typeface typefaceC = a.c(str);
        if (typefaceC != null) {
            return new C0051e(typefaceC);
        }
        try {
            f.a aVarD = c.g.h.c.d(context, dVar, null);
            int iB = b(aVarD);
            if (iB != 0) {
                return new C0051e(iB);
            }
            Typeface typefaceB = c.g.d.d.b(context, null, aVarD.b(), i);
            if (typefaceB == null) {
                return new C0051e(-3);
            }
            a.d(str, typefaceB);
            return new C0051e(typefaceB);
        } catch (PackageManager.NameNotFoundException unused) {
            return new C0051e(-1);
        }
    }

    static Typeface d(Context context, c.g.h.d dVar, int i, Executor executor, c.g.h.a aVar) {
        String strA = a(dVar, i);
        Typeface typefaceC = a.c(strA);
        if (typefaceC != null) {
            aVar.b(new C0051e(typefaceC));
            return typefaceC;
        }
        b bVar = new b(aVar);
        synchronized (f1193c) {
            ArrayList<c.g.j.a<C0051e>> arrayList = f1194d.get(strA);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            ArrayList<c.g.j.a<C0051e>> arrayList2 = new ArrayList<>();
            arrayList2.add(bVar);
            f1194d.put(strA, arrayList2);
            c cVar = new c(strA, context, dVar, i);
            if (executor == null) {
                executor = f1192b;
            }
            g.b(executor, cVar, new d(strA));
            return null;
        }
    }

    static Typeface e(Context context, c.g.h.d dVar, c.g.h.a aVar, int i, int i2) {
        String strA = a(dVar, i);
        Typeface typefaceC = a.c(strA);
        if (typefaceC != null) {
            aVar.b(new C0051e(typefaceC));
            return typefaceC;
        }
        if (i2 == -1) {
            C0051e c0051eC = c(strA, context, dVar, i);
            aVar.b(c0051eC);
            return c0051eC.a;
        }
        try {
            C0051e c0051e = (C0051e) g.c(f1192b, new a(strA, context, dVar, i), i2);
            aVar.b(c0051e);
            return c0051e.a;
        } catch (InterruptedException unused) {
            aVar.b(new C0051e(-3));
            return null;
        }
    }

    /* JADX INFO: renamed from: c.g.h.e$e, reason: collision with other inner class name */
    static final class C0051e {
        final Typeface a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final int f1201b;

        C0051e(int i) {
            this.a = null;
            this.f1201b = i;
        }

        @SuppressLint({"WrongConstant"})
        boolean a() {
            return this.f1201b == 0;
        }

        @SuppressLint({"WrongConstant"})
        C0051e(Typeface typeface) {
            this.a = typeface;
            this.f1201b = 0;
        }
    }
}
