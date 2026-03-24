package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.m;
import androidx.core.view.d0;
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements a0, androidx.core.view.o, androidx.core.view.m, androidx.core.view.n {
    static final int[] G = {c.a.a.actionBarSize, R.attr.windowContentOverlay};
    private OverScroller A;
    ViewPropertyAnimator B;
    final AnimatorListenerAdapter C;
    private final Runnable D;
    private final Runnable E;
    private final androidx.core.view.p F;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f238b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f239c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private ContentFrameLayout f240d;
    ActionBarContainer e;
    private b0 f;
    private Drawable g;
    private boolean h;
    private boolean i;
    private boolean j;
    private boolean k;
    boolean l;
    private int m;
    private int n;
    private final Rect o;
    private final Rect p;
    private final Rect q;
    private final Rect r;
    private final Rect s;
    private final Rect t;
    private final Rect u;
    private androidx.core.view.d0 v;
    private androidx.core.view.d0 w;
    private androidx.core.view.d0 x;
    private androidx.core.view.d0 y;
    private d z;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = null;
            actionBarOverlayLayout.l = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = null;
            actionBarOverlayLayout.l = false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = actionBarOverlayLayout.e.animate().translationY(CropImageView.DEFAULT_ASPECT_RATIO).setListener(ActionBarOverlayLayout.this.C);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.B = actionBarOverlayLayout.e.animate().translationY(-ActionBarOverlayLayout.this.e.getHeight()).setListener(ActionBarOverlayLayout.this.C);
        }
    }

    public interface d {
        void a(boolean z);

        void b();

        void c();

        void d(int i);

        void e();

        void f();
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i, int i2) {
            super(i, i2);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f239c = 0;
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        this.u = new Rect();
        androidx.core.view.d0 d0Var = androidx.core.view.d0.f567b;
        this.v = d0Var;
        this.w = d0Var;
        this.x = d0Var;
        this.y = d0Var;
        this.C = new a();
        this.D = new b();
        this.E = new c();
        v(context);
        this.F = new androidx.core.view.p(this);
    }

    private void A() {
        u();
        this.D.run();
    }

    private boolean B(float f) {
        this.A.fling(0, 0, 0, (int) f, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.A.getFinalY() > this.e.getHeight();
    }

    private void p() {
        u();
        this.E.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean q(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        e eVar = (e) view.getLayoutParams();
        if (z) {
            int i = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            int i2 = rect.left;
            if (i != i2) {
                ((ViewGroup.MarginLayoutParams) eVar).leftMargin = i2;
                z5 = true;
            } else {
                z5 = false;
            }
        }
        if (z2) {
            int i3 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
            int i4 = rect.top;
            if (i3 != i4) {
                ((ViewGroup.MarginLayoutParams) eVar).topMargin = i4;
                z5 = true;
            }
        }
        if (z4) {
            int i5 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
            int i6 = rect.right;
            if (i5 != i6) {
                ((ViewGroup.MarginLayoutParams) eVar).rightMargin = i6;
                z5 = true;
            }
        }
        if (z3) {
            int i7 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = i8;
                return true;
            }
        }
        return z5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private b0 t(View view) {
        if (view instanceof b0) {
            return (b0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void v(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(G);
        this.f238b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.g = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.h = context.getApplicationInfo().targetSdkVersion < 19;
        this.A = new OverScroller(context);
    }

    private void x() {
        u();
        postDelayed(this.E, 600L);
    }

    private void y() {
        u();
        postDelayed(this.D, 600L);
    }

    @Override // androidx.appcompat.widget.a0
    public void a(Menu menu, m.a aVar) {
        z();
        this.f.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.a0
    public boolean b() {
        z();
        return this.f.b();
    }

    @Override // androidx.appcompat.widget.a0
    public boolean c() {
        z();
        return this.f.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.a0
    public boolean d() {
        z();
        return this.f.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.g == null || this.h) {
            return;
        }
        int bottom = this.e.getVisibility() == 0 ? (int) (this.e.getBottom() + this.e.getTranslationY() + 0.5f) : 0;
        this.g.setBounds(0, bottom, getWidth(), this.g.getIntrinsicHeight() + bottom);
        this.g.draw(canvas);
    }

    @Override // androidx.appcompat.widget.a0
    public boolean e() {
        z();
        return this.f.e();
    }

    @Override // androidx.appcompat.widget.a0
    public void f() {
        z();
        this.f.f();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        z();
        boolean zQ = q(this.e, rect, true, true, false, true);
        this.r.set(rect);
        a1.a(this, this.r, this.o);
        if (!this.s.equals(this.r)) {
            this.s.set(this.r);
            zQ = true;
        }
        if (!this.p.equals(this.o)) {
            this.p.set(this.o);
            zQ = true;
        }
        if (zQ) {
            requestLayout();
        }
        return true;
    }

    @Override // androidx.appcompat.widget.a0
    public boolean g() {
        z();
        return this.f.g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.e;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.F.a();
    }

    public CharSequence getTitle() {
        z();
        return this.f.getTitle();
    }

    @Override // androidx.core.view.m
    public void h(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.m
    public void i(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.m
    public void j(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.appcompat.widget.a0
    public void k(int i) {
        z();
        if (i == 2) {
            this.f.t();
        } else if (i == 5) {
            this.f.v();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.a0
    public void l() {
        z();
        this.f.h();
    }

    @Override // androidx.core.view.n
    public void m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        n(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.m
    public void n(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.view.m
    public boolean o(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        z();
        androidx.core.view.d0 d0VarT = androidx.core.view.d0.t(windowInsets, this);
        boolean zQ = q(this.e, new Rect(d0VarT.g(), d0VarT.i(), d0VarT.h(), d0VarT.f()), true, true, false, true);
        androidx.core.view.v.g(this, d0VarT, this.o);
        Rect rect = this.o;
        androidx.core.view.d0 d0VarJ = d0VarT.j(rect.left, rect.top, rect.right, rect.bottom);
        this.v = d0VarJ;
        boolean z = true;
        if (!this.w.equals(d0VarJ)) {
            this.w = this.v;
            zQ = true;
        }
        if (this.p.equals(this.o)) {
            z = zQ;
        } else {
            this.p.set(this.o);
        }
        if (z) {
            requestLayout();
        }
        return d0VarT.a().c().b().r();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        v(getContext());
        androidx.core.view.v.l0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        u();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        z();
        measureChildWithMargins(this.e, i, 0, i2, 0);
        e eVar = (e) this.e.getLayoutParams();
        int iMax = Math.max(0, this.e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.e.getMeasuredState());
        boolean z = (androidx.core.view.v.M(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f238b;
            if (this.j && this.e.getTabContainer() != null) {
                measuredHeight += this.f238b;
            }
        } else {
            measuredHeight = this.e.getVisibility() != 8 ? this.e.getMeasuredHeight() : 0;
        }
        this.q.set(this.o);
        if (Build.VERSION.SDK_INT >= 21) {
            this.x = this.v;
        } else {
            this.t.set(this.r);
        }
        if (!this.i && !z) {
            Rect rect = this.q;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.x = this.x.j(0, measuredHeight, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            c.g.d.b bVarB = c.g.d.b.b(this.x.g(), this.x.i() + measuredHeight, this.x.h(), this.x.f() + 0);
            d0.b bVar = new d0.b(this.x);
            bVar.c(bVarB);
            this.x = bVar.a();
        } else {
            Rect rect2 = this.t;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        q(this.f240d, this.q, true, true, true, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.y.equals(this.x)) {
            androidx.core.view.d0 d0Var = this.x;
            this.y = d0Var;
            androidx.core.view.v.h(this.f240d, d0Var);
        } else if (Build.VERSION.SDK_INT < 21 && !this.u.equals(this.t)) {
            this.u.set(this.t);
            this.f240d.a(this.t);
        }
        measureChildWithMargins(this.f240d, i, 0, i2, 0);
        e eVar2 = (e) this.f240d.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f240d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f240d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f240d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.k || !z) {
            return false;
        }
        if (B(f2)) {
            p();
        } else {
            A();
        }
        this.l = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.o
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.m + i2;
        this.m = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.F.b(view, view2, i);
        this.m = getActionBarHideOffset();
        u();
        d dVar = this.z;
        if (dVar != null) {
            dVar.c();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.e.getVisibility() != 0) {
            return false;
        }
        return this.k;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.o
    public void onStopNestedScroll(View view) {
        if (this.k && !this.l) {
            if (this.m <= this.e.getHeight()) {
                y();
            } else {
                x();
            }
        }
        d dVar = this.z;
        if (dVar != null) {
            dVar.f();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        z();
        int i2 = this.n ^ i;
        this.n = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        d dVar = this.z;
        if (dVar != null) {
            dVar.a(!z2);
            if (z || !z2) {
                this.z.b();
            } else {
                this.z.e();
            }
        }
        if ((i2 & 256) == 0 || this.z == null) {
            return;
        }
        androidx.core.view.v.l0(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f239c = i;
        d dVar = this.z;
        if (dVar != null) {
            dVar.d(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public void setActionBarHideOffset(int i) {
        u();
        this.e.setTranslationY(-Math.max(0, Math.min(i, this.e.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.z = dVar;
        if (getWindowToken() != null) {
            this.z.d(this.f239c);
            int i = this.n;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                androidx.core.view.v.l0(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.j = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.k) {
            this.k = z;
            if (z) {
                return;
            }
            u();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        z();
        this.f.setIcon(i);
    }

    public void setLogo(int i) {
        z();
        this.f.m(i);
    }

    public void setOverlayMode(boolean z) {
        this.i = z;
        this.h = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.a0
    public void setWindowCallback(Window.Callback callback) {
        z();
        this.f.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.a0
    public void setWindowTitle(CharSequence charSequence) {
        z();
        this.f.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    void u() {
        removeCallbacks(this.D);
        removeCallbacks(this.E);
        ViewPropertyAnimator viewPropertyAnimator = this.B;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public boolean w() {
        return this.i;
    }

    void z() {
        if (this.f240d == null) {
            this.f240d = (ContentFrameLayout) findViewById(c.a.f.action_bar_activity_content);
            this.e = (ActionBarContainer) findViewById(c.a.f.action_bar_container);
            this.f = t(findViewById(c.a.f.action_bar));
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        z();
        this.f.setIcon(drawable);
    }
}
