package androidx.fragment.app;

import androidx.fragment.app.AbstractC0366n;
import androidx.fragment.app.AbstractC0375w;
import androidx.fragment.app.Fragment;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.fragment.app.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0348a extends AbstractC0375w implements AbstractC0366n.o {

    /* JADX INFO: renamed from: r */
    final AbstractC0366n f2136r;

    /* JADX INFO: renamed from: s */
    boolean f2137s;

    /* JADX INFO: renamed from: t */
    int f2138t;

    C0348a(AbstractC0366n abstractC0366n) {
        super(abstractC0366n.m2779p0(), abstractC0366n.m2783s0() != null ? abstractC0366n.m2783s0().m2659f().getClassLoader() : null);
        this.f2138t = -1;
        this.f2136r = abstractC0366n;
    }

    /* JADX INFO: renamed from: E */
    private static boolean m2516E(AbstractC0375w.a aVar) {
        Fragment fragment = aVar.f2400b;
        return (fragment == null || !fragment.f2082m || fragment.f2054I == null || fragment.f2047B || fragment.f2046A || !fragment.m2496v0()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /* JADX INFO: renamed from: A */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Fragment m2517A(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.f2382a.size()) {
            AbstractC0375w.a aVar = this.f2382a.get(i);
            int i2 = aVar.f2399a;
            if (i2 == 1) {
                arrayList.add(aVar.f2400b);
            } else if (i2 == 2) {
                Fragment fragment3 = aVar.f2400b;
                int i3 = fragment3.f2094y;
                boolean z = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = arrayList.get(size);
                    if (fragment4.f2094y == i3) {
                        if (fragment4 == fragment3) {
                            z = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.f2382a.add(i, new AbstractC0375w.a(9, fragment4));
                                i++;
                                fragment2 = null;
                            }
                            AbstractC0375w.a aVar2 = new AbstractC0375w.a(3, fragment4);
                            aVar2.f2401c = aVar.f2401c;
                            aVar2.f2403e = aVar.f2403e;
                            aVar2.f2402d = aVar.f2402d;
                            aVar2.f2404f = aVar.f2404f;
                            this.f2382a.add(i, aVar2);
                            arrayList.remove(fragment4);
                            i++;
                        }
                    }
                }
                if (z) {
                    this.f2382a.remove(i);
                    i--;
                } else {
                    aVar.f2399a = 1;
                    arrayList.add(fragment3);
                }
            } else if (i2 == 3 || i2 == 6) {
                arrayList.remove(aVar.f2400b);
                Fragment fragment5 = aVar.f2400b;
                if (fragment5 == fragment2) {
                    this.f2382a.add(i, new AbstractC0375w.a(9, fragment5));
                    i++;
                    fragment2 = null;
                }
            } else if (i2 != 7) {
                if (i2 == 8) {
                    this.f2382a.add(i, new AbstractC0375w.a(9, fragment2));
                    i++;
                    fragment2 = aVar.f2400b;
                }
            }
            i++;
        }
        return fragment2;
    }

    /* JADX INFO: renamed from: B */
    public String m2518B() {
        return this.f2390i;
    }

    /* JADX INFO: renamed from: C */
    boolean m2519C(int i) {
        int size = this.f2382a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.f2382a.get(i2).f2400b;
            int i3 = fragment != null ? fragment.f2094y : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: D */
    boolean m2520D(ArrayList<C0348a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.f2382a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.f2382a.get(i4).f2400b;
            int i5 = fragment != null ? fragment.f2094y : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    C0348a c0348a = arrayList.get(i6);
                    int size2 = c0348a.f2382a.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        Fragment fragment2 = c0348a.f2382a.get(i7).f2400b;
                        if ((fragment2 != null ? fragment2.f2094y : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: F */
    boolean m2521F() {
        for (int i = 0; i < this.f2382a.size(); i++) {
            if (m2516E(this.f2382a.get(i))) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: G */
    public void m2522G() {
        if (this.f2398q != null) {
            for (int i = 0; i < this.f2398q.size(); i++) {
                this.f2398q.get(i).run();
            }
            this.f2398q = null;
        }
    }

    /* JADX INFO: renamed from: H */
    void m2523H(Fragment.InterfaceC0347k interfaceC0347k) {
        for (int i = 0; i < this.f2382a.size(); i++) {
            AbstractC0375w.a aVar = this.f2382a.get(i);
            if (m2516E(aVar)) {
                aVar.f2400b.m2440W1(interfaceC0347k);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /* JADX INFO: renamed from: I */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Fragment m2524I(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.f2382a.size() - 1; size >= 0; size--) {
            AbstractC0375w.a aVar = this.f2382a.get(size);
            int i = aVar.f2399a;
            if (i == 1) {
                arrayList.remove(aVar.f2400b);
            } else if (i != 3) {
                switch (i) {
                    case 6:
                        arrayList.add(aVar.f2400b);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = aVar.f2400b;
                        break;
                    case 10:
                        aVar.f2406h = aVar.f2405g;
                        break;
                }
            }
        }
        return fragment;
    }

    @Override // androidx.fragment.app.AbstractC0366n.o
    /* JADX INFO: renamed from: a */
    public boolean mo2525a(ArrayList<C0348a> arrayList, ArrayList<Boolean> arrayList2) {
        if (AbstractC0366n.m2677E0(2)) {
            String str = "Run: " + this;
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.f2388g) {
            return true;
        }
        this.f2136r.m2758e(this);
        return true;
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: h */
    public int mo2526h() {
        return m2535v(false);
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: i */
    public int mo2527i() {
        return m2535v(true);
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: j */
    public void mo2528j() {
        m2892l();
        this.f2136r.m2756b0(this, false);
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: k */
    public void mo2529k() {
        m2892l();
        this.f2136r.m2756b0(this, true);
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: m */
    void mo2530m(int i, Fragment fragment, String str, int i2) {
        super.mo2530m(i, fragment, str, i2);
        fragment.f2089t = this.f2136r;
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: n */
    public AbstractC0375w mo2531n(Fragment fragment) {
        AbstractC0366n abstractC0366n = fragment.f2089t;
        if (abstractC0366n == null || abstractC0366n == this.f2136r) {
            super.mo2531n(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: o */
    public AbstractC0375w mo2532o(Fragment fragment) {
        AbstractC0366n abstractC0366n = fragment.f2089t;
        if (abstractC0366n == null || abstractC0366n == this.f2136r) {
            super.mo2532o(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.AbstractC0375w
    /* JADX INFO: renamed from: t */
    public AbstractC0375w mo2533t(Fragment fragment) {
        AbstractC0366n abstractC0366n = fragment.f2089t;
        if (abstractC0366n == null || abstractC0366n == this.f2136r) {
            super.mo2533t(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f2138t >= 0) {
            sb.append(" #");
            sb.append(this.f2138t);
        }
        if (this.f2390i != null) {
            sb.append(" ");
            sb.append(this.f2390i);
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: renamed from: u */
    void m2534u(int i) {
        if (this.f2388g) {
            if (AbstractC0366n.m2677E0(2)) {
                String str = "Bump nesting in " + this + " by " + i;
            }
            int size = this.f2382a.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0375w.a aVar = this.f2382a.get(i2);
                Fragment fragment = aVar.f2400b;
                if (fragment != null) {
                    fragment.f2088s += i;
                    if (AbstractC0366n.m2677E0(2)) {
                        String str2 = "Bump nesting of " + aVar.f2400b + " to " + aVar.f2400b.f2088s;
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: v */
    int m2535v(boolean z) {
        if (this.f2137s) {
            throw new IllegalStateException("commit already called");
        }
        if (AbstractC0366n.m2677E0(2)) {
            String str = "Commit: " + this;
            PrintWriter printWriter = new PrintWriter(new C0351b0("FragmentManager"));
            m2536w("  ", printWriter);
            printWriter.close();
        }
        this.f2137s = true;
        if (this.f2388g) {
            this.f2138t = this.f2136r.m2768i();
        } else {
            this.f2138t = -1;
        }
        this.f2136r.m2752Y(this, z);
        return this.f2138t;
    }

    /* JADX INFO: renamed from: w */
    public void m2536w(String str, PrintWriter printWriter) {
        m2537x(str, printWriter, true);
    }

    /* JADX INFO: renamed from: x */
    public void m2537x(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.f2390i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f2138t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f2137s);
            if (this.f2387f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f2387f));
            }
            if (this.f2383b != 0 || this.f2384c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2383b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2384c));
            }
            if (this.f2385d != 0 || this.f2386e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f2385d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.f2386e));
            }
            if (this.f2391j != 0 || this.f2392k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2391j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.f2392k);
            }
            if (this.f2393l != 0 || this.f2394m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.f2393l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.f2394m);
            }
        }
        if (this.f2382a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.f2382a.size();
        for (int i = 0; i < size; i++) {
            AbstractC0375w.a aVar = this.f2382a.get(i);
            switch (aVar.f2399a) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + aVar.f2399a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f2400b);
            if (z) {
                if (aVar.f2401c != 0 || aVar.f2402d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2401c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2402d));
                }
                if (aVar.f2403e != 0 || aVar.f2404f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f2403e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f2404f));
                }
            }
        }
    }

    /* JADX INFO: renamed from: y */
    void m2538y() {
        int size = this.f2382a.size();
        for (int i = 0; i < size; i++) {
            AbstractC0375w.a aVar = this.f2382a.get(i);
            Fragment fragment = aVar.f2400b;
            if (fragment != null) {
                fragment.m2443X1(false);
                fragment.m2437V1(this.f2387f);
                fragment.m2449Z1(this.f2395n, this.f2396o);
            }
            switch (aVar.f2399a) {
                case 1:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2767h1(fragment, false);
                    this.f2136r.m2762g(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2399a);
                case 3:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2755a1(fragment);
                    break;
                case 4:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2715B0(fragment);
                    break;
                case 5:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2767h1(fragment, false);
                    this.f2136r.m2776l1(fragment);
                    break;
                case 6:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2790x(fragment);
                    break;
                case 7:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2767h1(fragment, false);
                    this.f2136r.m2773k(fragment);
                    break;
                case 8:
                    this.f2136r.m2772j1(fragment);
                    break;
                case 9:
                    this.f2136r.m2772j1(null);
                    break;
                case 10:
                    this.f2136r.m2770i1(fragment, aVar.f2406h);
                    break;
            }
            if (!this.f2397p && aVar.f2399a != 1 && fragment != null && !AbstractC0366n.f2282P) {
                this.f2136r.m2735N0(fragment);
            }
        }
        if (this.f2397p || AbstractC0366n.f2282P) {
            return;
        }
        AbstractC0366n abstractC0366n = this.f2136r;
        abstractC0366n.m2737O0(abstractC0366n.f2313q, true);
    }

    /* JADX INFO: renamed from: z */
    void m2539z(boolean z) {
        for (int size = this.f2382a.size() - 1; size >= 0; size--) {
            AbstractC0375w.a aVar = this.f2382a.get(size);
            Fragment fragment = aVar.f2400b;
            if (fragment != null) {
                fragment.m2443X1(true);
                fragment.m2437V1(AbstractC0366n.m2696e1(this.f2387f));
                fragment.m2449Z1(this.f2396o, this.f2395n);
            }
            switch (aVar.f2399a) {
                case 1:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2767h1(fragment, true);
                    this.f2136r.m2755a1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.f2399a);
                case 3:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2762g(fragment);
                    break;
                case 4:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2776l1(fragment);
                    break;
                case 5:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2767h1(fragment, true);
                    this.f2136r.m2715B0(fragment);
                    break;
                case 6:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2773k(fragment);
                    break;
                case 7:
                    fragment.m2423Q1(aVar.f2401c, aVar.f2402d, aVar.f2403e, aVar.f2404f);
                    this.f2136r.m2767h1(fragment, true);
                    this.f2136r.m2790x(fragment);
                    break;
                case 8:
                    this.f2136r.m2772j1(null);
                    break;
                case 9:
                    this.f2136r.m2772j1(fragment);
                    break;
                case 10:
                    this.f2136r.m2770i1(fragment, aVar.f2405g);
                    break;
            }
            if (!this.f2397p && aVar.f2399a != 3 && fragment != null && !AbstractC0366n.f2282P) {
                this.f2136r.m2735N0(fragment);
            }
        }
        if (this.f2397p || !z || AbstractC0366n.f2282P) {
            return;
        }
        AbstractC0366n abstractC0366n = this.f2136r;
        abstractC0366n.m2737O0(abstractC0366n.f2313q, true);
    }
}
