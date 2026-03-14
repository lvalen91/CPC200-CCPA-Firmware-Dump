package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.view.menu.C0101g;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class SubMenuC0112r extends C0101g implements SubMenu {

    /* JADX INFO: renamed from: B */
    private C0101g f748B;

    /* JADX INFO: renamed from: C */
    private C0103i f749C;

    public SubMenuC0112r(Context context, C0101g c0101g, C0103i c0103i) {
        super(context);
        this.f748B = c0101g;
        this.f749C = c0103i;
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: D */
    public C0101g mo728D() {
        return this.f748B.mo728D();
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: F */
    public boolean mo730F() {
        return this.f748B.mo730F();
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: G */
    public boolean mo731G() {
        return this.f748B.mo731G();
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: H */
    public boolean mo732H() {
        return this.f748B.mo732H();
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: R */
    public void mo741R(C0101g.a aVar) {
        this.f748B.mo741R(aVar);
    }

    /* JADX INFO: renamed from: e0 */
    public Menu m834e0() {
        return this.f748B;
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: f */
    public boolean mo757f(C0103i c0103i) {
        return this.f748B.mo757f(c0103i);
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f749C;
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: h */
    boolean mo758h(C0101g c0101g, MenuItem menuItem) {
        return super.mo758h(c0101g, menuItem) || this.f748B.mo758h(c0101g, menuItem);
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: k */
    public boolean mo759k(C0103i c0103i) {
        return this.f748B.mo759k(c0103i);
    }

    @Override // androidx.appcompat.view.menu.C0101g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.f748B.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        super.m745V(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        super.m747Y(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        super.m748Z(view);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f749C.setIcon(drawable);
        return this;
    }

    @Override // androidx.appcompat.view.menu.C0101g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f748B.setQwertyMode(z);
    }

    @Override // androidx.appcompat.view.menu.C0101g
    /* JADX INFO: renamed from: t */
    public String mo767t() {
        C0103i c0103i = this.f749C;
        int itemId = c0103i != null ? c0103i.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.mo767t() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i) {
        super.m744U(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i) {
        super.m746X(i);
        return this;
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i) {
        this.f749C.setIcon(i);
        return this;
    }
}
