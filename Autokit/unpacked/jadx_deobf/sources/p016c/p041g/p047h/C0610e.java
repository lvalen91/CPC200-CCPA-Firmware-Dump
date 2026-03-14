package p016c.p041g.p047h;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import java.util.ArrayList;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p016c.p032d.C0538e;
import p016c.p032d.C0540g;
import p016c.p041g.p042d.C0591d;
import p016c.p041g.p047h.C0611f;
import p016c.p041g.p049j.InterfaceC0619a;

/* JADX INFO: renamed from: c.g.h.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0610e {

    /* JADX INFO: renamed from: a */
    static final C0538e<String, Typeface> f3740a = new C0538e<>(16);

    /* JADX INFO: renamed from: b */
    private static final ExecutorService f3741b = C0612g.m4797a("fonts-androidx", 10, 10000);

    /* JADX INFO: renamed from: c */
    static final Object f3742c = new Object();

    /* JADX INFO: renamed from: d */
    static final C0540g<String, ArrayList<InterfaceC0619a<e>>> f3743d = new C0540g<>();

    /* JADX INFO: renamed from: c.g.h.e$a */
    class a implements Callable<e> {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f3744a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Context f3745b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ C0609d f3746c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f3747d;

        a(String str, Context context, C0609d c0609d, int i) {
            this.f3744a = str;
            this.f3745b = context;
            this.f3746c = c0609d;
            this.f3747d = i;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            return C0610e.m4778c(this.f3744a, this.f3745b, this.f3746c, this.f3747d);
        }
    }

    /* JADX INFO: renamed from: c.g.h.e$b */
    class b implements InterfaceC0619a<e> {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ C0606a f3748a;

        b(C0606a c0606a) {
            this.f3748a = c0606a;
        }

        @Override // p016c.p041g.p049j.InterfaceC0619a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo4782a(e eVar) {
            this.f3748a.m4760b(eVar);
        }
    }

    /* JADX INFO: renamed from: c.g.h.e$c */
    class c implements Callable<e> {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f3749a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ Context f3750b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ C0609d f3751c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f3752d;

        c(String str, Context context, C0609d c0609d, int i) {
            this.f3749a = str;
            this.f3750b = context;
            this.f3751c = c0609d;
            this.f3752d = i;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public e call() {
            return C0610e.m4778c(this.f3749a, this.f3750b, this.f3751c, this.f3752d);
        }
    }

    /* JADX INFO: renamed from: c.g.h.e$d */
    class d implements InterfaceC0619a<e> {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ String f3753a;

        d(String str) {
            this.f3753a = str;
        }

        @Override // p016c.p041g.p049j.InterfaceC0619a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void mo4782a(e eVar) {
            synchronized (C0610e.f3742c) {
                ArrayList<InterfaceC0619a<e>> arrayList = C0610e.f3743d.get(this.f3753a);
                if (arrayList == null) {
                    return;
                }
                C0610e.f3743d.remove(this.f3753a);
                for (int i = 0; i < arrayList.size(); i++) {
                    arrayList.get(i).mo4782a(eVar);
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    private static String m4776a(C0609d c0609d, int i) {
        return c0609d.m4772d() + "-" + i;
    }

    @SuppressLint({"WrongConstant"})
    /* JADX INFO: renamed from: b */
    private static int m4777b(C0611f.a aVar) {
        int i = 1;
        if (aVar.m4790c() != 0) {
            return aVar.m4790c() != 1 ? -3 : -2;
        }
        C0611f.b[] bVarArrM4789b = aVar.m4789b();
        if (bVarArrM4789b != null && bVarArrM4789b.length != 0) {
            i = 0;
            for (C0611f.b bVar : bVarArrM4789b) {
                int iM4792b = bVar.m4792b();
                if (iM4792b != 0) {
                    if (iM4792b < 0) {
                        return -3;
                    }
                    return iM4792b;
                }
            }
        }
        return i;
    }

    /* JADX INFO: renamed from: c */
    static e m4778c(String str, Context context, C0609d c0609d, int i) {
        Typeface typefaceM4270c = f3740a.m4270c(str);
        if (typefaceM4270c != null) {
            return new e(typefaceM4270c);
        }
        try {
            C0611f.a aVarM4765d = C0608c.m4765d(context, c0609d, null);
            int iM4777b = m4777b(aVarM4765d);
            if (iM4777b != 0) {
                return new e(iM4777b);
            }
            Typeface typefaceM4693b = C0591d.m4693b(context, null, aVarM4765d.m4789b(), i);
            if (typefaceM4693b == null) {
                return new e(-3);
            }
            f3740a.m4271d(str, typefaceM4693b);
            return new e(typefaceM4693b);
        } catch (PackageManager.NameNotFoundException unused) {
            return new e(-1);
        }
    }

    /* JADX INFO: renamed from: d */
    static Typeface m4779d(Context context, C0609d c0609d, int i, Executor executor, C0606a c0606a) {
        String strM4776a = m4776a(c0609d, i);
        Typeface typefaceM4270c = f3740a.m4270c(strM4776a);
        if (typefaceM4270c != null) {
            c0606a.m4760b(new e(typefaceM4270c));
            return typefaceM4270c;
        }
        b bVar = new b(c0606a);
        synchronized (f3742c) {
            ArrayList<InterfaceC0619a<e>> arrayList = f3743d.get(strM4776a);
            if (arrayList != null) {
                arrayList.add(bVar);
                return null;
            }
            ArrayList<InterfaceC0619a<e>> arrayList2 = new ArrayList<>();
            arrayList2.add(bVar);
            f3743d.put(strM4776a, arrayList2);
            c cVar = new c(strM4776a, context, c0609d, i);
            if (executor == null) {
                executor = f3741b;
            }
            C0612g.m4798b(executor, cVar, new d(strM4776a));
            return null;
        }
    }

    /* JADX INFO: renamed from: e */
    static Typeface m4780e(Context context, C0609d c0609d, C0606a c0606a, int i, int i2) {
        String strM4776a = m4776a(c0609d, i);
        Typeface typefaceM4270c = f3740a.m4270c(strM4776a);
        if (typefaceM4270c != null) {
            c0606a.m4760b(new e(typefaceM4270c));
            return typefaceM4270c;
        }
        if (i2 == -1) {
            e eVarM4778c = m4778c(strM4776a, context, c0609d, i);
            c0606a.m4760b(eVarM4778c);
            return eVarM4778c.f3754a;
        }
        try {
            e eVar = (e) C0612g.m4799c(f3741b, new a(strM4776a, context, c0609d, i), i2);
            c0606a.m4760b(eVar);
            return eVar.f3754a;
        } catch (InterruptedException unused) {
            c0606a.m4760b(new e(-3));
            return null;
        }
    }

    /* JADX INFO: renamed from: c.g.h.e$e */
    static final class e {

        /* JADX INFO: renamed from: a */
        final Typeface f3754a;

        /* JADX INFO: renamed from: b */
        final int f3755b;

        e(int i) {
            this.f3754a = null;
            this.f3755b = i;
        }

        @SuppressLint({"WrongConstant"})
        /* JADX INFO: renamed from: a */
        boolean m4786a() {
            return this.f3755b == 0;
        }

        @SuppressLint({"WrongConstant"})
        e(Typeface typeface) {
            this.f3754a = typeface;
            this.f3755b = 0;
        }
    }
}
