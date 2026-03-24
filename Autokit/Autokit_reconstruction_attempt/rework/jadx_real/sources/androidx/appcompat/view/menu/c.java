package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
abstract class c {
    final Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c.d.g<c.g.e.a.b, MenuItem> f188b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c.d.g<c.g.e.a.c, SubMenu> f189c;

    c(Context context) {
        this.a = context;
    }

    final MenuItem c(MenuItem menuItem) {
        if (!(menuItem instanceof c.g.e.a.b)) {
            return menuItem;
        }
        c.g.e.a.b bVar = (c.g.e.a.b) menuItem;
        if (this.f188b == null) {
            this.f188b = new c.d.g<>();
        }
        MenuItem menuItem2 = this.f188b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        j jVar = new j(this.a, bVar);
        this.f188b.put(bVar, jVar);
        return jVar;
    }

    final SubMenu d(SubMenu subMenu) {
        if (!(subMenu instanceof c.g.e.a.c)) {
            return subMenu;
        }
        c.g.e.a.c cVar = (c.g.e.a.c) subMenu;
        if (this.f189c == null) {
            this.f189c = new c.d.g<>();
        }
        SubMenu subMenu2 = this.f189c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        s sVar = new s(this.a, cVar);
        this.f189c.put(cVar, sVar);
        return sVar;
    }

    final void e() {
        c.d.g<c.g.e.a.b, MenuItem> gVar = this.f188b;
        if (gVar != null) {
            gVar.clear();
        }
        c.d.g<c.g.e.a.c, SubMenu> gVar2 = this.f189c;
        if (gVar2 != null) {
            gVar2.clear();
        }
    }

    final void f(int i) {
        if (this.f188b == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.f188b.size()) {
            if (this.f188b.i(i2).getGroupId() == i) {
                this.f188b.k(i2);
                i2--;
            }
            i2++;
        }
    }

    final void g(int i) {
        if (this.f188b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f188b.size(); i2++) {
            if (this.f188b.i(i2).getItemId() == i) {
                this.f188b.k(i2);
                return;
            }
        }
    }
}
