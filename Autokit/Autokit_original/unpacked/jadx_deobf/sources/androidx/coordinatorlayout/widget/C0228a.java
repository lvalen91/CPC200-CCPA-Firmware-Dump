package androidx.coordinatorlayout.widget;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import p016c.p032d.C0540g;
import p016c.p041g.p049j.C0624f;
import p016c.p041g.p049j.InterfaceC0623e;

/* JADX INFO: renamed from: androidx.coordinatorlayout.widget.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0228a<T> {

    /* JADX INFO: renamed from: a */
    private final InterfaceC0623e<ArrayList<T>> f1703a = new C0624f(10);

    /* JADX INFO: renamed from: b */
    private final C0540g<T, ArrayList<T>> f1704b = new C0540g<>();

    /* JADX INFO: renamed from: c */
    private final ArrayList<T> f1705c = new ArrayList<>();

    /* JADX INFO: renamed from: d */
    private final HashSet<T> f1706d = new HashSet<>();

    /* JADX INFO: renamed from: e */
    private void m1623e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f1704b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                m1623e(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    /* JADX INFO: renamed from: f */
    private ArrayList<T> m1624f() {
        ArrayList<T> arrayListMo4849b = this.f1703a.mo4849b();
        return arrayListMo4849b == null ? new ArrayList<>() : arrayListMo4849b;
    }

    /* JADX INFO: renamed from: k */
    private void m1625k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f1703a.mo4848a(arrayList);
    }

    /* JADX INFO: renamed from: a */
    public void m1626a(T t, T t2) {
        if (!this.f1704b.containsKey(t) || !this.f1704b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListM1624f = this.f1704b.get(t);
        if (arrayListM1624f == null) {
            arrayListM1624f = m1624f();
            this.f1704b.put(t, arrayListM1624f);
        }
        arrayListM1624f.add(t2);
    }

    /* JADX INFO: renamed from: b */
    public void m1627b(T t) {
        if (this.f1704b.containsKey(t)) {
            return;
        }
        this.f1704b.put(t, null);
    }

    /* JADX INFO: renamed from: c */
    public void m1628c() {
        int size = this.f1704b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListM4297m = this.f1704b.m4297m(i);
            if (arrayListM4297m != null) {
                m1625k(arrayListM4297m);
            }
        }
        this.f1704b.clear();
    }

    /* JADX INFO: renamed from: d */
    public boolean m1629d(T t) {
        return this.f1704b.containsKey(t);
    }

    /* JADX INFO: renamed from: g */
    public List m1630g(T t) {
        return this.f1704b.get(t);
    }

    /* JADX INFO: renamed from: h */
    public List<T> m1631h(T t) {
        int size = this.f1704b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListM4297m = this.f1704b.m4297m(i);
            if (arrayListM4297m != null && arrayListM4297m.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f1704b.m4293i(i));
            }
        }
        return arrayList;
    }

    /* JADX INFO: renamed from: i */
    public ArrayList<T> m1632i() {
        this.f1705c.clear();
        this.f1706d.clear();
        int size = this.f1704b.size();
        for (int i = 0; i < size; i++) {
            m1623e(this.f1704b.m4293i(i), this.f1705c, this.f1706d);
        }
        return this.f1705c;
    }

    /* JADX INFO: renamed from: j */
    public boolean m1633j(T t) {
        int size = this.f1704b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListM4297m = this.f1704b.m4297m(i);
            if (arrayListM4297m != null && arrayListM4297m.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
