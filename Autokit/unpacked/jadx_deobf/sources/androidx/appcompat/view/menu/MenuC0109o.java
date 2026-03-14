package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import p016c.p041g.p043e.p044a.InterfaceMenuC0599a;

/* JADX INFO: renamed from: androidx.appcompat.view.menu.o */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MenuC0109o extends AbstractC0097c implements Menu {

    /* JADX INFO: renamed from: d */
    private final InterfaceMenuC0599a f724d;

    public MenuC0109o(Context context, InterfaceMenuC0599a interfaceMenuC0599a) {
        super(context);
        if (interfaceMenuC0599a == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f724d = interfaceMenuC0599a;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return m682c(this.f724d.add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i, int i2, int i3, ComponentName componentName, Intent[] intentArr, Intent intent, int i4, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int iAddIntentOptions = this.f724d.addIntentOptions(i, i2, i3, componentName, intentArr, intent, i4, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i5 = 0; i5 < length; i5++) {
                menuItemArr[i5] = m682c(menuItemArr2[i5]);
            }
        }
        return iAddIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return m683d(this.f724d.addSubMenu(charSequence));
    }

    @Override // android.view.Menu
    public void clear() {
        m684e();
        this.f724d.clear();
    }

    @Override // android.view.Menu
    public void close() {
        this.f724d.close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i) {
        return m682c(this.f724d.findItem(i));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i) {
        return m682c(this.f724d.getItem(i));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return this.f724d.hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i, KeyEvent keyEvent) {
        return this.f724d.isShortcutKey(i, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i, int i2) {
        return this.f724d.performIdentifierAction(i, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i, KeyEvent keyEvent, int i2) {
        return this.f724d.performShortcut(i, keyEvent, i2);
    }

    @Override // android.view.Menu
    public void removeGroup(int i) {
        m685f(i);
        this.f724d.removeGroup(i);
    }

    @Override // android.view.Menu
    public void removeItem(int i) {
        m686g(i);
        this.f724d.removeItem(i);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i, boolean z, boolean z2) {
        this.f724d.setGroupCheckable(i, z, z2);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i, boolean z) {
        this.f724d.setGroupEnabled(i, z);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i, boolean z) {
        this.f724d.setGroupVisible(i, z);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z) {
        this.f724d.setQwertyMode(z);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f724d.size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i) {
        return m682c(this.f724d.add(i));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i) {
        return m683d(this.f724d.addSubMenu(i));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, CharSequence charSequence) {
        return m682c(this.f724d.add(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        return m683d(this.f724d.addSubMenu(i, i2, i3, charSequence));
    }

    @Override // android.view.Menu
    public MenuItem add(int i, int i2, int i3, int i4) {
        return m682c(this.f724d.add(i, i2, i3, i4));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, int i4) {
        return m683d(this.f724d.addSubMenu(i, i2, i3, i4));
    }
}
