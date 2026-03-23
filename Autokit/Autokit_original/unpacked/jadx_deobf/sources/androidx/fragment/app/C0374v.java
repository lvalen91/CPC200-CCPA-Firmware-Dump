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

/* JADX INFO: renamed from: androidx.fragment.app.v */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0374v {

    /* JADX INFO: renamed from: a */
    private final ArrayList<Fragment> f2379a = new ArrayList<>();

    /* JADX INFO: renamed from: b */
    private final HashMap<String, C0373u> f2380b = new HashMap<>();

    /* JADX INFO: renamed from: c */
    private C0369q f2381c;

    C0374v() {
    }

    /* JADX INFO: renamed from: a */
    void m2862a(Fragment fragment) {
        if (this.f2379a.contains(fragment)) {
            throw new IllegalStateException("Fragment already added: " + fragment);
        }
        synchronized (this.f2379a) {
            this.f2379a.add(fragment);
        }
        fragment.f2082m = true;
    }

    /* JADX INFO: renamed from: b */
    void m2863b() {
        this.f2380b.values().removeAll(Collections.singleton(null));
    }

    /* JADX INFO: renamed from: c */
    boolean m2864c(String str) {
        return this.f2380b.get(str) != null;
    }

    /* JADX INFO: renamed from: d */
    void m2865d(int i) {
        for (C0373u c0373u : this.f2380b.values()) {
            if (c0373u != null) {
                c0373u.m2859t(i);
            }
        }
    }

    /* JADX INFO: renamed from: e */
    void m2866e(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String str2 = str + "    ";
        if (!this.f2380b.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (C0373u c0373u : this.f2380b.values()) {
                printWriter.print(str);
                if (c0373u != null) {
                    Fragment fragmentM2852k = c0373u.m2852k();
                    printWriter.println(fragmentM2852k);
                    fragmentM2852k.m2506z(str2, fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size = this.f2379a.size();
        if (size > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size; i++) {
                Fragment fragment = this.f2379a.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment.toString());
            }
        }
    }

    /* JADX INFO: renamed from: f */
    Fragment m2867f(String str) {
        C0373u c0373u = this.f2380b.get(str);
        if (c0373u != null) {
            return c0373u.m2852k();
        }
        return null;
    }

    /* JADX INFO: renamed from: g */
    Fragment m2868g(int i) {
        for (int size = this.f2379a.size() - 1; size >= 0; size--) {
            Fragment fragment = this.f2379a.get(size);
            if (fragment != null && fragment.f2093x == i) {
                return fragment;
            }
        }
        for (C0373u c0373u : this.f2380b.values()) {
            if (c0373u != null) {
                Fragment fragmentM2852k = c0373u.m2852k();
                if (fragmentM2852k.f2093x == i) {
                    return fragmentM2852k;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: h */
    Fragment m2869h(String str) {
        if (str != null) {
            for (int size = this.f2379a.size() - 1; size >= 0; size--) {
                Fragment fragment = this.f2379a.get(size);
                if (fragment != null && str.equals(fragment.f2095z)) {
                    return fragment;
                }
            }
        }
        if (str == null) {
            return null;
        }
        for (C0373u c0373u : this.f2380b.values()) {
            if (c0373u != null) {
                Fragment fragmentM2852k = c0373u.m2852k();
                if (str.equals(fragmentM2852k.f2095z)) {
                    return fragmentM2852k;
                }
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: i */
    Fragment m2870i(String str) {
        Fragment fragmentM2379B;
        for (C0373u c0373u : this.f2380b.values()) {
            if (c0373u != null && (fragmentM2379B = c0373u.m2852k().m2379B(str)) != null) {
                return fragmentM2379B;
            }
        }
        return null;
    }

    /* JADX INFO: renamed from: j */
    int m2871j(Fragment fragment) {
        View view;
        View view2;
        ViewGroup viewGroup = fragment.f2053H;
        if (viewGroup == null) {
            return -1;
        }
        int iIndexOf = this.f2379a.indexOf(fragment);
        for (int i = iIndexOf - 1; i >= 0; i--) {
            Fragment fragment2 = this.f2379a.get(i);
            if (fragment2.f2053H == viewGroup && (view2 = fragment2.f2054I) != null) {
                return viewGroup.indexOfChild(view2) + 1;
            }
        }
        while (true) {
            iIndexOf++;
            if (iIndexOf >= this.f2379a.size()) {
                return -1;
            }
            Fragment fragment3 = this.f2379a.get(iIndexOf);
            if (fragment3.f2053H == viewGroup && (view = fragment3.f2054I) != null) {
                return viewGroup.indexOfChild(view);
            }
        }
    }

    /* JADX INFO: renamed from: k */
    List<C0373u> m2872k() {
        ArrayList arrayList = new ArrayList();
        for (C0373u c0373u : this.f2380b.values()) {
            if (c0373u != null) {
                arrayList.add(c0373u);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: l */
    List<Fragment> m2873l() {
        ArrayList arrayList = new ArrayList();
        for (C0373u c0373u : this.f2380b.values()) {
            if (c0373u != null) {
                arrayList.add(c0373u.m2852k());
            } else {
                arrayList.add(null);
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: m */
    C0373u m2874m(String str) {
        return this.f2380b.get(str);
    }

    /* JADX INFO: renamed from: n */
    List<Fragment> m2875n() {
        ArrayList arrayList;
        if (this.f2379a.isEmpty()) {
            return Collections.emptyList();
        }
        synchronized (this.f2379a) {
            arrayList = new ArrayList(this.f2379a);
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: o */
    C0369q m2876o() {
        return this.f2381c;
    }

    /* JADX INFO: renamed from: p */
    void m2877p(C0373u c0373u) {
        Fragment fragmentM2852k = c0373u.m2852k();
        if (m2864c(fragmentM2852k.f2076g)) {
            return;
        }
        this.f2380b.put(fragmentM2852k.f2076g, c0373u);
        if (fragmentM2852k.f2049D) {
            if (fragmentM2852k.f2048C) {
                this.f2381c.m2826i(fragmentM2852k);
            } else {
                this.f2381c.m2833q(fragmentM2852k);
            }
            fragmentM2852k.f2049D = false;
        }
        if (AbstractC0366n.m2677E0(2)) {
            String str = "Added fragment to active set " + fragmentM2852k;
        }
    }

    /* JADX INFO: renamed from: q */
    void m2878q(C0373u c0373u) {
        Fragment fragmentM2852k = c0373u.m2852k();
        if (fragmentM2852k.f2048C) {
            this.f2381c.m2833q(fragmentM2852k);
        }
        if (this.f2380b.put(fragmentM2852k.f2076g, null) != null && AbstractC0366n.m2677E0(2)) {
            String str = "Removed fragment from active set " + fragmentM2852k;
        }
    }

    /* JADX INFO: renamed from: r */
    void m2879r() {
        Iterator<Fragment> it = this.f2379a.iterator();
        while (it.hasNext()) {
            C0373u c0373u = this.f2380b.get(it.next().f2076g);
            if (c0373u != null) {
                c0373u.m2853m();
            }
        }
        for (C0373u c0373u2 : this.f2380b.values()) {
            if (c0373u2 != null) {
                c0373u2.m2853m();
                Fragment fragmentM2852k = c0373u2.m2852k();
                if (fragmentM2852k.f2083n && !fragmentM2852k.m2492t0()) {
                    m2878q(c0373u2);
                }
            }
        }
    }

    /* JADX INFO: renamed from: s */
    void m2880s(Fragment fragment) {
        synchronized (this.f2379a) {
            this.f2379a.remove(fragment);
        }
        fragment.f2082m = false;
    }

    /* JADX INFO: renamed from: t */
    void m2881t() {
        this.f2380b.clear();
    }

    /* JADX INFO: renamed from: u */
    void m2882u(List<String> list) {
        this.f2379a.clear();
        if (list != null) {
            for (String str : list) {
                Fragment fragmentM2867f = m2867f(str);
                if (fragmentM2867f == null) {
                    throw new IllegalStateException("No instantiated fragment for (" + str + ")");
                }
                if (AbstractC0366n.m2677E0(2)) {
                    String str2 = "restoreSaveState: added (" + str + "): " + fragmentM2867f;
                }
                m2862a(fragmentM2867f);
            }
        }
    }

    /* JADX INFO: renamed from: v */
    ArrayList<C0372t> m2883v() {
        ArrayList<C0372t> arrayList = new ArrayList<>(this.f2380b.size());
        for (C0373u c0373u : this.f2380b.values()) {
            if (c0373u != null) {
                Fragment fragmentM2852k = c0373u.m2852k();
                C0372t c0372tM2857r = c0373u.m2857r();
                arrayList.add(c0372tM2857r);
                if (AbstractC0366n.m2677E0(2)) {
                    String str = "Saved state of " + fragmentM2852k + ": " + c0372tM2857r.f2371n;
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: w */
    ArrayList<String> m2884w() {
        synchronized (this.f2379a) {
            if (this.f2379a.isEmpty()) {
                return null;
            }
            ArrayList<String> arrayList = new ArrayList<>(this.f2379a.size());
            for (Fragment fragment : this.f2379a) {
                arrayList.add(fragment.f2076g);
                if (AbstractC0366n.m2677E0(2)) {
                    String str = "saveAllState: adding fragment (" + fragment.f2076g + "): " + fragment;
                }
            }
            return arrayList;
        }
    }

    /* JADX INFO: renamed from: x */
    void m2885x(C0369q c0369q) {
        this.f2381c = c0369q;
    }
}
