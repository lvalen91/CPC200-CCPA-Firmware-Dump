package androidx.core.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.view.MenuItem;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class i {
    public static MenuItem a(MenuItem menuItem, b bVar) {
        return menuItem instanceof c.g.e.a.b ? ((c.g.e.a.b) menuItem).a(bVar) : menuItem;
    }

    public static void b(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof c.g.e.a.b) {
            ((c.g.e.a.b) menuItem).setAlphabeticShortcut(c2, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setAlphabeticShortcut(c2, i);
        }
    }

    public static void c(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof c.g.e.a.b) {
            ((c.g.e.a.b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setContentDescription(charSequence);
        }
    }

    public static void d(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof c.g.e.a.b) {
            ((c.g.e.a.b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintList(colorStateList);
        }
    }

    public static void e(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof c.g.e.a.b) {
            ((c.g.e.a.b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setIconTintMode(mode);
        }
    }

    public static void f(MenuItem menuItem, char c2, int i) {
        if (menuItem instanceof c.g.e.a.b) {
            ((c.g.e.a.b) menuItem).setNumericShortcut(c2, i);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setNumericShortcut(c2, i);
        }
    }

    public static void g(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof c.g.e.a.b) {
            ((c.g.e.a.b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            menuItem.setTooltipText(charSequence);
        }
    }
}
