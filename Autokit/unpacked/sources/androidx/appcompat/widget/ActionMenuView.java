package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.C0101g;
import androidx.appcompat.view.menu.C0103i;
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.appcompat.view.menu.InterfaceC0108n;
import androidx.appcompat.widget.C0167g0;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActionMenuView extends C0167g0 implements C0101g.b, InterfaceC0108n {

    /* JADX INFO: renamed from: A */
    private int f809A;

    /* JADX INFO: renamed from: B */
    InterfaceC0124e f810B;

    /* JADX INFO: renamed from: q */
    private C0101g f811q;

    /* JADX INFO: renamed from: r */
    private Context f812r;

    /* JADX INFO: renamed from: s */
    private int f813s;

    /* JADX INFO: renamed from: t */
    private boolean f814t;

    /* JADX INFO: renamed from: u */
    private C0158c f815u;

    /* JADX INFO: renamed from: v */
    private InterfaceC0107m.a f816v;

    /* JADX INFO: renamed from: w */
    C0101g.a f817w;

    /* JADX INFO: renamed from: x */
    private boolean f818x;

    /* JADX INFO: renamed from: y */
    private int f819y;

    /* JADX INFO: renamed from: z */
    private int f820z;

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionMenuView$a */
    public interface InterfaceC0120a {
        /* JADX INFO: renamed from: b */
        boolean mo644b();

        /* JADX INFO: renamed from: d */
        boolean mo645d();
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionMenuView$b */
    private static class C0121b implements InterfaceC0107m.a {
        C0121b() {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: a */
        public void mo532a(C0101g c0101g, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.InterfaceC0107m.a
        /* JADX INFO: renamed from: b */
        public boolean mo533b(C0101g c0101g) {
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionMenuView$c */
    public static class C0122c extends C0167g0.a {

        /* JADX INFO: renamed from: a */
        @ViewDebug.ExportedProperty
        public boolean f821a;

        /* JADX INFO: renamed from: b */
        @ViewDebug.ExportedProperty
        public int f822b;

        /* JADX INFO: renamed from: c */
        @ViewDebug.ExportedProperty
        public int f823c;

        /* JADX INFO: renamed from: d */
        @ViewDebug.ExportedProperty
        public boolean f824d;

        /* JADX INFO: renamed from: e */
        @ViewDebug.ExportedProperty
        public boolean f825e;

        /* JADX INFO: renamed from: f */
        boolean f826f;

        public C0122c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0122c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public C0122c(C0122c c0122c) {
            super(c0122c);
            this.f821a = c0122c.f821a;
        }

        public C0122c(int i, int i2) {
            super(i, i2);
            this.f821a = false;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionMenuView$d */
    private class C0123d implements C0101g.a {
        C0123d() {
        }

        @Override // androidx.appcompat.view.menu.C0101g.a
        /* JADX INFO: renamed from: a */
        public boolean mo511a(C0101g c0101g, MenuItem menuItem) {
            InterfaceC0124e interfaceC0124e = ActionMenuView.this.f810B;
            return interfaceC0124e != null && interfaceC0124e.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.C0101g.a
        /* JADX INFO: renamed from: b */
        public void mo513b(C0101g c0101g) {
            C0101g.a aVar = ActionMenuView.this.f817w;
            if (aVar != null) {
                aVar.mo513b(c0101g);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionMenuView$e */
    public interface InterfaceC0124e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    /* JADX INFO: renamed from: L */
    static int m871L(View view, int i, int i2, int i3, int i4) {
        C0122c c0122c = (C0122c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.m648h();
        int i5 = 2;
        if (i2 <= 0 || (z && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z || i6 >= 2) {
                i5 = i6;
            }
        }
        c0122c.f824d = !c0122c.f821a && z;
        c0122c.f822b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), iMakeMeasureSpec);
        return i5;
    }

    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [boolean, int] */
    /* JADX INFO: renamed from: M */
    private void m872M(int i, int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        boolean z2;
        boolean z3;
        int i6;
        ?? r14;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
        int i7 = size - paddingLeft;
        int i8 = this.f820z;
        int i9 = i7 / i8;
        int i10 = i7 % i8;
        if (i9 == 0) {
            setMeasuredDimension(i7, 0);
            return;
        }
        int i11 = i8 + (i10 / i9);
        int childCount = getChildCount();
        int iMax = 0;
        int i12 = 0;
        boolean z4 = false;
        int i13 = 0;
        int iMax2 = 0;
        int i14 = 0;
        long j = 0;
        while (i12 < childCount) {
            View childAt = getChildAt(i12);
            int i15 = size2;
            if (childAt.getVisibility() != 8) {
                boolean z5 = childAt instanceof ActionMenuItemView;
                int i16 = i13 + 1;
                if (z5) {
                    int i17 = this.f809A;
                    i6 = i16;
                    r14 = 0;
                    childAt.setPadding(i17, 0, i17, 0);
                } else {
                    i6 = i16;
                    r14 = 0;
                }
                C0122c c0122c = (C0122c) childAt.getLayoutParams();
                c0122c.f826f = r14;
                c0122c.f823c = r14;
                c0122c.f822b = r14;
                c0122c.f824d = r14;
                ((LinearLayout.LayoutParams) c0122c).leftMargin = r14;
                ((LinearLayout.LayoutParams) c0122c).rightMargin = r14;
                c0122c.f825e = z5 && ((ActionMenuItemView) childAt).m648h();
                int iM871L = m871L(childAt, i11, c0122c.f821a ? 1 : i9, childMeasureSpec, paddingTop);
                iMax2 = Math.max(iMax2, iM871L);
                if (c0122c.f824d) {
                    i14++;
                }
                if (c0122c.f821a) {
                    z4 = true;
                }
                i9 -= iM871L;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iM871L == 1) {
                    j |= (long) (1 << i12);
                    iMax = iMax;
                }
                i13 = i6;
            }
            i12++;
            size2 = i15;
        }
        int i18 = size2;
        boolean z6 = z4 && i13 == 2;
        boolean z7 = false;
        while (i14 > 0 && i9 > 0) {
            int i19 = 0;
            int i20 = 0;
            int i21 = Integer.MAX_VALUE;
            long j2 = 0;
            while (i20 < childCount) {
                boolean z8 = z7;
                C0122c c0122c2 = (C0122c) getChildAt(i20).getLayoutParams();
                int i22 = iMax;
                if (c0122c2.f824d) {
                    int i23 = c0122c2.f822b;
                    if (i23 < i21) {
                        j2 = 1 << i20;
                        i21 = i23;
                        i19 = 1;
                    } else if (i23 == i21) {
                        i19++;
                        j2 |= 1 << i20;
                    }
                }
                i20++;
                iMax = i22;
                z7 = z8;
            }
            z = z7;
            i5 = iMax;
            j |= j2;
            if (i19 > i9) {
                i3 = mode;
                i4 = i7;
                break;
            }
            int i24 = i21 + 1;
            int i25 = 0;
            while (i25 < childCount) {
                View childAt2 = getChildAt(i25);
                C0122c c0122c3 = (C0122c) childAt2.getLayoutParams();
                int i26 = i7;
                int i27 = mode;
                long j3 = 1 << i25;
                if ((j2 & j3) == 0) {
                    if (c0122c3.f822b == i24) {
                        j |= j3;
                    }
                    z3 = z6;
                } else {
                    if (z6 && c0122c3.f825e && i9 == 1) {
                        int i28 = this.f809A;
                        z3 = z6;
                        childAt2.setPadding(i28 + i11, 0, i28, 0);
                    } else {
                        z3 = z6;
                    }
                    c0122c3.f822b++;
                    c0122c3.f826f = true;
                    i9--;
                }
                i25++;
                mode = i27;
                i7 = i26;
                z6 = z3;
            }
            iMax = i5;
            z7 = true;
        }
        i3 = mode;
        i4 = i7;
        z = z7;
        i5 = iMax;
        boolean z9 = !z4 && i13 == 1;
        if (i9 <= 0 || j == 0 || (i9 >= i13 - 1 && !z9 && iMax2 <= 1)) {
            z2 = z;
        } else {
            float fBitCount = Long.bitCount(j);
            if (!z9) {
                if ((j & 1) != 0 && !((C0122c) getChildAt(0).getLayoutParams()).f825e) {
                    fBitCount -= 0.5f;
                }
                int i29 = childCount - 1;
                if ((j & ((long) (1 << i29))) != 0 && !((C0122c) getChildAt(i29).getLayoutParams()).f825e) {
                    fBitCount -= 0.5f;
                }
            }
            int i30 = fBitCount > CropImageView.DEFAULT_ASPECT_RATIO ? (int) ((i9 * i11) / fBitCount) : 0;
            z2 = z;
            for (int i31 = 0; i31 < childCount; i31++) {
                if ((j & ((long) (1 << i31))) != 0) {
                    View childAt3 = getChildAt(i31);
                    C0122c c0122c4 = (C0122c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        c0122c4.f823c = i30;
                        c0122c4.f826f = true;
                        if (i31 == 0 && !c0122c4.f825e) {
                            ((LinearLayout.LayoutParams) c0122c4).leftMargin = (-i30) / 2;
                        }
                    } else if (c0122c4.f821a) {
                        c0122c4.f823c = i30;
                        c0122c4.f826f = true;
                        ((LinearLayout.LayoutParams) c0122c4).rightMargin = (-i30) / 2;
                    } else {
                        if (i31 != 0) {
                            ((LinearLayout.LayoutParams) c0122c4).leftMargin = i30 / 2;
                        }
                        if (i31 != childCount - 1) {
                            ((LinearLayout.LayoutParams) c0122c4).rightMargin = i30 / 2;
                        }
                    }
                    z2 = true;
                }
            }
        }
        if (z2) {
            for (int i32 = 0; i32 < childCount; i32++) {
                View childAt4 = getChildAt(i32);
                C0122c c0122c5 = (C0122c) childAt4.getLayoutParams();
                if (c0122c5.f826f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((c0122c5.f822b * i11) + c0122c5.f823c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i4, i3 != 1073741824 ? i5 : i18);
    }

    /* JADX INFO: renamed from: B */
    public void m873B() {
        C0158c c0158c = this.f815u;
        if (c0158c != null) {
            c0158c.m1068y();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.C0167g0
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public C0122c generateDefaultLayoutParams() {
        C0122c c0122c = new C0122c(-2, -2);
        ((LinearLayout.LayoutParams) c0122c).gravity = 16;
        return c0122c;
    }

    @Override // androidx.appcompat.widget.C0167g0
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public C0122c generateLayoutParams(AttributeSet attributeSet) {
        return new C0122c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.C0167g0
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public C0122c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        C0122c c0122c = layoutParams instanceof C0122c ? new C0122c((C0122c) layoutParams) : new C0122c(layoutParams);
        if (((LinearLayout.LayoutParams) c0122c).gravity <= 0) {
            ((LinearLayout.LayoutParams) c0122c).gravity = 16;
        }
        return c0122c;
    }

    /* JADX INFO: renamed from: F */
    public C0122c m877F() {
        C0122c c0122cGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        c0122cGenerateDefaultLayoutParams.f821a = true;
        return c0122cGenerateDefaultLayoutParams;
    }

    /* JADX INFO: renamed from: G */
    protected boolean m878G(int i) {
        boolean zMo644b = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof InterfaceC0120a)) {
            zMo644b = false | ((InterfaceC0120a) childAt).mo644b();
        }
        return (i <= 0 || !(childAt2 instanceof InterfaceC0120a)) ? zMo644b : zMo644b | ((InterfaceC0120a) childAt2).mo645d();
    }

    /* JADX INFO: renamed from: H */
    public boolean m879H() {
        C0158c c0158c = this.f815u;
        return c0158c != null && c0158c.m1058B();
    }

    /* JADX INFO: renamed from: I */
    public boolean m880I() {
        C0158c c0158c = this.f815u;
        return c0158c != null && c0158c.m1060D();
    }

    /* JADX INFO: renamed from: J */
    public boolean m881J() {
        C0158c c0158c = this.f815u;
        return c0158c != null && c0158c.m1061E();
    }

    /* JADX INFO: renamed from: K */
    public boolean m882K() {
        return this.f814t;
    }

    /* JADX INFO: renamed from: N */
    public C0101g m883N() {
        return this.f811q;
    }

    /* JADX INFO: renamed from: O */
    public void m884O(InterfaceC0107m.a aVar, C0101g.a aVar2) {
        this.f816v = aVar;
        this.f817w = aVar2;
    }

    /* JADX INFO: renamed from: P */
    public boolean m885P() {
        C0158c c0158c = this.f815u;
        return c0158c != null && c0158c.m1067K();
    }

    @Override // androidx.appcompat.view.menu.C0101g.b
    /* JADX INFO: renamed from: a */
    public boolean mo652a(C0103i c0103i) {
        return this.f811q.m736L(c0103i, 0);
    }

    @Override // androidx.appcompat.view.menu.InterfaceC0108n
    /* JADX INFO: renamed from: b */
    public void mo653b(C0101g c0101g) {
        this.f811q = c0101g;
    }

    @Override // androidx.appcompat.widget.C0167g0, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0122c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.f811q == null) {
            Context context = getContext();
            C0101g c0101g = new C0101g(context);
            this.f811q = c0101g;
            c0101g.mo741R(new C0123d());
            C0158c c0158c = new C0158c(context);
            this.f815u = c0158c;
            c0158c.m1066J(true);
            C0158c c0158c2 = this.f815u;
            InterfaceC0107m.a c0121b = this.f816v;
            if (c0121b == null) {
                c0121b = new C0121b();
            }
            c0158c2.mo672h(c0121b);
            this.f811q.m752c(this.f815u, this.f812r);
            this.f815u.m1064H(this);
        }
        return this.f811q;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.f815u.m1057A();
    }

    public int getPopupTheme() {
        return this.f813s;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0158c c0158c = this.f815u;
        if (c0158c != null) {
            c0158c.mo674j(false);
            if (this.f815u.m1061E()) {
                this.f815u.m1058B();
                this.f815u.m1067K();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m873B();
    }

    @Override // androidx.appcompat.widget.C0167g0, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int paddingLeft;
        if (!this.f818x) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i5 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i6 = i3 - i;
        int paddingRight = (i6 - getPaddingRight()) - getPaddingLeft();
        boolean zM1022b = C0154a1.m1022b(this);
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                C0122c c0122c = (C0122c) childAt.getLayoutParams();
                if (c0122c.f821a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (m878G(i9)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zM1022b) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) c0122c).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0122c).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i10 = i5 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i10, width, measuredHeight + i10);
                    paddingRight -= measuredWidth;
                    i7 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0122c).leftMargin) + ((LinearLayout.LayoutParams) c0122c).rightMargin;
                    m878G(i9);
                    i8++;
                }
            }
        }
        if (childCount == 1 && i7 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i11 = (i6 / 2) - (measuredWidth2 / 2);
            int i12 = i5 - (measuredHeight2 / 2);
            childAt2.layout(i11, i12, measuredWidth2 + i11, measuredHeight2 + i12);
            return;
        }
        int i13 = i8 - (i7 ^ 1);
        int iMax = Math.max(0, i13 > 0 ? paddingRight / i13 : 0);
        if (zM1022b) {
            int width2 = getWidth() - getPaddingRight();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt3 = getChildAt(i14);
                C0122c c0122c2 = (C0122c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0122c2.f821a) {
                    int i15 = width2 - ((LinearLayout.LayoutParams) c0122c2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i16 = i5 - (measuredHeight3 / 2);
                    childAt3.layout(i15 - measuredWidth3, i16, i15, measuredHeight3 + i16);
                    width2 = i15 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0122c2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt4 = getChildAt(i17);
            C0122c c0122c3 = (C0122c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0122c3.f821a) {
                int i18 = paddingLeft2 + ((LinearLayout.LayoutParams) c0122c3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i19 = i5 - (measuredHeight4 / 2);
                childAt4.layout(i18, i19, i18 + measuredWidth4, measuredHeight4 + i19);
                paddingLeft2 = i18 + measuredWidth4 + ((LinearLayout.LayoutParams) c0122c3).rightMargin + iMax;
            }
        }
    }

    @Override // androidx.appcompat.widget.C0167g0, android.view.View
    protected void onMeasure(int i, int i2) {
        C0101g c0101g;
        boolean z = this.f818x;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.f818x = z2;
        if (z != z2) {
            this.f819y = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.f818x && (c0101g = this.f811q) != null && size != this.f819y) {
            this.f819y = size;
            c0101g.m735K(true);
        }
        int childCount = getChildCount();
        if (this.f818x && childCount > 0) {
            m872M(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            C0122c c0122c = (C0122c) getChildAt(i3).getLayoutParams();
            ((LinearLayout.LayoutParams) c0122c).rightMargin = 0;
            ((LinearLayout.LayoutParams) c0122c).leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.f815u.m1063G(z);
    }

    public void setOnMenuItemClickListener(InterfaceC0124e interfaceC0124e) {
        this.f810B = interfaceC0124e;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.f815u.m1065I(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.f814t = z;
    }

    public void setPopupTheme(int i) {
        if (this.f813s != i) {
            this.f813s = i;
            if (i == 0) {
                this.f812r = getContext();
            } else {
                this.f812r = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(C0158c c0158c) {
        this.f815u = c0158c;
        c0158c.m1064H(this);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f820z = (int) (56.0f * f);
        this.f809A = (int) (f * 4.0f);
        this.f812r = context;
        this.f813s = 0;
    }
}
