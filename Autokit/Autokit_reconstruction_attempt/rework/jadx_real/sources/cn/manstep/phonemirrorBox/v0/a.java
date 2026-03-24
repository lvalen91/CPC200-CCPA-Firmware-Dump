package cn.manstep.phonemirrorBox.v0;

import android.content.Context;
import com.yalantis.ucrop.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class a implements d {
    private static a i;
    private final ArrayList<d> a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<b> f1939b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1940c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1941d = false;
    private String e = BuildConfig.FLAVOR;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    private a() {
        cn.manstep.phonemirrorBox.u0.e eVar = new cn.manstep.phonemirrorBox.u0.e();
        c cVar = new c();
        ArrayList<d> arrayList = new ArrayList<>(2);
        this.a = arrayList;
        arrayList.add(eVar);
        this.a.add(cVar);
        this.f1939b = new LinkedList();
    }

    public static a t() {
        if (i == null) {
            synchronized (a.class) {
                if (i == null) {
                    i = new a();
                }
            }
        }
        return i;
    }

    public boolean A() {
        return C() || w() || v();
    }

    public boolean B() {
        return this.f == 10;
    }

    public boolean C() {
        return this.g;
    }

    public void D() {
        if (this.f != 15) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().p();
            }
            this.f = 15;
        }
    }

    public void E() {
        List<b> list = this.f1939b;
        if (list != null) {
            list.clear();
        }
        this.f1941d = false;
    }

    public void F(b bVar) {
        List<b> list = this.f1939b;
        if (list != null) {
            list.remove(bVar);
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void a() {
        if (this.f != 2) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
            this.f = 2;
        }
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().d(this.e);
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void b() {
        if (this.f != 8) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.f = 8;
        }
        this.h = true;
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void c(String str, boolean z) {
        if (this.f != 1) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().c(str, z);
            }
            this.f = 1;
        }
        this.e = str;
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void d() {
        if (this.f != 9) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().d();
            }
            this.f = 9;
        }
        this.h = false;
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void e() {
        if (this.f != 10) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().e();
            }
            this.f = 10;
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void f() {
        this.f1940c = 0;
        if (this.f != 5) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().f();
            }
            this.f = 5;
        }
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().c();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void g() {
        if (this.f != 6) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().g();
            }
            this.f = 6;
        }
        this.f1941d = true;
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().i();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void h() {
        if (this.f != 12) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().h();
            }
            this.f = 12;
        }
        this.g = true;
        for (b bVar : this.f1939b) {
            bVar.e();
            bVar.f();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void i() {
        this.f1940c = 0;
        if (this.f != 3) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().i();
            }
            this.f = 3;
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void j() {
        if (this.f != 16) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().j();
            }
            this.f = 16;
        }
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().k();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void k() {
        this.f1940c = 1;
        if (this.f != 4) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().k();
            }
            this.f = 4;
        }
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().g();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void l() {
        if (this.f != 11) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().l();
            }
            this.f = 11;
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void m() {
        if (this.f != 7) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().m();
            }
            this.f = 7;
        }
        this.f1941d = false;
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().j();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void n() {
        if (this.f != 17) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().n();
            }
            this.f = 17;
        }
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().h();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void o() {
        if (this.f != 13) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().o();
            }
            this.f = 13;
        }
        this.g = false;
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().b();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void p() {
        if (this.f != 14) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().p();
            }
            this.f = 14;
        }
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().e();
        }
    }

    @Override // cn.manstep.phonemirrorBox.v0.d
    public void q(Context context) {
        Iterator<d> it = this.a.iterator();
        while (it.hasNext()) {
            it.next().q(context);
        }
    }

    public void r(b bVar) {
        this.f1939b.add(bVar);
    }

    public void s() {
        this.f1940c = 2;
        if (this.f != 40) {
            Iterator<d> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().k();
            }
            this.f = 40;
        }
        Iterator<b> it2 = this.f1939b.iterator();
        while (it2.hasNext()) {
            it2.next().a();
        }
    }

    public String u() {
        return this.e;
    }

    public boolean v() {
        return this.f1940c == 2;
    }

    public boolean w() {
        return this.f1940c == 1;
    }

    public boolean x() {
        return v() || w();
    }

    public boolean y() {
        return this.f1941d;
    }

    public boolean z() {
        return this.h;
    }
}
