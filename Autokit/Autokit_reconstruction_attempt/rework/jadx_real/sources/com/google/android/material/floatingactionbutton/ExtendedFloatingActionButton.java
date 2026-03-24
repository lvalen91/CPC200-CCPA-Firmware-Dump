package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import d.c.a.a.k;
import d.c.a.a.l.h;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    private boolean A;
    private boolean B;
    private boolean C;
    private int t;
    private final com.google.android.material.floatingactionbutton.d u;
    private final com.google.android.material.floatingactionbutton.d v;
    private final com.google.android.material.floatingactionbutton.d w;
    private final com.google.android.material.floatingactionbutton.d x;
    private final int y;
    private final CoordinatorLayout.c<ExtendedFloatingActionButton> z;

    class a extends AnimatorListenerAdapter {
        private boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.floatingactionbutton.d f2124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f2125c;

        a(ExtendedFloatingActionButton extendedFloatingActionButton, com.google.android.material.floatingactionbutton.d dVar, f fVar) {
            this.f2124b = dVar;
            this.f2125c = fVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.a = true;
            this.f2124b.d();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f2124b.c();
            if (this.a) {
                return;
            }
            this.f2124b.f(this.f2125c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f2124b.onAnimationStart(animator);
            this.a = false;
        }
    }

    static class b extends Property<View, Float> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            view.getLayoutParams().width = f.intValue();
            view.requestLayout();
        }
    }

    static class c extends Property<View, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            view.getLayoutParams().height = f.intValue();
            view.requestLayout();
        }
    }

    static class d extends Property<View, Float> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(v.I(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            v.A0(view, f.intValue(), view.getPaddingTop(), v.H(view), view.getPaddingBottom());
        }
    }

    static class e extends Property<View, Float> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(v.H(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            v.A0(view, v.I(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }
    }

    public static abstract class f {
    }

    static {
        new b(Float.class, "width");
        new c(Float.class, "height");
        new d(Float.class, "paddingStart");
        new e(Float.class, "paddingEnd");
    }

    private boolean q() {
        return getVisibility() != 0 ? this.t == 2 : this.t != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(com.google.android.material.floatingactionbutton.d dVar, f fVar) {
        if (dVar.g()) {
            return;
        }
        if (!t()) {
            dVar.i();
            dVar.f(fVar);
            return;
        }
        measure(0, 0);
        AnimatorSet animatorSetB = dVar.b();
        animatorSetB.addListener(new a(this, dVar, fVar));
        Iterator<Animator.AnimatorListener> it = dVar.e().iterator();
        while (it.hasNext()) {
            animatorSetB.addListener(it.next());
        }
        animatorSetB.start();
    }

    private void s() {
        getTextColors();
    }

    private boolean t() {
        return (v.T(this) || (!q() && this.C)) && !isInEditMode();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<ExtendedFloatingActionButton> getBehavior() {
        return this.z;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    int getCollapsedSize() {
        int i = this.y;
        return i < 0 ? (Math.min(v.I(this), v.H(this)) * 2) + getIconSize() : i;
    }

    public h getExtendMotionSpec() {
        return this.v.a();
    }

    public h getHideMotionSpec() {
        return this.x.a();
    }

    public h getShowMotionSpec() {
        return this.w.a();
    }

    public h getShrinkMotionSpec() {
        return this.u.a();
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.A && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.A = false;
            this.u.i();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.C = z;
    }

    public void setExtendMotionSpec(h hVar) {
        this.v.h(hVar);
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(h.c(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.A == z) {
            return;
        }
        com.google.android.material.floatingactionbutton.d dVar = z ? this.v : this.u;
        if (dVar.g()) {
            return;
        }
        dVar.i();
    }

    public void setHideMotionSpec(h hVar) {
        this.x.h(hVar);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(h.c(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.A || this.B) {
            return;
        }
        v.I(this);
        v.H(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (this.A) {
            boolean z = this.B;
        }
    }

    public void setShowMotionSpec(h hVar) {
        this.w.h(hVar);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(h.c(getContext(), i));
    }

    public void setShrinkMotionSpec(h hVar) {
        this.u.h(hVar);
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(h.c(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        s();
    }

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.c<T> {
        private Rect a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private f f2121b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private f f2122c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f2123d;
        private boolean e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f2123d = false;
            this.e = true;
        }

        private static boolean G(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean J(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f2123d || this.e) && ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).e() == view.getId();
        }

        private boolean L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            com.google.android.material.internal.b.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        private boolean M(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        protected void E(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.r(this.e ? extendedFloatingActionButton.v : extendedFloatingActionButton.w, this.e ? this.f2122c : this.f2121b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.b(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public boolean h(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!G(view)) {
                return false;
            }
            M(view, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> listR = coordinatorLayout.r(extendedFloatingActionButton);
            int size = listR.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = listR.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (G(view) && M(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.I(extendedFloatingActionButton, i);
            return true;
        }

        protected void K(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.r(this.e ? extendedFloatingActionButton.u : extendedFloatingActionButton.x, this.e ? this.f2122c : this.f2121b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void g(CoordinatorLayout.f fVar) {
            if (fVar.h == 0) {
                fVar.h = 80;
            }
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.ExtendedFloatingActionButton_Behavior_Layout);
            this.f2123d = typedArrayObtainStyledAttributes.getBoolean(k.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.e = typedArrayObtainStyledAttributes.getBoolean(k.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        s();
    }
}
