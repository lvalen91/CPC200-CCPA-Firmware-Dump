package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* JADX INFO: renamed from: androidx.core.graphics.drawable.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0254d extends Drawable implements Drawable.Callback, InterfaceC0253c, InterfaceC0252b {

    /* JADX INFO: renamed from: h */
    static final PorterDuff.Mode f1792h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: b */
    private int f1793b;

    /* JADX INFO: renamed from: c */
    private PorterDuff.Mode f1794c;

    /* JADX INFO: renamed from: d */
    private boolean f1795d;

    /* JADX INFO: renamed from: e */
    C0256f f1796e;

    /* JADX INFO: renamed from: f */
    private boolean f1797f;

    /* JADX INFO: renamed from: g */
    Drawable f1798g;

    C0254d(C0256f c0256f, Resources resources) {
        this.f1796e = c0256f;
        m1801e(resources);
    }

    /* JADX INFO: renamed from: d */
    private C0256f m1800d() {
        return new C0256f(this.f1796e);
    }

    /* JADX INFO: renamed from: e */
    private void m1801e(Resources resources) {
        Drawable.ConstantState constantState;
        C0256f c0256f = this.f1796e;
        if (c0256f == null || (constantState = c0256f.f1801b) == null) {
            return;
        }
        mo1799b(constantState.newDrawable(resources));
    }

    /* JADX INFO: renamed from: f */
    private boolean m1802f(int[] iArr) {
        if (!mo1803c()) {
            return false;
        }
        C0256f c0256f = this.f1796e;
        ColorStateList colorStateList = c0256f.f1802c;
        PorterDuff.Mode mode = c0256f.f1803d;
        if (colorStateList == null || mode == null) {
            this.f1795d = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f1795d || colorForState != this.f1793b || mode != this.f1794c) {
                setColorFilter(colorForState, mode);
                this.f1793b = colorForState;
                this.f1794c = mode;
                this.f1795d = true;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.InterfaceC0253c
    /* JADX INFO: renamed from: a */
    public final Drawable mo1798a() {
        return this.f1798g;
    }

    @Override // androidx.core.graphics.drawable.InterfaceC0253c
    /* JADX INFO: renamed from: b */
    public final void mo1799b(Drawable drawable) {
        Drawable drawable2 = this.f1798g;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1798g = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            C0256f c0256f = this.f1796e;
            if (c0256f != null) {
                c0256f.f1801b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    /* JADX INFO: renamed from: c */
    protected boolean mo1803c() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f1798g.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        C0256f c0256f = this.f1796e;
        return changingConfigurations | (c0256f != null ? c0256f.getChangingConfigurations() : 0) | this.f1798g.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        C0256f c0256f = this.f1796e;
        if (c0256f == null || !c0256f.m1805a()) {
            return null;
        }
        this.f1796e.f1800a = getChangingConfigurations();
        return this.f1796e;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f1798g.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1798g.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1798g.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        return C0251a.m1785f(this.f1798g);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1798g.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1798g.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1798g.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f1798g.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f1798g.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f1798g.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return C0251a.m1787h(this.f1798g);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        C0256f c0256f;
        ColorStateList colorStateList = (!mo1803c() || (c0256f = this.f1796e) == null) ? null : c0256f.f1802c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f1798g.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f1798g.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f1797f && super.mutate() == this) {
            this.f1796e = m1800d();
            Drawable drawable = this.f1798g;
            if (drawable != null) {
                drawable.mutate();
            }
            C0256f c0256f = this.f1796e;
            if (c0256f != null) {
                Drawable drawable2 = this.f1798g;
                c0256f.f1801b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f1797f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f1798g;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return C0251a.m1792m(this.f1798g, i);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.f1798g.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1798g.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        C0251a.m1789j(this.f1798g, z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f1798g.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f1798g.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1798g.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1798g.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return m1802f(iArr) || this.f1798g.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintList(ColorStateList colorStateList) {
        this.f1796e.f1802c = colorStateList;
        m1802f(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.InterfaceC0252b
    public void setTintMode(PorterDuff.Mode mode) {
        this.f1796e.f1803d = mode;
        m1802f(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1798g.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    C0254d(Drawable drawable) {
        this.f1796e = m1800d();
        mo1799b(drawable);
    }
}
