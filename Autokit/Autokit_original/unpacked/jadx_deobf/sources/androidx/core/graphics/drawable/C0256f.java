package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: renamed from: androidx.core.graphics.drawable.f */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C0256f extends Drawable.ConstantState {

    /* JADX INFO: renamed from: a */
    int f1800a;

    /* JADX INFO: renamed from: b */
    Drawable.ConstantState f1801b;

    /* JADX INFO: renamed from: c */
    ColorStateList f1802c;

    /* JADX INFO: renamed from: d */
    PorterDuff.Mode f1803d;

    C0256f(C0256f c0256f) {
        this.f1802c = null;
        this.f1803d = C0254d.f1792h;
        if (c0256f != null) {
            this.f1800a = c0256f.f1800a;
            this.f1801b = c0256f.f1801b;
            this.f1802c = c0256f.f1802c;
            this.f1803d = c0256f.f1803d;
        }
    }

    /* JADX INFO: renamed from: a */
    boolean m1805a() {
        return this.f1801b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.f1800a;
        Drawable.ConstantState constantState = this.f1801b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new C0255e(this, resources) : new C0254d(this, resources);
    }
}
