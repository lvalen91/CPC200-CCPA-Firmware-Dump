package androidx.fragment.app;

import android.view.ViewGroup;
import androidx.lifecycle.f;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class w {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f769d;
    int e;
    int f;
    boolean g;
    String i;
    int j;
    CharSequence k;
    int l;
    CharSequence m;
    ArrayList<String> n;
    ArrayList<String> o;
    ArrayList<Runnable> q;
    ArrayList<a> a = new ArrayList<>();
    boolean h = true;
    boolean p = false;

    static final class a {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Fragment f770b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f771c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f772d;
        int e;
        int f;
        f.c g;
        f.c h;

        a() {
        }

        a(int i, Fragment fragment) {
            this.a = i;
            this.f770b = fragment;
            f.c cVar = f.c.RESUMED;
            this.g = cVar;
            this.h = cVar;
        }
    }

    w(j jVar, ClassLoader classLoader) {
    }

    public w b(int i, Fragment fragment) {
        m(i, fragment, null, 1);
        return this;
    }

    public w c(int i, Fragment fragment, String str) {
        m(i, fragment, str, 1);
        return this;
    }

    w d(ViewGroup viewGroup, Fragment fragment, String str) {
        fragment.H = viewGroup;
        c(viewGroup.getId(), fragment, str);
        return this;
    }

    public w e(Fragment fragment, String str) {
        m(0, fragment, str, 1);
        return this;
    }

    void f(a aVar) {
        this.a.add(aVar);
        aVar.f771c = this.f767b;
        aVar.f772d = this.f768c;
        aVar.e = this.f769d;
        aVar.f = this.e;
    }

    public w g(String str) {
        if (!this.h) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.g = true;
        this.i = str;
        return this;
    }

    public abstract int h();

    public abstract int i();

    public abstract void j();

    public abstract void k();

    public w l() {
        if (this.g) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.h = false;
        return this;
    }

    void m(int i, Fragment fragment, String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str2 = fragment.z;
            if (str2 != null && !str.equals(str2)) {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.z + " now " + str);
            }
            fragment.z = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.x;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.x + " now " + i);
            }
            fragment.x = i;
            fragment.y = i;
        }
        f(new a(i2, fragment));
    }

    public w n(Fragment fragment) {
        f(new a(4, fragment));
        return this;
    }

    public w o(Fragment fragment) {
        f(new a(3, fragment));
        return this;
    }

    public w p(int i, Fragment fragment) {
        q(i, fragment, null);
        return this;
    }

    public w q(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        m(i, fragment, str, 2);
        return this;
    }

    public w r(int i, int i2, int i3, int i4) {
        this.f767b = i;
        this.f768c = i2;
        this.f769d = i3;
        this.e = i4;
        return this;
    }

    public w s(boolean z) {
        this.p = z;
        return this;
    }

    public w t(Fragment fragment) {
        f(new a(5, fragment));
        return this;
    }
}
