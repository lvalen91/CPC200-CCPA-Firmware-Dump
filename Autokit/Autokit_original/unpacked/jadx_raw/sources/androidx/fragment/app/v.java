package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class v {
    private final ArrayList<Fragment> a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashMap<String, u> f765b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private q f766c;

    v() {
    }

    void a(Fragment fragment) {
        if (this.a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.a) {
            this.a.add(fragment);
        }
        fragment.m = true;
    }

    void b() {
        this.f765b.values().removeAll(Collections.singleton(null));
    }

    boolean c(String str) {
        return this.f765b.get(str) != null;
    }

    void d(int i) {
        for (u uVar : this.f765b.values()) {
            if (uVar != null) {
                uVar.t(i);
            }
        }
    }

    void e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f765b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (u uVar : this.f765b.values()) {
                printWriter.print(str);
                if (uVar != null) {
                    Fragment fragmentK = uVar.k();
                    printWriter.println(fragmentK);
                    fragmentK.z(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                Fragment fragment = this.a.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    Fragment f(String str) {
        u uVar = this.f765b.get(str);
        if (uVar != null) {
            return uVar.k();
        }
        return null;
    }

    Fragment g(int i) {
        for (int size = this.a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.a.get(size);
            if (fragment != null && fragment.x == i) {
                return fragment;
            }
        }
        for (u uVar : this.f765b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (fragmentK.x == i) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment h(String str) {
        if (str != null) {
            for (int size = this.a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.a.get(size);
                if (fragment != null && str.equals(fragment.z)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (u uVar : this.f765b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                if (str.equals(fragmentK.z)) {
                    return fragmentK;
                }
            }
        }
        return null;
    }

    Fragment i(String str) {
        Fragment fragmentB;
        for (u uVar : this.f765b.values()) {
            if (uVar != null && (fragmentB = uVar.k().B(str)) != null) {
                return fragmentB;
            }
        }
        return null;
    }

    int j(Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.H;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.a.indexOf(fragment);
        for (int i = iIndexOf - 1; i >= 0; i--) {
            Fragment fragment2 = this.a.get(i);
            if (fragment2.H == viewGroup && (view2 = fragment2.I) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.a.size()) {
                return -1;
            }
            Fragment fragment3 = this.a.get(iIndexOf);
            if (fragment3.H == viewGroup && (view = fragment3.I) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    List<u> k() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f765b.values()) {
            if (uVar != null) {
                arrayList.add(uVar);
            }
        }
        return arrayList;
    }

    List<Fragment> l() {
        ArrayList arrayList = new ArrayList();
        for (u uVar : this.f765b.values()) {
            if (uVar != null) {
                arrayList.add(uVar.k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    u m(String str) {
        return this.f765b.get(str);
    }

    List<Fragment> n() {
        ArrayList arrayList;
        if (this.a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.a) {
            arrayList = new ArrayList(this.a);
        }
        return arrayList;
    }

    q o() {
        return this.f766c;
    }

    void p(u uVar) {
        Fragment fragmentK = uVar.k();
        if (c(fragmentK.g)) {
            return;
        }
        this.f765b.put(fragmentK.g, uVar);
        if (fragmentK.D) {
            if (fragmentK.C) {
                this.f766c.i(fragmentK);
            } else {
                this.f766c.q(fragmentK);
            }
            fragmentK.D = false;
        }
        if (n.E0(2)) {
            String str = "Added fragment to active set " + fragmentK;
        }
    }

    void q(u uVar) {
        Fragment fragmentK = uVar.k();
        if (fragmentK.C) {
            this.f766c.q(fragmentK);
        }
        if (this.f765b.put(fragmentK.g, null) != null && n.E0(2)) {
            String str = "Removed fragment from active set " + fragmentK;
        }
    }

    void r() {
        Iterator<Fragment> it = this.a.iterator();
        while (it.hasNext()) {
            u uVar = this.f765b.get(it.next().g);
            if (uVar != null) {
                uVar.m();
            }
        }
        for (u uVar2 : this.f765b.values()) {
            if (uVar2 != null) {
                uVar2.m();
                Fragment fragmentK = uVar2.k();
                if (fragmentK.n && !fragmentK.t0()) {
                    q(uVar2);
                }
            }
        }
    }

    void s(Fragment fragment) {
        synchronized (this.a) {
            this.a.remove(fragment);
        }
        fragment.m = false;
    }

    void t() {
        this.f765b.clear();
    }

    void u(List<String> list) {
        this.a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment fragmentF = f(str);
                if (fragmentF == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (n.E0(2)) {
                    String str2 = "restoreSaveState: added (" + str + "): " + fragmentF;
                }
                a(fragmentF);
            }
        }
    }

    ArrayList<t> v() {
        ArrayList<t> arrayList = new ArrayList<>(this.f765b.size());
        for (u uVar : this.f765b.values()) {
            if (uVar != null) {
                Fragment fragmentK = uVar.k();
                t tVarR = uVar.r();
                arrayList.add(tVarR);
                if (n.E0(2)) {
                    String str = "Saved state of " + fragmentK + ": " + tVarR.n;
                }
            }
        }
        return arrayList;
    }

    ArrayList<String> w() {
        synchronized (this.a) {
            if (this.a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.a.size());
            for (Fragment fragment : this.a) {
                arrayList.add(fragment.g);
                if (n.E0(2)) {
                    String str = "saveAllState: adding fragment (" + fragment.g + "): " + fragment;
                }
            }
            return arrayList;
        }
    }

    void x(q qVar) {
        this.f766c = qVar;
    }
}
