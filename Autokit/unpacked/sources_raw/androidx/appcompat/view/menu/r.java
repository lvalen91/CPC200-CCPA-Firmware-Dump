package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.g;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class r extends g implements SubMenu {
    private g B;
    private i C;

    public r(Context context, g gVar, i iVar) {
        super(context);
        this.B = gVar;
        this.C = iVar;
    }

    @Override // androidx.appcompat.view.menu.g
    public g D() {
        return this.B.D();
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean F() {
        return this.B.F();
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean G() {
        return this.B.G();
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean H() {
        return this.B.H();
    }

    @Override // androidx.appcompat.view.menu.g
    public void R(g.a aVar) {
        this.B.R(aVar);
    }

    public Menu e0() {
        return this.B;
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean f(i iVar) {
        return this.B.f(iVar);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.C;
    }

    @Override // androidx.appcompat.view.menu.g
    boolean h(g gVar, MenuItem menuItem) {
        return super.h(gVar, menuItem) || this.B.h(gVar, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g
    public boolean k(i iVar) {
        return this.B.k(iVar);
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        super.V(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.Y(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        super.Z(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.B.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.g
    public String t() {
        i iVar = this.C;
        int itemId = iVar != null ? iVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.t() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        super.U(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        super.X(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.C.setIcon(i);
        return this;
    }
}
