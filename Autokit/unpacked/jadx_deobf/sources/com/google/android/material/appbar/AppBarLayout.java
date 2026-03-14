package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0265d0;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0281k;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.InterfaceC0272f;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.List;
import p016c.p017a.p018k.p019a.C0503a;
import p016c.p041g.p045f.C0602a;
import p016c.p052i.p053a.AbstractC0630a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1222g;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1209h;
import p093d.p099c.p100a.p101a.p104l.C1227a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.InterfaceC0220b {

    /* JADX INFO: renamed from: b */
    private int f6484b;

    /* JADX INFO: renamed from: c */
    private int f6485c;

    /* JADX INFO: renamed from: d */
    private int f6486d;

    /* JADX INFO: renamed from: e */
    private int f6487e;

    /* JADX INFO: renamed from: f */
    private boolean f6488f;

    /* JADX INFO: renamed from: g */
    private int f6489g;

    /* JADX INFO: renamed from: h */
    private C0265d0 f6490h;

    /* JADX INFO: renamed from: i */
    private List<InterfaceC1024b> f6491i;

    /* JADX INFO: renamed from: j */
    private boolean f6492j;

    /* JADX INFO: renamed from: k */
    private boolean f6493k;

    /* JADX INFO: renamed from: l */
    private boolean f6494l;

    /* JADX INFO: renamed from: m */
    private boolean f6495m;

    /* JADX INFO: renamed from: n */
    private int f6496n;

    /* JADX INFO: renamed from: o */
    private WeakReference<View> f6497o;

    /* JADX INFO: renamed from: p */
    private ValueAnimator f6498p;

    /* JADX INFO: renamed from: q */
    private int[] f6499q;

    /* JADX INFO: renamed from: r */
    private Drawable f6500r;

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends AbstractC1027b {
        public ScrollingViewBehavior() {
        }

        /* JADX INFO: renamed from: R */
        private static int m7897R(AppBarLayout appBarLayout) {
            CoordinatorLayout.AbstractC0221c abstractC0221cM1607f = ((CoordinatorLayout.C0224f) appBarLayout.getLayoutParams()).m1607f();
            if (abstractC0221cM1607f instanceof BaseBehavior) {
                return ((BaseBehavior) abstractC0221cM1607f).mo7877M();
            }
            return 0;
        }

        /* JADX INFO: renamed from: S */
        private void m7898S(View view, View view2) {
            CoordinatorLayout.AbstractC0221c abstractC0221cM1607f = ((CoordinatorLayout.C0224f) view2.getLayoutParams()).m1607f();
            if (abstractC0221cM1607f instanceof BaseBehavior) {
                C0292v.m2075Z(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) abstractC0221cM1607f).f6501k) + m7921M()) - m7919I(view2));
            }
        }

        /* JADX INFO: renamed from: T */
        private void m7899T(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.m7853j()) {
                    appBarLayout.m7857p(appBarLayout.m7858r(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.AbstractC1027b
        /* JADX INFO: renamed from: J */
        float mo7901J(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iM7897R = m7897R(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iM7897R > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iM7897R / i) + 1.0f;
                }
            }
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }

        @Override // com.google.android.material.appbar.AbstractC1027b
        /* JADX INFO: renamed from: L */
        int mo7902L(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.mo7902L(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.AbstractC1027b
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public AppBarLayout mo7900H(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: e */
        public boolean mo1577e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: h */
        public boolean mo1580h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            m7898S(view, view2);
            m7899T(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: i */
        public void mo1581i(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                C0292v.m2093i0(coordinatorLayout, C0269c.a.f1860f.m1961b());
                C0292v.m2093i0(coordinatorLayout, C0269c.a.f1861g.m1961b());
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: w */
        public boolean mo1595w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayoutMo7900H = mo7900H(coordinatorLayout.m1563r(view));
            if (appBarLayoutMo7900H != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f6539d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutMo7900H.m7856m(false, !z);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.ScrollingViewBehavior_Layout);
            m7922O(typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$a */
    class C1023a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ C1208g f6522a;

        C1023a(AppBarLayout appBarLayout, C1208g c1208g) {
            this.f6522a = c1208g;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f6522a.m9183V(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$b */
    public interface InterfaceC1024b<T extends AppBarLayout> {
        /* JADX INFO: renamed from: a */
        void m7904a(T t, int i);
    }

    /* JADX INFO: renamed from: a */
    private void m7838a() {
        WeakReference<View> weakReference = this.f6497o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.f6497o = null;
    }

    /* JADX INFO: renamed from: b */
    private View m7839b(View view) {
        int i;
        if (this.f6497o == null && (i = this.f6496n) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.f6496n);
            }
            if (viewFindViewById != null) {
                this.f6497o = new WeakReference<>(viewFindViewById);
            }
        }
        WeakReference<View> weakReference = this.f6497o;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* JADX INFO: renamed from: g */
    private boolean m7840g() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((C1025c) getChildAt(i).getLayoutParams()).m7907c()) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: i */
    private void m7841i() {
        this.f6485c = -1;
        this.f6486d = -1;
        this.f6487e = -1;
    }

    /* JADX INFO: renamed from: n */
    private void m7842n(boolean z, boolean z2, boolean z3) {
        this.f6489g = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    /* JADX INFO: renamed from: o */
    private boolean m7843o(boolean z) {
        if (this.f6493k == z) {
            return false;
        }
        this.f6493k = z;
        refreshDrawableState();
        return true;
    }

    /* JADX INFO: renamed from: q */
    private boolean m7844q() {
        return this.f6500r != null && getTopInset() > 0;
    }

    /* JADX INFO: renamed from: s */
    private boolean m7845s() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || C0292v.m2126z(childAt)) ? false : true;
    }

    /* JADX INFO: renamed from: t */
    private void m7846t(C1208g c1208g, boolean z) {
        float dimension = getResources().getDimension(C1219d.design_appbar_elevation);
        float f = z ? CropImageView.DEFAULT_ASPECT_RATIO : dimension;
        if (!z) {
            dimension = CropImageView.DEFAULT_ASPECT_RATIO;
        }
        ValueAnimator valueAnimator = this.f6498p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, dimension);
        this.f6498p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getResources().getInteger(C1222g.app_bar_elevation_anim_duration));
        this.f6498p.setInterpolator(C1227a.f7754a);
        this.f6498p.addUpdateListener(new C1023a(this, c1208g));
        this.f6498p.start();
    }

    /* JADX INFO: renamed from: u */
    private void m7847u() {
        setWillNotDraw(!m7844q());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public C1025c generateDefaultLayoutParams() {
        return new C1025c(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C1025c;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public C1025c generateLayoutParams(AttributeSet attributeSet) {
        return new C1025c(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (m7844q()) {
            int iSave = canvas.save();
            canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, -this.f6484b);
            this.f6500r.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f6500r;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public C1025c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new C1025c((ViewGroup.MarginLayoutParams) layoutParams) : new C1025c(layoutParams) : new C1025c((LinearLayout.LayoutParams) layoutParams);
    }

    /* JADX INFO: renamed from: f */
    boolean m7851f() {
        return this.f6488f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.InterfaceC0220b
    public CoordinatorLayout.AbstractC0221c<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    int getDownNestedPreScrollRange() {
        int iMin;
        int iM2048D;
        int i = this.f6486d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            C1025c c1025c = (C1025c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = c1025c.f6523a;
            if ((i3 & 5) != 5) {
                if (i2 > 0) {
                    break;
                }
            } else {
                int i4 = ((LinearLayout.LayoutParams) c1025c).topMargin + ((LinearLayout.LayoutParams) c1025c).bottomMargin;
                if ((i3 & 8) != 0) {
                    iM2048D = C0292v.m2048D(childAt);
                } else if ((i3 & 2) != 0) {
                    iM2048D = measuredHeight - C0292v.m2048D(childAt);
                } else {
                    iMin = i4 + measuredHeight;
                    if (childCount == 0 && C0292v.m2126z(childAt)) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i2 += iMin;
                }
                iMin = i4 + iM2048D;
                if (childCount == 0) {
                    iMin = Math.min(iMin, measuredHeight - getTopInset());
                }
                i2 += iMin;
            }
        }
        int iMax = Math.max(0, i2);
        this.f6486d = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i = this.f6487e;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int iM2048D = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            C1025c c1025c = (C1025c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) c1025c).topMargin + ((LinearLayout.LayoutParams) c1025c).bottomMargin;
            int i3 = c1025c.f6523a;
            if ((i3 & 1) == 0) {
                break;
            }
            iM2048D += measuredHeight;
            if ((i3 & 2) != 0) {
                iM2048D -= C0292v.m2048D(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, iM2048D);
        this.f6487e = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.f6496n;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int iM2048D = C0292v.m2048D(this);
        if (iM2048D == 0) {
            int childCount = getChildCount();
            iM2048D = childCount >= 1 ? C0292v.m2048D(getChildAt(childCount - 1)) : 0;
            if (iM2048D == 0) {
                return getHeight() / 3;
            }
        }
        return (iM2048D * 2) + topInset;
    }

    int getPendingAction() {
        return this.f6489g;
    }

    public Drawable getStatusBarForeground() {
        return this.f6500r;
    }

    @Deprecated
    public float getTargetElevation() {
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    final int getTopInset() {
        C0265d0 c0265d0 = this.f6490h;
        if (c0265d0 != null) {
            return c0265d0.m1842i();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.f6485c;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int iM2048D = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            C1025c c1025c = (C1025c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = c1025c.f6523a;
            if ((i3 & 1) == 0) {
                break;
            }
            iM2048D += measuredHeight + ((LinearLayout.LayoutParams) c1025c).topMargin + ((LinearLayout.LayoutParams) c1025c).bottomMargin;
            if (i2 == 0 && C0292v.m2126z(childAt)) {
                iM2048D -= getTopInset();
            }
            if ((i3 & 2) != 0) {
                iM2048D -= C0292v.m2048D(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, iM2048D);
        this.f6485c = iMax;
        return iMax;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    /* JADX INFO: renamed from: h */
    boolean m7852h() {
        return getTotalScrollRange() != 0;
    }

    /* JADX INFO: renamed from: j */
    public boolean m7853j() {
        return this.f6495m;
    }

    /* JADX INFO: renamed from: k */
    void m7854k(int i) {
        this.f6484b = i;
        if (!willNotDraw()) {
            C0292v.m2087f0(this);
        }
        List<InterfaceC1024b> list = this.f6491i;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                InterfaceC1024b interfaceC1024b = this.f6491i.get(i2);
                if (interfaceC1024b != null) {
                    interfaceC1024b.m7904a(this, i);
                }
            }
        }
    }

    /* JADX INFO: renamed from: l */
    void m7855l() {
        this.f6489g = 0;
    }

    /* JADX INFO: renamed from: m */
    public void m7856m(boolean z, boolean z2) {
        m7842n(z, z2, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1209h.m9210e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.f6499q == null) {
            this.f6499q = new int[4];
        }
        int[] iArr = this.f6499q;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.f6493k ? C1216b.state_liftable : -C1216b.state_liftable;
        iArr[1] = (this.f6493k && this.f6494l) ? C1216b.state_lifted : -C1216b.state_lifted;
        iArr[2] = this.f6493k ? C1216b.state_collapsible : -C1216b.state_collapsible;
        iArr[3] = (this.f6493k && this.f6494l) ? C1216b.state_collapsed : -C1216b.state_collapsed;
        return LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m7838a();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (C0292v.m2126z(this) && m7845s()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                C0292v.m2075Z(getChildAt(childCount), topInset);
            }
        }
        m7841i();
        this.f6488f = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((C1025c) getChildAt(i5).getLayoutParams()).m7906b() != null) {
                this.f6488f = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.f6500r;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f6492j) {
            return;
        }
        if (!this.f6495m && !m7840g()) {
            z2 = false;
        }
        m7843o(z2);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && C0292v.m2126z(this) && m7845s()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = C0602a.m4750b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        m7841i();
    }

    /* JADX INFO: renamed from: p */
    boolean m7857p(boolean z) {
        if (this.f6494l == z) {
            return false;
        }
        this.f6494l = z;
        refreshDrawableState();
        if (!this.f6495m || !(getBackground() instanceof C1208g)) {
            return true;
        }
        m7846t((C1208g) getBackground(), z);
        return true;
    }

    /* JADX INFO: renamed from: r */
    boolean m7858r(View view) {
        View viewM7839b = m7839b(view);
        if (viewM7839b != null) {
            view = viewM7839b;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C1209h.m9209d(this, f);
    }

    public void setExpanded(boolean z) {
        m7856m(z, C0292v.m2069T(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.f6495m = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.f6496n = i;
        m7838a();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.f6500r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f6500r = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f6500r.setState(getDrawableState());
                }
                C0251a.m1792m(this.f6500r, C0292v.m2046C(this));
                this.f6500r.setVisible(getVisibility() == 0, false);
                this.f6500r.setCallback(this);
            }
            m7847u();
            C0292v.m2087f0(this);
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(C0503a.m4047d(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            C1030e.m7931a(this, f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f6500r;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f6500r;
    }

    protected static class BaseBehavior<T extends AppBarLayout> extends AbstractC1026a<T> {

        /* JADX INFO: renamed from: k */
        private int f6501k;

        /* JADX INFO: renamed from: l */
        private int f6502l;

        /* JADX INFO: renamed from: m */
        private ValueAnimator f6503m;

        /* JADX INFO: renamed from: n */
        private int f6504n;

        /* JADX INFO: renamed from: o */
        private boolean f6505o;

        /* JADX INFO: renamed from: p */
        private float f6506p;

        /* JADX INFO: renamed from: q */
        private WeakReference<View> f6507q;

        /* JADX INFO: renamed from: r */
        private AbstractC1021d f6508r;

        /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a */
        class C1018a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ CoordinatorLayout f6509a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ AppBarLayout f6510b;

            C1018a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f6509a = coordinatorLayout;
                this.f6510b = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.m7916P(this.f6509a, this.f6510b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$b */
        class C1019b implements InterfaceC0272f {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ CoordinatorLayout f6512a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ AppBarLayout f6513b;

            /* JADX INFO: renamed from: c */
            final /* synthetic */ View f6514c;

            /* JADX INFO: renamed from: d */
            final /* synthetic */ int f6515d;

            C1019b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
                this.f6512a = coordinatorLayout;
                this.f6513b = appBarLayout;
                this.f6514c = view;
                this.f6515d = i;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.core.view.p004e0.InterfaceC0272f
            /* JADX INFO: renamed from: a */
            public boolean mo1975a(View view, InterfaceC0272f.a aVar) {
                BaseBehavior.this.mo1589q(this.f6512a, this.f6513b, this.f6514c, 0, this.f6515d, new int[]{0, 0}, 1);
                return true;
            }
        }

        /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$c */
        class C1020c implements InterfaceC0272f {

            /* JADX INFO: renamed from: a */
            final /* synthetic */ AppBarLayout f6517a;

            /* JADX INFO: renamed from: b */
            final /* synthetic */ boolean f6518b;

            C1020c(BaseBehavior baseBehavior, AppBarLayout appBarLayout, boolean z) {
                this.f6517a = appBarLayout;
                this.f6518b = z;
            }

            @Override // androidx.core.view.p004e0.InterfaceC0272f
            /* JADX INFO: renamed from: a */
            public boolean mo1975a(View view, InterfaceC0272f.a aVar) {
                this.f6517a.setExpanded(this.f6518b);
                return true;
            }
        }

        /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$d */
        public static abstract class AbstractC1021d<T extends AppBarLayout> {
            /* JADX INFO: renamed from: a */
            public abstract boolean m7893a(T t);
        }

        public BaseBehavior() {
            this.f6504n = -1;
        }

        /* JADX INFO: renamed from: S */
        private void m7860S(CoordinatorLayout coordinatorLayout, T t, View view) {
            if (mo7877M() != (-t.getTotalScrollRange()) && view.canScrollVertically(1)) {
                m7861T(coordinatorLayout, t, C0269c.a.f1860f, false);
            }
            if (mo7877M() != 0) {
                if (!view.canScrollVertically(-1)) {
                    m7861T(coordinatorLayout, t, C0269c.a.f1861g, true);
                    return;
                }
                int i = -t.getDownNestedPreScrollRange();
                if (i != 0) {
                    C0292v.m2097k0(coordinatorLayout, C0269c.a.f1861g, null, new C1019b(coordinatorLayout, t, view, i));
                }
            }
        }

        /* JADX INFO: renamed from: T */
        private void m7861T(CoordinatorLayout coordinatorLayout, T t, C0269c.a aVar, boolean z) {
            C0292v.m2097k0(coordinatorLayout, aVar, null, new C1020c(this, t, z));
        }

        /* JADX INFO: renamed from: U */
        private void m7862U(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int iAbs = Math.abs(mo7877M() - i);
            float fAbs = Math.abs(f);
            m7863V(coordinatorLayout, t, i, fAbs > CropImageView.DEFAULT_ASPECT_RATIO ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / t.getHeight()) + 1.0f) * 150.0f));
        }

        /* JADX INFO: renamed from: V */
        private void m7863V(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int iMo7877M = mo7877M();
            if (iMo7877M == i) {
                ValueAnimator valueAnimator = this.f6503m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f6503m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f6503m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f6503m = valueAnimator3;
                valueAnimator3.setInterpolator(C1227a.f7758e);
                this.f6503m.addUpdateListener(new C1018a(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.f6503m.setDuration(Math.min(i2, 600));
            this.f6503m.setIntValues(iMo7877M, i);
            this.f6503m.start();
        }

        /* JADX INFO: renamed from: X */
        private boolean m7864X(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.m7852h() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        /* JADX INFO: renamed from: Y */
        private static boolean m7865Y(int i, int i2) {
            return (i & i2) == i2;
        }

        /* JADX INFO: renamed from: Z */
        private View m7866Z(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof InterfaceC0281k) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: a0 */
        private static View m7867a0(AppBarLayout appBarLayout, int i) {
            int iAbs = Math.abs(i);
            int childCount = appBarLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = appBarLayout.getChildAt(i2);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        /* JADX INFO: renamed from: b0 */
        private int m7868b0(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                C1025c c1025c = (C1025c) childAt.getLayoutParams();
                if (m7865Y(c1025c.m7905a(), 32)) {
                    top -= ((LinearLayout.LayoutParams) c1025c).topMargin;
                    bottom += ((LinearLayout.LayoutParams) c1025c).bottomMargin;
                }
                int i3 = -i;
                if (top <= i3 && bottom >= i3) {
                    return i2;
                }
            }
            return -1;
        }

        /* JADX INFO: renamed from: e0 */
        private int m7869e0(T t, int i) {
            int iAbs = Math.abs(i);
            int childCount = t.getChildCount();
            int topInset = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i2);
                C1025c c1025c = (C1025c) childAt.getLayoutParams();
                Interpolator interpolatorM7906b = c1025c.m7906b();
                if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                    i2++;
                } else if (interpolatorM7906b != null) {
                    int iM7905a = c1025c.m7905a();
                    if ((iM7905a & 1) != 0) {
                        topInset = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) c1025c).topMargin + ((LinearLayout.LayoutParams) c1025c).bottomMargin;
                        if ((iM7905a & 2) != 0) {
                            topInset -= C0292v.m2048D(childAt);
                        }
                    }
                    if (C0292v.m2126z(childAt)) {
                        topInset -= t.getTopInset();
                    }
                    if (topInset > 0) {
                        float f = topInset;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * interpolatorM7906b.getInterpolation((iAbs - childAt.getTop()) / f)));
                    }
                }
            }
            return i;
        }

        /* JADX INFO: renamed from: p0 */
        private boolean m7870p0(CoordinatorLayout coordinatorLayout, T t) {
            List<View> listM1564s = coordinatorLayout.m1564s(t);
            int size = listM1564s.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.AbstractC0221c abstractC0221cM1607f = ((CoordinatorLayout.C0224f) listM1564s.get(i).getLayoutParams()).m1607f();
                if (abstractC0221cM1607f instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) abstractC0221cM1607f).m7920K() != 0;
                }
            }
            return false;
        }

        /* JADX INFO: renamed from: q0 */
        private void m7871q0(CoordinatorLayout coordinatorLayout, T t) {
            int iMo7877M = mo7877M();
            int iM7868b0 = m7868b0(t, iMo7877M);
            if (iM7868b0 >= 0) {
                View childAt = t.getChildAt(iM7868b0);
                C1025c c1025c = (C1025c) childAt.getLayoutParams();
                int iM7905a = c1025c.m7905a();
                if ((iM7905a & 17) == 17) {
                    int i = -childAt.getTop();
                    int iM2048D = -childAt.getBottom();
                    if (iM7868b0 == t.getChildCount() - 1) {
                        iM2048D += t.getTopInset();
                    }
                    if (m7865Y(iM7905a, 2)) {
                        iM2048D += C0292v.m2048D(childAt);
                    } else if (m7865Y(iM7905a, 5)) {
                        int iM2048D2 = C0292v.m2048D(childAt) + iM2048D;
                        if (iMo7877M < iM2048D2) {
                            i = iM2048D2;
                        } else {
                            iM2048D = iM2048D2;
                        }
                    }
                    if (m7865Y(iM7905a, 32)) {
                        i += ((LinearLayout.LayoutParams) c1025c).topMargin;
                        iM2048D -= ((LinearLayout.LayoutParams) c1025c).bottomMargin;
                    }
                    if (iMo7877M < (iM2048D + i) / 2) {
                        i = iM2048D;
                    }
                    m7862U(coordinatorLayout, t, C0602a.m4750b(i, -t.getTotalScrollRange(), 0), CropImageView.DEFAULT_ASPECT_RATIO);
                }
            }
        }

        /* JADX INFO: renamed from: r0 */
        private void m7872r0(CoordinatorLayout coordinatorLayout, T t) {
            C0292v.m2093i0(coordinatorLayout, C0269c.a.f1860f.m1961b());
            C0292v.m2093i0(coordinatorLayout, C0269c.a.f1861g.m1961b());
            View viewM7866Z = m7866Z(coordinatorLayout);
            if (viewM7866Z == null || t.getTotalScrollRange() == 0 || !(((CoordinatorLayout.C0224f) viewM7866Z.getLayoutParams()).m1607f() instanceof ScrollingViewBehavior)) {
                return;
            }
            m7860S(coordinatorLayout, t, viewM7866Z);
        }

        /* JADX INFO: renamed from: s0 */
        private void m7873s0(CoordinatorLayout coordinatorLayout, T t, int i, int i2, boolean z) {
            View viewM7867a0 = m7867a0(t, i);
            if (viewM7867a0 != null) {
                int iM7905a = ((C1025c) viewM7867a0.getLayoutParams()).m7905a();
                boolean zM7858r = false;
                if ((iM7905a & 1) != 0) {
                    int iM2048D = C0292v.m2048D(viewM7867a0);
                    if (i2 <= 0 || (iM7905a & 12) == 0 ? !((iM7905a & 2) == 0 || (-i) < (viewM7867a0.getBottom() - iM2048D) - t.getTopInset()) : (-i) >= (viewM7867a0.getBottom() - iM2048D) - t.getTopInset()) {
                        zM7858r = true;
                    }
                }
                if (t.m7853j()) {
                    zM7858r = t.m7858r(m7866Z(coordinatorLayout));
                }
                boolean zM7857p = t.m7857p(zM7858r);
                if (z || (zM7857p && m7870p0(coordinatorLayout, t))) {
                    t.jumpDrawablesToCurrentState();
                }
            }
        }

        @Override // com.google.android.material.appbar.AbstractC1026a
        /* JADX INFO: renamed from: M */
        int mo7877M() {
            return m7924E() + this.f6501k;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.AbstractC1026a
        /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
        public boolean mo7874H(T t) {
            AbstractC1021d abstractC1021d = this.f6508r;
            if (abstractC1021d != null) {
                return abstractC1021d.m7893a(t);
            }
            WeakReference<View> weakReference = this.f6507q;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.AbstractC1026a
        /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
        public int mo7875K(T t) {
            return -t.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.AbstractC1026a
        /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
        public int mo7876L(T t) {
            return t.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.AbstractC1026a
        /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
        public void mo7878N(CoordinatorLayout coordinatorLayout, T t) {
            m7871q0(coordinatorLayout, t);
            if (t.m7853j()) {
                t.m7857p(t.m7858r(m7866Z(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.C1028c, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
        public boolean mo1584l(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean zMo1584l = super.mo1584l(coordinatorLayout, t, i);
            int pendingAction = t.getPendingAction();
            int i2 = this.f6504n;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i2);
                m7916P(coordinatorLayout, t, (-childAt.getBottom()) + (this.f6505o ? C0292v.m2048D(childAt) + t.getTopInset() : Math.round(childAt.getHeight() * this.f6506p)));
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        m7862U(coordinatorLayout, t, i3, CropImageView.DEFAULT_ASPECT_RATIO);
                    } else {
                        m7916P(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        m7862U(coordinatorLayout, t, 0, CropImageView.DEFAULT_ASPECT_RATIO);
                    } else {
                        m7916P(coordinatorLayout, t, 0);
                    }
                }
            }
            t.m7855l();
            this.f6504n = -1;
            m7925G(C0602a.m4750b(m7924E(), -t.getTotalScrollRange(), 0));
            m7873s0(coordinatorLayout, t, m7924E(), 0, true);
            t.m7854k(m7924E());
            m7872r0(coordinatorLayout, t);
            return zMo1584l;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
        public boolean mo1585m(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0224f) t.getLayoutParams())).height != -2) {
                return super.mo1585m(coordinatorLayout, t, i, i2, i3, i4);
            }
            coordinatorLayout.m1552J(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
        public void mo1589q(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int downNestedPreScrollRange;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i5 = -t.getTotalScrollRange();
                    i4 = i5;
                    downNestedPreScrollRange = t.getDownNestedPreScrollRange() + i5;
                } else {
                    i4 = -t.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i4 != downNestedPreScrollRange) {
                    iArr[1] = m7915O(coordinatorLayout, t, i2, i4, downNestedPreScrollRange);
                }
            }
            if (t.m7853j()) {
                t.m7857p(t.m7858r(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
        public void mo1592t(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = m7915O(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                m7872r0(coordinatorLayout, t);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
        public void mo1596x(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (!(parcelable instanceof C1022e)) {
                super.mo1596x(coordinatorLayout, t, parcelable);
                this.f6504n = -1;
                return;
            }
            C1022e c1022e = (C1022e) parcelable;
            super.mo1596x(coordinatorLayout, t, c1022e.m4862j());
            this.f6504n = c1022e.f6519d;
            this.f6506p = c1022e.f6520e;
            this.f6505o = c1022e.f6521f;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
        public Parcelable mo1597y(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable parcelableMo1597y = super.mo1597y(coordinatorLayout, t);
            int iM7924E = m7924E();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + iM7924E;
                if (childAt.getTop() + iM7924E <= 0 && bottom >= 0) {
                    C1022e c1022e = new C1022e(parcelableMo1597y);
                    c1022e.f6519d = i;
                    c1022e.f6521f = bottom == C0292v.m2048D(childAt) + t.getTopInset();
                    c1022e.f6520e = bottom / childAt.getHeight();
                    return c1022e;
                }
            }
            return parcelableMo1597y;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
        public boolean mo1569A(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.m7853j() || m7864X(coordinatorLayout, t, view));
            if (z && (valueAnimator = this.f6503m) != null) {
                valueAnimator.cancel();
            }
            this.f6507q = null;
            this.f6502l = i2;
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
        public void mo1571C(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.f6502l == 0 || i == 1) {
                m7871q0(coordinatorLayout, t);
                if (t.m7853j()) {
                    t.m7857p(t.m7858r(view));
                }
            }
            this.f6507q = new WeakReference<>(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.AbstractC1026a
        /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
        public int mo7879Q(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int iMo7877M = mo7877M();
            int i4 = 0;
            if (i2 == 0 || iMo7877M < i2 || iMo7877M > i3) {
                this.f6501k = 0;
            } else {
                int iM4750b = C0602a.m4750b(i, i2, i3);
                if (iMo7877M != iM4750b) {
                    int iM7869e0 = t.m7851f() ? m7869e0(t, iM4750b) : iM4750b;
                    boolean zM7925G = m7925G(iM7869e0);
                    i4 = iMo7877M - iM4750b;
                    this.f6501k = iM4750b - iM7869e0;
                    if (!zM7925G && t.m7851f()) {
                        coordinatorLayout.m1557f(t);
                    }
                    t.m7854k(m7924E());
                    m7873s0(coordinatorLayout, t, iM4750b, iM4750b < iMo7877M ? -1 : 1, false);
                }
            }
            m7872r0(coordinatorLayout, t);
            return i4;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6504n = -1;
        }

        /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$e */
        protected static class C1022e extends AbstractC0630a {
            public static final Parcelable.Creator<C1022e> CREATOR = new a();

            /* JADX INFO: renamed from: d */
            int f6519d;

            /* JADX INFO: renamed from: e */
            float f6520e;

            /* JADX INFO: renamed from: f */
            boolean f6521f;

            /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$e$a */
            static class a implements Parcelable.ClassLoaderCreator<C1022e> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public C1022e createFromParcel(Parcel parcel) {
                    return new C1022e(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public C1022e createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new C1022e(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public C1022e[] newArray(int i) {
                    return new C1022e[i];
                }
            }

            public C1022e(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f6519d = parcel.readInt();
                this.f6520e = parcel.readFloat();
                this.f6521f = parcel.readByte() != 0;
            }

            @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f6519d);
                parcel.writeFloat(this.f6520e);
                parcel.writeByte(this.f6521f ? (byte) 1 : (byte) 0);
            }

            public C1022e(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.appbar.AppBarLayout$c */
    public static class C1025c extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a */
        int f6523a;

        /* JADX INFO: renamed from: b */
        Interpolator f6524b;

        public C1025c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6523a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.AppBarLayout_Layout);
            this.f6523a = typedArrayObtainStyledAttributes.getInt(C1226k.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (typedArrayObtainStyledAttributes.hasValue(C1226k.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f6524b = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        /* JADX INFO: renamed from: a */
        public int m7905a() {
            return this.f6523a;
        }

        /* JADX INFO: renamed from: b */
        public Interpolator m7906b() {
            return this.f6524b;
        }

        /* JADX INFO: renamed from: c */
        boolean m7907c() {
            int i = this.f6523a;
            return (i & 1) == 1 && (i & 10) != 0;
        }

        public C1025c(int i, int i2) {
            super(i, i2);
            this.f6523a = 1;
        }

        public C1025c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6523a = 1;
        }

        public C1025c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f6523a = 1;
        }

        public C1025c(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f6523a = 1;
        }
    }
}
