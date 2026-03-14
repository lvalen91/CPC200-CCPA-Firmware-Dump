package p016c.p041g.p043e.p044a;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.MenuItem;
import android.view.View;
import androidx.core.view.AbstractC0260b;

/* JADX INFO: renamed from: c.g.e.a.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public interface InterfaceMenuItemC0600b extends MenuItem {
    /* JADX INFO: renamed from: a */
    InterfaceMenuItemC0600b mo661a(AbstractC0260b abstractC0260b);

    /* JADX INFO: renamed from: b */
    AbstractC0260b mo662b();

    @Override // android.view.MenuItem
    boolean collapseActionView();

    @Override // android.view.MenuItem
    boolean expandActionView();

    @Override // android.view.MenuItem
    View getActionView();

    @Override // android.view.MenuItem
    int getAlphabeticModifiers();

    @Override // android.view.MenuItem
    CharSequence getContentDescription();

    @Override // android.view.MenuItem
    ColorStateList getIconTintList();

    @Override // android.view.MenuItem
    PorterDuff.Mode getIconTintMode();

    @Override // android.view.MenuItem
    int getNumericModifiers();

    @Override // android.view.MenuItem
    CharSequence getTooltipText();

    @Override // android.view.MenuItem
    boolean isActionViewExpanded();

    @Override // android.view.MenuItem
    MenuItem setActionView(int i);

    @Override // android.view.MenuItem
    MenuItem setActionView(View view);

    @Override // android.view.MenuItem
    MenuItem setAlphabeticShortcut(char c2, int i);

    @Override // android.view.MenuItem
    InterfaceMenuItemC0600b setContentDescription(CharSequence charSequence);

    @Override // android.view.MenuItem
    MenuItem setIconTintList(ColorStateList colorStateList);

    @Override // android.view.MenuItem
    MenuItem setIconTintMode(PorterDuff.Mode mode);

    @Override // android.view.MenuItem
    MenuItem setNumericShortcut(char c2, int i);

    @Override // android.view.MenuItem
    MenuItem setShortcut(char c2, char c3, int i, int i2);

    @Override // android.view.MenuItem
    void setShowAsAction(int i);

    @Override // android.view.MenuItem
    MenuItem setShowAsActionFlags(int i);

    @Override // android.view.MenuItem
    InterfaceMenuItemC0600b setTooltipText(CharSequence charSequence);
}
