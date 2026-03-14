package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.MenuItem;
import p016c.p041g.p043e.p044a.InterfaceMenuItemC0600b;

/* JADX INFO: renamed from: androidx.core.view.i */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0279i {
    /* JADX INFO: renamed from: a */
    public static MenuItem m2009a(MenuItem menuItem, AbstractC0260b abstractC0260b) {
        return menuItem instanceof InterfaceMenuItemC0600b ? ((InterfaceMenuItemC0600b) menuItem).mo661a(abstractC0260b) : menuItem;
    }

    /* JADX INFO: renamed from: b */
    public static void m2010b(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof InterfaceMenuItemC0600b) {
            ((InterfaceMenuItemC0600b) menuItem).setAlphabeticShortcut(c2, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setAlphabeticShortcut(c2, i);
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m2011c(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof InterfaceMenuItemC0600b) {
            ((InterfaceMenuItemC0600b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setContentDescription(charSequence);
        }
    }

    /* JADX INFO: renamed from: d */
    public static void m2012d(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof InterfaceMenuItemC0600b) {
            ((InterfaceMenuItemC0600b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintList(colorStateList);
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m2013e(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof InterfaceMenuItemC0600b) {
            ((InterfaceMenuItemC0600b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintMode(mode);
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m2014f(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof InterfaceMenuItemC0600b) {
            ((InterfaceMenuItemC0600b) menuItem).setNumericShortcut(c2, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setNumericShortcut(c2, i);
        }
    }

    /* JADX INFO: renamed from: g */
    public static void m2015g(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof InterfaceMenuItemC0600b) {
            ((InterfaceMenuItemC0600b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setTooltipText(charSequence);
        }
    }
}
