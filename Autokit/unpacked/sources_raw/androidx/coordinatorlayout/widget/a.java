package androidx.coordinatorlayout.widget;

import c.d.g;
import c.g.j.e;
import c.g.j.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class a<T> {
    private final e<ArrayList<T>> a = new f(10);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g<T, ArrayList<T>> f497b = new g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ArrayList<T> f498c = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final HashSet<T> f499d = new HashSet<>();

    private void e(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        ArrayList<T> arrayList2 = this.f497b.get(t);
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                e(arrayList2.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }

    private ArrayList<T> f() {
        ArrayList<T> arrayListB = this.a.b();
        return arrayListB == null ? new ArrayList<>() : arrayListB;
    }

    private void k(ArrayList<T> arrayList) {
        arrayList.clear();
        this.a.a(arrayList);
    }

    public void a(T t, T t2) {
        if (!this.f497b.containsKey(t) || !this.f497b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList<T> arrayListF = this.f497b.get(t);
        if (arrayListF == null) {
            arrayListF = f();
            this.f497b.put(t, arrayListF);
        }
        arrayListF.add(t2);
    }

    public void b(T t) {
        if (this.f497b.containsKey(t)) {
            return;
        }
        this.f497b.put(t, null);
    }

    public void c() {
        int size = this.f497b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListM = this.f497b.m(i);
            if (arrayListM != null) {
                k(arrayListM);
            }
        }
        this.f497b.clear();
    }

    public boolean d(T t) {
        return this.f497b.containsKey(t);
    }

    public List g(T t) {
        return this.f497b.get(t);
    }

    public List<T> h(T t) {
        int size = this.f497b.size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListM = this.f497b.m(i);
            if (arrayListM != null && arrayListM.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f497b.i(i));
            }
        }
        return arrayList;
    }

    public ArrayList<T> i() {
        this.f498c.clear();
        this.f499d.clear();
        int size = this.f497b.size();
        for (int i = 0; i < size; i++) {
            e(this.f497b.i(i), this.f498c, this.f499d);
        }
        return this.f498c;
    }

    public boolean j(T t) {
        int size = this.f497b.size();
        for (int i = 0; i < size; i++) {
            ArrayList<T> arrayListM = this.f497b.m(i);
            if (arrayListM != null && arrayListM.contains(t)) {
                return true;
            }
        }
        return false;
    }
}
