package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class f extends Drawable.ConstantState {
    int a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Drawable.ConstantState f555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ColorStateList f556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    PorterDuff.Mode f557d;

    f(f fVar) {
        this.f556c = null;
        this.f557d = d.h;
        if (fVar != null) {
            this.a = fVar.a;
            this.f555b = fVar.f555b;
            this.f556c = fVar.f556c;
            this.f557d = fVar.f557d;
        }
    }

    boolean a() {
        return this.f555b != null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        int i = this.a;
        Drawable.ConstantState constantState = this.f555b;
        return i | (constantState != null ? constantState.getChangingConfigurations() : 0);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return newDrawable(null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return Build.VERSION.SDK_INT >= 21 ? new e(this, resources) : new d(this, resources);
    }
}
