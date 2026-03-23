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
import androidx.core.view.C0292v;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.internal.C1113b;
import java.util.Iterator;
import java.util.List;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p104l.C1234h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.InterfaceC0220b {

    /* JADX INFO: renamed from: A */
    private boolean f6976A;

    /* JADX INFO: renamed from: B */
    private boolean f6977B;

    /* JADX INFO: renamed from: C */
    private boolean f6978C;

    /* JADX INFO: renamed from: t */
    private int f6979t;

    /* JADX INFO: renamed from: u */
    private final InterfaceC1108d f6980u;

    /* JADX INFO: renamed from: v */
    private final InterfaceC1108d f6981v;

    /* JADX INFO: renamed from: w */
    private final InterfaceC1108d f6982w;

    /* JADX INFO: renamed from: x */
    private final InterfaceC1108d f6983x;

    /* JADX INFO: renamed from: y */
    private final int f6984y;

    /* JADX INFO: renamed from: z */
    private final CoordinatorLayout.AbstractC0221c<ExtendedFloatingActionButton> f6985z;

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$a */
    class C1095a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a */
        private boolean f6991a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ InterfaceC1108d f6992b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ AbstractC1100f f6993c;

        C1095a(ExtendedFloatingActionButton extendedFloatingActionButton, InterfaceC1108d interfaceC1108d, AbstractC1100f abstractC1100f) {
            this.f6992b = interfaceC1108d;
            this.f6993c = abstractC1100f;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f6991a = true;
            this.f6992b.m8612d();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f6992b.m8611c();
            if (this.f6991a) {
                return;
            }
            this.f6992b.m8614f(this.f6993c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f6992b.onAnimationStart(animator);
            this.f6991a = false;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$b */
    static class C1096b extends Property<View, Float> {
        C1096b(Class cls, String str) {
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

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$c */
    static class C1097c extends Property<View, Float> {
        C1097c(Class cls, String str) {
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

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$d */
    static class C1098d extends Property<View, Float> {
        C1098d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(C0292v.m2058I(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            C0292v.m2043A0(view, f.intValue(), view.getPaddingTop(), C0292v.m2056H(view), view.getPaddingBottom());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$e */
    static class C1099e extends Property<View, Float> {
        C1099e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(C0292v.m2056H(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f) {
            C0292v.m2043A0(view, C0292v.m2058I(view), view.getPaddingTop(), f.intValue(), view.getPaddingBottom());
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton$f */
    public static abstract class AbstractC1100f {
    }

    static {
        new C1096b(Float.class, "width");
        new C1097c(Float.class, "height");
        new C1098d(Float.class, "paddingStart");
        new C1099e(Float.class, "paddingEnd");
    }

    /* JADX INFO: renamed from: q */
    private boolean m8491q() {
        return getVisibility() != 0 ? this.f6979t == 2 : this.f6979t != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: r */
    public void m8492r(InterfaceC1108d interfaceC1108d, AbstractC1100f abstractC1100f) {
        if (interfaceC1108d.m8615g()) {
            return;
        }
        if (!m8494t()) {
            interfaceC1108d.m8617i();
            interfaceC1108d.m8614f(abstractC1100f);
            return;
        }
        measure(0, 0);
        AnimatorSet animatorSetM8610b = interfaceC1108d.m8610b();
        animatorSetM8610b.addListener(new C1095a(this, interfaceC1108d, abstractC1100f));
        Iterator<Animator.AnimatorListener> it = interfaceC1108d.m8613e().iterator();
        while (it.hasNext()) {
            animatorSetM8610b.addListener(it.next());
        }
        animatorSetM8610b.start();
    }

    /* JADX INFO: renamed from: s */
    private void m8493s() {
        getTextColors();
    }

    /* JADX INFO: renamed from: t */
    private boolean m8494t() {
        return (C0292v.m2069T(this) || (!m8491q() && this.f6978C)) && !isInEditMode();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.InterfaceC0220b
    public CoordinatorLayout.AbstractC0221c<ExtendedFloatingActionButton> getBehavior() {
        return this.f6985z;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    int getCollapsedSize() {
        int i = this.f6984y;
        return i < 0 ? (Math.min(C0292v.m2058I(this), C0292v.m2056H(this)) * 2) + getIconSize() : i;
    }

    public C1234h getExtendMotionSpec() {
        return this.f6981v.m8609a();
    }

    public C1234h getHideMotionSpec() {
        return this.f6983x.m8609a();
    }

    public C1234h getShowMotionSpec() {
        return this.f6982w.m8609a();
    }

    public C1234h getShrinkMotionSpec() {
        return this.f6980u.m8609a();
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f6976A && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.f6976A = false;
            this.f6980u.m8617i();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z) {
        this.f6978C = z;
    }

    public void setExtendMotionSpec(C1234h c1234h) {
        this.f6981v.m8616h(c1234h);
    }

    public void setExtendMotionSpecResource(int i) {
        setExtendMotionSpec(C1234h.m9348c(getContext(), i));
    }

    public void setExtended(boolean z) {
        if (this.f6976A == z) {
            return;
        }
        InterfaceC1108d interfaceC1108d = z ? this.f6981v : this.f6980u;
        if (interfaceC1108d.m8615g()) {
            return;
        }
        interfaceC1108d.m8617i();
    }

    public void setHideMotionSpec(C1234h c1234h) {
        this.f6983x.m8616h(c1234h);
    }

    public void setHideMotionSpecResource(int i) {
        setHideMotionSpec(C1234h.m9348c(getContext(), i));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        if (!this.f6976A || this.f6977B) {
            return;
        }
        C0292v.m2058I(this);
        C0292v.m2056H(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        if (this.f6976A) {
            boolean z = this.f6977B;
        }
    }

    public void setShowMotionSpec(C1234h c1234h) {
        this.f6982w.m8616h(c1234h);
    }

    public void setShowMotionSpecResource(int i) {
        setShowMotionSpec(C1234h.m9348c(getContext(), i));
    }

    public void setShrinkMotionSpec(C1234h c1234h) {
        this.f6980u.m8616h(c1234h);
    }

    public void setShrinkMotionSpecResource(int i) {
        setShrinkMotionSpec(C1234h.m9348c(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(i);
        m8493s();
    }

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.AbstractC0221c<T> {

        /* JADX INFO: renamed from: a */
        private Rect f6986a;

        /* JADX INFO: renamed from: b */
        private AbstractC1100f f6987b;

        /* JADX INFO: renamed from: c */
        private AbstractC1100f f6988c;

        /* JADX INFO: renamed from: d */
        private boolean f6989d;

        /* JADX INFO: renamed from: e */
        private boolean f6990e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f6989d = false;
            this.f6990e = true;
        }

        /* JADX INFO: renamed from: G */
        private static boolean m8495G(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.C0224f) {
                return ((CoordinatorLayout.C0224f) layoutParams).m1607f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        /* JADX INFO: renamed from: J */
        private boolean m8496J(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f6989d || this.f6990e) && ((CoordinatorLayout.C0224f) extendedFloatingActionButton.getLayoutParams()).m1606e() == view.getId();
        }

        /* JADX INFO: renamed from: L */
        private boolean m8497L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m8496J(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f6986a == null) {
                this.f6986a = new Rect();
            }
            Rect rect = this.f6986a;
            C1113b.m8687a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                m8503K(extendedFloatingActionButton);
                return true;
            }
            m8499E(extendedFloatingActionButton);
            return true;
        }

        /* JADX INFO: renamed from: M */
        private boolean m8498M(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!m8496J(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.C0224f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                m8503K(extendedFloatingActionButton);
                return true;
            }
            m8499E(extendedFloatingActionButton);
            return true;
        }

        /* JADX INFO: renamed from: E */
        protected void m8499E(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.m8492r(this.f6990e ? extendedFloatingActionButton.f6981v : extendedFloatingActionButton.f6982w, this.f6990e ? this.f6988c : this.f6987b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public boolean mo1574b(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.mo1574b(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public boolean mo1580h(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                m8497L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!m8495G(view)) {
                return false;
            }
            m8498M(view, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public boolean mo1584l(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i) {
            List<View> listM1563r = coordinatorLayout.m1563r(extendedFloatingActionButton);
            int size = listM1563r.size();
            for (int i2 = 0; i2 < size; i2++) {
                View view = listM1563r.get(i2);
                if (!(view instanceof AppBarLayout)) {
                    if (m8495G(view) && m8498M(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (m8497L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.m1551I(extendedFloatingActionButton, i);
            return true;
        }

        /* JADX INFO: renamed from: K */
        protected void m8503K(ExtendedFloatingActionButton extendedFloatingActionButton) {
            extendedFloatingActionButton.m8492r(this.f6990e ? extendedFloatingActionButton.f6980u : extendedFloatingActionButton.f6983x, this.f6990e ? this.f6988c : this.f6987b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.AbstractC0221c
        /* JADX INFO: renamed from: g */
        public void mo1579g(CoordinatorLayout.C0224f c0224f) {
            if (c0224f.f1691h == 0) {
                c0224f.f1691h = 80;
            }
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.ExtendedFloatingActionButton_Behavior_Layout);
            this.f6989d = typedArrayObtainStyledAttributes.getBoolean(C1226k.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoHide, false);
            this.f6990e = typedArrayObtainStyledAttributes.getBoolean(C1226k.ExtendedFloatingActionButton_Behavior_Layout_behavior_autoShrink, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        m8493s();
    }
}
