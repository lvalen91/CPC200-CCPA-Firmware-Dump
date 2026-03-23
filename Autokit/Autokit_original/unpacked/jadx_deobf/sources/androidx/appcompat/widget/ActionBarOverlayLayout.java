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
import androidx.appcompat.view.menu.InterfaceC0107m;
import androidx.core.view.C0265d0;
import androidx.core.view.C0286p;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0283m;
import androidx.core.view.InterfaceC0284n;
import androidx.core.view.InterfaceC0285o;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.C0493a;
import p016c.p017a.C0498f;
import p016c.p041g.p042d.C0589b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC0153a0, InterfaceC0285o, InterfaceC0283m, InterfaceC0284n {

    /* JADX INFO: renamed from: G */
    static final int[] f774G = {C0493a.actionBarSize, R.attr.windowContentOverlay};

    /* JADX INFO: renamed from: A */
    private OverScroller f775A;

    /* JADX INFO: renamed from: B */
    ViewPropertyAnimator f776B;

    /* JADX INFO: renamed from: C */
    final AnimatorListenerAdapter f777C;

    /* JADX INFO: renamed from: D */
    private final Runnable f778D;

    /* JADX INFO: renamed from: E */
    private final Runnable f779E;

    /* JADX INFO: renamed from: F */
    private final C0286p f780F;

    /* JADX INFO: renamed from: b */
    private int f781b;

    /* JADX INFO: renamed from: c */
    private int f782c;

    /* JADX INFO: renamed from: d */
    private ContentFrameLayout f783d;

    /* JADX INFO: renamed from: e */
    ActionBarContainer f784e;

    /* JADX INFO: renamed from: f */
    private InterfaceC0156b0 f785f;

    /* JADX INFO: renamed from: g */
    private Drawable f786g;

    /* JADX INFO: renamed from: h */
    private boolean f787h;

    /* JADX INFO: renamed from: i */
    private boolean f788i;

    /* JADX INFO: renamed from: j */
    private boolean f789j;

    /* JADX INFO: renamed from: k */
    private boolean f790k;

    /* JADX INFO: renamed from: l */
    boolean f791l;

    /* JADX INFO: renamed from: m */
    private int f792m;

    /* JADX INFO: renamed from: n */
    private int f793n;

    /* JADX INFO: renamed from: o */
    private final Rect f794o;

    /* JADX INFO: renamed from: p */
    private final Rect f795p;

    /* JADX INFO: renamed from: q */
    private final Rect f796q;

    /* JADX INFO: renamed from: r */
    private final Rect f797r;

    /* JADX INFO: renamed from: s */
    private final Rect f798s;

    /* JADX INFO: renamed from: t */
    private final Rect f799t;

    /* JADX INFO: renamed from: u */
    private final Rect f800u;

    /* JADX INFO: renamed from: v */
    private C0265d0 f801v;

    /* JADX INFO: renamed from: w */
    private C0265d0 f802w;

    /* JADX INFO: renamed from: x */
    private C0265d0 f803x;

    /* JADX INFO: renamed from: y */
    private C0265d0 f804y;

    /* JADX INFO: renamed from: z */
    private InterfaceC0118d f805z;

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$a */
    class C0115a extends AnimatorListenerAdapter {
        C0115a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f776B = null;
            actionBarOverlayLayout.f791l = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f776B = null;
            actionBarOverlayLayout.f791l = false;
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$b */
    class RunnableC0116b implements Runnable {
        RunnableC0116b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m868u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f776B = actionBarOverlayLayout.f784e.animate().translationY(CropImageView.DEFAULT_ASPECT_RATIO).setListener(ActionBarOverlayLayout.this.f777C);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$c */
    class RunnableC0117c implements Runnable {
        RunnableC0117c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m868u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.f776B = actionBarOverlayLayout.f784e.animate().translationY(-ActionBarOverlayLayout.this.f784e.getHeight()).setListener(ActionBarOverlayLayout.this.f777C);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$d */
    public interface InterfaceC0118d {
        /* JADX INFO: renamed from: a */
        void mo618a(boolean z);

        /* JADX INFO: renamed from: b */
        void mo619b();

        /* JADX INFO: renamed from: c */
        void mo620c();

        /* JADX INFO: renamed from: d */
        void mo621d(int i);

        /* JADX INFO: renamed from: e */
        void mo622e();

        /* JADX INFO: renamed from: f */
        void mo623f();
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.ActionBarOverlayLayout$e */
    public static class C0119e extends ViewGroup.MarginLayoutParams {
        public C0119e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public C0119e(int i, int i2) {
            super(i, i2);
        }

        public C0119e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f782c = 0;
        this.f794o = new Rect();
        this.f795p = new Rect();
        this.f796q = new Rect();
        this.f797r = new Rect();
        this.f798s = new Rect();
        this.f799t = new Rect();
        this.f800u = new Rect();
        C0265d0 c0265d0 = C0265d0.f1821b;
        this.f801v = c0265d0;
        this.f802w = c0265d0;
        this.f803x = c0265d0;
        this.f804y = c0265d0;
        this.f777C = new C0115a();
        this.f778D = new RunnableC0116b();
        this.f779E = new RunnableC0117c();
        m848v(context);
        this.f780F = new C0286p(this);
    }

    /* JADX INFO: renamed from: A */
    private void m843A() {
        m868u();
        this.f778D.run();
    }

    /* JADX INFO: renamed from: B */
    private boolean m844B(float f) {
        this.f775A.fling(0, 0, 0, (int) f, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.f775A.getFinalY() > this.f784e.getHeight();
    }

    /* JADX INFO: renamed from: p */
    private void m845p() {
        m868u();
        this.f779E.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX INFO: renamed from: q */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private boolean m846q(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        C0119e c0119e = (C0119e) view.getLayoutParams();
        if (z) {
            int i = ((ViewGroup.MarginLayoutParams) c0119e).leftMargin;
            int i2 = rect.left;
            if (i != i2) {
                ((ViewGroup.MarginLayoutParams) c0119e).leftMargin = i2;
                z5 = true;
            } else {
                z5 = false;
            }
        }
        if (z2) {
            int i3 = ((ViewGroup.MarginLayoutParams) c0119e).topMargin;
            int i4 = rect.top;
            if (i3 != i4) {
                ((ViewGroup.MarginLayoutParams) c0119e).topMargin = i4;
                z5 = true;
            }
        }
        if (z4) {
            int i5 = ((ViewGroup.MarginLayoutParams) c0119e).rightMargin;
            int i6 = rect.right;
            if (i5 != i6) {
                ((ViewGroup.MarginLayoutParams) c0119e).rightMargin = i6;
                z5 = true;
            }
        }
        if (z3) {
            int i7 = ((ViewGroup.MarginLayoutParams) c0119e).bottomMargin;
            int i8 = rect.bottom;
            if (i7 != i8) {
                ((ViewGroup.MarginLayoutParams) c0119e).bottomMargin = i8;
                return true;
            }
        }
        return z5;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: t */
    private InterfaceC0156b0 m847t(View view) {
        if (view instanceof InterfaceC0156b0) {
            return (InterfaceC0156b0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    /* JADX INFO: renamed from: v */
    private void m848v(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f774G);
        this.f781b = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f786g = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f787h = context.getApplicationInfo().targetSdkVersion < 19;
        this.f775A = new OverScroller(context);
    }

    /* JADX INFO: renamed from: x */
    private void m849x() {
        m868u();
        postDelayed(this.f779E, 600L);
    }

    /* JADX INFO: renamed from: y */
    private void m850y() {
        m868u();
        postDelayed(this.f778D, 600L);
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: a */
    public void mo851a(Menu menu, InterfaceC0107m.a aVar) {
        m870z();
        this.f785f.mo1024a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: b */
    public boolean mo852b() {
        m870z();
        return this.f785f.mo1025b();
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: c */
    public boolean mo853c() {
        m870z();
        return this.f785f.mo1026c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0119e;
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: d */
    public boolean mo854d() {
        m870z();
        return this.f785f.mo1027d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f786g == null || this.f787h) {
            return;
        }
        int bottom = this.f784e.getVisibility() == 0 ? (int) (this.f784e.getBottom() + this.f784e.getTranslationY() + 0.5f) : 0;
        this.f786g.setBounds(0, bottom, getWidth(), this.f786g.getIntrinsicHeight() + bottom);
        this.f786g.draw(canvas);
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: e */
    public boolean mo855e() {
        m870z();
        return this.f785f.mo1028e();
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: f */
    public void mo856f() {
        m870z();
        this.f785f.mo1029f();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        m870z();
        boolean zM846q = m846q(this.f784e, rect, true, true, false, true);
        this.f797r.set(rect);
        C0154a1.m1021a(this, this.f797r, this.f794o);
        if (!this.f798s.equals(this.f797r)) {
            this.f798s.set(this.f797r);
            zM846q = true;
        }
        if (!this.f795p.equals(this.f794o)) {
            this.f795p.set(this.f794o);
            zM846q = true;
        }
        if (zM846q) {
            requestLayout();
        }
        return true;
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: g */
    public boolean mo857g() {
        m870z();
        return this.f785f.mo1030g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f784e;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f780F.m2035a();
    }

    public CharSequence getTitle() {
        m870z();
        return this.f785f.getTitle();
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: h */
    public void mo858h(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: i */
    public void mo859i(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: j */
    public void mo860j(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: k */
    public void mo861k(int i) {
        m870z();
        if (i == 2) {
            this.f785f.mo1043t();
        } else if (i == 5) {
            this.f785f.mo1045v();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    /* JADX INFO: renamed from: l */
    public void mo862l() {
        m870z();
        this.f785f.mo1031h();
    }

    @Override // androidx.core.view.InterfaceC0284n
    /* JADX INFO: renamed from: m */
    public void mo863m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        mo864n(view, i, i2, i3, i4, i5);
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: n */
    public void mo864n(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: o */
    public boolean mo865o(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        m870z();
        C0265d0 c0265d0M1833t = C0265d0.m1833t(windowInsets, this);
        boolean zM846q = m846q(this.f784e, new Rect(c0265d0M1833t.m1840g(), c0265d0M1833t.m1842i(), c0265d0M1833t.m1841h(), c0265d0M1833t.m1839f()), true, true, false, true);
        C0292v.m2088g(this, c0265d0M1833t, this.f794o);
        Rect rect = this.f794o;
        C0265d0 c0265d0M1843j = c0265d0M1833t.m1843j(rect.left, rect.top, rect.right, rect.bottom);
        this.f801v = c0265d0M1843j;
        boolean z = true;
        if (!this.f802w.equals(c0265d0M1843j)) {
            this.f802w = this.f801v;
            zM846q = true;
        }
        if (this.f795p.equals(this.f794o)) {
            z = zM846q;
        } else {
            this.f795p.set(this.f794o);
        }
        if (z) {
            requestLayout();
        }
        return c0265d0M1833t.m1834a().m1836c().m1835b().m1850r();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        m848v(getContext());
        C0292v.m2099l0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m868u();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                C0119e c0119e = (C0119e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) c0119e).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) c0119e).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int measuredHeight;
        m870z();
        measureChildWithMargins(this.f784e, i, 0, i2, 0);
        C0119e c0119e = (C0119e) this.f784e.getLayoutParams();
        int iMax = Math.max(0, this.f784e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0119e).leftMargin + ((ViewGroup.MarginLayoutParams) c0119e).rightMargin);
        int iMax2 = Math.max(0, this.f784e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0119e).topMargin + ((ViewGroup.MarginLayoutParams) c0119e).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f784e.getMeasuredState());
        boolean z = (C0292v.m2062M(this) & 256) != 0;
        if (z) {
            measuredHeight = this.f781b;
            if (this.f789j && this.f784e.getTabContainer() != null) {
                measuredHeight += this.f781b;
            }
        } else {
            measuredHeight = this.f784e.getVisibility() != 8 ? this.f784e.getMeasuredHeight() : 0;
        }
        this.f796q.set(this.f794o);
        if (Build.VERSION.SDK_INT >= 21) {
            this.f803x = this.f801v;
        } else {
            this.f799t.set(this.f797r);
        }
        if (!this.f788i && !z) {
            Rect rect = this.f796q;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (Build.VERSION.SDK_INT >= 21) {
                this.f803x = this.f803x.m1843j(0, measuredHeight, 0, 0);
            }
        } else if (Build.VERSION.SDK_INT >= 21) {
            C0589b c0589bM4673b = C0589b.m4673b(this.f803x.m1840g(), this.f803x.m1842i() + measuredHeight, this.f803x.m1841h(), this.f803x.m1839f() + 0);
            C0265d0.b bVar = new C0265d0.b(this.f803x);
            bVar.m1854c(c0589bM4673b);
            this.f803x = bVar.m1852a();
        } else {
            Rect rect2 = this.f799t;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        m846q(this.f783d, this.f796q, true, true, true, true);
        if (Build.VERSION.SDK_INT >= 21 && !this.f804y.equals(this.f803x)) {
            C0265d0 c0265d0 = this.f803x;
            this.f804y = c0265d0;
            C0292v.m2090h(this.f783d, c0265d0);
        } else if (Build.VERSION.SDK_INT < 21 && !this.f800u.equals(this.f799t)) {
            this.f800u.set(this.f799t);
            this.f783d.m895a(this.f799t);
        }
        measureChildWithMargins(this.f783d, i, 0, i2, 0);
        C0119e c0119e2 = (C0119e) this.f783d.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f783d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0119e2).leftMargin + ((ViewGroup.MarginLayoutParams) c0119e2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f783d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0119e2).topMargin + ((ViewGroup.MarginLayoutParams) c0119e2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f783d.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (!this.f790k || !z) {
            return false;
        }
        if (m844B(f2)) {
            m845p();
        } else {
            m843A();
        }
        this.f791l = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onNestedPreFling(View view, float f, float f2) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.f792m + i2;
        this.f792m = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.f780F.m2036b(view, view2, i);
        this.f792m = getActionBarHideOffset();
        m868u();
        InterfaceC0118d interfaceC0118d = this.f805z;
        if (interfaceC0118d != null) {
            interfaceC0118d.mo620c();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.f784e.getVisibility() != 0) {
            return false;
        }
        return this.f790k;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onStopNestedScroll(View view) {
        if (this.f790k && !this.f791l) {
            if (this.f792m <= this.f784e.getHeight()) {
                m850y();
            } else {
                m849x();
            }
        }
        InterfaceC0118d interfaceC0118d = this.f805z;
        if (interfaceC0118d != null) {
            interfaceC0118d.mo623f();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i);
        }
        m870z();
        int i2 = this.f793n ^ i;
        this.f793n = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        InterfaceC0118d interfaceC0118d = this.f805z;
        if (interfaceC0118d != null) {
            interfaceC0118d.mo618a(!z2);
            if (z || !z2) {
                this.f805z.mo619b();
            } else {
                this.f805z.mo622e();
            }
        }
        if ((i2 & 256) == 0 || this.f805z == null) {
            return;
        }
        C0292v.m2099l0(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.f782c = i;
        InterfaceC0118d interfaceC0118d = this.f805z;
        if (interfaceC0118d != null) {
            interfaceC0118d.mo621d(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public C0119e generateDefaultLayoutParams() {
        return new C0119e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public C0119e generateLayoutParams(AttributeSet attributeSet) {
        return new C0119e(getContext(), attributeSet);
    }

    public void setActionBarHideOffset(int i) {
        m868u();
        this.f784e.setTranslationY(-Math.max(0, Math.min(i, this.f784e.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC0118d interfaceC0118d) {
        this.f805z = interfaceC0118d;
        if (getWindowToken() != null) {
            this.f805z.mo621d(this.f782c);
            int i = this.f793n;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                C0292v.m2099l0(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.f789j = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.f790k) {
            this.f790k = z;
            if (z) {
                return;
            }
            m868u();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        m870z();
        this.f785f.setIcon(i);
    }

    public void setLogo(int i) {
        m870z();
        this.f785f.mo1036m(i);
    }

    public void setOverlayMode(boolean z) {
        this.f788i = z;
        this.f787h = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    public void setWindowCallback(Window.Callback callback) {
        m870z();
        this.f785f.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.InterfaceC0153a0
    public void setWindowTitle(CharSequence charSequence) {
        m870z();
        this.f785f.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: renamed from: u */
    void m868u() {
        removeCallbacks(this.f778D);
        removeCallbacks(this.f779E);
        ViewPropertyAnimator viewPropertyAnimator = this.f776B;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    /* JADX INFO: renamed from: w */
    public boolean m869w() {
        return this.f788i;
    }

    /* JADX INFO: renamed from: z */
    void m870z() {
        if (this.f783d == null) {
            this.f783d = (ContentFrameLayout) findViewById(C0498f.action_bar_activity_content);
            this.f784e = (ActionBarContainer) findViewById(C0498f.action_bar_container);
            this.f785f = m847t(findViewById(C0498f.action_bar));
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0119e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        m870z();
        this.f785f.setIcon(drawable);
    }
}
