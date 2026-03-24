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
import androidx.core.view.d0;
import androidx.core.view.e0.c;
import androidx.core.view.e0.f;
import androidx.core.view.v;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.a0.g;
import d.c.a.a.a0.h;
import d.c.a.a.k;
import java.lang.ref.WeakReference;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f1999c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2000d;
    private int e;
    private boolean f;
    private int g;
    private d0 h;
    private List<b> i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private int n;
    private WeakReference<View> o;
    private ValueAnimator p;
    private int[] q;
    private Drawable r;

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends com.google.android.material.appbar.b {
        public ScrollingViewBehavior() {
        }

        private static int R(AppBarLayout appBarLayout) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                return ((BaseBehavior) cVarF).M();
            }
            return 0;
        }

        private void S(View view, View view2) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) view2.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                v.Z(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) cVarF).k) + M()) - I(view2));
            }
        }

        private void T(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.j()) {
                    appBarLayout.p(appBarLayout.r(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.b
        float J(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iR = R(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iR > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iR / i) + 1.0f;
                }
            }
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }

        @Override // com.google.android.material.appbar.b
        int L(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.L(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.b
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public AppBarLayout H(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            S(view, view2);
            T(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void i(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                v.i0(coordinatorLayout, c.a.f.b());
                v.i0(coordinatorLayout, c.a.g.b());
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout appBarLayoutH = H(coordinatorLayout.r(view));
            if (appBarLayoutH != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f2013d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutH.m(false, !z);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.ScrollingViewBehavior_Layout);
            O(typedArrayObtainStyledAttributes.getDimensionPixelSize(k.ScrollingViewBehavior_Layout_behavior_overlapTop, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ g a;

        a(AppBarLayout appBarLayout, g gVar) {
            this.a = gVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.a.V(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public interface b<T extends AppBarLayout> {
        void a(T t, int i);
    }

    private void a() {
        WeakReference<View> weakReference = this.o;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.o = null;
    }

    private View b(View view) {
        int i;
        if (this.o == null && (i = this.n) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.n);
            }
            if (viewFindViewById != null) {
                this.o = new WeakReference<>(viewFindViewById);
            }
        }
        WeakReference<View> weakReference = this.o;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean g() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            if (((c) getChildAt(i).getLayoutParams()).c()) {
                return true;
            }
        }
        return false;
    }

    private void i() {
        this.f1999c = -1;
        this.f2000d = -1;
        this.e = -1;
    }

    private void n(boolean z, boolean z2, boolean z3) {
        this.g = (z ? 1 : 2) | (z2 ? 4 : 0) | (z3 ? 8 : 0);
        requestLayout();
    }

    private boolean o(boolean z) {
        if (this.k == z) {
            return false;
        }
        this.k = z;
        refreshDrawableState();
        return true;
    }

    private boolean q() {
        return this.r != null && getTopInset() > 0;
    }

    private boolean s() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || v.z(childAt)) ? false : true;
    }

    private void t(g gVar, boolean z) {
        float dimension = getResources().getDimension(d.c.a.a.d.design_appbar_elevation);
        float f = z ? CropImageView.DEFAULT_ASPECT_RATIO : dimension;
        if (!z) {
            dimension = CropImageView.DEFAULT_ASPECT_RATIO;
        }
        ValueAnimator valueAnimator = this.p;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, dimension);
        this.p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getResources().getInteger(d.c.a.a.g.app_bar_elevation_anim_duration));
        this.p.setInterpolator(d.c.a.a.l.a.a);
        this.p.addUpdateListener(new a(this, gVar));
        this.p.start();
    }

    private void u() {
        setWillNotDraw(!q());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        return new c(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (q()) {
            int iSave = canvas.save();
            canvas.translate(CropImageView.DEFAULT_ASPECT_RATIO, -this.f1998b);
            this.r.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.r;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams) : new c((LinearLayout.LayoutParams) layoutParams);
    }

    boolean f() {
        return this.f;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    int getDownNestedPreScrollRange() {
        int iMin;
        int iD;
        int i = this.f2000d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = cVar.a;
            if ((i3 & 5) != 5) {
                if (i2 > 0) {
                    break;
                }
            } else {
                int i4 = ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
                if ((i3 & 8) != 0) {
                    iD = v.D(childAt);
                } else if ((i3 & 2) != 0) {
                    iD = measuredHeight - v.D(childAt);
                } else {
                    iMin = i4 + measuredHeight;
                    if (childCount == 0 && v.z(childAt)) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i2 += iMin;
                }
                iMin = i4 + iD;
                if (childCount == 0) {
                    iMin = Math.min(iMin, measuredHeight - getTopInset());
                }
                i2 += iMin;
            }
        }
        int iMax = Math.max(0, i2);
        this.f2000d = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i = this.e;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int iD = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
            int i3 = cVar.a;
            if ((i3 & 1) == 0) {
                break;
            }
            iD += measuredHeight;
            if ((i3 & 2) != 0) {
                iD -= v.D(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, iD);
        this.e = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.n;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int iD = v.D(this);
        if (iD == 0) {
            int childCount = getChildCount();
            iD = childCount >= 1 ? v.D(getChildAt(childCount - 1)) : 0;
            if (iD == 0) {
                return getHeight() / 3;
            }
        }
        return (iD * 2) + topInset;
    }

    int getPendingAction() {
        return this.g;
    }

    public Drawable getStatusBarForeground() {
        return this.r;
    }

    @Deprecated
    public float getTargetElevation() {
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    final int getTopInset() {
        d0 d0Var = this.h;
        if (d0Var != null) {
            return d0Var.i();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.f1999c;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int iD = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            View childAt = getChildAt(i2);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = cVar.a;
            if ((i3 & 1) == 0) {
                break;
            }
            iD += measuredHeight + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
            if (i2 == 0 && v.z(childAt)) {
                iD -= getTopInset();
            }
            if ((i3 & 2) != 0) {
                iD -= v.D(childAt);
                break;
            }
            i2++;
        }
        int iMax = Math.max(0, iD);
        this.f1999c = iMax;
        return iMax;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean h() {
        return getTotalScrollRange() != 0;
    }

    public boolean j() {
        return this.m;
    }

    void k(int i) {
        this.f1998b = i;
        if (!willNotDraw()) {
            v.f0(this);
        }
        List<b> list = this.i;
        if (list != null) {
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                b bVar = this.i.get(i2);
                if (bVar != null) {
                    bVar.a(this, i);
                }
            }
        }
    }

    void l() {
        this.g = 0;
    }

    public void m(boolean z, boolean z2) {
        n(z, z2, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h.e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i) {
        if (this.q == null) {
            this.q = new int[4];
        }
        int[] iArr = this.q;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.k ? d.c.a.a.b.state_liftable : -d.c.a.a.b.state_liftable;
        iArr[1] = (this.k && this.l) ? d.c.a.a.b.state_lifted : -d.c.a.a.b.state_lifted;
        iArr[2] = this.k ? d.c.a.a.b.state_collapsible : -d.c.a.a.b.state_collapsible;
        iArr[3] = (this.k && this.l) ? d.c.a.a.b.state_collapsed : -d.c.a.a.b.state_collapsed;
        return LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        boolean z2 = true;
        if (v.z(this) && s()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                v.Z(getChildAt(childCount), topInset);
            }
        }
        i();
        this.f = false;
        int childCount2 = getChildCount();
        int i5 = 0;
        while (true) {
            if (i5 >= childCount2) {
                break;
            }
            if (((c) getChildAt(i5).getLayoutParams()).b() != null) {
                this.f = true;
                break;
            }
            i5++;
        }
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.j) {
            return;
        }
        if (!this.m && !g()) {
            z2 = false;
        }
        o(z2);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        int mode = View.MeasureSpec.getMode(i2);
        if (mode != 1073741824 && v.z(this) && s()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = c.g.f.a.b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i2));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        i();
    }

    boolean p(boolean z) {
        if (this.l == z) {
            return false;
        }
        this.l = z;
        refreshDrawableState();
        if (!this.m || !(getBackground() instanceof g)) {
            return true;
        }
        t((g) getBackground(), z);
        return true;
    }

    boolean r(View view) {
        View viewB = b(view);
        if (viewB != null) {
            view = viewB;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        h.d(this, f);
    }

    public void setExpanded(boolean z) {
        m(z, v.T(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.m = z;
    }

    public void setLiftOnScrollTargetViewId(int i) {
        this.n = i;
        a();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.r = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.r.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.m(this.r, v.C(this));
                this.r.setVisible(getVisibility() == 0, false);
                this.r.setCallback(this);
            }
            u();
            v.f0(this);
        }
    }

    public void setStatusBarForegroundColor(int i) {
        setStatusBarForeground(new ColorDrawable(i));
    }

    public void setStatusBarForegroundResource(int i) {
        setStatusBarForeground(c.a.k.a.a.d(getContext(), i));
    }

    @Deprecated
    public void setTargetElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            e.a(this, f);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.r;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.r;
    }

    protected static class BaseBehavior<T extends AppBarLayout> extends com.google.android.material.appbar.a<T> {
        private int k;
        private int l;
        private ValueAnimator m;
        private int n;
        private boolean o;
        private float p;
        private WeakReference<View> q;
        private d r;

        class a implements ValueAnimator.AnimatorUpdateListener {
            final /* synthetic */ CoordinatorLayout a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f2001b;

            a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.a = coordinatorLayout;
                this.f2001b = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.P(this.a, this.f2001b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        class b implements f {
            final /* synthetic */ CoordinatorLayout a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f2003b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ View f2004c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f2005d;

            b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i) {
                this.a = coordinatorLayout;
                this.f2003b = appBarLayout;
                this.f2004c = view;
                this.f2005d = i;
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
            @Override // androidx.core.view.e0.f
            public boolean a(View view, f.a aVar) {
                BaseBehavior.this.q(this.a, this.f2003b, this.f2004c, 0, this.f2005d, new int[]{0, 0}, 1);
                return true;
            }
        }

        class c implements f {
            final /* synthetic */ AppBarLayout a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f2006b;

            c(BaseBehavior baseBehavior, AppBarLayout appBarLayout, boolean z) {
                this.a = appBarLayout;
                this.f2006b = z;
            }

            @Override // androidx.core.view.e0.f
            public boolean a(View view, f.a aVar) {
                this.a.setExpanded(this.f2006b);
                return true;
            }
        }

        public static abstract class d<T extends AppBarLayout> {
            public abstract boolean a(T t);
        }

        public BaseBehavior() {
            this.n = -1;
        }

        private void S(CoordinatorLayout coordinatorLayout, T t, View view) {
            if (M() != (-t.getTotalScrollRange()) && view.canScrollVertically(1)) {
                T(coordinatorLayout, t, c.a.f, false);
            }
            if (M() != 0) {
                if (!view.canScrollVertically(-1)) {
                    T(coordinatorLayout, t, c.a.g, true);
                    return;
                }
                int i = -t.getDownNestedPreScrollRange();
                if (i != 0) {
                    v.k0(coordinatorLayout, c.a.g, null, new b(coordinatorLayout, t, view, i));
                }
            }
        }

        private void T(CoordinatorLayout coordinatorLayout, T t, c.a aVar, boolean z) {
            v.k0(coordinatorLayout, aVar, null, new c(this, t, z));
        }

        private void U(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int iAbs = Math.abs(M() - i);
            float fAbs = Math.abs(f);
            V(coordinatorLayout, t, i, fAbs > CropImageView.DEFAULT_ASPECT_RATIO ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / t.getHeight()) + 1.0f) * 150.0f));
        }

        private void V(CoordinatorLayout coordinatorLayout, T t, int i, int i2) {
            int iM = M();
            if (iM == i) {
                ValueAnimator valueAnimator = this.m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.m = valueAnimator3;
                valueAnimator3.setInterpolator(d.c.a.a.l.a.e);
                this.m.addUpdateListener(new a(coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.m.setDuration(Math.min(i2, 600));
            this.m.setIntValues(iM, i);
            this.m.start();
        }

        private boolean X(CoordinatorLayout coordinatorLayout, T t, View view) {
            return t.h() && coordinatorLayout.getHeight() - view.getHeight() <= t.getHeight();
        }

        private static boolean Y(int i, int i2) {
            return (i & i2) == i2;
        }

        private View Z(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof androidx.core.view.k) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        private static View a0(AppBarLayout appBarLayout, int i) {
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

        private int b0(T t, int i) {
            int childCount = t.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = t.getChildAt(i2);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                c cVar = (c) childAt.getLayoutParams();
                if (Y(cVar.a(), 32)) {
                    top -= ((LinearLayout.LayoutParams) cVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) cVar).bottomMargin;
                }
                int i3 = -i;
                if (top <= i3 && bottom >= i3) {
                    return i2;
                }
            }
            return -1;
        }

        private int e0(T t, int i) {
            int iAbs = Math.abs(i);
            int childCount = t.getChildCount();
            int topInset = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = t.getChildAt(i2);
                c cVar = (c) childAt.getLayoutParams();
                Interpolator interpolatorB = cVar.b();
                if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                    i2++;
                } else if (interpolatorB != null) {
                    int iA = cVar.a();
                    if ((iA & 1) != 0) {
                        topInset = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
                        if ((iA & 2) != 0) {
                            topInset -= v.D(childAt);
                        }
                    }
                    if (v.z(childAt)) {
                        topInset -= t.getTopInset();
                    }
                    if (topInset > 0) {
                        float f = topInset;
                        return Integer.signum(i) * (childAt.getTop() + Math.round(f * interpolatorB.getInterpolation((iAbs - childAt.getTop()) / f)));
                    }
                }
            }
            return i;
        }

        private boolean p0(CoordinatorLayout coordinatorLayout, T t) {
            List<View> listS = coordinatorLayout.s(t);
            int size = listS.size();
            for (int i = 0; i < size; i++) {
                CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) listS.get(i).getLayoutParams()).f();
                if (cVarF instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) cVarF).K() != 0;
                }
            }
            return false;
        }

        private void q0(CoordinatorLayout coordinatorLayout, T t) {
            int iM = M();
            int iB0 = b0(t, iM);
            if (iB0 >= 0) {
                View childAt = t.getChildAt(iB0);
                c cVar = (c) childAt.getLayoutParams();
                int iA = cVar.a();
                if ((iA & 17) == 17) {
                    int i = -childAt.getTop();
                    int iD = -childAt.getBottom();
                    if (iB0 == t.getChildCount() - 1) {
                        iD += t.getTopInset();
                    }
                    if (Y(iA, 2)) {
                        iD += v.D(childAt);
                    } else if (Y(iA, 5)) {
                        int iD2 = v.D(childAt) + iD;
                        if (iM < iD2) {
                            i = iD2;
                        } else {
                            iD = iD2;
                        }
                    }
                    if (Y(iA, 32)) {
                        i += ((LinearLayout.LayoutParams) cVar).topMargin;
                        iD -= ((LinearLayout.LayoutParams) cVar).bottomMargin;
                    }
                    if (iM < (iD + i) / 2) {
                        i = iD;
                    }
                    U(coordinatorLayout, t, c.g.f.a.b(i, -t.getTotalScrollRange(), 0), CropImageView.DEFAULT_ASPECT_RATIO);
                }
            }
        }

        private void r0(CoordinatorLayout coordinatorLayout, T t) {
            v.i0(coordinatorLayout, c.a.f.b());
            v.i0(coordinatorLayout, c.a.g.b());
            View viewZ = Z(coordinatorLayout);
            if (viewZ == null || t.getTotalScrollRange() == 0 || !(((CoordinatorLayout.f) viewZ.getLayoutParams()).f() instanceof ScrollingViewBehavior)) {
                return;
            }
            S(coordinatorLayout, t, viewZ);
        }

        private void s0(CoordinatorLayout coordinatorLayout, T t, int i, int i2, boolean z) {
            View viewA0 = a0(t, i);
            if (viewA0 != null) {
                int iA = ((c) viewA0.getLayoutParams()).a();
                boolean zR = false;
                if ((iA & 1) != 0) {
                    int iD = v.D(viewA0);
                    if (i2 <= 0 || (iA & 12) == 0 ? !((iA & 2) == 0 || (-i) < (viewA0.getBottom() - iD) - t.getTopInset()) : (-i) >= (viewA0.getBottom() - iD) - t.getTopInset()) {
                        zR = true;
                    }
                }
                if (t.j()) {
                    zR = t.r(Z(coordinatorLayout));
                }
                boolean zP = t.p(zR);
                if (z || (zP && p0(coordinatorLayout, t))) {
                    t.jumpDrawablesToCurrentState();
                }
            }
        }

        @Override // com.google.android.material.appbar.a
        int M() {
            return E() + this.k;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
        public boolean H(T t) {
            d dVar = this.r;
            if (dVar != null) {
                return dVar.a(t);
            }
            WeakReference<View> weakReference = this.q;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
        public int K(T t) {
            return -t.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
        public int L(T t) {
            return t.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
        public void N(CoordinatorLayout coordinatorLayout, T t) {
            q0(coordinatorLayout, t);
            if (t.j()) {
                t.p(t.r(Z(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.c, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, T t, int i) {
            boolean zL = super.l(coordinatorLayout, t, i);
            int pendingAction = t.getPendingAction();
            int i2 = this.n;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t.getChildAt(i2);
                P(coordinatorLayout, t, (-childAt.getBottom()) + (this.o ? v.D(childAt) + t.getTopInset() : Math.round(childAt.getHeight() * this.p)));
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i3 = -t.getUpNestedPreScrollRange();
                    if (z) {
                        U(coordinatorLayout, t, i3, CropImageView.DEFAULT_ASPECT_RATIO);
                    } else {
                        P(coordinatorLayout, t, i3);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        U(coordinatorLayout, t, 0, CropImageView.DEFAULT_ASPECT_RATIO);
                    } else {
                        P(coordinatorLayout, t, 0);
                    }
                }
            }
            t.l();
            this.n = -1;
            G(c.g.f.a.b(E(), -t.getTotalScrollRange(), 0));
            s0(coordinatorLayout, t, E(), 0, true);
            t.k(E());
            r0(coordinatorLayout, t);
            return zL;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
        public boolean m(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) t.getLayoutParams())).height != -2) {
                return super.m(coordinatorLayout, t, i, i2, i3, i4);
            }
            coordinatorLayout.J(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
        public void q(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
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
                    iArr[1] = O(coordinatorLayout, t, i2, i4, downNestedPreScrollRange);
                }
            }
            if (t.j()) {
                t.p(t.r(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
        public void t(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = O(coordinatorLayout, t, i4, -t.getDownNestedScrollRange(), 0);
            }
            if (i4 == 0) {
                r0(coordinatorLayout, t);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
        public void x(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (!(parcelable instanceof e)) {
                super.x(coordinatorLayout, t, parcelable);
                this.n = -1;
                return;
            }
            e eVar = (e) parcelable;
            super.x(coordinatorLayout, t, eVar.j());
            this.n = eVar.f2007d;
            this.p = eVar.e;
            this.o = eVar.f;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
        public Parcelable y(CoordinatorLayout coordinatorLayout, T t) {
            Parcelable parcelableY = super.y(coordinatorLayout, t);
            int iE = E();
            int childCount = t.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + iE;
                if (childAt.getTop() + iE <= 0 && bottom >= 0) {
                    e eVar = new e(parcelableY);
                    eVar.f2007d = i;
                    eVar.f = bottom == v.D(childAt) + t.getTopInset();
                    eVar.e = bottom / childAt.getHeight();
                    return eVar;
                }
            }
            return parcelableY;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
        public boolean A(CoordinatorLayout coordinatorLayout, T t, View view, View view2, int i, int i2) {
            ValueAnimator valueAnimator;
            boolean z = (i & 2) != 0 && (t.j() || X(coordinatorLayout, t, view));
            if (z && (valueAnimator = this.m) != null) {
                valueAnimator.cancel();
            }
            this.q = null;
            this.l = i2;
            return z;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
        public void C(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.l == 0 || i == 1) {
                q0(coordinatorLayout, t);
                if (t.j()) {
                    t.p(t.r(view));
                }
            }
            this.q = new WeakReference<>(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
        public int Q(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3) {
            int iM = M();
            int i4 = 0;
            if (i2 == 0 || iM < i2 || iM > i3) {
                this.k = 0;
            } else {
                int iB = c.g.f.a.b(i, i2, i3);
                if (iM != iB) {
                    int iE0 = t.f() ? e0(t, iB) : iB;
                    boolean zG = G(iE0);
                    i4 = iM - iB;
                    this.k = iB - iE0;
                    if (!zG && t.f()) {
                        coordinatorLayout.f(t);
                    }
                    t.k(E());
                    s0(coordinatorLayout, t, iB, iB < iM ? -1 : 1, false);
                }
            }
            r0(coordinatorLayout, t);
            return i4;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.n = -1;
        }

        protected static class e extends c.i.a.a {
            public static final Parcelable.Creator<e> CREATOR = new a();

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            int f2007d;
            float e;
            boolean f;

            static class a implements Parcelable.ClassLoaderCreator<e> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public e createFromParcel(Parcel parcel) {
                    return new e(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public e createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new e(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public e[] newArray(int i) {
                    return new e[i];
                }
            }

            public e(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f2007d = parcel.readInt();
                this.e = parcel.readFloat();
                this.f = parcel.readByte() != 0;
            }

            @Override // c.i.a.a, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.f2007d);
                parcel.writeFloat(this.e);
                parcel.writeByte(this.f ? (byte) 1 : (byte) 0);
            }

            public e(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public static class c extends LinearLayout.LayoutParams {
        int a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Interpolator f2008b;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.AppBarLayout_Layout);
            this.a = typedArrayObtainStyledAttributes.getInt(k.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (typedArrayObtainStyledAttributes.hasValue(k.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.f2008b = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(k.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public int a() {
            return this.a;
        }

        public Interpolator b() {
            return this.f2008b;
        }

        boolean c() {
            int i = this.a;
            return (i & 1) == 1 && (i & 10) != 0;
        }

        public c(int i, int i2) {
            super(i, i2);
            this.a = 1;
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 1;
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 1;
        }

        public c(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 1;
        }
    }
}
