package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.app.a;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class Toolbar extends ViewGroup {
    private ColorStateList A;
    private ColorStateList B;
    private boolean C;
    private boolean D;
    private final ArrayList<View> E;
    private final ArrayList<View> F;
    private final int[] G;
    f H;
    private final ActionMenuView.e I;
    private v0 J;
    private androidx.appcompat.widget.c K;
    private d L;
    private m.a M;
    private g.a N;
    private boolean O;
    private final Runnable P;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ActionMenuView f279b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f280c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f281d;
    private ImageButton e;
    private ImageView f;
    private Drawable g;
    private CharSequence h;
    ImageButton i;
    View j;
    private Context k;
    private int l;
    private int m;
    private int n;
    int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private m0 u;
    private int v;
    private int w;
    private int x;
    private CharSequence y;
    private CharSequence z;

    class a implements ActionMenuView.e {
        a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            f fVar = Toolbar.this.H;
            if (fVar != null) {
                return fVar.onMenuItemClick(menuItem);
            }
            return false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.O();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.e();
        }
    }

    private class d implements androidx.appcompat.view.menu.m {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.appcompat.view.menu.g f284b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        androidx.appcompat.view.menu.i f285c;

        d() {
        }

        @Override // androidx.appcompat.view.menu.m
        public void a(androidx.appcompat.view.menu.g gVar, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean c() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public void d(Context context, androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.i iVar;
            androidx.appcompat.view.menu.g gVar2 = this.f284b;
            if (gVar2 != null && (iVar = this.f285c) != null) {
                gVar2.f(iVar);
            }
            this.f284b = gVar;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean e(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            KeyEvent.Callback callback = Toolbar.this.j;
            if (callback instanceof c.a.o.c) {
                ((c.a.o.c) callback).d();
            }
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.j);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.i);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.j = null;
            toolbar3.a();
            this.f285c = null;
            Toolbar.this.requestLayout();
            iVar.r(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean f(androidx.appcompat.view.menu.g gVar, androidx.appcompat.view.menu.i iVar) {
            Toolbar.this.g();
            ViewParent parent = Toolbar.this.i.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.i);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.i);
            }
            Toolbar.this.j = iVar.getActionView();
            this.f285c = iVar;
            ViewParent parent2 = Toolbar.this.j.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.j);
                }
                e eVarGenerateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                eVarGenerateDefaultLayoutParams.a = 8388611 | (toolbar4.o & 112);
                eVarGenerateDefaultLayoutParams.f287b = 2;
                toolbar4.j.setLayoutParams(eVarGenerateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.j);
            }
            Toolbar.this.G();
            Toolbar.this.requestLayout();
            iVar.r(true);
            KeyEvent.Callback callback = Toolbar.this.j;
            if (callback instanceof c.a.o.c) {
                ((c.a.o.c) callback).c();
            }
            return true;
        }

        @Override // androidx.appcompat.view.menu.m
        public void h(m.a aVar) {
        }

        @Override // androidx.appcompat.view.menu.m
        public boolean i(androidx.appcompat.view.menu.r rVar) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.m
        public void j(boolean z) {
            if (this.f285c != null) {
                androidx.appcompat.view.menu.g gVar = this.f284b;
                boolean z2 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.f284b.getItem(i) == this.f285c) {
                            z2 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z2) {
                    return;
                }
                e(this.f284b, this.f285c);
            }
        }
    }

    public interface f {
        boolean onMenuItemClick(MenuItem menuItem);
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.a.a.toolbarStyle);
    }

    private int B(View view, int i, int[] iArr, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - iArr[0];
        int iMax = i + Math.max(0, i3);
        iArr[0] = Math.max(0, -i3);
        int iQ = q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iQ, iMax + measuredWidth, view.getMeasuredHeight() + iQ);
        return iMax + measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
    }

    private int C(View view, int i, int[] iArr, int i2) {
        e eVar = (e) view.getLayoutParams();
        int i3 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - iArr[1];
        int iMax = i - Math.max(0, i3);
        iArr[1] = Math.max(0, -i3);
        int iQ = q(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iQ, iMax, view.getMeasuredHeight() + iQ);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) eVar).leftMargin);
    }

    private int D(View view, int i, int i2, int i3, int i4, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i5) + Math.max(0, i6);
        iArr[0] = Math.max(0, -i5);
        iArr[1] = Math.max(0, -i6);
        view.measure(ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + iMax + i2, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    private void E(View view, int i, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i3, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    private void F() {
        removeCallbacks(this.P);
        post(this.P);
    }

    private boolean M() {
        if (!this.O) {
            return false;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (N(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    private boolean N(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    private void b(List<View> list, int i) {
        boolean z = androidx.core.view.v.C(this) == 1;
        int childCount = getChildCount();
        int iB = androidx.core.view.e.b(i, androidx.core.view.v.C(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                e eVar = (e) childAt.getLayoutParams();
                if (eVar.f287b == 0 && N(childAt) && p(eVar.a) == iB) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            View childAt2 = getChildAt(i3);
            e eVar2 = (e) childAt2.getLayoutParams();
            if (eVar2.f287b == 0 && N(childAt2) && p(eVar2.a) == iB) {
                list.add(childAt2);
            }
        }
    }

    private void c(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        e eVarGenerateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (e) layoutParams;
        eVarGenerateDefaultLayoutParams.f287b = 1;
        if (!z || this.j == null) {
            addView(view, eVarGenerateDefaultLayoutParams);
        } else {
            view.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.F.add(view);
        }
    }

    private MenuInflater getMenuInflater() {
        return new c.a.o.g(getContext());
    }

    private void h() {
        if (this.u == null) {
            this.u = new m0();
        }
    }

    private void i() {
        if (this.f == null) {
            this.f = new AppCompatImageView(getContext());
        }
    }

    private void j() {
        k();
        if (this.f279b.N() == null) {
            androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) this.f279b.getMenu();
            if (this.L == null) {
                this.L = new d();
            }
            this.f279b.setExpandedActionViewsExclusive(true);
            gVar.c(this.L, this.k);
        }
    }

    private void k() {
        if (this.f279b == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.f279b = actionMenuView;
            actionMenuView.setPopupTheme(this.l);
            this.f279b.setOnMenuItemClickListener(this.I);
            this.f279b.O(this.M, this.N);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388613 | (this.o & 112);
            this.f279b.setLayoutParams(eVarGenerateDefaultLayoutParams);
            c(this.f279b, false);
        }
    }

    private void l() {
        if (this.e == null) {
            this.e = new l(getContext(), null, c.a.a.toolbarNavigationButtonStyle);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388611 | (this.o & 112);
            this.e.setLayoutParams(eVarGenerateDefaultLayoutParams);
        }
    }

    private int p(int i) {
        int iC = androidx.core.view.v.C(this);
        int iB = androidx.core.view.e.b(i, iC) & 7;
        return (iB == 1 || iB == 3 || iB == 5) ? iB : iC == 1 ? 5 : 3;
    }

    private int q(View view, int i) {
        e eVar = (e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int iR = r(eVar.a);
        if (iR == 48) {
            return getPaddingTop() - i2;
        }
        if (iR == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i3 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
        if (iMax < i3) {
            iMax = i3;
        } else {
            int i4 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i5 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            if (i4 < i5) {
                iMax = Math.max(0, iMax - (i5 - i4));
            }
        }
        return paddingTop + iMax;
    }

    private int r(int i) {
        int i2 = i & 112;
        return (i2 == 16 || i2 == 48 || i2 == 80) ? i2 : this.x & 112;
    }

    private int s(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return androidx.core.view.h.b(marginLayoutParams) + androidx.core.view.h.a(marginLayoutParams);
    }

    private int t(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    private int u(List<View> list, int[] iArr) {
        int i = iArr[0];
        int i2 = iArr[1];
        int size = list.size();
        int i3 = 0;
        int measuredWidth = 0;
        while (i3 < size) {
            View view = list.get(i3);
            e eVar = (e) view.getLayoutParams();
            int i4 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin - i;
            int i5 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin - i2;
            int iMax = Math.max(0, i4);
            int iMax2 = Math.max(0, i5);
            int iMax3 = Math.max(0, -i4);
            int iMax4 = Math.max(0, -i5);
            measuredWidth += iMax + view.getMeasuredWidth() + iMax2;
            i3++;
            i2 = iMax4;
            i = iMax3;
        }
        return measuredWidth;
    }

    private boolean y(View view) {
        return view.getParent() == this || this.F.contains(view);
    }

    public boolean A() {
        ActionMenuView actionMenuView = this.f279b;
        return actionMenuView != null && actionMenuView.J();
    }

    void G() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((e) childAt.getLayoutParams()).f287b != 2 && childAt != this.f279b) {
                removeViewAt(childCount);
                this.F.add(childAt);
            }
        }
    }

    public void H(int i, int i2) {
        h();
        this.u.g(i, i2);
    }

    public void I(androidx.appcompat.view.menu.g gVar, androidx.appcompat.widget.c cVar) {
        if (gVar == null && this.f279b == null) {
            return;
        }
        k();
        androidx.appcompat.view.menu.g gVarN = this.f279b.N();
        if (gVarN == gVar) {
            return;
        }
        if (gVarN != null) {
            gVarN.O(this.K);
            gVarN.O(this.L);
        }
        if (this.L == null) {
            this.L = new d();
        }
        cVar.G(true);
        if (gVar != null) {
            gVar.c(cVar, this.k);
            gVar.c(this.L, this.k);
        } else {
            cVar.d(this.k, null);
            this.L.d(this.k, null);
            cVar.j(true);
            this.L.j(true);
        }
        this.f279b.setPopupTheme(this.l);
        this.f279b.setPresenter(cVar);
        this.K = cVar;
    }

    public void J(m.a aVar, g.a aVar2) {
        this.M = aVar;
        this.N = aVar2;
        ActionMenuView actionMenuView = this.f279b;
        if (actionMenuView != null) {
            actionMenuView.O(aVar, aVar2);
        }
    }

    public void K(Context context, int i) {
        this.n = i;
        TextView textView = this.f281d;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public void L(Context context, int i) {
        this.m = i;
        TextView textView = this.f280c;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    public boolean O() {
        ActionMenuView actionMenuView = this.f279b;
        return actionMenuView != null && actionMenuView.P();
    }

    void a() {
        for (int size = this.F.size() - 1; size >= 0; size--) {
            addView(this.F.get(size));
        }
        this.F.clear();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof e);
    }

    public boolean d() {
        ActionMenuView actionMenuView;
        return getVisibility() == 0 && (actionMenuView = this.f279b) != null && actionMenuView.K();
    }

    public void e() {
        d dVar = this.L;
        androidx.appcompat.view.menu.i iVar = dVar == null ? null : dVar.f285c;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    public void f() {
        ActionMenuView actionMenuView = this.f279b;
        if (actionMenuView != null) {
            actionMenuView.B();
        }
    }

    void g() {
        if (this.i == null) {
            l lVar = new l(getContext(), null, c.a.a.toolbarNavigationButtonStyle);
            this.i = lVar;
            lVar.setImageDrawable(this.g);
            this.i.setContentDescription(this.h);
            e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388611 | (this.o & 112);
            eVarGenerateDefaultLayoutParams.f287b = 2;
            this.i.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.i.setOnClickListener(new c());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.i;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.i;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        m0 m0Var = this.u;
        if (m0Var != null) {
            return m0Var.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.w;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        m0 m0Var = this.u;
        if (m0Var != null) {
            return m0Var.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        m0 m0Var = this.u;
        if (m0Var != null) {
            return m0Var.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        m0 m0Var = this.u;
        if (m0Var != null) {
            return m0Var.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.v;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        androidx.appcompat.view.menu.g gVarN;
        ActionMenuView actionMenuView = this.f279b;
        return actionMenuView != null && (gVarN = actionMenuView.N()) != null && gVarN.hasVisibleItems() ? Math.max(getContentInsetEnd(), Math.max(this.w, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return androidx.core.view.v.C(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return androidx.core.view.v.C(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.v, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.f;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.f;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        j();
        return this.f279b.getMenu();
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.e;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.e;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    androidx.appcompat.widget.c getOuterActionMenuPresenter() {
        return this.K;
    }

    public Drawable getOverflowIcon() {
        j();
        return this.f279b.getOverflowIcon();
    }

    Context getPopupContext() {
        return this.k;
    }

    public int getPopupTheme() {
        return this.l;
    }

    public CharSequence getSubtitle() {
        return this.z;
    }

    final TextView getSubtitleTextView() {
        return this.f281d;
    }

    public CharSequence getTitle() {
        return this.y;
    }

    public int getTitleMarginBottom() {
        return this.t;
    }

    public int getTitleMarginEnd() {
        return this.r;
    }

    public int getTitleMarginStart() {
        return this.q;
    }

    public int getTitleMarginTop() {
        return this.s;
    }

    final TextView getTitleTextView() {
        return this.f280c;
    }

    public b0 getWrapper() {
        if (this.J == null) {
            this.J = new v0(this, true);
        }
        return this.J;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e ? new e((e) layoutParams) : layoutParams instanceof a.C0009a ? new e((a.C0009a) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new e((ViewGroup.MarginLayoutParams) layoutParams) : new e(layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.P);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.D = false;
        }
        if (!this.D) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.D = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.D = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x02a3 A[LOOP:0: B:104:0x02a1->B:105:0x02a3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x02c5 A[LOOP:1: B:107:0x02c3->B:108:0x02c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x02fe A[LOOP:2: B:116:0x02fc->B:117:0x02fe, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0229  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iB;
        int iC;
        int iMax;
        boolean zN;
        boolean zN2;
        int i5;
        int measuredHeight;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int paddingTop;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int size;
        int i17;
        int size2;
        int i18;
        int i19;
        int size3;
        boolean z2 = androidx.core.view.v.C(this) == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i20 = width - paddingRight;
        int[] iArr = this.G;
        iArr[1] = 0;
        iArr[0] = 0;
        int iD = androidx.core.view.v.D(this);
        int iMin = iD >= 0 ? Math.min(iD, i4 - i2) : 0;
        if (!N(this.e)) {
            iB = paddingLeft;
        } else {
            if (z2) {
                iC = C(this.e, i20, iArr, iMin);
                iB = paddingLeft;
                if (N(this.i)) {
                    if (z2) {
                        iC = C(this.i, iC, iArr, iMin);
                    } else {
                        iB = B(this.i, iB, iArr, iMin);
                    }
                }
                if (N(this.f279b)) {
                    if (z2) {
                        iB = B(this.f279b, iB, iArr, iMin);
                    } else {
                        iC = C(this.f279b, iC, iArr, iMin);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - iB);
                iArr[1] = Math.max(0, currentContentInsetRight - (i20 - iC));
                iMax = Math.max(iB, currentContentInsetLeft);
                int iMin2 = Math.min(iC, i20 - currentContentInsetRight);
                if (N(this.j)) {
                    if (z2) {
                        iMin2 = C(this.j, iMin2, iArr, iMin);
                    } else {
                        iMax = B(this.j, iMax, iArr, iMin);
                    }
                }
                if (N(this.f)) {
                    if (z2) {
                        iMin2 = C(this.f, iMin2, iArr, iMin);
                    } else {
                        iMax = B(this.f, iMax, iArr, iMin);
                    }
                }
                zN = N(this.f280c);
                zN2 = N(this.f281d);
                if (zN) {
                    i5 = paddingRight;
                    measuredHeight = 0;
                } else {
                    e eVar = (e) this.f280c.getLayoutParams();
                    i5 = paddingRight;
                    measuredHeight = ((ViewGroup.MarginLayoutParams) eVar).topMargin + this.f280c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin + 0;
                }
                if (zN2) {
                    i6 = width;
                } else {
                    e eVar2 = (e) this.f281d.getLayoutParams();
                    i6 = width;
                    measuredHeight += ((ViewGroup.MarginLayoutParams) eVar2).topMargin + this.f281d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin;
                }
                if (!zN || zN2) {
                    TextView textView = !zN ? this.f280c : this.f281d;
                    TextView textView2 = !zN2 ? this.f281d : this.f280c;
                    e eVar3 = (e) textView.getLayoutParams();
                    e eVar4 = (e) textView2.getLayoutParams();
                    boolean z3 = (zN && this.f280c.getMeasuredWidth() > 0) || (zN2 && this.f281d.getMeasuredWidth() > 0);
                    i7 = this.x & 112;
                    i8 = paddingLeft;
                    if (i7 == 48) {
                        i9 = iMax;
                        i10 = iMin;
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) eVar3).topMargin + this.s;
                    } else if (i7 != 80) {
                        int iMax2 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                        int i21 = ((ViewGroup.MarginLayoutParams) eVar3).topMargin;
                        i10 = iMin;
                        int i22 = this.s;
                        i9 = iMax;
                        if (iMax2 < i21 + i22) {
                            iMax2 = i21 + i22;
                        } else {
                            int i23 = (((height - paddingBottom) - measuredHeight) - iMax2) - paddingTop2;
                            int i24 = ((ViewGroup.MarginLayoutParams) eVar3).bottomMargin;
                            int i25 = this.t;
                            if (i23 < i24 + i25) {
                                iMax2 = Math.max(0, iMax2 - ((((ViewGroup.MarginLayoutParams) eVar4).bottomMargin + i25) - i23));
                            }
                        }
                        paddingTop = paddingTop2 + iMax2;
                    } else {
                        i9 = iMax;
                        i10 = iMin;
                        paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) eVar4).bottomMargin) - this.t) - measuredHeight;
                    }
                    if (!z2) {
                        if (z3) {
                            i12 = this.q;
                            i11 = 0;
                        } else {
                            i11 = 0;
                            i12 = 0;
                        }
                        int i26 = i12 - iArr[i11];
                        iMax = i9 + Math.max(i11, i26);
                        iArr[i11] = Math.max(i11, -i26);
                        if (zN) {
                            e eVar5 = (e) this.f280c.getLayoutParams();
                            int measuredWidth = this.f280c.getMeasuredWidth() + iMax;
                            int measuredHeight2 = this.f280c.getMeasuredHeight() + paddingTop;
                            this.f280c.layout(iMax, paddingTop, measuredWidth, measuredHeight2);
                            i13 = measuredWidth + this.r;
                            paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) eVar5).bottomMargin;
                        } else {
                            i13 = iMax;
                        }
                        if (zN2) {
                            e eVar6 = (e) this.f281d.getLayoutParams();
                            int i27 = paddingTop + ((ViewGroup.MarginLayoutParams) eVar6).topMargin;
                            int measuredWidth2 = this.f281d.getMeasuredWidth() + iMax;
                            this.f281d.layout(iMax, i27, measuredWidth2, this.f281d.getMeasuredHeight() + i27);
                            i14 = measuredWidth2 + this.r;
                            int i28 = ((ViewGroup.MarginLayoutParams) eVar6).bottomMargin;
                        } else {
                            i14 = iMax;
                        }
                        if (z3) {
                            iMax = Math.max(i13, i14);
                        }
                        b(this.E, 3);
                        size = this.E.size();
                        for (i17 = 0; i17 < size; i17++) {
                            iMax = B(this.E.get(i17), iMax, iArr, i10);
                        }
                        int i29 = i10;
                        b(this.E, 5);
                        size2 = this.E.size();
                        for (i18 = 0; i18 < size2; i18++) {
                            iMin2 = C(this.E.get(i18), iMin2, iArr, i29);
                        }
                        b(this.E, 1);
                        int iU = u(this.E, iArr);
                        i19 = (i8 + (((i6 - i8) - i5) / 2)) - (iU / 2);
                        int i30 = iU + i19;
                        if (i19 >= iMax) {
                            iMax = i30 > iMin2 ? i19 - (i30 - iMin2) : i19;
                        }
                        size3 = this.E.size();
                        while (i11 < size3) {
                            iMax = B(this.E.get(i11), iMax, iArr, i29);
                            i11++;
                        }
                        this.E.clear();
                    }
                    int i31 = (z3 ? this.q : 0) - iArr[1];
                    iMin2 -= Math.max(0, i31);
                    iArr[1] = Math.max(0, -i31);
                    if (zN) {
                        e eVar7 = (e) this.f280c.getLayoutParams();
                        int measuredWidth3 = iMin2 - this.f280c.getMeasuredWidth();
                        int measuredHeight3 = this.f280c.getMeasuredHeight() + paddingTop;
                        this.f280c.layout(measuredWidth3, paddingTop, iMin2, measuredHeight3);
                        i15 = measuredWidth3 - this.r;
                        paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) eVar7).bottomMargin;
                    } else {
                        i15 = iMin2;
                    }
                    if (zN2) {
                        e eVar8 = (e) this.f281d.getLayoutParams();
                        int i32 = paddingTop + ((ViewGroup.MarginLayoutParams) eVar8).topMargin;
                        this.f281d.layout(iMin2 - this.f281d.getMeasuredWidth(), i32, iMin2, this.f281d.getMeasuredHeight() + i32);
                        i16 = iMin2 - this.r;
                        int i33 = ((ViewGroup.MarginLayoutParams) eVar8).bottomMargin;
                    } else {
                        i16 = iMin2;
                    }
                    if (z3) {
                        iMin2 = Math.min(i15, i16);
                    }
                    iMax = i9;
                } else {
                    i8 = paddingLeft;
                    i10 = iMin;
                }
                i11 = 0;
                b(this.E, 3);
                size = this.E.size();
                while (i17 < size) {
                }
                int i292 = i10;
                b(this.E, 5);
                size2 = this.E.size();
                while (i18 < size2) {
                }
                b(this.E, 1);
                int iU2 = u(this.E, iArr);
                i19 = (i8 + (((i6 - i8) - i5) / 2)) - (iU2 / 2);
                int i302 = iU2 + i19;
                if (i19 >= iMax) {
                }
                size3 = this.E.size();
                while (i11 < size3) {
                }
                this.E.clear();
            }
            iB = B(this.e, paddingLeft, iArr, iMin);
        }
        iC = i20;
        if (N(this.i)) {
        }
        if (N(this.f279b)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iB);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i20 - iC));
        iMax = Math.max(iB, currentContentInsetLeft2);
        int iMin22 = Math.min(iC, i20 - currentContentInsetRight2);
        if (N(this.j)) {
        }
        if (N(this.f)) {
        }
        zN = N(this.f280c);
        zN2 = N(this.f281d);
        if (zN) {
        }
        if (zN2) {
        }
        if (zN) {
            if (!zN) {
            }
            if (!zN2) {
            }
            e eVar32 = (e) textView.getLayoutParams();
            e eVar42 = (e) textView2.getLayoutParams();
            if (zN) {
                i7 = this.x & 112;
                i8 = paddingLeft;
                if (i7 == 48) {
                }
                if (!z2) {
                }
            } else {
                i7 = this.x & 112;
                i8 = paddingLeft;
                if (i7 == 48) {
                }
                if (!z2) {
                }
            }
        }
        b(this.E, 3);
        size = this.E.size();
        while (i17 < size) {
        }
        int i2922 = i10;
        b(this.E, 5);
        size2 = this.E.size();
        while (i18 < size2) {
        }
        b(this.E, 1);
        int iU22 = u(this.E, iArr);
        i19 = (i8 + (((i6 - i8) - i5) / 2)) - (iU22 / 2);
        int i3022 = iU22 + i19;
        if (i19 >= iMax) {
        }
        size3 = this.E.size();
        while (i11 < size3) {
        }
        this.E.clear();
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        char c2;
        char c3;
        int measuredWidth;
        int iMax;
        int iCombineMeasuredStates;
        int measuredWidth2;
        int iCombineMeasuredStates2;
        int iMax2;
        int measuredHeight;
        int[] iArr = this.G;
        if (a1.b(this)) {
            c2 = 1;
            c3 = 0;
        } else {
            c2 = 0;
            c3 = 1;
        }
        if (N(this.e)) {
            E(this.e, i, 0, i2, 0, this.p);
            measuredWidth = this.e.getMeasuredWidth() + s(this.e);
            iMax = Math.max(0, this.e.getMeasuredHeight() + t(this.e));
            iCombineMeasuredStates = View.combineMeasuredStates(0, this.e.getMeasuredState());
        } else {
            measuredWidth = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (N(this.i)) {
            E(this.i, i, 0, i2, 0, this.p);
            measuredWidth = this.i.getMeasuredWidth() + s(this.i);
            iMax = Math.max(iMax, this.i.getMeasuredHeight() + t(this.i));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.i.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = 0 + Math.max(currentContentInsetStart, measuredWidth);
        iArr[c2] = Math.max(0, currentContentInsetStart - measuredWidth);
        if (N(this.f279b)) {
            E(this.f279b, i, iMax3, i2, 0, this.p);
            measuredWidth2 = this.f279b.getMeasuredWidth() + s(this.f279b);
            iMax = Math.max(iMax, this.f279b.getMeasuredHeight() + t(this.f279b));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f279b.getMeasuredState());
        } else {
            measuredWidth2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = iMax3 + Math.max(currentContentInsetEnd, measuredWidth2);
        iArr[c3] = Math.max(0, currentContentInsetEnd - measuredWidth2);
        if (N(this.j)) {
            iMax4 += D(this.j, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.j.getMeasuredHeight() + t(this.j));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.j.getMeasuredState());
        }
        if (N(this.f)) {
            iMax4 += D(this.f, i, iMax4, i2, 0, iArr);
            iMax = Math.max(iMax, this.f.getMeasuredHeight() + t(this.f));
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (((e) childAt.getLayoutParams()).f287b == 0 && N(childAt)) {
                iMax4 += D(childAt, i, iMax4, i2, 0, iArr);
                iMax = Math.max(iMax, childAt.getMeasuredHeight() + t(childAt));
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i4 = this.s + this.t;
        int i5 = this.q + this.r;
        if (N(this.f280c)) {
            D(this.f280c, i, iMax4 + i5, i2, i4, iArr);
            int measuredWidth3 = this.f280c.getMeasuredWidth() + s(this.f280c);
            measuredHeight = this.f280c.getMeasuredHeight() + t(this.f280c);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f280c.getMeasuredState());
            iMax2 = measuredWidth3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            measuredHeight = 0;
        }
        if (N(this.f281d)) {
            iMax2 = Math.max(iMax2, D(this.f281d, i, iMax4 + i5, i2, measuredHeight + i4, iArr));
            measuredHeight += this.f281d.getMeasuredHeight() + t(this.f281d);
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f281d.getMeasuredState());
        }
        int iMax5 = Math.max(iMax, measuredHeight);
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax4 + iMax2 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates2), M() ? 0 : View.resolveSizeAndState(Math.max(iMax5 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        g gVar = (g) parcelable;
        super.onRestoreInstanceState(gVar.j());
        ActionMenuView actionMenuView = this.f279b;
        androidx.appcompat.view.menu.g gVarN = actionMenuView != null ? actionMenuView.N() : null;
        int i = gVar.f288d;
        if (i != 0 && this.L != null && gVarN != null && (menuItemFindItem = gVarN.findItem(i)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (gVar.e) {
            F();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        h();
        this.u.f(i == 1);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        androidx.appcompat.view.menu.i iVar;
        g gVar = new g(super.onSaveInstanceState());
        d dVar = this.L;
        if (dVar != null && (iVar = dVar.f285c) != null) {
            gVar.f288d = iVar.getItemId();
        }
        gVar.e = A();
        return gVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(c.a.k.a.a.d(getContext(), i));
    }

    public void setCollapsible(boolean z) {
        this.O = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.w) {
            this.w = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.v) {
            this.v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(c.a.k.a.a.d(getContext(), i));
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(c.a.k.a.a.d(getContext(), i));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        l();
        this.e.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(f fVar) {
        this.H = fVar;
    }

    public void setOverflowIcon(Drawable drawable) {
        j();
        this.f279b.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.l != i) {
            this.l = i;
            if (i == 0) {
                this.k = getContext();
            } else {
                this.k = new ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(ColorStateList.valueOf(i));
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitleMarginBottom(int i) {
        this.t = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.r = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.q = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.s = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(ColorStateList.valueOf(i));
    }

    public boolean v() {
        d dVar = this.L;
        return (dVar == null || dVar.f285c == null) ? false : true;
    }

    public boolean w() {
        ActionMenuView actionMenuView = this.f279b;
        return actionMenuView != null && actionMenuView.H();
    }

    public void x(int i) {
        getMenuInflater().inflate(i, getMenu());
    }

    public boolean z() {
        ActionMenuView actionMenuView = this.f279b;
        return actionMenuView != null && actionMenuView.I();
    }

    public static class e extends a.C0009a {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f287b;

        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f287b = 0;
        }

        void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public e(int i, int i2) {
            super(i, i2);
            this.f287b = 0;
            this.a = 8388627;
        }

        public e(e eVar) {
            super((a.C0009a) eVar);
            this.f287b = 0;
            this.f287b = eVar.f287b;
        }

        public e(a.C0009a c0009a) {
            super(c0009a);
            this.f287b = 0;
        }

        public e(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f287b = 0;
            a(marginLayoutParams);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f287b = 0;
        }
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.x = 8388627;
        this.E = new ArrayList<>();
        this.F = new ArrayList<>();
        this.G = new int[2];
        this.I = new a();
        this.P = new b();
        u0 u0VarV = u0.v(getContext(), attributeSet, c.a.j.Toolbar, i, 0);
        androidx.core.view.v.m0(this, context, c.a.j.Toolbar, attributeSet, u0VarV.r(), i, 0);
        this.m = u0VarV.n(c.a.j.Toolbar_titleTextAppearance, 0);
        this.n = u0VarV.n(c.a.j.Toolbar_subtitleTextAppearance, 0);
        this.x = u0VarV.l(c.a.j.Toolbar_android_gravity, this.x);
        this.o = u0VarV.l(c.a.j.Toolbar_buttonGravity, 48);
        int iE = u0VarV.e(c.a.j.Toolbar_titleMargin, 0);
        iE = u0VarV.s(c.a.j.Toolbar_titleMargins) ? u0VarV.e(c.a.j.Toolbar_titleMargins, iE) : iE;
        this.t = iE;
        this.s = iE;
        this.r = iE;
        this.q = iE;
        int iE2 = u0VarV.e(c.a.j.Toolbar_titleMarginStart, -1);
        if (iE2 >= 0) {
            this.q = iE2;
        }
        int iE3 = u0VarV.e(c.a.j.Toolbar_titleMarginEnd, -1);
        if (iE3 >= 0) {
            this.r = iE3;
        }
        int iE4 = u0VarV.e(c.a.j.Toolbar_titleMarginTop, -1);
        if (iE4 >= 0) {
            this.s = iE4;
        }
        int iE5 = u0VarV.e(c.a.j.Toolbar_titleMarginBottom, -1);
        if (iE5 >= 0) {
            this.t = iE5;
        }
        this.p = u0VarV.f(c.a.j.Toolbar_maxButtonHeight, -1);
        int iE6 = u0VarV.e(c.a.j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iE7 = u0VarV.e(c.a.j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iF = u0VarV.f(c.a.j.Toolbar_contentInsetLeft, 0);
        int iF2 = u0VarV.f(c.a.j.Toolbar_contentInsetRight, 0);
        h();
        this.u.e(iF, iF2);
        if (iE6 != Integer.MIN_VALUE || iE7 != Integer.MIN_VALUE) {
            this.u.g(iE6, iE7);
        }
        this.v = u0VarV.e(c.a.j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.w = u0VarV.e(c.a.j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.g = u0VarV.g(c.a.j.Toolbar_collapseIcon);
        this.h = u0VarV.p(c.a.j.Toolbar_collapseContentDescription);
        CharSequence charSequenceP = u0VarV.p(c.a.j.Toolbar_title);
        if (!TextUtils.isEmpty(charSequenceP)) {
            setTitle(charSequenceP);
        }
        CharSequence charSequenceP2 = u0VarV.p(c.a.j.Toolbar_subtitle);
        if (!TextUtils.isEmpty(charSequenceP2)) {
            setSubtitle(charSequenceP2);
        }
        this.k = getContext();
        setPopupTheme(u0VarV.n(c.a.j.Toolbar_popupTheme, 0));
        Drawable drawableG = u0VarV.g(c.a.j.Toolbar_navigationIcon);
        if (drawableG != null) {
            setNavigationIcon(drawableG);
        }
        CharSequence charSequenceP3 = u0VarV.p(c.a.j.Toolbar_navigationContentDescription);
        if (!TextUtils.isEmpty(charSequenceP3)) {
            setNavigationContentDescription(charSequenceP3);
        }
        Drawable drawableG2 = u0VarV.g(c.a.j.Toolbar_logo);
        if (drawableG2 != null) {
            setLogo(drawableG2);
        }
        CharSequence charSequenceP4 = u0VarV.p(c.a.j.Toolbar_logoDescription);
        if (!TextUtils.isEmpty(charSequenceP4)) {
            setLogoDescription(charSequenceP4);
        }
        if (u0VarV.s(c.a.j.Toolbar_titleTextColor)) {
            setTitleTextColor(u0VarV.c(c.a.j.Toolbar_titleTextColor));
        }
        if (u0VarV.s(c.a.j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(u0VarV.c(c.a.j.Toolbar_subtitleTextColor));
        }
        if (u0VarV.s(c.a.j.Toolbar_menu)) {
            x(u0VarV.n(c.a.j.Toolbar_menu, 0));
        }
        u0VarV.w();
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        ImageButton imageButton = this.i;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            this.i.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.i;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.g);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            i();
            if (!y(this.f)) {
                c(this.f, true);
            }
        } else {
            ImageView imageView = this.f;
            if (imageView != null && y(imageView)) {
                removeView(this.f);
                this.F.remove(this.f);
            }
        }
        ImageView imageView2 = this.f;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            i();
        }
        ImageView imageView = this.f;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            l();
        }
        ImageButton imageButton = this.e;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            l();
            if (!y(this.e)) {
                c(this.e, true);
            }
        } else {
            ImageButton imageButton = this.e;
            if (imageButton != null && y(imageButton)) {
                removeView(this.e);
                this.F.remove(this.e);
            }
        }
        ImageButton imageButton2 = this.e;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f281d;
            if (textView != null && y(textView)) {
                removeView(this.f281d);
                this.F.remove(this.f281d);
            }
        } else {
            if (this.f281d == null) {
                Context context = getContext();
                x xVar = new x(context);
                this.f281d = xVar;
                xVar.setSingleLine();
                this.f281d.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.n;
                if (i != 0) {
                    this.f281d.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.B;
                if (colorStateList != null) {
                    this.f281d.setTextColor(colorStateList);
                }
            }
            if (!y(this.f281d)) {
                c(this.f281d, true);
            }
        }
        TextView textView2 = this.f281d;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.z = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.B = colorStateList;
        TextView textView = this.f281d;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.f280c;
            if (textView != null && y(textView)) {
                removeView(this.f280c);
                this.F.remove(this.f280c);
            }
        } else {
            if (this.f280c == null) {
                Context context = getContext();
                x xVar = new x(context);
                this.f280c = xVar;
                xVar.setSingleLine();
                this.f280c.setEllipsize(TextUtils.TruncateAt.END);
                int i = this.m;
                if (i != 0) {
                    this.f280c.setTextAppearance(context, i);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f280c.setTextColor(colorStateList);
                }
            }
            if (!y(this.f280c)) {
                c(this.f280c, true);
            }
        }
        TextView textView2 = this.f280c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.f280c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public static class g extends c.i.a.a {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f288d;
        boolean e;

        class a implements Parcelable.ClassLoaderCreator<g> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i) {
                return new g[i];
            }
        }

        public g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f288d = parcel.readInt();
            this.e = parcel.readInt() != 0;
        }

        @Override // c.i.a.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f288d);
            parcel.writeInt(this.e ? 1 : 0);
        }

        public g(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
