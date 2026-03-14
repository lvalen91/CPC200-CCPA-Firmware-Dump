package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.l;
import com.yalantis.ucrop.view.CropImageView;
import d.c.a.a.l.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    private final int Q;
    private final d.c.a.a.a0.g R;
    private Animator S;
    private Animator T;
    private int U;
    private int V;
    private boolean W;
    private int a0;
    private ArrayList<g> b0;
    private int c0;
    private boolean d0;
    private boolean e0;
    private Behavior f0;
    private int g0;
    private int h0;
    private int i0;
    AnimatorListenerAdapter j0;
    k<FloatingActionButton> k0;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.l0();
            BottomAppBar.this.S = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m0();
        }
    }

    class b extends FloatingActionButton.b {
        final /* synthetic */ int a;

        class a extends FloatingActionButton.b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.l0();
            }
        }

        b(int i) {
            this.a = i;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
        public void a(FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.q0(this.a));
            floatingActionButton.s(new a());
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.l0();
            BottomAppBar.this.d0 = false;
            BottomAppBar.this.T = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m0();
        }
    }

    class d extends AnimatorListenerAdapter {
        public boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f2031b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f2032c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f2033d;

        d(ActionMenuView actionMenuView, int i, boolean z) {
            this.f2031b = actionMenuView;
            this.f2032c = i;
            this.f2033d = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.a) {
                return;
            }
            boolean z = BottomAppBar.this.c0 != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.u0(bottomAppBar.c0);
            BottomAppBar.this.A0(this.f2031b, this.f2032c, this.f2033d, z);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f2034b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f2035c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f2036d;

        e(ActionMenuView actionMenuView, int i, boolean z) {
            this.f2034b = actionMenuView;
            this.f2035c = i;
            this.f2036d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2034b.setTranslationX(BottomAppBar.this.p0(r0, this.f2035c, this.f2036d));
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.j0.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonN0 = BottomAppBar.this.n0();
            if (floatingActionButtonN0 != null) {
                floatingActionButtonN0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    interface g {
        void a(BottomAppBar bottomAppBar);

        void b(BottomAppBar bottomAppBar);
    }

    static class h extends c.i.a.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f2037d;
        boolean e;

        static class a implements Parcelable.ClassLoaderCreator<h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public h[] newArray(int i) {
                return new h[i];
            }
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // c.i.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f2037d);
            parcel.writeInt(this.e ? 1 : 0);
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f2037d = parcel.readInt();
            this.e = parcel.readInt() != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(ActionMenuView actionMenuView, int i, boolean z, boolean z2) {
        e eVar = new e(actionMenuView, i, z);
        if (z2) {
            actionMenuView.post(eVar);
        } else {
            eVar.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g0(FloatingActionButton floatingActionButton) {
        floatingActionButton.e(this.j0);
        floatingActionButton.f(new f());
        floatingActionButton.g(this.k0);
    }

    private ActionMenuView getActionMenuView() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.g0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return q0(this.U);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.i0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.h0;
    }

    private com.google.android.material.bottomappbar.a getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.a) this.R.C().p();
    }

    private void h0() {
        Animator animator = this.T;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.S;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void j0(int i, List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(n0(), "translationX", q0(i));
        objectAnimatorOfFloat.setDuration(300L);
        list.add(objectAnimatorOfFloat);
    }

    private void k0(int i, boolean z, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - p0(actionMenuView, i, z)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(animatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", CropImageView.DEFAULT_ASPECT_RATIO);
            objectAnimatorOfFloat.addListener(new d(actionMenuView, i, z));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l0() {
        ArrayList<g> arrayList;
        int i = this.a0 - 1;
        this.a0 = i;
        if (i != 0 || (arrayList = this.b0) == null) {
            return;
        }
        Iterator<g> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        ArrayList<g> arrayList;
        int i = this.a0;
        this.a0 = i + 1;
        if (i != 0 || (arrayList = this.b0) == null) {
            return;
        }
        Iterator<g> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FloatingActionButton n0() {
        View viewO0 = o0();
        if (viewO0 instanceof FloatingActionButton) {
            return (FloatingActionButton) viewO0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View o0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).s(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float q0(int i) {
        boolean zD = l.d(this);
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - (this.Q + (zD ? this.i0 : this.h0))) * (zD ? -1 : 1);
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    private boolean r0() {
        FloatingActionButton floatingActionButtonN0 = n0();
        return floatingActionButtonN0 != null && floatingActionButtonN0.o();
    }

    private void s0(int i, boolean z) {
        if (!v.T(this)) {
            u0(this.c0);
            return;
        }
        Animator animator = this.T;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!r0()) {
            i = 0;
            z = false;
        }
        k0(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.T = animatorSet;
        animatorSet.addListener(new c());
        this.T.start();
    }

    private void t0(int i) {
        if (this.U == i || !v.T(this)) {
            return;
        }
        Animator animator = this.S;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.V == 1) {
            j0(i, arrayList);
        } else {
            i0(i, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.S = animatorSet;
        animatorSet.addListener(new a());
        this.S.start();
    }

    private void v0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.T != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (r0()) {
            z0(actionMenuView, this.U, this.e0);
        } else {
            z0(actionMenuView, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w0() {
        getTopEdgeTreatment().m(getFabTranslationX());
        View viewO0 = o0();
        this.R.X((this.e0 && r0()) ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        if (viewO0 != null) {
            viewO0.setTranslationY(getFabTranslationY());
            viewO0.setTranslationX(getFabTranslationX());
        }
    }

    private void z0(ActionMenuView actionMenuView, int i, boolean z) {
        A0(actionMenuView, i, z, false);
    }

    public ColorStateList getBackgroundTint() {
        return this.R.E();
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().c();
    }

    public int getFabAlignmentMode() {
        return this.U;
    }

    public int getFabAnimationMode() {
        return this.V;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().e();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().f();
    }

    public boolean getHideOnScroll() {
        return this.W;
    }

    protected void i0(int i, List<Animator> list) {
        FloatingActionButton floatingActionButtonN0 = n0();
        if (floatingActionButtonN0 == null || floatingActionButtonN0.n()) {
            return;
        }
        m0();
        floatingActionButtonN0.l(new b(i));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        d.c.a.a.a0.h.f(this, this.R);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            h0();
            w0();
        }
        v0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.j());
        this.U = hVar.f2037d;
        this.e0 = hVar.e;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        hVar.f2037d = this.U;
        hVar.e = this.e0;
        return hVar;
    }

    protected int p0(ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean zD = l.d(this);
        int measuredWidth = zD ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.e) && (((Toolbar.e) childAt.getLayoutParams()).a & 8388615) == 8388611) {
                measuredWidth = zD ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zD ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zD ? this.h0 : -this.i0));
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        androidx.core.graphics.drawable.a.o(this.R, colorStateList);
    }

    public void setCradleVerticalOffset(float f2) {
        if (f2 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().h(f2);
            this.R.invalidateSelf();
            w0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f2) {
        this.R.V(f2);
        getBehavior().G(this, this.R.B() - this.R.A());
    }

    public void setFabAlignmentMode(int i) {
        x0(i, 0);
    }

    public void setFabAnimationMode(int i) {
        this.V = i;
    }

    void setFabCornerSize(float f2) {
        if (f2 != getTopEdgeTreatment().d()) {
            getTopEdgeTreatment().i(f2);
            this.R.invalidateSelf();
        }
    }

    public void setFabCradleMargin(float f2) {
        if (f2 != getFabCradleMargin()) {
            getTopEdgeTreatment().j(f2);
            this.R.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f2) {
        if (f2 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().k(f2);
            this.R.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.W = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public void u0(int i) {
        if (i != 0) {
            this.c0 = 0;
            getMenu().clear();
            x(i);
        }
    }

    public void x0(int i, int i2) {
        this.c0 = i2;
        s0(i, this.e0);
        t0(i);
        this.U = i;
    }

    boolean y0(int i) {
        float f2 = i;
        if (f2 == getTopEdgeTreatment().g()) {
            return false;
        }
        getTopEdgeTreatment().l(f2);
        this.R.invalidateSelf();
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public Behavior getBehavior() {
        if (this.f0 == null) {
            this.f0 = new Behavior();
        }
        return this.f0;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        private final Rect e;
        private WeakReference<BottomAppBar> f;
        private int g;
        private final View.OnLayoutChangeListener h;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.j(Behavior.this.e);
                int iHeight = Behavior.this.e.height();
                bottomAppBar.y0(iHeight);
                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().r().a(new RectF(Behavior.this.e)));
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                if (Behavior.this.g == 0) {
                    ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(d.c.a.a.d.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) fVar).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) fVar).rightMargin = bottomAppBar.getRightInset();
                    if (l.d(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin += bottomAppBar.Q;
                    } else {
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin += bottomAppBar.Q;
                    }
                }
            }
        }

        public Behavior() {
            this.h = new a();
            this.e = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            this.f = new WeakReference<>(bottomAppBar);
            View viewO0 = bottomAppBar.o0();
            if (viewO0 != null && !v.T(viewO0)) {
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) viewO0.getLayoutParams();
                fVar.f494d = 49;
                this.g = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                if (viewO0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewO0;
                    floatingActionButton.addOnLayoutChangeListener(this.h);
                    bottomAppBar.g0(floatingActionButton);
                }
                bottomAppBar.w0();
            }
            coordinatorLayout.I(bottomAppBar, i);
            return super.l(coordinatorLayout, bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public boolean A(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.A(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.h = new a();
            this.e = new Rect();
        }
    }
}
