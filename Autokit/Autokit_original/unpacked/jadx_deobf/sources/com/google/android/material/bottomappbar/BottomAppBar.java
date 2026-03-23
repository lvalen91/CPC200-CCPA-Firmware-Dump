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
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.C1123l;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p016c.p052i.p053a.AbstractC0630a;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1209h;
import p093d.p099c.p100a.p101a.p104l.InterfaceC1237k;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.InterfaceC0220b {

    /* JADX INFO: renamed from: Q */
    private final int f6575Q;

    /* JADX INFO: renamed from: R */
    private final C1208g f6576R;

    /* JADX INFO: renamed from: S */
    private Animator f6577S;

    /* JADX INFO: renamed from: T */
    private Animator f6578T;

    /* JADX INFO: renamed from: U */
    private int f6579U;

    /* JADX INFO: renamed from: V */
    private int f6580V;

    /* JADX INFO: renamed from: W */
    private boolean f6581W;

    /* JADX INFO: renamed from: a0 */
    private int f6582a0;

    /* JADX INFO: renamed from: b0 */
    private ArrayList<InterfaceC1043g> f6583b0;

    /* JADX INFO: renamed from: c0 */
    private int f6584c0;

    /* JADX INFO: renamed from: d0 */
    private boolean f6585d0;

    /* JADX INFO: renamed from: e0 */
    private boolean f6586e0;

    /* JADX INFO: renamed from: f0 */
    private Behavior f6587f0;

    /* JADX INFO: renamed from: g0 */
    private int f6588g0;

    /* JADX INFO: renamed from: h0 */
    private int f6589h0;

    /* JADX INFO: renamed from: i0 */
    private int f6590i0;

    /* JADX INFO: renamed from: j0 */
    AnimatorListenerAdapter f6591j0;

    /* JADX INFO: renamed from: k0 */
    InterfaceC1237k<FloatingActionButton> f6592k0;

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$a */
    class C1037a extends AnimatorListenerAdapter {
        C1037a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m7971l0();
            BottomAppBar.this.f6577S = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m7972m0();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$b */
    class C1038b extends FloatingActionButton.AbstractC1102b {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f6599a;

        /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$b$a */
        class a extends FloatingActionButton.AbstractC1102b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC1102b
            /* JADX INFO: renamed from: b */
            public void mo7993b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.m7971l0();
            }
        }

        C1038b(int i) {
            this.f6599a = i;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC1102b
        /* JADX INFO: renamed from: a */
        public void mo7992a(FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.m7975q0(this.f6599a));
            floatingActionButton.m8530s(new a());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$c */
    class C1039c extends AnimatorListenerAdapter {
        C1039c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m7971l0();
            BottomAppBar.this.f6585d0 = false;
            BottomAppBar.this.f6578T = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.m7972m0();
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$d */
    class C1040d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        public boolean f6603a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ActionMenuView f6604b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f6605c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ boolean f6606d;

        C1040d(ActionMenuView actionMenuView, int i, boolean z) {
            this.f6604b = actionMenuView;
            this.f6605c = i;
            this.f6606d = z;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f6603a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f6603a) {
                return;
            }
            boolean z = BottomAppBar.this.f6584c0 != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.m7984u0(bottomAppBar.f6584c0);
            BottomAppBar.this.m7949A0(this.f6604b, this.f6605c, this.f6606d, z);
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$e */
    class RunnableC1041e implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ ActionMenuView f6608b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ int f6609c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ boolean f6610d;

        RunnableC1041e(ActionMenuView actionMenuView, int i, boolean z) {
            this.f6608b = actionMenuView;
            this.f6609c = i;
            this.f6610d = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f6608b.setTranslationX(BottomAppBar.this.m7983p0(r0, this.f6609c, this.f6610d));
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$f */
    class C1042f extends AnimatorListenerAdapter {
        C1042f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f6591j0.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonM7973n0 = BottomAppBar.this.m7973n0();
            if (floatingActionButtonM7973n0 != null) {
                floatingActionButtonM7973n0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$g */
    interface InterfaceC1043g {
        /* JADX INFO: renamed from: a */
        void m7994a(BottomAppBar bottomAppBar);

        /* JADX INFO: renamed from: b */
        void m7995b(BottomAppBar bottomAppBar);
    }

    /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$h */
    static class C1044h extends AbstractC0630a {
        public static final Parcelable.Creator<C1044h> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        int f6613d;

        /* JADX INFO: renamed from: e */
        boolean f6614e;

        /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$h$a */
        static class a implements Parcelable.ClassLoaderCreator<C1044h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C1044h createFromParcel(Parcel parcel) {
                return new C1044h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C1044h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C1044h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C1044h[] newArray(int i) {
                return new C1044h[i];
            }
        }

        public C1044h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f6613d);
            parcel.writeInt(this.f6614e ? 1 : 0);
        }

        public C1044h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f6613d = parcel.readInt();
            this.f6614e = parcel.readInt() != 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: A0 */
    public void m7949A0(ActionMenuView actionMenuView, int i, boolean z, boolean z2) {
        RunnableC1041e runnableC1041e = new RunnableC1041e(actionMenuView, i, z);
        if (z2) {
            actionMenuView.post(runnableC1041e);
        } else {
            runnableC1041e.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g0 */
    public void m7967g0(FloatingActionButton floatingActionButton) {
        floatingActionButton.m8521e(this.f6591j0);
        floatingActionButton.m8522f(new C1042f());
        floatingActionButton.m8523g(this.f6592k0);
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
        return this.f6588g0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return m7975q0(this.f6579U);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().m8000c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f6590i0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f6589h0;
    }

    private C1045a getTopEdgeTreatment() {
        return (C1045a) this.f6576R.m9172C().m9227p();
    }

    /* JADX INFO: renamed from: h0 */
    private void m7968h0() {
        Animator animator = this.f6578T;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f6577S;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    /* JADX INFO: renamed from: j0 */
    private void m7969j0(int i, List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(m7973n0(), "translationX", m7975q0(i));
        objectAnimatorOfFloat.setDuration(300L);
        list.add(objectAnimatorOfFloat);
    }

    /* JADX INFO: renamed from: k0 */
    private void m7970k0(int i, boolean z, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - m7983p0(actionMenuView, i, z)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(animatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", CropImageView.DEFAULT_ASPECT_RATIO);
            objectAnimatorOfFloat.addListener(new C1040d(actionMenuView, i, z));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l0 */
    public void m7971l0() {
        ArrayList<InterfaceC1043g> arrayList;
        int i = this.f6582a0 - 1;
        this.f6582a0 = i;
        if (i != 0 || (arrayList = this.f6583b0) == null) {
            return;
        }
        Iterator<InterfaceC1043g> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().m7994a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m0 */
    public void m7972m0() {
        ArrayList<InterfaceC1043g> arrayList;
        int i = this.f6582a0;
        this.f6582a0 = i + 1;
        if (i != 0 || (arrayList = this.f6583b0) == null) {
            return;
        }
        Iterator<InterfaceC1043g> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().m7995b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n0 */
    public FloatingActionButton m7973n0() {
        View viewM7974o0 = m7974o0();
        if (viewM7974o0 instanceof FloatingActionButton) {
            return (FloatingActionButton) viewM7974o0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o0 */
    public View m7974o0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).m1564s(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q0 */
    public float m7975q0(int i) {
        boolean zM8734d = C1123l.m8734d(this);
        if (i == 1) {
            return ((getMeasuredWidth() / 2) - (this.f6575Q + (zM8734d ? this.f6590i0 : this.f6589h0))) * (zM8734d ? -1 : 1);
        }
        return CropImageView.DEFAULT_ASPECT_RATIO;
    }

    /* JADX INFO: renamed from: r0 */
    private boolean m7976r0() {
        FloatingActionButton floatingActionButtonM7973n0 = m7973n0();
        return floatingActionButtonM7973n0 != null && floatingActionButtonM7973n0.m8529o();
    }

    /* JADX INFO: renamed from: s0 */
    private void m7977s0(int i, boolean z) {
        if (!C0292v.m2069T(this)) {
            m7984u0(this.f6584c0);
            return;
        }
        Animator animator = this.f6578T;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!m7976r0()) {
            i = 0;
            z = false;
        }
        m7970k0(i, z, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f6578T = animatorSet;
        animatorSet.addListener(new C1039c());
        this.f6578T.start();
    }

    /* JADX INFO: renamed from: t0 */
    private void m7978t0(int i) {
        if (this.f6579U == i || !C0292v.m2069T(this)) {
            return;
        }
        Animator animator = this.f6577S;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f6580V == 1) {
            m7969j0(i, arrayList);
        } else {
            m7982i0(i, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f6577S = animatorSet;
        animatorSet.addListener(new C1037a());
        this.f6577S.start();
    }

    /* JADX INFO: renamed from: v0 */
    private void m7979v0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f6578T != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (m7976r0()) {
            m7981z0(actionMenuView, this.f6579U, this.f6586e0);
        } else {
            m7981z0(actionMenuView, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w0 */
    public void m7980w0() {
        getTopEdgeTreatment().m8010m(getFabTranslationX());
        View viewM7974o0 = m7974o0();
        this.f6576R.m9185X((this.f6586e0 && m7976r0()) ? 1.0f : CropImageView.DEFAULT_ASPECT_RATIO);
        if (viewM7974o0 != null) {
            viewM7974o0.setTranslationY(getFabTranslationY());
            viewM7974o0.setTranslationX(getFabTranslationX());
        }
    }

    /* JADX INFO: renamed from: z0 */
    private void m7981z0(ActionMenuView actionMenuView, int i, boolean z) {
        m7949A0(actionMenuView, i, z, false);
    }

    public ColorStateList getBackgroundTint() {
        return this.f6576R.m9173E();
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().m8000c();
    }

    public int getFabAlignmentMode() {
        return this.f6579U;
    }

    public int getFabAnimationMode() {
        return this.f6580V;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().m8002e();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().m8003f();
    }

    public boolean getHideOnScroll() {
        return this.f6581W;
    }

    /* JADX INFO: renamed from: i0 */
    protected void m7982i0(int i, List<Animator> list) {
        FloatingActionButton floatingActionButtonM7973n0 = m7973n0();
        if (floatingActionButtonM7973n0 == null || floatingActionButtonM7973n0.m8528n()) {
            return;
        }
        m7972m0();
        floatingActionButtonM7973n0.m8526l(new C1038b(i));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1209h.m9211f(this, this.f6576R);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            m7968h0();
            m7980w0();
        }
        m7979v0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C1044h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C1044h c1044h = (C1044h) parcelable;
        super.onRestoreInstanceState(c1044h.m4862j());
        this.f6579U = c1044h.f6613d;
        this.f6586e0 = c1044h.f6614e;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        C1044h c1044h = new C1044h(super.onSaveInstanceState());
        c1044h.f6613d = this.f6579U;
        c1044h.f6614e = this.f6586e0;
        return c1044h;
    }

    /* JADX INFO: renamed from: p0 */
    protected int m7983p0(ActionMenuView actionMenuView, int i, boolean z) {
        if (i != 1 || !z) {
            return 0;
        }
        boolean zM8734d = C1123l.m8734d(this);
        int measuredWidth = zM8734d ? getMeasuredWidth() : 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if ((childAt.getLayoutParams() instanceof Toolbar.C0148e) && (((Toolbar.C0148e) childAt.getLayoutParams()).f329a & 8388615) == 8388611) {
                measuredWidth = zM8734d ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zM8734d ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zM8734d ? this.f6589h0 : -this.f6590i0));
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        C0251a.m1794o(this.f6576R, colorStateList);
    }

    public void setCradleVerticalOffset(float f) {
        if (f != getCradleVerticalOffset()) {
            getTopEdgeTreatment().m8005h(f);
            this.f6576R.invalidateSelf();
            m7980w0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        this.f6576R.m9183V(f);
        getBehavior().m7934G(this, this.f6576R.m9171B() - this.f6576R.m9170A());
    }

    public void setFabAlignmentMode(int i) {
        m7985x0(i, 0);
    }

    public void setFabAnimationMode(int i) {
        this.f6580V = i;
    }

    void setFabCornerSize(float f) {
        if (f != getTopEdgeTreatment().m8001d()) {
            getTopEdgeTreatment().m8006i(f);
            this.f6576R.invalidateSelf();
        }
    }

    public void setFabCradleMargin(float f) {
        if (f != getFabCradleMargin()) {
            getTopEdgeTreatment().m8007j(f);
            this.f6576R.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f) {
        if (f != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().m8008k(f);
            this.f6576R.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z) {
        this.f6581W = z;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    /* JADX INFO: renamed from: u0 */
    public void m7984u0(int i) {
        if (i != 0) {
            this.f6584c0 = 0;
            getMenu().clear();
            m1005x(i);
        }
    }

    /* JADX INFO: renamed from: x0 */
    public void m7985x0(int i, int i2) {
        this.f6584c0 = i2;
        m7977s0(i, this.f6586e0);
        m7978t0(i);
        this.f6579U = i;
    }

    /* JADX INFO: renamed from: y0 */
    boolean m7986y0(int i) {
        float f = i;
        if (f == getTopEdgeTreatment().m8004g()) {
            return false;
        }
        getTopEdgeTreatment().m8009l(f);
        this.f6576R.invalidateSelf();
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.InterfaceC0220b
    public Behavior getBehavior() {
        if (this.f6587f0 == null) {
            this.f6587f0 = new Behavior();
        }
        return this.f6587f0;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* JADX INFO: renamed from: e */
        private final Rect f6593e;

        /* JADX INFO: renamed from: f */
        private WeakReference<BottomAppBar> f6594f;

        /* JADX INFO: renamed from: g */
        private int f6595g;

        /* JADX INFO: renamed from: h */
        private final View.OnLayoutChangeListener f6596h;

        /* JADX INFO: renamed from: com.google.android.material.bottomappbar.BottomAppBar$Behavior$a */
        class ViewOnLayoutChangeListenerC1036a implements View.OnLayoutChangeListener {
            ViewOnLayoutChangeListenerC1036a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f6594f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.m8525j(Behavior.this.f6593e);
                int iHeight = Behavior.this.f6593e.height();
                bottomAppBar.m7986y0(iHeight);
                bottomAppBar.setFabCornerSize(floatingActionButton.getShapeAppearanceModel().m9229r().mo9140a(new RectF(Behavior.this.f6593e)));
                CoordinatorLayout.C0224f c0224f = (CoordinatorLayout.C0224f) view.getLayoutParams();
                if (Behavior.this.f6595g == 0) {
                    ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(C1219d.mtrl_bottomappbar_fab_bottom_margin) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) c0224f).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) c0224f).rightMargin = bottomAppBar.getRightInset();
                    if (C1123l.m8734d(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) c0224f).leftMargin += bottomAppBar.f6575Q;
                    } else {
                        ((ViewGroup.MarginLayoutParams) c0224f).rightMargin += bottomAppBar.f6575Q;
                    }
                }
            }
        }

        public Behavior() {
            this.f6596h = new ViewOnLayoutChangeListenerC1036a();
            this.f6593e = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
        public boolean mo1584l(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            this.f6594f = new WeakReference<>(bottomAppBar);
            View viewM7974o0 = bottomAppBar.m7974o0();
            if (viewM7974o0 != null && !C0292v.m2069T(viewM7974o0)) {
                CoordinatorLayout.C0224f c0224f = (CoordinatorLayout.C0224f) viewM7974o0.getLayoutParams();
                c0224f.f1687d = 49;
                this.f6595g = ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin;
                if (viewM7974o0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewM7974o0;
                    floatingActionButton.addOnLayoutChangeListener(this.f6596h);
                    bottomAppBar.m7967g0(floatingActionButton);
                }
                bottomAppBar.m7980w0();
            }
            coordinatorLayout.m1551I(bottomAppBar, i);
            return super.mo1584l(coordinatorLayout, bottomAppBar, i);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public boolean mo1569A(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i, int i2) {
            return bottomAppBar.getHideOnScroll() && super.mo1569A(coordinatorLayout, bottomAppBar, view, view2, i, i2);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f6596h = new ViewOnLayoutChangeListenerC1036a();
            this.f6593e = new Rect();
        }
    }
}
