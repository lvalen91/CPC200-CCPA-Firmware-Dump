package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class s extends o implements SubMenu {
    private final c.g.e.a.c e;

    s(Context context, c.g.e.a.c cVar) {
        super(context, cVar);
        this.e = cVar;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.e.clearHeader();
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return c(this.e.getItem());
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        this.e.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        this.e.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        this.e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        this.e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        this.e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.e.setIcon(drawable);
        return this;
    }
}
