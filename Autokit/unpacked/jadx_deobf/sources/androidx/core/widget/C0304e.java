package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;

/* JADX INFO: renamed from: androidx.core.widget.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0304e {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: a */
    public static ColorStateList m2268a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        if (imageView instanceof InterfaceC0312m) {
            return ((InterfaceC0312m) imageView).getSupportImageTintList();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: b */
    public static PorterDuff.Mode m2269b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        if (imageView instanceof InterfaceC0312m) {
            return ((InterfaceC0312m) imageView).getSupportImageTintMode();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: c */
    public static void m2270c(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (imageView instanceof InterfaceC0312m) {
                ((InterfaceC0312m) imageView).setSupportImageTintList(colorStateList);
                return;
            }
            return;
        }
        imageView.setImageTintList(colorStateList);
        if (Build.VERSION.SDK_INT != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: d */
    public static void m2271d(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (imageView instanceof InterfaceC0312m) {
                ((InterfaceC0312m) imageView).setSupportImageTintMode(mode);
                return;
            }
            return;
        }
        imageView.setImageTintMode(mode);
        if (Build.VERSION.SDK_INT != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }
}
