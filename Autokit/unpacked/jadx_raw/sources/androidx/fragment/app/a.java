package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.n;
import androidx.fragment.app.w;
import java.io.PrintWriter;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class a extends w implements n.o {
    final n r;
    boolean s;
    int t;

    a(n nVar) {
        super(nVar.p0(), nVar.s0() != null ? nVar.s0().f().getClassLoader() : null);
        this.t = -1;
        this.r = nVar;
    }

    private static boolean E(w.a aVar) {
        Fragment fragment = aVar.f770b;
        return (fragment == null || !fragment.m || fragment.I == null || fragment.B || fragment.A || !fragment.v0()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Fragment A(ArrayList<Fragment> arrayList, Fragment fragment) {
        Fragment fragment2 = fragment;
        int i = 0;
        while (i < this.a.size()) {
            w.a aVar = this.a.get(i);
            int i2 = aVar.a;
            if (i2 == 1) {
                arrayList.add(aVar.f770b);
            } else if (i2 == 2) {
                Fragment fragment3 = aVar.f770b;
                int i3 = fragment3.y;
                boolean z = false;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    Fragment fragment4 = arrayList.get(size);
                    if (fragment4.y == i3) {
                        if (fragment4 == fragment3) {
                            z = true;
                        } else {
                            if (fragment4 == fragment2) {
                                this.a.add(i, new w.a(9, fragment4));
                                i++;
                                fragment2 = null;
                            }
                            w.a aVar2 = new w.a(3, fragment4);
                            aVar2.f771c = aVar.f771c;
                            aVar2.e = aVar.e;
                            aVar2.f772d = aVar.f772d;
                            aVar2.f = aVar.f;
                            this.a.add(i, aVar2);
                            arrayList.remove(fragment4);
                            i++;
                        }
                    }
                }
                if (z) {
                    this.a.remove(i);
                    i--;
                } else {
                    aVar.a = 1;
                    arrayList.add(fragment3);
                }
            } else if (i2 == 3 || i2 == 6) {
                arrayList.remove(aVar.f770b);
                Fragment fragment5 = aVar.f770b;
                if (fragment5 == fragment2) {
                    this.a.add(i, new w.a(9, fragment5));
                    i++;
                    fragment2 = null;
                }
            } else if (i2 != 7) {
                if (i2 == 8) {
                    this.a.add(i, new w.a(9, fragment2));
                    i++;
                    fragment2 = aVar.f770b;
                }
            }
            i++;
        }
        return fragment2;
    }

    public String B() {
        return this.i;
    }

    boolean C(int i) {
        int size = this.a.size();
        for (int i2 = 0; i2 < size; i2++) {
            Fragment fragment = this.a.get(i2).f770b;
            int i3 = fragment != null ? fragment.y : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    boolean D(ArrayList<a> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.a.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            Fragment fragment = this.a.get(i4).f770b;
            int i5 = fragment != null ? fragment.y : 0;
            if (i5 != 0 && i5 != i3) {
                for (int i6 = i; i6 < i2; i6++) {
                    a aVar = arrayList.get(i6);
                    int size2 = aVar.a.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        Fragment fragment2 = aVar.a.get(i7).f770b;
                        if ((fragment2 != null ? fragment2.y : 0) == i5) {
                            return true;
                        }
                    }
                }
                i3 = i5;
            }
        }
        return false;
    }

    boolean F() {
        for (int i = 0; i < this.a.size(); i++) {
            if (E(this.a.get(i))) {
                return true;
            }
        }
        return false;
    }

    public void G() {
        if (this.q != null) {
            for (int i = 0; i < this.q.size(); i++) {
                this.q.get(i).run();
            }
            this.q = null;
        }
    }

    void H(Fragment.k kVar) {
        for (int i = 0; i < this.a.size(); i++) {
            w.a aVar = this.a.get(i);
            if (E(aVar)) {
                aVar.f770b.W1(kVar);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    Fragment I(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            w.a aVar = this.a.get(size);
            int i = aVar.a;
            if (i == 1) {
                arrayList.remove(aVar.f770b);
            } else if (i != 3) {
                switch (i) {
                    case 6:
                        arrayList.add(aVar.f770b);
                        break;
                    case 8:
                        fragment = null;
                        break;
                    case 9:
                        fragment = aVar.f770b;
                        break;
                    case 10:
                        aVar.h = aVar.g;
                        break;
                }
            }
        }
        return fragment;
    }

    @Override // androidx.fragment.app.n.o
    public boolean a(ArrayList<a> arrayList, ArrayList<Boolean> arrayList2) {
        if (n.E0(2)) {
            String str = "Run: " + this;
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.g) {
            return true;
        }
        this.r.e(this);
        return true;
    }

    @Override // androidx.fragment.app.w
    public int h() {
        return v(false);
    }

    @Override // androidx.fragment.app.w
    public int i() {
        return v(true);
    }

    @Override // androidx.fragment.app.w
    public void j() {
        l();
        this.r.b0(this, false);
    }

    @Override // androidx.fragment.app.w
    public void k() {
        l();
        this.r.b0(this, true);
    }

    @Override // androidx.fragment.app.w
    void m(int i, Fragment fragment, String str, int i2) {
        super.m(i, fragment, str, i2);
        fragment.t = this.r;
    }

    @Override // androidx.fragment.app.w
    public w n(Fragment fragment) {
        n nVar = fragment.t;
        if (nVar == null || nVar == this.r) {
            super.n(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot hide Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.w
    public w o(Fragment fragment) {
        n nVar = fragment.t;
        if (nVar == null || nVar == this.r) {
            super.o(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    @Override // androidx.fragment.app.w
    public w t(Fragment fragment) {
        n nVar = fragment.t;
        if (nVar == null || nVar == this.r) {
            super.t(fragment);
            return this;
        }
        throw new IllegalStateException("Cannot show Fragment attached to a different FragmentManager. Fragment " + fragment.toString() + " is already attached to a FragmentManager.");
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.t >= 0) {
            sb.append(" #");
            sb.append(this.t);
        }
        if (this.i != null) {
            sb.append(" ");
            sb.append(this.i);
        }
        sb.append("}");
        return sb.toString();
    }

    void u(int i) {
        if (this.g) {
            if (n.E0(2)) {
                String str = "Bump nesting in " + this + " by " + i;
            }
            int size = this.a.size();
            for (int i2 = 0; i2 < size; i2++) {
                w.a aVar = this.a.get(i2);
                Fragment fragment = aVar.f770b;
                if (fragment != null) {
                    fragment.s += i;
                    if (n.E0(2)) {
                        String str2 = "Bump nesting of " + aVar.f770b + " to " + aVar.f770b.s;
                    }
                }
            }
        }
    }

    int v(boolean z) {
        if (this.s) {
            throw new IllegalStateException("commit already called");
        }
        if (n.E0(2)) {
            String str = "Commit: " + this;
            PrintWriter printWriter = new PrintWriter(new b0("FragmentManager"));
            w("  ", printWriter);
            printWriter.close();
        }
        this.s = true;
        if (this.g) {
            this.t = this.r.i();
        } else {
            this.t = -1;
        }
        this.r.Y(this, z);
        return this.t;
    }

    public void w(String str, PrintWriter printWriter) {
        x(str, printWriter, true);
    }

    public void x(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.i);
            printWriter.print(" mIndex=");
            printWriter.print(this.t);
            printWriter.print(" mCommitted=");
            printWriter.println(this.s);
            if (this.f != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.f));
            }
            if (this.f767b != 0 || this.f768c != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f767b));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.f768c));
            }
            if (this.f769d != 0 || this.e != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.f769d));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.e));
            }
            if (this.j != 0 || this.k != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.k);
            }
            if (this.l != 0 || this.m != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.l));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.m);
            }
        }
        if (this.a.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            w.a aVar = this.a.get(i);
            switch (aVar.a) {
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
                    str2 = "cmd=" + aVar.a;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(aVar.f770b);
            if (z) {
                if (aVar.f771c != 0 || aVar.f772d != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.f771c));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f772d));
                }
                if (aVar.e != 0 || aVar.f != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(aVar.e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(aVar.f));
                }
            }
        }
    }

    void y() {
        int size = this.a.size();
        for (int i = 0; i < size; i++) {
            w.a aVar = this.a.get(i);
            Fragment fragment = aVar.f770b;
            if (fragment != null) {
                fragment.X1(false);
                fragment.V1(this.f);
                fragment.Z1(this.n, this.o);
            }
            switch (aVar.a) {
                case 1:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.h1(fragment, false);
                    this.r.g(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.a);
                case 3:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.a1(fragment);
                    break;
                case 4:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.B0(fragment);
                    break;
                case 5:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.h1(fragment, false);
                    this.r.l1(fragment);
                    break;
                case 6:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.x(fragment);
                    break;
                case 7:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.h1(fragment, false);
                    this.r.k(fragment);
                    break;
                case 8:
                    this.r.j1(fragment);
                    break;
                case 9:
                    this.r.j1(null);
                    break;
                case 10:
                    this.r.i1(fragment, aVar.h);
                    break;
            }
            if (!this.p && aVar.a != 1 && fragment != null && !n.P) {
                this.r.N0(fragment);
            }
        }
        if (this.p || n.P) {
            return;
        }
        n nVar = this.r;
        nVar.O0(nVar.q, true);
    }

    void z(boolean z) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            w.a aVar = this.a.get(size);
            Fragment fragment = aVar.f770b;
            if (fragment != null) {
                fragment.X1(true);
                fragment.V1(n.e1(this.f));
                fragment.Z1(this.o, this.n);
            }
            switch (aVar.a) {
                case 1:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.h1(fragment, true);
                    this.r.a1(fragment);
                    break;
                case 2:
                default:
                    throw new IllegalArgumentException("Unknown cmd: " + aVar.a);
                case 3:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.g(fragment);
                    break;
                case 4:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.l1(fragment);
                    break;
                case 5:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.h1(fragment, true);
                    this.r.B0(fragment);
                    break;
                case 6:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.k(fragment);
                    break;
                case 7:
                    fragment.Q1(aVar.f771c, aVar.f772d, aVar.e, aVar.f);
                    this.r.h1(fragment, true);
                    this.r.x(fragment);
                    break;
                case 8:
                    this.r.j1(null);
                    break;
                case 9:
                    this.r.j1(fragment);
                    break;
                case 10:
                    this.r.i1(fragment, aVar.g);
                    break;
            }
            if (!this.p && aVar.a != 3 && fragment != null && !n.P) {
                this.r.N0(fragment);
            }
        }
        if (this.p || !z || n.P) {
            return;
        }
        n nVar = this.r;
        nVar.O0(nVar.q, true);
    }
}
