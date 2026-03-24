package c.e.b.k.m;

import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class o {
    static int f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f1160b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f1161c;
    ArrayList<c.e.b.k.e> a = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ArrayList<a> f1162d = null;
    private int e = -1;

    class a {
        public a(o oVar, c.e.b.k.e eVar, c.e.b.d dVar, int i) {
            new WeakReference(eVar);
            dVar.x(eVar.F);
            dVar.x(eVar.G);
            dVar.x(eVar.H);
            dVar.x(eVar.I);
            dVar.x(eVar.J);
        }
    }

    public o(int i) {
        this.f1160b = -1;
        this.f1161c = 0;
        int i2 = f;
        f = i2 + 1;
        this.f1160b = i2;
        this.f1161c = i;
    }

    private String e() {
        int i = this.f1161c;
        return i == 0 ? "Horizontal" : i == 1 ? "Vertical" : i == 2 ? "Both" : "Unknown";
    }

    private int j(c.e.b.d dVar, ArrayList<c.e.b.k.e> arrayList, int i) {
        int iX;
        int iX2;
        c.e.b.k.f fVar = (c.e.b.k.f) arrayList.get(0).I();
        dVar.D();
        fVar.g(dVar, false);
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            arrayList.get(i2).g(dVar, false);
        }
        if (i == 0 && fVar.y0 > 0) {
            c.e.b.k.b.b(fVar, dVar, arrayList, 0);
        }
        if (i == 1 && fVar.z0 > 0) {
            c.e.b.k.b.b(fVar, dVar, arrayList, 1);
        }
        try {
            dVar.z();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.f1162d = new ArrayList<>();
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            this.f1162d.add(new a(this, arrayList.get(i3), dVar, i));
        }
        if (i == 0) {
            iX = dVar.x(fVar.F);
            iX2 = dVar.x(fVar.H);
            dVar.D();
        } else {
            iX = dVar.x(fVar.G);
            iX2 = dVar.x(fVar.I);
            dVar.D();
        }
        return iX2 - iX;
    }

    public boolean a(c.e.b.k.e eVar) {
        if (this.a.contains(eVar)) {
            return false;
        }
        this.a.add(eVar);
        return true;
    }

    public void b(ArrayList<o> arrayList) {
        int size = this.a.size();
        if (this.e != -1 && size > 0) {
            for (int i = 0; i < arrayList.size(); i++) {
                o oVar = arrayList.get(i);
                if (this.e == oVar.f1160b) {
                    g(this.f1161c, oVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public int c() {
        return this.f1160b;
    }

    public int d() {
        return this.f1161c;
    }

    public int f(c.e.b.d dVar, int i) {
        if (this.a.size() == 0) {
            return 0;
        }
        return j(dVar, this.a, i);
    }

    public void g(int i, o oVar) {
        for (c.e.b.k.e eVar : this.a) {
            oVar.a(eVar);
            if (i == 0) {
                eVar.m0 = oVar.c();
            } else {
                eVar.n0 = oVar.c();
            }
        }
        this.e = oVar.f1160b;
    }

    public void h(boolean z) {
    }

    public void i(int i) {
        this.f1161c = i;
    }

    public String toString() {
        String str = e() + " [" + this.f1160b + "] <";
        Iterator<c.e.b.k.e> it = this.a.iterator();
        while (it.hasNext()) {
            str = str + " " + it.next().r();
        }
        return str + " >";
    }
}
