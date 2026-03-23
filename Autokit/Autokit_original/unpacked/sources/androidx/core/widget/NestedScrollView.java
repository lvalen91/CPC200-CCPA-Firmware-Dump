package androidx.core.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.core.view.C0258a;
import androidx.core.view.C0282l;
import androidx.core.view.C0286p;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0281k;
import androidx.core.view.InterfaceC0284n;
import androidx.core.view.p004e0.C0269c;
import androidx.core.view.p004e0.C0271e;
import com.yalantis.ucrop.view.CropImageView;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class NestedScrollView extends FrameLayout implements InterfaceC0284n, InterfaceC0281k {

    /* JADX INFO: renamed from: B */
    private static final C0297a f1932B = new C0297a();

    /* JADX INFO: renamed from: C */
    private static final int[] f1933C = {R.attr.fillViewport};

    /* JADX INFO: renamed from: A */
    private InterfaceC0298b f1934A;

    /* JADX INFO: renamed from: b */
    private long f1935b;

    /* JADX INFO: renamed from: c */
    private final Rect f1936c;

    /* JADX INFO: renamed from: d */
    private OverScroller f1937d;

    /* JADX INFO: renamed from: e */
    private EdgeEffect f1938e;

    /* JADX INFO: renamed from: f */
    private EdgeEffect f1939f;

    /* JADX INFO: renamed from: g */
    private int f1940g;

    /* JADX INFO: renamed from: h */
    private boolean f1941h;

    /* JADX INFO: renamed from: i */
    private boolean f1942i;

    /* JADX INFO: renamed from: j */
    private View f1943j;

    /* JADX INFO: renamed from: k */
    private boolean f1944k;

    /* JADX INFO: renamed from: l */
    private VelocityTracker f1945l;

    /* JADX INFO: renamed from: m */
    private boolean f1946m;

    /* JADX INFO: renamed from: n */
    private boolean f1947n;

    /* JADX INFO: renamed from: o */
    private int f1948o;

    /* JADX INFO: renamed from: p */
    private int f1949p;

    /* JADX INFO: renamed from: q */
    private int f1950q;

    /* JADX INFO: renamed from: r */
    private int f1951r;

    /* JADX INFO: renamed from: s */
    private final int[] f1952s;

    /* JADX INFO: renamed from: t */
    private final int[] f1953t;

    /* JADX INFO: renamed from: u */
    private int f1954u;

    /* JADX INFO: renamed from: v */
    private int f1955v;

    /* JADX INFO: renamed from: w */
    private C0299c f1956w;

    /* JADX INFO: renamed from: x */
    private final C0286p f1957x;

    /* JADX INFO: renamed from: y */
    private final C0282l f1958y;

    /* JADX INFO: renamed from: z */
    private float f1959z;

    /* JADX INFO: renamed from: androidx.core.widget.NestedScrollView$a */
    static class C0297a extends C0258a {
        C0297a() {
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: f */
        public void mo1812f(View view, AccessibilityEvent accessibilityEvent) {
            super.mo1812f(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            C0271e.m1972a(accessibilityEvent, nestedScrollView.getScrollX());
            C0271e.m1973b(accessibilityEvent, nestedScrollView.getScrollRange());
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: g */
        public void mo1813g(View view, C0269c c0269c) {
            int scrollRange;
            super.mo1813g(view, c0269c);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            c0269c.m1919W(ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            c0269c.m1945n0(true);
            if (nestedScrollView.getScrollY() > 0) {
                c0269c.m1925b(C0269c.a.f1861g);
                c0269c.m1925b(C0269c.a.f1865k);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                c0269c.m1925b(C0269c.a.f1860f);
                c0269c.m1925b(C0269c.a.f1866l);
            }
        }

        @Override // androidx.core.view.C0258a
        /* JADX INFO: renamed from: j */
        public boolean mo1816j(View view, int i, Bundle bundle) {
            if (super.mo1816j(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i != 4096) {
                if (i == 8192 || i == 16908344) {
                    int iMax = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (iMax == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.m2215O(0, iMax, true);
                    return true;
                }
                if (i != 16908346) {
                    return false;
                }
            }
            int iMin = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.getScrollRange());
            if (iMin == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.m2215O(0, iMin, true);
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.core.widget.NestedScrollView$b */
    public interface InterfaceC0298b {
        /* JADX INFO: renamed from: a */
        void mo392a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    /* JADX INFO: renamed from: androidx.core.widget.NestedScrollView$c */
    static class C0299c extends View.BaseSavedState {
        public static final Parcelable.Creator<C0299c> CREATOR = new a();

        /* JADX INFO: renamed from: b */
        public int f1960b;

        /* JADX INFO: renamed from: androidx.core.widget.NestedScrollView$c$a */
        class a implements Parcelable.Creator<C0299c> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0299c createFromParcel(Parcel parcel) {
                return new C0299c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0299c[] newArray(int i) {
                return new C0299c[i];
            }
        }

        C0299c(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            return "HorizontalScrollView.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " scrollPosition=" + this.f1960b + "}";
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1960b);
        }

        C0299c(Parcel parcel) {
            super(parcel);
            this.f1960b = parcel.readInt();
        }
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: A */
    private static boolean m2189A(View view, View view2) {
        if (view == view2) {
            return true;
        }
        Object parent = view.getParent();
        return (parent instanceof ViewGroup) && m2189A((View) parent, view2);
    }

    /* JADX INFO: renamed from: B */
    private boolean m2190B(View view, int i, int i2) {
        view.getDrawingRect(this.f1936c);
        offsetDescendantRectToMyCoords(view, this.f1936c);
        return this.f1936c.bottom + i >= getScrollY() && this.f1936c.top - i <= getScrollY() + i2;
    }

    /* JADX INFO: renamed from: C */
    private void m2191C(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.f1958y.m2025e(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    /* JADX INFO: renamed from: D */
    private void m2192D(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f1951r) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f1940g = (int) motionEvent.getY(i);
            this.f1951r = motionEvent.getPointerId(i);
            VelocityTracker velocityTracker = this.f1945l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX INFO: renamed from: G */
    private void m2193G() {
        VelocityTracker velocityTracker = this.f1945l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f1945l = null;
        }
    }

    /* JADX INFO: renamed from: H */
    private void m2194H(boolean z) {
        if (z) {
            m2216P(2, 1);
        } else {
            m2217Q(1);
        }
        this.f1955v = getScrollY();
        C0292v.m2087f0(this);
    }

    /* JADX INFO: renamed from: I */
    private boolean m2195I(int i, int i2, int i3) {
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = height + scrollY;
        boolean z = false;
        boolean z2 = i == 33;
        View viewM2205r = m2205r(z2, i2, i3);
        if (viewM2205r == null) {
            viewM2205r = this;
        }
        if (i2 < scrollY || i3 > i4) {
            m2202k(z2 ? i2 - scrollY : i3 - i4);
            z = true;
        }
        if (viewM2205r != findFocus()) {
            viewM2205r.requestFocus(i);
        }
        return z;
    }

    /* JADX INFO: renamed from: J */
    private void m2196J(View view) {
        view.getDrawingRect(this.f1936c);
        offsetDescendantRectToMyCoords(view, this.f1936c);
        int iM2219e = m2219e(this.f1936c);
        if (iM2219e != 0) {
            scrollBy(0, iM2219e);
        }
    }

    /* JADX INFO: renamed from: K */
    private boolean m2197K(Rect rect, boolean z) {
        int iM2219e = m2219e(rect);
        boolean z2 = iM2219e != 0;
        if (z2) {
            if (z) {
                scrollBy(0, iM2219e);
            } else {
                m2213L(0, iM2219e);
            }
        }
        return z2;
    }

    /* JADX INFO: renamed from: M */
    private void m2198M(int i, int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (AnimationUtils.currentAnimationTimeMillis() - this.f1935b > 250) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f1937d.startScroll(getScrollX(), scrollY, 0, Math.max(0, Math.min(i2 + scrollY, Math.max(0, height - height2))) - scrollY, i3);
            m2194H(z);
        } else {
            if (!this.f1937d.isFinished()) {
                m2199a();
            }
            scrollBy(i, i2);
        }
        this.f1935b = AnimationUtils.currentAnimationTimeMillis();
    }

    /* JADX INFO: renamed from: a */
    private void m2199a() {
        this.f1937d.abortAnimation();
        m2217Q(1);
    }

    /* JADX INFO: renamed from: c */
    private boolean m2200c() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin > (getHeight() - getPaddingTop()) - getPaddingBottom();
    }

    /* JADX INFO: renamed from: d */
    private static int m2201d(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.f1959z == CropImageView.DEFAULT_ASPECT_RATIO) {
            TypedValue typedValue = new TypedValue();
            Context context = getContext();
            if (!context.getTheme().resolveAttribute(R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.f1959z = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.f1959z;
    }

    /* JADX INFO: renamed from: k */
    private void m2202k(int i) {
        if (i != 0) {
            if (this.f1947n) {
                m2213L(0, i);
            } else {
                scrollBy(0, i);
            }
        }
    }

    /* JADX INFO: renamed from: l */
    private void m2203l() {
        this.f1944k = false;
        m2193G();
        m2217Q(0);
        EdgeEffect edgeEffect = this.f1938e;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f1939f.onRelease();
        }
    }

    /* JADX INFO: renamed from: p */
    private void m2204p() {
        if (getOverScrollMode() == 2) {
            this.f1938e = null;
            this.f1939f = null;
        } else if (this.f1938e == null) {
            Context context = getContext();
            this.f1938e = new EdgeEffect(context);
            this.f1939f = new EdgeEffect(context);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /* JADX INFO: renamed from: r */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private View m2205r(boolean z, int i, int i2) {
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z2 = false;
        for (int i3 = 0; i3 < size; i3++) {
            View view2 = (View) focusables.get(i3);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i < bottom && top < i2) {
                boolean z3 = i < top && bottom < i2;
                if (view == null) {
                    view = view2;
                    z2 = z3;
                } else {
                    boolean z4 = (z && top < view.getTop()) || (!z && bottom > view.getBottom());
                    if (z2) {
                        if (z3 && z4) {
                            view = view2;
                        }
                    } else if (z3) {
                        view = view2;
                        z2 = true;
                    } else if (z4) {
                    }
                }
            }
        }
        return view;
    }

    /* JADX INFO: renamed from: v */
    private boolean m2206v(int i, int i2) {
        if (getChildCount() <= 0) {
            return false;
        }
        int scrollY = getScrollY();
        View childAt = getChildAt(0);
        return i2 >= childAt.getTop() - scrollY && i2 < childAt.getBottom() - scrollY && i >= childAt.getLeft() && i < childAt.getRight();
    }

    /* JADX INFO: renamed from: w */
    private void m2207w() {
        VelocityTracker velocityTracker = this.f1945l;
        if (velocityTracker == null) {
            this.f1945l = VelocityTracker.obtain();
        } else {
            velocityTracker.clear();
        }
    }

    /* JADX INFO: renamed from: x */
    private void m2208x() {
        this.f1937d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.f1948o = viewConfiguration.getScaledTouchSlop();
        this.f1949p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f1950q = viewConfiguration.getScaledMaximumFlingVelocity();
    }

    /* JADX INFO: renamed from: y */
    private void m2209y() {
        if (this.f1945l == null) {
            this.f1945l = VelocityTracker.obtain();
        }
    }

    /* JADX INFO: renamed from: z */
    private boolean m2210z(View view) {
        return !m2190B(view, 0, getHeight());
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0083 A[ADDED_TO_REGION] */
    /* JADX INFO: renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    boolean m2211E(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z) {
        boolean z2;
        boolean z3;
        int overScrollMode = getOverScrollMode();
        boolean z4 = computeHorizontalScrollRange() > computeHorizontalScrollExtent();
        boolean z5 = computeVerticalScrollRange() > computeVerticalScrollExtent();
        boolean z6 = overScrollMode == 0 || (overScrollMode == 1 && z4);
        boolean z7 = overScrollMode == 0 || (overScrollMode == 1 && z5);
        int i9 = i3 + i;
        int i10 = !z6 ? 0 : i7;
        int i11 = i4 + i2;
        int i12 = !z7 ? 0 : i8;
        int i13 = -i10;
        int i14 = i10 + i5;
        int i15 = -i12;
        int i16 = i12 + i6;
        if (i9 > i14) {
            i9 = i14;
        } else {
            if (i9 >= i13) {
                z2 = false;
                if (i11 <= i16) {
                    i11 = i16;
                } else {
                    if (i11 >= i15) {
                        z3 = false;
                        if (z3 && !m2225u(1)) {
                            this.f1937d.springBack(i9, i11, 0, 0, 0, getScrollRange());
                        }
                        onOverScrolled(i9, i11, z2, z3);
                        return !z2 || z3;
                    }
                    i11 = i15;
                }
                z3 = true;
                if (z3) {
                    this.f1937d.springBack(i9, i11, 0, 0, 0, getScrollRange());
                }
                onOverScrolled(i9, i11, z2, z3);
                if (z2) {
                }
            }
            i9 = i13;
        }
        z2 = true;
        if (i11 <= i16) {
        }
        z3 = true;
        if (z3) {
        }
        onOverScrolled(i9, i11, z2, z3);
        if (z2) {
        }
    }

    /* JADX INFO: renamed from: F */
    public boolean m2212F(int i) {
        boolean z = i == 130;
        int height = getHeight();
        if (z) {
            this.f1936c.top = getScrollY() + height;
            int childCount = getChildCount();
            if (childCount > 0) {
                View childAt = getChildAt(childCount - 1);
                int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
                Rect rect = this.f1936c;
                if (rect.top + height > bottom) {
                    rect.top = bottom - height;
                }
            }
        } else {
            this.f1936c.top = getScrollY() - height;
            Rect rect2 = this.f1936c;
            if (rect2.top < 0) {
                rect2.top = 0;
            }
        }
        Rect rect3 = this.f1936c;
        int i2 = rect3.top;
        int i3 = height + i2;
        rect3.bottom = i3;
        return m2195I(i, i2, i3);
    }

    /* JADX INFO: renamed from: L */
    public final void m2213L(int i, int i2) {
        m2198M(i, i2, 250, false);
    }

    /* JADX INFO: renamed from: N */
    void m2214N(int i, int i2, int i3, boolean z) {
        m2198M(i - getScrollX(), i2 - getScrollY(), i3, z);
    }

    /* JADX INFO: renamed from: O */
    void m2215O(int i, int i2, boolean z) {
        m2214N(i, i2, 250, z);
    }

    /* JADX INFO: renamed from: P */
    public boolean m2216P(int i, int i2) {
        return this.f1958y.m2032p(i, i2);
    }

    /* JADX INFO: renamed from: Q */
    public void m2217Q(int i) {
        this.f1958y.m2034r(i);
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        if (getChildCount() > 0) {
            throw new IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    /* JADX INFO: renamed from: b */
    public boolean m2218b(int i) {
        View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !m2190B(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                maxScrollAmount = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getScrollY() + getHeight()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            m2202k(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.f1936c);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.f1936c);
            m2202k(m2219e(this.f1936c));
            viewFindNextFocus.requestFocus(i);
        }
        if (viewFindFocus == null || !viewFindFocus.isFocused() || !m2210z(viewFindFocus)) {
            return true;
        }
        int descendantFocusability = getDescendantFocusability();
        setDescendantFocusability(131072);
        requestFocus();
        setDescendantFocusability(descendantFocusability);
        return true;
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        if (this.f1937d.isFinished()) {
            return;
        }
        this.f1937d.computeScrollOffset();
        int currY = this.f1937d.getCurrY();
        int i = currY - this.f1955v;
        this.f1955v = currY;
        int[] iArr = this.f1953t;
        boolean z = false;
        iArr[1] = 0;
        m2220f(0, i, iArr, null, 1);
        int i2 = i - this.f1953t[1];
        int scrollRange = getScrollRange();
        if (i2 != 0) {
            int scrollY = getScrollY();
            m2211E(0, i2, getScrollX(), scrollY, 0, scrollRange, 0, 0, false);
            int scrollY2 = getScrollY() - scrollY;
            int i3 = i2 - scrollY2;
            int[] iArr2 = this.f1953t;
            iArr2[1] = 0;
            m2221g(0, scrollY2, 0, i3, this.f1952s, 1, iArr2);
            i2 = i3 - this.f1953t[1];
        }
        if (i2 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z = true;
            }
            if (z) {
                m2204p();
                if (i2 < 0) {
                    if (this.f1938e.isFinished()) {
                        this.f1938e.onAbsorb((int) this.f1937d.getCurrVelocity());
                    }
                } else if (this.f1939f.isFinished()) {
                    this.f1939f.onAbsorb((int) this.f1937d.getCurrVelocity());
                }
            }
            m2199a();
        }
        if (this.f1937d.isFinished()) {
            m2217Q(1);
        } else {
            C0292v.m2087f0(this);
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || m2222q(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f, float f2, boolean z) {
        return this.f1958y.m2021a(f, f2, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f, float f2) {
        return this.f1958y.m2022b(f, f2);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return m2220f(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.f1958y.m2026f(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        if (this.f1938e != null) {
            int scrollY = getScrollY();
            int paddingLeft2 = 0;
            if (!this.f1938e.isFinished()) {
                int iSave = canvas.save();
                int width = getWidth();
                int height = getHeight();
                int iMin = Math.min(0, scrollY);
                if (Build.VERSION.SDK_INT < 21 || getClipToPadding()) {
                    width -= getPaddingLeft() + getPaddingRight();
                    paddingLeft = getPaddingLeft() + 0;
                } else {
                    paddingLeft = 0;
                }
                if (Build.VERSION.SDK_INT >= 21 && getClipToPadding()) {
                    height -= getPaddingTop() + getPaddingBottom();
                    iMin += getPaddingTop();
                }
                canvas.translate(paddingLeft, iMin);
                this.f1938e.setSize(width, height);
                if (this.f1938e.draw(canvas)) {
                    C0292v.m2087f0(this);
                }
                canvas.restoreToCount(iSave);
            }
            if (this.f1939f.isFinished()) {
                return;
            }
            int iSave2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int iMax = Math.max(getScrollRange(), scrollY) + height2;
            if (Build.VERSION.SDK_INT < 21 || getClipToPadding()) {
                width2 -= getPaddingLeft() + getPaddingRight();
                paddingLeft2 = 0 + getPaddingLeft();
            }
            if (Build.VERSION.SDK_INT >= 21 && getClipToPadding()) {
                height2 -= getPaddingTop() + getPaddingBottom();
                iMax -= getPaddingBottom();
            }
            canvas.translate(paddingLeft2 - width2, iMax);
            canvas.rotate(180.0f, width2, CropImageView.DEFAULT_ASPECT_RATIO);
            this.f1939f.setSize(width2, height2);
            if (this.f1939f.draw(canvas)) {
                C0292v.m2087f0(this);
            }
            canvas.restoreToCount(iSave2);
        }
    }

    /* JADX INFO: renamed from: e */
    protected int m2219e(Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i2 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i - verticalFadingEdgeLength : i;
        if (rect.bottom > i2 && rect.top > scrollY) {
            return Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i2) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i);
        }
        if (rect.top >= scrollY || rect.bottom >= i2) {
            return 0;
        }
        return Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    /* JADX INFO: renamed from: f */
    public boolean m2220f(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.f1958y.m2024d(i, i2, iArr, iArr2, i3);
    }

    /* JADX INFO: renamed from: g */
    public void m2221g(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        this.f1958y.m2025e(i, i2, i3, i4, iArr, i5, iArr2);
    }

    @Override // android.view.View
    protected float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1957x.m2035a();
    }

    int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    protected float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: h */
    public void mo858h(View view, View view2, int i, int i2) {
        this.f1957x.m2037c(view, view2, i, i2);
        m2216P(2, i2);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return m2225u(0);
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: i */
    public void mo859i(View view, int i) {
        this.f1957x.m2038d(view, i);
        m2217Q(i);
    }

    @Override // android.view.View, androidx.core.view.InterfaceC0281k
    public boolean isNestedScrollingEnabled() {
        return this.f1958y.m2029l();
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: j */
    public void mo860j(View view, int i, int i2, int[] iArr, int i3) {
        m2220f(i, i2, iArr, null, i3);
    }

    @Override // androidx.core.view.InterfaceC0284n
    /* JADX INFO: renamed from: m */
    public void mo863m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        m2191C(i4, i5, iArr);
    }

    @Override // android.view.ViewGroup
    protected void measureChild(View view, int i, int i2) {
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), view.getLayoutParams().width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    protected void measureChildWithMargins(View view, int i, int i2, int i3, int i4) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: n */
    public void mo864n(View view, int i, int i2, int i3, int i4, int i5) {
        m2191C(i4, i5, null);
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: o */
    public boolean mo865o(View view, View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1942i = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.f1944k) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != CropImageView.DEFAULT_ASPECT_RATIO) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i = scrollY - verticalScrollFactorCompat;
                if (i < 0) {
                    scrollRange = 0;
                } else if (i <= scrollRange) {
                    scrollRange = i;
                }
                if (scrollRange != scrollY) {
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0077  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 2 && this.f1944k) {
            return true;
        }
        int i = action & 255;
        if (i == 0) {
            int y = (int) motionEvent.getY();
            if (m2206v((int) motionEvent.getX(), y)) {
                this.f1940g = y;
                this.f1951r = motionEvent.getPointerId(0);
                m2207w();
                this.f1945l.addMovement(motionEvent);
                this.f1937d.computeScrollOffset();
                this.f1944k = !this.f1937d.isFinished();
                m2216P(2, 0);
            } else {
                this.f1944k = false;
                m2193G();
            }
        } else if (i == 1) {
            this.f1944k = false;
            this.f1951r = -1;
            m2193G();
            if (this.f1937d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                C0292v.m2087f0(this);
            }
            m2217Q(0);
        } else if (i == 2) {
            int i2 = this.f1951r;
            if (i2 != -1) {
                int iFindPointerIndex = motionEvent.findPointerIndex(i2);
                if (iFindPointerIndex == -1) {
                    String str = "Invalid pointerId=" + i2 + " in onInterceptTouchEvent";
                } else {
                    int y2 = (int) motionEvent.getY(iFindPointerIndex);
                    if (Math.abs(y2 - this.f1940g) > this.f1948o && (2 & getNestedScrollAxes()) == 0) {
                        this.f1944k = true;
                        this.f1940g = y2;
                        m2209y();
                        this.f1945l.addMovement(motionEvent);
                        this.f1954u = 0;
                        ViewParent parent = getParent();
                        if (parent != null) {
                            parent.requestDisallowInterceptTouchEvent(true);
                        }
                    }
                }
            }
        } else if (i != 3) {
            if (i == 6) {
                m2192D(motionEvent);
            }
        }
        return this.f1944k;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredHeight = 0;
        this.f1941h = false;
        View view = this.f1943j;
        if (view != null && m2189A(view, this)) {
            m2196J(this.f1943j);
        }
        this.f1943j = null;
        if (!this.f1942i) {
            if (this.f1956w != null) {
                scrollTo(getScrollX(), this.f1956w.f1960b);
                this.f1956w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iM2201d = m2201d(scrollY, paddingTop, measuredHeight);
            if (iM2201d != scrollY) {
                scrollTo(getScrollX(), iM2201d);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.f1942i = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f1946m && View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(CropImageView.DEFAULT_ASPECT_RATIO, f2, true);
        m2223s((int) f2);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onNestedPreFling(View view, float f, float f2) {
        return dispatchNestedPreFling(f, f2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo860j(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        m2191C(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo858h(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        View viewFindNextFocus = rect == null ? FocusFinder.getInstance().findNextFocus(this, null, i) : FocusFinder.getInstance().findNextFocusFromRect(this, rect, i);
        if (viewFindNextFocus == null || m2210z(viewFindNextFocus)) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof C0299c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0299c c0299c = (C0299c) parcelable;
        super.onRestoreInstanceState(c0299c.getSuperState());
        this.f1956w = c0299c;
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        C0299c c0299c = new C0299c(super.onSaveInstanceState());
        c0299c.f1960b = getScrollY();
        return c0299c;
    }

    @Override // android.view.View
    protected void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        InterfaceC0298b interfaceC0298b = this.f1934A;
        if (interfaceC0298b != null) {
            interfaceC0298b.mo392a(this, i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !m2190B(viewFindFocus, 0, i4)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.f1936c);
        offsetDescendantRectToMyCoords(viewFindFocus, this.f1936c);
        m2202k(m2219e(this.f1936c));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo865o(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onStopNestedScroll(View view) {
        mo859i(view, 0);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        m2209y();
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1954u = 0;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        motionEventObtain.offsetLocation(CropImageView.DEFAULT_ASPECT_RATIO, this.f1954u);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.f1945l;
                velocityTracker.computeCurrentVelocity(1000, this.f1950q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.f1951r);
                if (Math.abs(yVelocity) >= this.f1949p) {
                    int i = -yVelocity;
                    float f = i;
                    if (!dispatchNestedPreFling(CropImageView.DEFAULT_ASPECT_RATIO, f)) {
                        dispatchNestedFling(CropImageView.DEFAULT_ASPECT_RATIO, f, true);
                        m2223s(i);
                    }
                } else if (this.f1937d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C0292v.m2087f0(this);
                }
                this.f1951r = -1;
                m2203l();
            } else if (actionMasked == 2) {
                int iFindPointerIndex = motionEvent.findPointerIndex(this.f1951r);
                if (iFindPointerIndex == -1) {
                    String str = "Invalid pointerId=" + this.f1951r + " in onTouchEvent";
                } else {
                    int y = (int) motionEvent.getY(iFindPointerIndex);
                    int i2 = this.f1940g - y;
                    if (!this.f1944k && Math.abs(i2) > this.f1948o) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.f1944k = true;
                        i2 = i2 > 0 ? i2 - this.f1948o : i2 + this.f1948o;
                    }
                    int i3 = i2;
                    if (this.f1944k) {
                        if (m2220f(0, i3, this.f1953t, this.f1952s, 0)) {
                            i3 -= this.f1953t[1];
                            this.f1954u += this.f1952s[1];
                        }
                        int i4 = i3;
                        this.f1940g = y - this.f1952s[1];
                        int scrollY = getScrollY();
                        int scrollRange = getScrollRange();
                        int overScrollMode = getOverScrollMode();
                        boolean z = overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0);
                        if (m2211E(0, i4, 0, getScrollY(), 0, scrollRange, 0, 0, true) && !m2225u(0)) {
                            this.f1945l.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.f1953t;
                        iArr[1] = 0;
                        m2221g(0, scrollY2, 0, i4 - scrollY2, this.f1952s, 0, iArr);
                        int i5 = this.f1940g;
                        int[] iArr2 = this.f1952s;
                        this.f1940g = i5 - iArr2[1];
                        this.f1954u += iArr2[1];
                        if (z) {
                            int i6 = i4 - this.f1953t[1];
                            m2204p();
                            int i7 = scrollY + i6;
                            if (i7 < 0) {
                                C0303d.m2267a(this.f1938e, i6 / getHeight(), motionEvent.getX(iFindPointerIndex) / getWidth());
                                if (!this.f1939f.isFinished()) {
                                    this.f1939f.onRelease();
                                }
                            } else if (i7 > scrollRange) {
                                C0303d.m2267a(this.f1939f, i6 / getHeight(), 1.0f - (motionEvent.getX(iFindPointerIndex) / getWidth()));
                                if (!this.f1938e.isFinished()) {
                                    this.f1938e.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.f1938e;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f1939f.isFinished())) {
                                C0292v.m2087f0(this);
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.f1944k && getChildCount() > 0 && this.f1937d.springBack(getScrollX(), getScrollY(), 0, 0, 0, getScrollRange())) {
                    C0292v.m2087f0(this);
                }
                this.f1951r = -1;
                m2203l();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.f1940g = (int) motionEvent.getY(actionIndex);
                this.f1951r = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                m2192D(motionEvent);
                this.f1940g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.f1951r));
            }
        } else {
            if (getChildCount() == 0) {
                return false;
            }
            boolean z2 = !this.f1937d.isFinished();
            this.f1944k = z2;
            if (z2 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.f1937d.isFinished()) {
                m2199a();
            }
            this.f1940g = (int) motionEvent.getY();
            this.f1951r = motionEvent.getPointerId(0);
            m2216P(2, 0);
        }
        VelocityTracker velocityTracker2 = this.f1945l;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(motionEventObtain);
        }
        motionEventObtain.recycle();
        return true;
    }

    /* JADX INFO: renamed from: q */
    public boolean m2222q(KeyEvent keyEvent) {
        this.f1936c.setEmpty();
        if (!m2200c()) {
            if (!isFocused() || keyEvent.getKeyCode() == 4) {
                return false;
            }
            View viewFindFocus = findFocus();
            if (viewFindFocus == this) {
                viewFindFocus = null;
            }
            View viewFindNextFocus = FocusFinder.getInstance().findNextFocus(this, viewFindFocus, 130);
            return (viewFindNextFocus == null || viewFindNextFocus == this || !viewFindNextFocus.requestFocus(130)) ? false : true;
        }
        if (keyEvent.getAction() != 0) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 19) {
            return !keyEvent.isAltPressed() ? m2218b(33) : m2224t(33);
        }
        if (keyCode == 20) {
            return !keyEvent.isAltPressed() ? m2218b(130) : m2224t(130);
        }
        if (keyCode != 62) {
            return false;
        }
        m2212F(keyEvent.isShiftPressed() ? 33 : 130);
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (this.f1941h) {
            this.f1943j = view2;
        } else {
            m2196J(view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        return m2197K(rect, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            m2193G();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1941h = true;
        super.requestLayout();
    }

    /* JADX INFO: renamed from: s */
    public void m2223s(int i) {
        if (getChildCount() > 0) {
            this.f1937d.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            m2194H(true);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int iM2201d = m2201d(i, width, width2);
            int iM2201d2 = m2201d(i2, height, height2);
            if (iM2201d == getScrollX() && iM2201d2 == getScrollY()) {
                return;
            }
            super.scrollTo(iM2201d, iM2201d2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.f1946m) {
            this.f1946m = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        this.f1958y.m2030m(z);
    }

    public void setOnScrollChangeListener(InterfaceC0298b interfaceC0298b) {
        this.f1934A = interfaceC0298b;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.f1947n = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return m2216P(i, 0);
    }

    @Override // android.view.View, androidx.core.view.InterfaceC0281k
    public void stopNestedScroll() {
        m2217Q(0);
    }

    /* JADX INFO: renamed from: t */
    public boolean m2224t(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        Rect rect = this.f1936c;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.f1936c.bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin + getPaddingBottom();
            Rect rect2 = this.f1936c;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.f1936c;
        return m2195I(i, rect3.top, rect3.bottom);
    }

    /* JADX INFO: renamed from: u */
    public boolean m2225u(int i) {
        return this.f1958y.m2028k(i);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1936c = new Rect();
        this.f1941h = true;
        this.f1942i = false;
        this.f1943j = null;
        this.f1944k = false;
        this.f1947n = true;
        this.f1951r = -1;
        this.f1952s = new int[2];
        this.f1953t = new int[2];
        m2208x();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f1933C, i, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.f1957x = new C0286p(this);
        this.f1958y = new C0282l(this);
        setNestedScrollingEnabled(true);
        C0292v.m2105o0(this, f1932B);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i) {
        if (getChildCount() <= 0) {
            super.addView(view, i);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
