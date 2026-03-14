package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.C0170i;
import androidx.appcompat.widget.C0178m;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0291u;
import androidx.core.widget.InterfaceC0312m;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.C1106b;
import com.google.android.material.internal.C1113b;
import com.google.android.material.internal.C1124m;
import java.util.List;
import p016c.p041g.p049j.C0626h;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n;
import p093d.p099c.p100a.p101a.p103b0.C1217a;
import p093d.p099c.p100a.p101a.p104l.C1234h;
import p093d.p099c.p100a.p101a.p104l.InterfaceC1237k;
import p093d.p099c.p100a.p101a.p114u.C1252b;
import p093d.p099c.p100a.p101a.p114u.InterfaceC1251a;
import p093d.p099c.p100a.p101a.p119z.InterfaceC1264b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class FloatingActionButton extends C1124m implements InterfaceC0291u, InterfaceC0312m, InterfaceC1251a, InterfaceC1215n, CoordinatorLayout.InterfaceC0220b {

    /* JADX INFO: renamed from: c */
    private ColorStateList f6994c;

    /* JADX INFO: renamed from: d */
    private PorterDuff.Mode f6995d;

    /* JADX INFO: renamed from: e */
    private ColorStateList f6996e;

    /* JADX INFO: renamed from: f */
    private PorterDuff.Mode f6997f;

    /* JADX INFO: renamed from: g */
    private ColorStateList f6998g;

    /* JADX INFO: renamed from: h */
    private int f6999h;

    /* JADX INFO: renamed from: i */
    private int f7000i;

    /* JADX INFO: renamed from: j */
    private int f7001j;

    /* JADX INFO: renamed from: k */
    private int f7002k;

    /* JADX INFO: renamed from: l */
    boolean f7003l;

    /* JADX INFO: renamed from: m */
    final Rect f7004m;

    /* JADX INFO: renamed from: n */
    private final Rect f7005n;

    /* JADX INFO: renamed from: o */
    private final C0178m f7006o;

    /* JADX INFO: renamed from: p */
    private final C1252b f7007p;

    /* JADX INFO: renamed from: q */
    private C1106b f7008q;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$a */
    class C1101a implements C1106b.j {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ AbstractC1102b f7012a;

        C1101a(AbstractC1102b abstractC1102b) {
            this.f7012a = abstractC1102b;
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.j
        /* JADX INFO: renamed from: a */
        public void mo8540a() {
            this.f7012a.mo7993b(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.j
        /* JADX INFO: renamed from: b */
        public void mo8541b() {
            this.f7012a.mo7992a(FloatingActionButton.this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$b */
    public static abstract class AbstractC1102b {
        /* JADX INFO: renamed from: a */
        public void mo7992a(FloatingActionButton floatingActionButton) {
        }

        /* JADX INFO: renamed from: b */
        public void mo7993b(FloatingActionButton floatingActionButton) {
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$c */
    private class C1103c implements InterfaceC1264b {
        C1103c() {
        }

        @Override // p093d.p099c.p100a.p101a.p119z.InterfaceC1264b
        /* JADX INFO: renamed from: a */
        public void mo8542a(int i, int i2, int i3, int i4) {
            FloatingActionButton.this.f7004m.set(i, i2, i3, i4);
            FloatingActionButton floatingActionButton = FloatingActionButton.this;
            floatingActionButton.setPadding(i + floatingActionButton.f7001j, i2 + FloatingActionButton.this.f7001j, i3 + FloatingActionButton.this.f7001j, i4 + FloatingActionButton.this.f7001j);
        }

        @Override // p093d.p099c.p100a.p101a.p119z.InterfaceC1264b
        /* JADX INFO: renamed from: b */
        public boolean mo8543b() {
            return FloatingActionButton.this.f7003l;
        }

        @Override // p093d.p099c.p100a.p101a.p119z.InterfaceC1264b
        /* JADX INFO: renamed from: c */
        public void mo8544c(Drawable drawable) {
            if (drawable != null) {
                FloatingActionButton.super.setBackgroundDrawable(drawable);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.FloatingActionButton$d */
    class C1104d<T extends FloatingActionButton> implements C1106b.i {

        /* JADX INFO: renamed from: a */
        private final InterfaceC1237k<T> f7015a;

        C1104d(InterfaceC1237k<T> interfaceC1237k) {
            this.f7015a = interfaceC1237k;
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.i
        /* JADX INFO: renamed from: a */
        public void mo8545a() {
            this.f7015a.m9363a(FloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.C1106b.i
        /* JADX INFO: renamed from: b */
        public void mo8546b() {
            this.f7015a.m9364b(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof C1104d) && ((C1104d) obj).f7015a.equals(this.f7015a);
        }

        public int hashCode() {
            return this.f7015a.hashCode();
        }
    }

    private C1106b getImpl() {
        if (this.f7008q == null) {
            this.f7008q = m8514h();
        }
        return this.f7008q;
    }

    /* JADX INFO: renamed from: h */
    private C1106b m8514h() {
        return Build.VERSION.SDK_INT >= 21 ? new C1107c(this, new C1103c()) : new C1106b(this, new C1103c());
    }

    /* JADX INFO: renamed from: k */
    private int m8515k(int i) {
        int i2 = this.f7000i;
        if (i2 != 0) {
            return i2;
        }
        Resources resources = getResources();
        return i != -1 ? i != 1 ? resources.getDimensionPixelSize(C1219d.design_fab_size_normal) : resources.getDimensionPixelSize(C1219d.design_fab_size_mini) : Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470 ? m8515k(1) : m8515k(0);
    }

    /* JADX INFO: renamed from: p */
    private void m8516p(Rect rect) {
        int i = rect.left;
        Rect rect2 = this.f7004m;
        rect.left = i + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    /* JADX INFO: renamed from: q */
    private void m8517q() {
        Drawable drawable = getDrawable();
        if (drawable == null) {
            return;
        }
        ColorStateList colorStateList = this.f6996e;
        if (colorStateList == null) {
            C0251a.m1782c(drawable);
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
        PorterDuff.Mode mode = this.f6997f;
        if (mode == null) {
            mode = PorterDuff.Mode.SRC_IN;
        }
        drawable.mutate().setColorFilter(C0170i.m1169e(colorForState, mode));
    }

    /* JADX INFO: renamed from: r */
    private static int m8518r(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i, size);
        }
        if (mode == 0) {
            return i;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    /* JADX INFO: renamed from: u */
    private C1106b.j m8519u(AbstractC1102b abstractC1102b) {
        if (abstractC1102b == null) {
            return null;
        }
        return new C1101a(abstractC1102b);
    }

    @Override // p093d.p099c.p100a.p101a.p114u.InterfaceC1251a
    /* JADX INFO: renamed from: a */
    public boolean mo8520a() {
        this.f7007p.m9440b();
        throw null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        getImpl().mo8562C(getDrawableState());
    }

    /* JADX INFO: renamed from: e */
    public void m8521e(Animator.AnimatorListener animatorListener) {
        getImpl().m8588d(animatorListener);
    }

    /* JADX INFO: renamed from: f */
    public void m8522f(Animator.AnimatorListener animatorListener) {
        getImpl().m8589e(animatorListener);
    }

    /* JADX INFO: renamed from: g */
    public void m8523g(InterfaceC1237k<? extends FloatingActionButton> interfaceC1237k) {
        getImpl().m8590f(new C1104d(interfaceC1237k));
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return this.f6994c;
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return this.f6995d;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.InterfaceC0220b
    public CoordinatorLayout.AbstractC0221c<FloatingActionButton> getBehavior() {
        return new Behavior();
    }

    public float getCompatElevation() {
        return getImpl().mo8592m();
    }

    public float getCompatHoveredFocusedTranslationZ() {
        return getImpl().m8595p();
    }

    public float getCompatPressedTranslationZ() {
        return getImpl().m8597s();
    }

    public Drawable getContentBackground() {
        return getImpl().m8591j();
    }

    public int getCustomSize() {
        return this.f7000i;
    }

    public int getExpandedComponentIdHint() {
        this.f7007p.m9439a();
        throw null;
    }

    public C1234h getHideMotionSpec() {
        return getImpl().m8594o();
    }

    @Deprecated
    public int getRippleColor() {
        ColorStateList colorStateList = this.f6998g;
        if (colorStateList != null) {
            return colorStateList.getDefaultColor();
        }
        return 0;
    }

    public ColorStateList getRippleColorStateList() {
        return this.f6998g;
    }

    public C1212k getShapeAppearanceModel() {
        C1212k c1212kM8598t = getImpl().m8598t();
        C0626h.m4855e(c1212kM8598t);
        return c1212kM8598t;
    }

    public C1234h getShowMotionSpec() {
        return getImpl().m8599u();
    }

    public int getSize() {
        return this.f6999h;
    }

    int getSizeDimension() {
        return m8515k(this.f6999h);
    }

    @Override // androidx.core.view.InterfaceC0291u
    public ColorStateList getSupportBackgroundTintList() {
        return getBackgroundTintList();
    }

    @Override // androidx.core.view.InterfaceC0291u
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return getBackgroundTintMode();
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public ColorStateList getSupportImageTintList() {
        return this.f6996e;
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public PorterDuff.Mode getSupportImageTintMode() {
        return this.f6997f;
    }

    public boolean getUseCompatPadding() {
        return this.f7003l;
    }

    @Deprecated
    /* JADX INFO: renamed from: i */
    public boolean m8524i(Rect rect) {
        if (!C0292v.m2069T(this)) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        m8516p(rect);
        return true;
    }

    /* JADX INFO: renamed from: j */
    public void m8525j(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        m8516p(rect);
    }

    @Override // android.widget.ImageView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        getImpl().mo8603y();
    }

    /* JADX INFO: renamed from: l */
    public void m8526l(AbstractC1102b abstractC1102b) {
        m8527m(abstractC1102b, true);
    }

    /* JADX INFO: renamed from: m */
    void m8527m(AbstractC1102b abstractC1102b, boolean z) {
        getImpl().m8600v(m8519u(abstractC1102b), z);
    }

    /* JADX INFO: renamed from: n */
    public boolean m8528n() {
        return getImpl().m8601w();
    }

    /* JADX INFO: renamed from: o */
    public boolean m8529o() {
        return getImpl().m8602x();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getImpl().m8604z();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getImpl().m8561B();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i, int i2) {
        int sizeDimension = getSizeDimension();
        this.f7001j = (sizeDimension - this.f7002k) / 2;
        getImpl().m8586b0();
        int iMin = Math.min(m8518r(sizeDimension, i), m8518r(sizeDimension, i2));
        Rect rect = this.f7004m;
        setMeasuredDimension(rect.left + iMin + rect.right, iMin + rect.top + rect.bottom);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1217a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1217a c1217a = (C1217a) parcelable;
        super.onRestoreInstanceState(c1217a.m4862j());
        C1252b c1252b = this.f7007p;
        Bundle bundle = c1217a.f7733d.get("expandableWidgetHelper");
        C0626h.m4855e(bundle);
        c1252b.m9441c(bundle);
        throw null;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        if (parcelableOnSaveInstanceState == null) {
            parcelableOnSaveInstanceState = new Bundle();
        }
        new C1217a(parcelableOnSaveInstanceState);
        this.f7007p.m9442d();
        throw null;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && m8524i(this.f7005n) && !this.f7005n.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    /* JADX INFO: renamed from: s */
    public void m8530s(AbstractC1102b abstractC1102b) {
        m8531t(abstractC1102b, true);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.f6994c != colorStateList) {
            this.f6994c = colorStateList;
            getImpl().m8569J(colorStateList);
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f6995d != mode) {
            this.f6995d = mode;
            getImpl().m8570K(mode);
        }
    }

    public void setCompatElevation(float f) {
        getImpl().m8571L(f);
    }

    public void setCompatElevationResource(int i) {
        setCompatElevation(getResources().getDimension(i));
    }

    public void setCompatHoveredFocusedTranslationZ(float f) {
        getImpl().m8574O(f);
    }

    public void setCompatHoveredFocusedTranslationZResource(int i) {
        setCompatHoveredFocusedTranslationZ(getResources().getDimension(i));
    }

    public void setCompatPressedTranslationZ(float f) {
        getImpl().m8576Q(f);
    }

    public void setCompatPressedTranslationZResource(int i) {
        setCompatPressedTranslationZ(getResources().getDimension(i));
    }

    public void setCustomSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Custom size must be non-negative");
        }
        if (i != this.f7000i) {
            this.f7000i = i;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        getImpl().m8587c0(f);
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        if (z != getImpl().m8593n()) {
            getImpl().m8572M(z);
            requestLayout();
        }
    }

    public void setExpandedComponentIdHint(int i) {
        this.f7007p.m9443e(i);
        throw null;
    }

    public void setHideMotionSpec(C1234h c1234h) {
        getImpl().m8573N(c1234h);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C1234h.m9348c(getContext(), i));
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            getImpl().m8585a0();
            if (this.f6996e != null) {
                m8517q();
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.f7006o.m1230g(i);
        m8517q();
    }

    public void setRippleColor(int i) {
        setRippleColor(ColorStateList.valueOf(i));
    }

    @Override // android.view.View
    public void setScaleX(float f) {
        super.setScaleX(f);
        getImpl().m8566G();
    }

    @Override // android.view.View
    public void setScaleY(float f) {
        super.setScaleY(f);
        getImpl().m8566G();
    }

    public void setShadowPaddingEnabled(boolean z) {
        getImpl().m8578S(z);
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1215n
    public void setShapeAppearanceModel(C1212k c1212k) {
        getImpl().m8579T(c1212k);
    }

    public void setShowMotionSpec(C1234h c1234h) {
        getImpl().m8580U(c1234h);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C1234h.m9348c(getContext(), i));
    }

    public void setSize(int i) {
        this.f7000i = 0;
        if (i != this.f6999h) {
            this.f6999h = i;
            requestLayout();
        }
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.view.InterfaceC0291u
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public void setSupportImageTintList(ColorStateList colorStateList) {
        if (this.f6996e != colorStateList) {
            this.f6996e = colorStateList;
            m8517q();
        }
    }

    @Override // androidx.core.widget.InterfaceC0312m
    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        if (this.f6997f != mode) {
            this.f6997f = mode;
            m8517q();
        }
    }

    @Override // android.view.View
    public void setTranslationX(float f) {
        super.setTranslationX(f);
        getImpl().m8567H();
    }

    @Override // android.view.View
    public void setTranslationY(float f) {
        super.setTranslationY(f);
        getImpl().m8567H();
    }

    @Override // android.view.View
    public void setTranslationZ(float f) {
        super.setTranslationZ(f);
        getImpl().m8567H();
    }

    public void setUseCompatPadding(boolean z) {
        if (this.f7003l != z) {
            this.f7003l = z;
            getImpl().mo8560A();
        }
    }

    @Override // com.google.android.material.internal.C1124m, android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
    }

    /* JADX INFO: renamed from: t */
    void m8531t(AbstractC1102b abstractC1102b, boolean z) {
        getImpl().m8583Y(m8519u(abstractC1102b), z);
    }

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.AbstractC0221c<T> {

        /* JADX INFO: renamed from: a */
        private Rect f7009a;

        /* JADX INFO: renamed from: b */
        private AbstractC1102b f7010b;

        /* JADX INFO: renamed from: c */
        private boolean f7011c;

        public BaseBehavior() {
            this.f7011c = true;
        }

        /* JADX INFO: renamed from: F */
        private static boolean m8532F(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0224f) {
                return ((CoordinatorLayout.C0224f) layoutParams).m1607f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* JADX INFO: renamed from: G */
        private void m8533G(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton) {
            Rect rect = floatingActionButton.f7004m;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return;
            }
            CoordinatorLayout.C0224f c0224f = (CoordinatorLayout.C0224f) floatingActionButton.getLayoutParams();
            int i = 0;
            int i2 = floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) c0224f).rightMargin ? rect.right : floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) c0224f).leftMargin ? -rect.left : 0;
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin) {
                i = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) c0224f).topMargin) {
                i = -rect.top;
            }
            if (i != 0) {
                C0292v.m2075Z(floatingActionButton, i);
            }
            if (i2 != 0) {
                C0292v.m2074Y(floatingActionButton, i2);
            }
        }

        /* JADX INFO: renamed from: J */
        private boolean m8534J(View view, FloatingActionButton floatingActionButton) {
            return this.f7011c && ((CoordinatorLayout.C0224f) floatingActionButton.getLayoutParams()).m1606e() == view.getId() && floatingActionButton.getUserSetVisibility() == 0;
        }

        /* JADX INFO: renamed from: K */
        private boolean m8535K(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!m8534J(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.f7009a == null) {
                this.f7009a = new Rect();
            }
            Rect rect = this.f7009a;
            C1113b.m8687a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                floatingActionButton.m8527m(this.f7010b, false);
                return true;
            }
            floatingActionButton.m8531t(this.f7010b, false);
            return true;
        }

        /* JADX INFO: renamed from: L */
        private boolean m8536L(View view, FloatingActionButton floatingActionButton) {
            if (!m8534J(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0224f) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.m8527m(this.f7010b, false);
                return true;
            }
            floatingActionButton.m8531t(this.f7010b, false);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
        public boolean mo1574b(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.f7004m;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public boolean mo1580h(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m8535K(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            }
            if (!m8532F(view)) {
                return false;
            }
            m8536L(view, floatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public boolean mo1584l(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            List<View> listM1563r = coordinatorLayout.m1563r(floatingActionButton);
            int size = listM1563r.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = listM1563r.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m8532F(view) && m8536L(view, floatingActionButton)) {
                        break;
                    }
                } else {
                    if (m8535K(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.m1551I(floatingActionButton, i);
            m8533G(coordinatorLayout, floatingActionButton);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: g */
        public void mo1579g(CoordinatorLayout.C0224f c0224f) {
            if (c0224f.f1691h == 0) {
                c0224f.f1691h = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.FloatingActionButton_Behavior_Layout);
            this.f7011c = typedArrayObtainStyledAttributes.getBoolean(C1226k.FloatingActionButton_Behavior_Layout_behavior_autoHide, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (this.f6998g != colorStateList) {
            this.f6998g = colorStateList;
            getImpl().mo8577R(this.f6998g);
        }
    }
}
