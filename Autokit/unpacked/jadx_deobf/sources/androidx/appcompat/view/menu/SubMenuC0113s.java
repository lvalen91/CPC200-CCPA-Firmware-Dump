package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import p016c.p041g.p043e.p044a.InterfaceSubMenuC0601c;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class SubMenuC0113s extends MenuC0109o implements SubMenu {

    /* JADX INFO: renamed from: e */
    private final InterfaceSubMenuC0601c f750e;

    SubMenuC0113s(Context context, InterfaceSubMenuC0601c interfaceSubMenuC0601c) {
        super(context, interfaceSubMenuC0601c);
        this.f750e = interfaceSubMenuC0601c;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f750e.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return m682c(this.f750e.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.f750e.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.f750e.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.f750e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f750e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.f750e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.f750e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f750e.setIcon(drawable);
        return this;
    }
}
