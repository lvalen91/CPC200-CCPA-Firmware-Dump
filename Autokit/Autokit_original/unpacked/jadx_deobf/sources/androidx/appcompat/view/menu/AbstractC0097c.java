package androidx.appcompat.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import p016c.p032d.C0540g;
import p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b;
import p016c.p041g.p043e.p044a.InterfaceSubMenuC0601c;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
abstract class AbstractC0097c {

    /* JADX INFO: renamed from: a */
    final Context f580a;

    /* JADX INFO: renamed from: b */
    private C0540g<InterfaceMenuItemC0600b, MenuItem> f581b;

    /* JADX INFO: renamed from: c */
    private C0540g<InterfaceSubMenuC0601c, SubMenu> f582c;

    AbstractC0097c(Context context) {
        this.f580a = context;
    }

    /* JADX INFO: renamed from: c */
    final MenuItem m682c(MenuItem menuItem) {
        if (!(menuItem instanceof InterfaceMenuItemC0600b)) {
            return menuItem;
        }
        InterfaceMenuItemC0600b interfaceMenuItemC0600b = (InterfaceMenuItemC0600b) menuItem;
        if (this.f581b == null) {
            this.f581b = new C0540g<>();
        }
        MenuItem menuItem2 = this.f581b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        MenuItemC0104j menuItemC0104j = new MenuItemC0104j(this.f580a, interfaceMenuItemC0600b);
        this.f581b.put(interfaceMenuItemC0600b, menuItemC0104j);
        return menuItemC0104j;
    }

    /* JADX INFO: renamed from: d */
    final SubMenu m683d(SubMenu subMenu) {
        if (!(subMenu instanceof InterfaceSubMenuC0601c)) {
            return subMenu;
        }
        InterfaceSubMenuC0601c interfaceSubMenuC0601c = (InterfaceSubMenuC0601c) subMenu;
        if (this.f582c == null) {
            this.f582c = new C0540g<>();
        }
        SubMenu subMenu2 = this.f582c.get(interfaceSubMenuC0601c);
        if (subMenu2 != null) {
            return subMenu2;
        }
        SubMenuC0113s subMenuC0113s = new SubMenuC0113s(this.f580a, interfaceSubMenuC0601c);
        this.f582c.put(interfaceSubMenuC0601c, subMenuC0113s);
        return subMenuC0113s;
    }

    /* JADX INFO: renamed from: e */
    final void m684e() {
        C0540g<InterfaceMenuItemC0600b, MenuItem> c0540g = this.f581b;
        if (c0540g != null) {
            c0540g.clear();
        }
        C0540g<InterfaceSubMenuC0601c, SubMenu> c0540g2 = this.f582c;
        if (c0540g2 != null) {
            c0540g2.clear();
        }
    }

    /* JADX INFO: renamed from: f */
    final void m685f(int i) {
        if (this.f581b == null) {
            return;
        }
        int i2 = 0;
        while (i2 < this.f581b.size()) {
            if (this.f581b.m4293i(i2).getGroupId() == i) {
                this.f581b.m4295k(i2);
                i2--;
            }
            i2++;
        }
    }

    /* JADX INFO: renamed from: g */
    final void m686g(int i) {
        if (this.f581b == null) {
            return;
        }
        for (int i2 = 0; i2 < this.f581b.size(); i2++) {
            if (this.f581b.m4293i(i2).getItemId() == i) {
                this.f581b.m4295k(i2);
                return;
            }
        }
    }
}
