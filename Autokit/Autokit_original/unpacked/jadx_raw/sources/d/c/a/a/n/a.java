package d.c.a.a.n;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import d.c.a.a.a0.k;
import d.c.a.a.a0.n;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a extends c.c.a.a implements Checkable, n {
    private static final int[] l = {R.attr.state_checkable};
    private static final int[] m = {R.attr.state_checked};
    private static final int[] n = {d.c.a.a.b.state_dragged};
    private final b g;
    private boolean h;
    private boolean i;
    private boolean j;
    private InterfaceC0121a k;

    /* JADX INFO: renamed from: d.c.a.a.n.a$a, reason: collision with other inner class name */
    public interface InterfaceC0121a {
        void a(a aVar, boolean z);
    }

    private void d() {
        if (Build.VERSION.SDK_INT <= 26) {
            return;
        }
        this.g.a();
        throw null;
    }

    private RectF getBoundsAsRectF() {
        new RectF();
        this.g.b();
        throw null;
    }

    public boolean e() {
        b bVar = this.g;
        if (bVar == null) {
            return false;
        }
        bVar.r();
        throw null;
    }

    public boolean f() {
        return this.j;
    }

    @Override // c.c.a.a
    public ColorStateList getCardBackgroundColor() {
        this.g.c();
        throw null;
    }

    public ColorStateList getCardForegroundColor() {
        this.g.d();
        throw null;
    }

    float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        this.g.e();
        throw null;
    }

    public int getCheckedIconMargin() {
        this.g.f();
        throw null;
    }

    public int getCheckedIconSize() {
        this.g.g();
        throw null;
    }

    public ColorStateList getCheckedIconTint() {
        this.g.h();
        throw null;
    }

    @Override // c.c.a.a
    public int getContentPaddingBottom() {
        this.g.p();
        throw null;
    }

    @Override // c.c.a.a
    public int getContentPaddingLeft() {
        this.g.p();
        throw null;
    }

    @Override // c.c.a.a
    public int getContentPaddingRight() {
        this.g.p();
        throw null;
    }

    @Override // c.c.a.a
    public int getContentPaddingTop() {
        this.g.p();
        throw null;
    }

    public float getProgress() {
        this.g.j();
        throw null;
    }

    @Override // c.c.a.a
    public float getRadius() {
        this.g.i();
        throw null;
    }

    public ColorStateList getRippleColor() {
        this.g.k();
        throw null;
    }

    public k getShapeAppearanceModel() {
        this.g.l();
        throw null;
    }

    @Deprecated
    public int getStrokeColor() {
        this.g.m();
        throw null;
    }

    public ColorStateList getStrokeColorStateList() {
        this.g.n();
        throw null;
    }

    public int getStrokeWidth() {
        this.g.o();
        throw null;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.g.b();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (e()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, l);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, m);
        }
        if (f()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, n);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.cardview.widget.CardView");
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.cardview.widget.CardView");
        accessibilityNodeInfo.setCheckable(e());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // c.c.a.a, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.g.s(getMeasuredWidth(), getMeasuredHeight());
        throw null;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.h) {
            this.g.q();
            throw null;
        }
    }

    void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // c.c.a.a
    public void setCardBackgroundColor(int i) {
        this.g.t(ColorStateList.valueOf(i));
        throw null;
    }

    @Override // c.c.a.a
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.g.H();
        throw null;
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        this.g.u(colorStateList);
        throw null;
    }

    public void setCheckable(boolean z) {
        this.g.v(z);
        throw null;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.i != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.g.w(drawable);
        throw null;
    }

    public void setCheckedIconMargin(int i) {
        this.g.x(i);
        throw null;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i == -1) {
            return;
        }
        this.g.x(getResources().getDimensionPixelSize(i));
        throw null;
    }

    public void setCheckedIconResource(int i) {
        this.g.w(c.a.k.a.a.d(getContext(), i));
        throw null;
    }

    public void setCheckedIconSize(int i) {
        this.g.y(i);
        throw null;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i == 0) {
            return;
        }
        this.g.y(getResources().getDimensionPixelSize(i));
        throw null;
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        this.g.z(colorStateList);
        throw null;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        b bVar = this.g;
        if (bVar == null) {
            return;
        }
        bVar.G();
        throw null;
    }

    public void setDragged(boolean z) {
        if (this.j != z) {
            this.j = z;
            refreshDrawableState();
            d();
            invalidate();
        }
    }

    @Override // c.c.a.a
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.g.I();
        throw null;
    }

    public void setOnCheckedChangeListener(InterfaceC0121a interfaceC0121a) {
        this.k = interfaceC0121a;
    }

    @Override // c.c.a.a
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.g.I();
        throw null;
    }

    public void setProgress(float f) {
        this.g.B(f);
        throw null;
    }

    @Override // c.c.a.a
    public void setRadius(float f) {
        super.setRadius(f);
        this.g.A(f);
        throw null;
    }

    public void setRippleColor(ColorStateList colorStateList) {
        this.g.C(colorStateList);
        throw null;
    }

    public void setRippleColorResource(int i) {
        this.g.C(c.a.k.a.a.c(getContext(), i));
        throw null;
    }

    @Override // d.c.a.a.a0.n
    public void setShapeAppearanceModel(k kVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(kVar.u(getBoundsAsRectF()));
        }
        this.g.D(kVar);
        throw null;
    }

    public void setStrokeColor(int i) {
        this.g.E(ColorStateList.valueOf(i));
        throw null;
    }

    public void setStrokeWidth(int i) {
        this.g.F(i);
        throw null;
    }

    @Override // c.c.a.a
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.g.I();
        throw null;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (e() && isEnabled()) {
            this.i = !this.i;
            refreshDrawableState();
            d();
            InterfaceC0121a interfaceC0121a = this.k;
            if (interfaceC0121a != null) {
                interfaceC0121a.a(this, this.i);
            }
        }
    }

    @Override // c.c.a.a
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.g.t(colorStateList);
        throw null;
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.g.E(colorStateList);
        throw null;
    }
}
