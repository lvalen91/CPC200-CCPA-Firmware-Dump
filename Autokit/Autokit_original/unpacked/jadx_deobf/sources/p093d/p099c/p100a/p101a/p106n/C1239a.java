package p093d.p099c.p100a.p101a.p106n;

import android.R;
import android.content.res.ColorStateList;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p030c.p031a.C0526a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n;

/* JADX INFO: renamed from: d.c.a.a.n.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1239a extends C0526a implements Checkable, InterfaceC1215n {

    /* JADX INFO: renamed from: l */
    private static final int[] f7777l = {R.attr.state_checkable};

    /* JADX INFO: renamed from: m */
    private static final int[] f7778m = {R.attr.state_checked};

    /* JADX INFO: renamed from: n */
    private static final int[] f7779n = {C1216b.state_dragged};

    /* JADX INFO: renamed from: g */
    private final C1240b f7780g;

    /* JADX INFO: renamed from: h */
    private boolean f7781h;

    /* JADX INFO: renamed from: i */
    private boolean f7782i;

    /* JADX INFO: renamed from: j */
    private boolean f7783j;

    /* JADX INFO: renamed from: k */
    private a f7784k;

    /* JADX INFO: renamed from: d.c.a.a.n.a$a */
    public interface a {
        /* JADX INFO: renamed from: a */
        void m9370a(C1239a c1239a, boolean z);
    }

    /* JADX INFO: renamed from: d */
    private void m9367d() {
        if (Build.VERSION.SDK_INT <= 26) {
            return;
        }
        this.f7780g.m9380a();
        throw null;
    }

    private RectF getBoundsAsRectF() {
        new RectF();
        this.f7780g.m9381b();
        throw null;
    }

    /* JADX INFO: renamed from: e */
    public boolean m9368e() {
        C1240b c1240b = this.f7780g;
        if (c1240b == null) {
            return false;
        }
        c1240b.m9397r();
        throw null;
    }

    /* JADX INFO: renamed from: f */
    public boolean m9369f() {
        return this.f7783j;
    }

    @Override // p016c.p030c.p031a.C0526a
    public ColorStateList getCardBackgroundColor() {
        this.f7780g.m9382c();
        throw null;
    }

    public ColorStateList getCardForegroundColor() {
        this.f7780g.m9383d();
        throw null;
    }

    float getCardViewRadius() {
        return super.getRadius();
    }

    public Drawable getCheckedIcon() {
        this.f7780g.m9384e();
        throw null;
    }

    public int getCheckedIconMargin() {
        this.f7780g.m9385f();
        throw null;
    }

    public int getCheckedIconSize() {
        this.f7780g.m9386g();
        throw null;
    }

    public ColorStateList getCheckedIconTint() {
        this.f7780g.m9387h();
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public int getContentPaddingBottom() {
        this.f7780g.m9395p();
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public int getContentPaddingLeft() {
        this.f7780g.m9395p();
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public int getContentPaddingRight() {
        this.f7780g.m9395p();
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public int getContentPaddingTop() {
        this.f7780g.m9395p();
        throw null;
    }

    public float getProgress() {
        this.f7780g.m9389j();
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public float getRadius() {
        this.f7780g.m9388i();
        throw null;
    }

    public ColorStateList getRippleColor() {
        this.f7780g.m9390k();
        throw null;
    }

    public C1212k getShapeAppearanceModel() {
        this.f7780g.m9391l();
        throw null;
    }

    @Deprecated
    public int getStrokeColor() {
        this.f7780g.m9392m();
        throw null;
    }

    public ColorStateList getStrokeColorStateList() {
        this.f7780g.m9393n();
        throw null;
    }

    public int getStrokeWidth() {
        this.f7780g.m9394o();
        throw null;
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.f7782i;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7780g.m9381b();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (m9368e()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, f7777l);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, f7778m);
        }
        if (m9369f()) {
            FrameLayout.mergeDrawableStates(iArrOnCreateDrawableState, f7779n);
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
        accessibilityNodeInfo.setCheckable(m9368e());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    @Override // p016c.p030c.p031a.C0526a, android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.f7780g.m9398s(getMeasuredWidth(), getMeasuredHeight());
        throw null;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (this.f7781h) {
            this.f7780g.m9396q();
            throw null;
        }
    }

    void setBackgroundInternal(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    @Override // p016c.p030c.p031a.C0526a
    public void setCardBackgroundColor(int i) {
        this.f7780g.m9399t(ColorStateList.valueOf(i));
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public void setCardElevation(float f) {
        super.setCardElevation(f);
        this.f7780g.m9378H();
        throw null;
    }

    public void setCardForegroundColor(ColorStateList colorStateList) {
        this.f7780g.m9400u(colorStateList);
        throw null;
    }

    public void setCheckable(boolean z) {
        this.f7780g.m9401v(z);
        throw null;
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (this.f7782i != z) {
            toggle();
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        this.f7780g.m9402w(drawable);
        throw null;
    }

    public void setCheckedIconMargin(int i) {
        this.f7780g.m9403x(i);
        throw null;
    }

    public void setCheckedIconMarginResource(int i) {
        if (i == -1) {
            return;
        }
        this.f7780g.m9403x(getResources().getDimensionPixelSize(i));
        throw null;
    }

    public void setCheckedIconResource(int i) {
        this.f7780g.m9402w(C0503a.m4047d(getContext(), i));
        throw null;
    }

    public void setCheckedIconSize(int i) {
        this.f7780g.m9404y(i);
        throw null;
    }

    public void setCheckedIconSizeResource(int i) {
        if (i == 0) {
            return;
        }
        this.f7780g.m9404y(getResources().getDimensionPixelSize(i));
        throw null;
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        this.f7780g.m9405z(colorStateList);
        throw null;
    }

    @Override // android.view.View
    public void setClickable(boolean z) {
        super.setClickable(z);
        C1240b c1240b = this.f7780g;
        if (c1240b == null) {
            return;
        }
        c1240b.m9377G();
        throw null;
    }

    public void setDragged(boolean z) {
        if (this.f7783j != z) {
            this.f7783j = z;
            refreshDrawableState();
            m9367d();
            invalidate();
        }
    }

    @Override // p016c.p030c.p031a.C0526a
    public void setMaxCardElevation(float f) {
        super.setMaxCardElevation(f);
        this.f7780g.m9379I();
        throw null;
    }

    public void setOnCheckedChangeListener(a aVar) {
        this.f7784k = aVar;
    }

    @Override // p016c.p030c.p031a.C0526a
    public void setPreventCornerOverlap(boolean z) {
        super.setPreventCornerOverlap(z);
        this.f7780g.m9379I();
        throw null;
    }

    public void setProgress(float f) {
        this.f7780g.m9372B(f);
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public void setRadius(float f) {
        super.setRadius(f);
        this.f7780g.m9371A(f);
        throw null;
    }

    public void setRippleColor(ColorStateList colorStateList) {
        this.f7780g.m9373C(colorStateList);
        throw null;
    }

    public void setRippleColorResource(int i) {
        this.f7780g.m9373C(C0503a.m4046c(getContext(), i));
        throw null;
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n
    public void setShapeAppearanceModel(C1212k c1212k) {
        if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(c1212k.m9232u(getBoundsAsRectF()));
        }
        this.f7780g.m9374D(c1212k);
        throw null;
    }

    public void setStrokeColor(int i) {
        this.f7780g.m9375E(ColorStateList.valueOf(i));
        throw null;
    }

    public void setStrokeWidth(int i) {
        this.f7780g.m9376F(i);
        throw null;
    }

    @Override // p016c.p030c.p031a.C0526a
    public void setUseCompatPadding(boolean z) {
        super.setUseCompatPadding(z);
        this.f7780g.m9379I();
        throw null;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        if (m9368e() && isEnabled()) {
            this.f7782i = !this.f7782i;
            refreshDrawableState();
            m9367d();
            a aVar = this.f7784k;
            if (aVar != null) {
                aVar.m9370a(this, this.f7782i);
            }
        }
    }

    @Override // p016c.p030c.p031a.C0526a
    public void setCardBackgroundColor(ColorStateList colorStateList) {
        this.f7780g.m9399t(colorStateList);
        throw null;
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        this.f7780g.m9375E(colorStateList);
        throw null;
    }
}
