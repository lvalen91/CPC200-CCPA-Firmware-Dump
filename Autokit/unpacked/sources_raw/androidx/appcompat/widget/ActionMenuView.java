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
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.g0;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ActionMenuView extends g0 implements g.b, androidx.appcompat.view.menu.n {
    private int A;
    e B;
    private androidx.appcompat.view.menu.g q;
    private Context r;
    private int s;
    private boolean t;
    private androidx.appcompat.widget.c u;
    private m.a v;
    g.a w;
    private boolean x;
    private int y;
    private int z;

    public interface a {
        boolean b();

        boolean d();
    }

    private static class b implements m.a {
        b() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean b(androidx.appcompat.view.menu.g gVar) {
            return false;
        }
    }

    public static class c extends g0.a {

        @ViewDebug.ExportedProperty
        public boolean a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f243b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public int f244c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @ViewDebug.ExportedProperty
        public boolean f245d;

        @ViewDebug.ExportedProperty
        public boolean e;
        boolean f;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(c cVar) {
            super(cVar);
            this.a = cVar.a;
        }

        public c(int i, int i2) {
            super(i, i2);
            this.a = false;
        }
    }

    private class d implements g.a {
        d() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            e eVar = ActionMenuView.this.B;
            return eVar != null && eVar.onMenuItemClick(menuItem);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            g.a aVar = ActionMenuView.this.w;
            if (aVar != null) {
                aVar.b(gVar);
            }
        }
    }

    public interface e {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public ActionMenuView(Context context) {
        this(context, null);
    }

    static int L(View view, int i, int i2, int i3, int i4) {
        c cVar = (c) view.getLayoutParams();
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(i3) - i4, View.MeasureSpec.getMode(i3));
        ActionMenuItemView actionMenuItemView = view instanceof ActionMenuItemView ? (ActionMenuItemView) view : null;
        boolean z = actionMenuItemView != null && actionMenuItemView.h();
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
        cVar.f245d = !cVar.a && z;
        cVar.f243b = i5;
        view.measure(View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), iMakeMeasureSpec);
        return i5;
    }

    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9, types: [boolean, int] */
    private void M(int i, int i2) {
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
        int i8 = this.z;
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
                    int i17 = this.A;
                    i6 = i16;
                    r14 = 0;
                    childAt.setPadding(i17, 0, i17, 0);
                } else {
                    i6 = i16;
                    r14 = 0;
                }
                c cVar = (c) childAt.getLayoutParams();
                cVar.f = r14;
                cVar.f244c = r14;
                cVar.f243b = r14;
                cVar.f245d = r14;
                ((LinearLayout.LayoutParams) cVar).leftMargin = r14;
                ((LinearLayout.LayoutParams) cVar).rightMargin = r14;
                cVar.e = z5 && ((ActionMenuItemView) childAt).h();
                int iL = L(childAt, i11, cVar.a ? 1 : i9, childMeasureSpec, paddingTop);
                iMax2 = Math.max(iMax2, iL);
                if (cVar.f245d) {
                    i14++;
                }
                if (cVar.a) {
                    z4 = true;
                }
                i9 -= iL;
                iMax = Math.max(iMax, childAt.getMeasuredHeight());
                if (iL == 1) {
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
                c cVar2 = (c) getChildAt(i20).getLayoutParams();
                int i22 = iMax;
                if (cVar2.f245d) {
                    int i23 = cVar2.f243b;
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
                c cVar3 = (c) childAt2.getLayoutParams();
                int i26 = i7;
                int i27 = mode;
                long j3 = 1 << i25;
                if ((j2 & j3) == 0) {
                    if (cVar3.f243b == i24) {
                        j |= j3;
                    }
                    z3 = z6;
                } else {
                    if (z6 && cVar3.e && i9 == 1) {
                        int i28 = this.A;
                        z3 = z6;
                        childAt2.setPadding(i28 + i11, 0, i28, 0);
                    } else {
                        z3 = z6;
                    }
                    cVar3.f243b++;
                    cVar3.f = true;
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
                if ((j & 1) != 0 && !((c) getChildAt(0).getLayoutParams()).e) {
                    fBitCount -= 0.5f;
                }
                int i29 = childCount - 1;
                if ((j & ((long) (1 << i29))) != 0 && !((c) getChildAt(i29).getLayoutParams()).e) {
                    fBitCount -= 0.5f;
                }
            }
            int i30 = fBitCount > CropImageView.DEFAULT_ASPECT_RATIO ? (int) ((i9 * i11) / fBitCount) : 0;
            z2 = z;
            for (int i31 = 0; i31 < childCount; i31++) {
                if ((j & ((long) (1 << i31))) != 0) {
                    View childAt3 = getChildAt(i31);
                    c cVar4 = (c) childAt3.getLayoutParams();
                    if (childAt3 instanceof ActionMenuItemView) {
                        cVar4.f244c = i30;
                        cVar4.f = true;
                        if (i31 == 0 && !cVar4.e) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = (-i30) / 2;
                        }
                    } else if (cVar4.a) {
                        cVar4.f244c = i30;
                        cVar4.f = true;
                        ((LinearLayout.LayoutParams) cVar4).rightMargin = (-i30) / 2;
                    } else {
                        if (i31 != 0) {
                            ((LinearLayout.LayoutParams) cVar4).leftMargin = i30 / 2;
                        }
                        if (i31 != childCount - 1) {
                            ((LinearLayout.LayoutParams) cVar4).rightMargin = i30 / 2;
                        }
                    }
                    z2 = true;
                }
            }
        }
        if (z2) {
            for (int i32 = 0; i32 < childCount; i32++) {
                View childAt4 = getChildAt(i32);
                c cVar5 = (c) childAt4.getLayoutParams();
                if (cVar5.f) {
                    childAt4.measure(View.MeasureSpec.makeMeasureSpec((cVar5.f243b * i11) + cVar5.f244c, 1073741824), childMeasureSpec);
                }
            }
        }
        setMeasuredDimension(i4, i3 != 1073741824 ? i5 : i18);
    }

    public void B() {
        androidx.appcompat.widget.c cVar = this.u;
        if (cVar != null) {
            cVar.y();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.g0
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        c cVar = new c(-2, -2);
        ((LinearLayout.LayoutParams) cVar).gravity = 16;
        return cVar;
    }

    @Override // androidx.appcompat.widget.g0
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.g0
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        c cVar = layoutParams instanceof c ? new c((c) layoutParams) : new c(layoutParams);
        if (((LinearLayout.LayoutParams) cVar).gravity <= 0) {
            ((LinearLayout.LayoutParams) cVar).gravity = 16;
        }
        return cVar;
    }

    public c F() {
        c cVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
        cVarGenerateDefaultLayoutParams.a = true;
        return cVarGenerateDefaultLayoutParams;
    }

    protected boolean G(int i) {
        boolean zB = false;
        if (i == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i - 1);
        KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof a)) {
            zB = false | ((a) childAt).b();
        }
        return (i <= 0 || !(childAt2 instanceof a)) ? zB : zB | ((a) childAt2).d();
    }

    public boolean H() {
        androidx.appcompat.widget.c cVar = this.u;
        return cVar != null && cVar.B();
    }

    public boolean I() {
        androidx.appcompat.widget.c cVar = this.u;
        return cVar != null && cVar.D();
    }

    public boolean J() {
        androidx.appcompat.widget.c cVar = this.u;
        return cVar != null && cVar.E();
    }

    public boolean K() {
        return this.t;
    }

    public androidx.appcompat.view.menu.g N() {
        return this.q;
    }

    public void O(m.a aVar, g.a aVar2) {
        this.v = aVar;
        this.w = aVar2;
    }

    public boolean P() {
        androidx.appcompat.widget.c cVar = this.u;
        return cVar != null && cVar.K();
    }

    @Override // androidx.appcompat.view.menu.g.b
    public boolean a(androidx.appcompat.view.menu.i iVar) {
        return this.q.L(iVar, 0);
    }

    @Override // androidx.appcompat.view.menu.n
    public void b(androidx.appcompat.view.menu.g gVar) {
        this.q = gVar;
    }

    @Override // androidx.appcompat.widget.g0, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    public Menu getMenu() {
        if (this.q == null) {
            Context context = getContext();
            androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
            this.q = gVar;
            gVar.R(new d());
            androidx.appcompat.widget.c cVar = new androidx.appcompat.widget.c(context);
            this.u = cVar;
            cVar.J(true);
            androidx.appcompat.widget.c cVar2 = this.u;
            m.a bVar = this.v;
            if (bVar == null) {
                bVar = new b();
            }
            cVar2.h(bVar);
            this.q.c(this.u, this.r);
            this.u.H(this);
        }
        return this.q;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        return this.u.A();
    }

    public int getPopupTheme() {
        return this.s;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        androidx.appcompat.widget.c cVar = this.u;
        if (cVar != null) {
            cVar.j(false);
            if (this.u.E()) {
                this.u.B();
                this.u.K();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        B();
    }

    @Override // androidx.appcompat.widget.g0, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int paddingLeft;
        if (!this.x) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i5 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i6 = i3 - i;
        int paddingRight = (i6 - getPaddingRight()) - getPaddingLeft();
        boolean zB = a1.b(this);
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                c cVar = (c) childAt.getLayoutParams();
                if (cVar.a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (G(i9)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i10 = i5 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i10, width, measuredHeight + i10);
                    paddingRight -= measuredWidth;
                    i7 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) cVar).leftMargin) + ((LinearLayout.LayoutParams) cVar).rightMargin;
                    G(i9);
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
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i14 = 0; i14 < childCount; i14++) {
                View childAt3 = getChildAt(i14);
                c cVar2 = (c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.a) {
                    int i15 = width2 - ((LinearLayout.LayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i16 = i5 - (measuredHeight3 / 2);
                    childAt3.layout(i15 - measuredWidth3, i16, i15, measuredHeight3 + i16);
                    width2 = i15 - ((measuredWidth3 + ((LinearLayout.LayoutParams) cVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i17 = 0; i17 < childCount; i17++) {
            View childAt4 = getChildAt(i17);
            c cVar3 = (c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.a) {
                int i18 = paddingLeft2 + ((LinearLayout.LayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i19 = i5 - (measuredHeight4 / 2);
                childAt4.layout(i18, i19, i18 + measuredWidth4, measuredHeight4 + i19);
                paddingLeft2 = i18 + measuredWidth4 + ((LinearLayout.LayoutParams) cVar3).rightMargin + iMax;
            }
        }
    }

    @Override // androidx.appcompat.widget.g0, android.view.View
    protected void onMeasure(int i, int i2) {
        androidx.appcompat.view.menu.g gVar;
        boolean z = this.x;
        boolean z2 = View.MeasureSpec.getMode(i) == 1073741824;
        this.x = z2;
        if (z != z2) {
            this.y = 0;
        }
        int size = View.MeasureSpec.getSize(i);
        if (this.x && (gVar = this.q) != null && size != this.y) {
            this.y = size;
            gVar.K(true);
        }
        int childCount = getChildCount();
        if (this.x && childCount > 0) {
            M(i, i2);
            return;
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            c cVar = (c) getChildAt(i3).getLayoutParams();
            ((LinearLayout.LayoutParams) cVar).rightMargin = 0;
            ((LinearLayout.LayoutParams) cVar).leftMargin = 0;
        }
        super.onMeasure(i, i2);
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.u.G(z);
    }

    public void setOnMenuItemClickListener(e eVar) {
        this.B = eVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        this.u.I(drawable);
    }

    public void setOverflowReserved(boolean z) {
        this.t = z;
    }

    public void setPopupTheme(int i) {
        if (this.s != i) {
            this.s = i;
            if (i == 0) {
                this.r = getContext();
            } else {
                this.r = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(androidx.appcompat.widget.c cVar) {
        this.u = cVar;
        cVar.H(this);
    }

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.z = (int) (56.0f * f);
        this.A = (int) (f * 4.0f);
        this.r = context;
        this.s = 0;
    }
}
