package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0392f;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.fragment.app.w */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0375w {

    /* JADX INFO: renamed from: b */
    int f2383b;

    /* JADX INFO: renamed from: c */
    int f2384c;

    /* JADX INFO: renamed from: d */
    int f2385d;

    /* JADX INFO: renamed from: e */
    int f2386e;

    /* JADX INFO: renamed from: f */
    int f2387f;

    /* JADX INFO: renamed from: g */
    boolean f2388g;

    /* JADX INFO: renamed from: i */
    String f2390i;

    /* JADX INFO: renamed from: j */
    int f2391j;

    /* JADX INFO: renamed from: k */
    CharSequence f2392k;

    /* JADX INFO: renamed from: l */
    int f2393l;

    /* JADX INFO: renamed from: m */
    CharSequence f2394m;

    /* JADX INFO: renamed from: n */
    ArrayList<String> f2395n;

    /* JADX INFO: renamed from: o */
    ArrayList<String> f2396o;

    /* JADX INFO: renamed from: q */
    ArrayList<Runnable> f2398q;

    /* JADX INFO: renamed from: a */
    ArrayList<a> f2382a = new ArrayList<>();

    /* JADX INFO: renamed from: h */
    boolean f2389h = true;

    /* JADX INFO: renamed from: p */
    boolean f2397p = false;

    /* JADX INFO: renamed from: androidx.fragment.app.w$a */
    static final class a {

        /* JADX INFO: renamed from: a */
        int f2399a;

        /* JADX INFO: renamed from: b */
        Fragment f2400b;

        /* JADX INFO: renamed from: c */
        int f2401c;

        /* JADX INFO: renamed from: d */
        int f2402d;

        /* JADX INFO: renamed from: e */
        int f2403e;

        /* JADX INFO: renamed from: f */
        int f2404f;

        /* JADX INFO: renamed from: g */
        AbstractC0392f.c f2405g;

        /* JADX INFO: renamed from: h */
        AbstractC0392f.c f2406h;

        a() {
        }

        a(int i, Fragment fragment) {
            this.f2399a = i;
            this.f2400b = fragment;
            AbstractC0392f.c cVar = AbstractC0392f.c.RESUMED;
            this.f2405g = cVar;
            this.f2406h = cVar;
        }
    }

    AbstractC0375w(C0362j c0362j, ClassLoader classLoader) {
    }

    /* JADX INFO: renamed from: b */
    public AbstractC0375w m2886b(int i, Fragment fragment) {
        mo2530m(i, fragment, null, 1);
        return this;
    }

    /* JADX INFO: renamed from: c */
    public AbstractC0375w m2887c(int i, Fragment fragment, String str) {
        mo2530m(i, fragment, str, 1);
        return this;
    }

    /* JADX INFO: renamed from: d */
    AbstractC0375w m2888d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.f2053H = viewGroup;
        m2887c(viewGroup.getId(), fragment, str);
        return this;
    }

    /* JADX INFO: renamed from: e */
    public AbstractC0375w m2889e(Fragment fragment, String str) {
        mo2530m(0, fragment, str, 1);
        return this;
    }

    /* JADX INFO: renamed from: f */
    void m2890f(a aVar) {
        this.f2382a.add(aVar);
        aVar.f2401c = this.f2383b;
        aVar.f2402d = this.f2384c;
        aVar.f2403e = this.f2385d;
        aVar.f2404f = this.f2386e;
    }

    /* JADX INFO: renamed from: g */
    public AbstractC0375w m2891g(String str) {
        if (!this.f2389h) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.f2388g = true;
        this.f2390i = str;
        return this;
    }

    /* JADX INFO: renamed from: h */
    public abstract int mo2526h();

    /* JADX INFO: renamed from: i */
    public abstract int mo2527i();

    /* JADX INFO: renamed from: j */
    public abstract void mo2528j();

    /* JADX INFO: renamed from: k */
    public abstract void mo2529k();

    /* JADX INFO: renamed from: l */
    public AbstractC0375w m2892l() {
        if (this.f2388g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.f2389h = false;
        return this;
    }

    /* JADX INFO: renamed from: m */
    void mo2530m(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.f2095z;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.f2095z + " now " + str);
            }
            fragment.f2095z = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.f2093x;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.f2093x + " now " + i);
            }
            fragment.f2093x = i;
            fragment.f2094y = i;
        }
        m2890f(new a(i2, fragment));
    }

    /* JADX INFO: renamed from: n */
    public AbstractC0375w mo2531n(Fragment fragment) {
        m2890f(new a(4, fragment));
        return this;
    }

    /* JADX INFO: renamed from: o */
    public AbstractC0375w mo2532o(Fragment fragment) {
        m2890f(new a(3, fragment));
        return this;
    }

    /* JADX INFO: renamed from: p */
    public AbstractC0375w m2893p(int i, Fragment fragment) {
        m2894q(i, fragment, null);
        return this;
    }

    /* JADX INFO: renamed from: q */
    public AbstractC0375w m2894q(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        mo2530m(i, fragment, str, 2);
        return this;
    }

    /* JADX INFO: renamed from: r */
    public AbstractC0375w m2895r(int i, int i2, int i3, int i4) {
        this.f2383b = i;
        this.f2384c = i2;
        this.f2385d = i3;
        this.f2386e = i4;
        return this;
    }

    /* JADX INFO: renamed from: s */
    public AbstractC0375w m2896s(boolean z) {
        this.f2397p = z;
        return this;
    }

    /* JADX INFO: renamed from: t */
    public AbstractC0375w mo2533t(Fragment fragment) {
        m2890f(new a(5, fragment));
        return this;
    }
}
