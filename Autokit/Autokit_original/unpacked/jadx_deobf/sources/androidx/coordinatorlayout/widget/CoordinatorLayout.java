package androidx.coordinatorlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.core.content.C0242a;
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0265d0;
import androidx.core.view.C0266e;
import androidx.core.view.C0286p;
import androidx.core.view.C0292v;
import androidx.core.view.InterfaceC0283m;
import androidx.core.view.InterfaceC0284n;
import androidx.core.view.InterfaceC0287q;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p016c.p040f.C0582a;
import p016c.p040f.C0583b;
import p016c.p040f.C0584c;
import p016c.p041g.p049j.C0621c;
import p016c.p041g.p049j.C0625g;
import p016c.p041g.p049j.InterfaceC0623e;
import p016c.p052i.p053a.AbstractC0630a;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class CoordinatorLayout extends ViewGroup implements InterfaceC0283m, InterfaceC0284n {

    /* JADX INFO: renamed from: v */
    static final String f1657v;

    /* JADX INFO: renamed from: w */
    static final Class<?>[] f1658w;

    /* JADX INFO: renamed from: x */
    static final ThreadLocal<Map<String, Constructor<AbstractC0221c>>> f1659x;

    /* JADX INFO: renamed from: y */
    static final Comparator<View> f1660y;

    /* JADX INFO: renamed from: z */
    private static final InterfaceC0623e<Rect> f1661z;

    /* JADX INFO: renamed from: b */
    private final List<View> f1662b;

    /* JADX INFO: renamed from: c */
    private final C0228a<View> f1663c;

    /* JADX INFO: renamed from: d */
    private final List<View> f1664d;

    /* JADX INFO: renamed from: e */
    private final List<View> f1665e;

    /* JADX INFO: renamed from: f */
    private Paint f1666f;

    /* JADX INFO: renamed from: g */
    private final int[] f1667g;

    /* JADX INFO: renamed from: h */
    private final int[] f1668h;

    /* JADX INFO: renamed from: i */
    private boolean f1669i;

    /* JADX INFO: renamed from: j */
    private boolean f1670j;

    /* JADX INFO: renamed from: k */
    private int[] f1671k;

    /* JADX INFO: renamed from: l */
    private View f1672l;

    /* JADX INFO: renamed from: m */
    private View f1673m;

    /* JADX INFO: renamed from: n */
    private ViewTreeObserverOnPreDrawListenerC0225g f1674n;

    /* JADX INFO: renamed from: o */
    private boolean f1675o;

    /* JADX INFO: renamed from: p */
    private C0265d0 f1676p;

    /* JADX INFO: renamed from: q */
    private boolean f1677q;

    /* JADX INFO: renamed from: r */
    private Drawable f1678r;

    /* JADX INFO: renamed from: s */
    ViewGroup.OnHierarchyChangeListener f1679s;

    /* JADX INFO: renamed from: t */
    private InterfaceC0287q f1680t;

    /* JADX INFO: renamed from: u */
    private final C0286p f1681u;

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$a */
    class C0219a implements InterfaceC0287q {
        C0219a() {
        }

        @Override // androidx.core.view.InterfaceC0287q
        /* JADX INFO: renamed from: a */
        public C0265d0 mo527a(View view, C0265d0 c0265d0) {
            CoordinatorLayout.this.m1555W(c0265d0);
            return c0265d0;
        }
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$b */
    public interface InterfaceC0220b {
        AbstractC0221c getBehavior();
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$c */
    public static abstract class AbstractC0221c<V extends View> {
        public AbstractC0221c() {
        }

        /* JADX INFO: renamed from: A */
        public boolean mo1569A(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                return m1598z(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        @Deprecated
        /* JADX INFO: renamed from: B */
        public void m1570B(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        /* JADX INFO: renamed from: C */
        public void mo1571C(CoordinatorLayout coordinatorLayout, V v, View view, int i) {
            if (i == 0) {
                m1570B(coordinatorLayout, v, view);
            }
        }

        /* JADX INFO: renamed from: D */
        public boolean mo1572D(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* JADX INFO: renamed from: a */
        public boolean m1573a(CoordinatorLayout coordinatorLayout, V v) {
            return m1576d(coordinatorLayout, v) > CropImageView.DEFAULT_ASPECT_RATIO;
        }

        /* JADX INFO: renamed from: b */
        public boolean mo1574b(CoordinatorLayout coordinatorLayout, V v, Rect rect) {
            return false;
        }

        /* JADX INFO: renamed from: c */
        public int m1575c(CoordinatorLayout coordinatorLayout, V v) {
            return -16777216;
        }

        /* JADX INFO: renamed from: d */
        public float m1576d(CoordinatorLayout coordinatorLayout, V v) {
            return CropImageView.DEFAULT_ASPECT_RATIO;
        }

        /* JADX INFO: renamed from: e */
        public boolean mo1577e(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* JADX INFO: renamed from: f */
        public C0265d0 m1578f(CoordinatorLayout coordinatorLayout, V v, C0265d0 c0265d0) {
            return c0265d0;
        }

        /* JADX INFO: renamed from: g */
        public void mo1579g(C0224f c0224f) {
        }

        /* JADX INFO: renamed from: h */
        public boolean mo1580h(CoordinatorLayout coordinatorLayout, V v, View view) {
            return false;
        }

        /* JADX INFO: renamed from: i */
        public void mo1581i(CoordinatorLayout coordinatorLayout, V v, View view) {
        }

        /* JADX INFO: renamed from: j */
        public void mo1582j() {
        }

        /* JADX INFO: renamed from: k */
        public boolean mo1583k(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
            return false;
        }

        /* JADX INFO: renamed from: l */
        public boolean mo1584l(CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        /* JADX INFO: renamed from: m */
        public boolean mo1585m(CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        /* JADX INFO: renamed from: n */
        public boolean m1586n(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2, boolean z) {
            return false;
        }

        /* JADX INFO: renamed from: o */
        public boolean mo1587o(CoordinatorLayout coordinatorLayout, V v, View view, float f, float f2) {
            return false;
        }

        @Deprecated
        /* JADX INFO: renamed from: p */
        public void m1588p(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr) {
        }

        /* JADX INFO: renamed from: q */
        public void mo1589q(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                m1588p(coordinatorLayout, v, view, i, i2, iArr);
            }
        }

        @Deprecated
        /* JADX INFO: renamed from: r */
        public void m1590r(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        }

        @Deprecated
        /* JADX INFO: renamed from: s */
        public void m1591s(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                m1590r(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        /* JADX INFO: renamed from: t */
        public void mo1592t(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            iArr[0] = iArr[0] + i3;
            iArr[1] = iArr[1] + i4;
            m1591s(coordinatorLayout, v, view, i, i2, i3, i4, i5);
        }

        @Deprecated
        /* JADX INFO: renamed from: u */
        public void m1593u(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        }

        /* JADX INFO: renamed from: v */
        public void m1594v(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i, int i2) {
            if (i2 == 0) {
                m1593u(coordinatorLayout, v, view, view2, i);
            }
        }

        /* JADX INFO: renamed from: w */
        public boolean mo1595w(CoordinatorLayout coordinatorLayout, V v, Rect rect, boolean z) {
            return false;
        }

        /* JADX INFO: renamed from: x */
        public void mo1596x(CoordinatorLayout coordinatorLayout, V v, Parcelable parcelable) {
        }

        /* JADX INFO: renamed from: y */
        public Parcelable mo1597y(CoordinatorLayout coordinatorLayout, V v) {
            return View.BaseSavedState.EMPTY_STATE;
        }

        @Deprecated
        /* JADX INFO: renamed from: z */
        public boolean m1598z(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
            return false;
        }

        public AbstractC0221c(Context context, AttributeSet attributeSet) {
        }
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$d */
    @Retention(RetentionPolicy.RUNTIME)
    @Deprecated
    public @interface InterfaceC0222d {
        Class<? extends AbstractC0221c> value();
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$e */
    private class ViewGroupOnHierarchyChangeListenerC0223e implements ViewGroup.OnHierarchyChangeListener {
        ViewGroupOnHierarchyChangeListenerC0223e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1679s;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            CoordinatorLayout.this.m1550H(2);
            ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = CoordinatorLayout.this.f1679s;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$g */
    class ViewTreeObserverOnPreDrawListenerC0225g implements ViewTreeObserver.OnPreDrawListener {
        ViewTreeObserverOnPreDrawListenerC0225g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CoordinatorLayout.this.m1550H(0);
            return true;
        }
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$i */
    static class C0227i implements Comparator<View> {
        C0227i() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(View view, View view2) {
            float fM2063N = C0292v.m2063N(view);
            float fM2063N2 = C0292v.m2063N(view2);
            if (fM2063N > fM2063N2) {
                return -1;
            }
            return fM2063N < fM2063N2 ? 1 : 0;
        }
    }

    static {
        Package r0 = CoordinatorLayout.class.getPackage();
        f1657v = r0 != null ? r0.getName() : null;
        if (Build.VERSION.SDK_INT >= 21) {
            f1660y = new C0227i();
        } else {
            f1660y = null;
        }
        f1658w = new Class[]{Context.class, AttributeSet.class};
        f1659x = new ThreadLocal<>();
        f1661z = new C0625g(12);
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C0582a.coordinatorLayoutStyle);
    }

    /* JADX INFO: renamed from: A */
    private boolean m1525A(View view) {
        return this.f1663c.m1633j(view);
    }

    /* JADX INFO: renamed from: C */
    private void m1526C(View view, int i) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        Rect rectM1541a = m1541a();
        rectM1541a.set(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0224f).leftMargin, getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0224f).topMargin, (getWidth() - getPaddingRight()) - ((ViewGroup.MarginLayoutParams) c0224f).rightMargin, (getHeight() - getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin);
        if (this.f1676p != null && C0292v.m2126z(this) && !C0292v.m2126z(view)) {
            rectM1541a.left += this.f1676p.m1840g();
            rectM1541a.top += this.f1676p.m1842i();
            rectM1541a.right -= this.f1676p.m1841h();
            rectM1541a.bottom -= this.f1676p.m1839f();
        }
        Rect rectM1541a2 = m1541a();
        C0266e.m1882a(m1536S(c0224f.f1686c), view.getMeasuredWidth(), view.getMeasuredHeight(), rectM1541a, rectM1541a2, i);
        view.layout(rectM1541a2.left, rectM1541a2.top, rectM1541a2.right, rectM1541a2.bottom);
        m1533O(rectM1541a);
        m1533O(rectM1541a2);
    }

    /* JADX INFO: renamed from: D */
    private void m1527D(View view, View view2, int i) {
        Rect rectM1541a = m1541a();
        Rect rectM1541a2 = m1541a();
        try {
            m1565t(view2, rectM1541a);
            m1566u(view, i, rectM1541a, rectM1541a2);
            view.layout(rectM1541a2.left, rectM1541a2.top, rectM1541a2.right, rectM1541a2.bottom);
        } finally {
            m1533O(rectM1541a);
            m1533O(rectM1541a2);
        }
    }

    /* JADX INFO: renamed from: E */
    private void m1528E(View view, int i, int i2) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        int iM1883b = C0266e.m1883b(m1537T(c0224f.f1686c), i2);
        int i3 = iM1883b & 7;
        int i4 = iM1883b & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        if (i2 == 1) {
            i = width - i;
        }
        int iM1546w = m1546w(i) - measuredWidth;
        int i5 = 0;
        if (i3 == 1) {
            iM1546w += measuredWidth / 2;
        } else if (i3 == 5) {
            iM1546w += measuredWidth;
        }
        if (i4 == 16) {
            i5 = 0 + (measuredHeight / 2);
        } else if (i4 == 80) {
            i5 = measuredHeight + 0;
        }
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0224f).leftMargin, Math.min(iM1546w, ((width - getPaddingRight()) - measuredWidth) - ((ViewGroup.MarginLayoutParams) c0224f).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0224f).topMargin, Math.min(i5, ((height - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth + iMax, measuredHeight + iMax2);
    }

    /* JADX INFO: renamed from: F */
    private void m1529F(View view, Rect rect, int i) {
        boolean z;
        boolean z2;
        int width;
        int i2;
        int i3;
        int i4;
        int height;
        int i5;
        int i6;
        int i7;
        if (C0292v.m2069T(view) && view.getWidth() > 0 && view.getHeight() > 0) {
            C0224f c0224f = (C0224f) view.getLayoutParams();
            AbstractC0221c abstractC0221cM1607f = c0224f.m1607f();
            Rect rectM1541a = m1541a();
            Rect rectM1541a2 = m1541a();
            rectM1541a2.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            if (abstractC0221cM1607f == null || !abstractC0221cM1607f.mo1574b(this, view, rectM1541a)) {
                rectM1541a.set(rectM1541a2);
            } else if (!rectM1541a2.contains(rectM1541a)) {
                throw new IllegalArgumentException("Rect should be within the child's bounds. Rect:" + rectM1541a.toShortString() + " | Bounds:" + rectM1541a2.toShortString());
            }
            m1533O(rectM1541a2);
            if (rectM1541a.isEmpty()) {
                m1533O(rectM1541a);
                return;
            }
            int iM1883b = C0266e.m1883b(c0224f.f1691h, i);
            boolean z3 = true;
            if ((iM1883b & 48) != 48 || (i6 = (rectM1541a.top - ((ViewGroup.MarginLayoutParams) c0224f).topMargin) - c0224f.f1693j) >= (i7 = rect.top)) {
                z = false;
            } else {
                m1539V(view, i7 - i6);
                z = true;
            }
            if ((iM1883b & 80) == 80 && (height = ((getHeight() - rectM1541a.bottom) - ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin) + c0224f.f1693j) < (i5 = rect.bottom)) {
                m1539V(view, height - i5);
                z = true;
            }
            if (!z) {
                m1539V(view, 0);
            }
            if ((iM1883b & 3) != 3 || (i3 = (rectM1541a.left - ((ViewGroup.MarginLayoutParams) c0224f).leftMargin) - c0224f.f1692i) >= (i4 = rect.left)) {
                z2 = false;
            } else {
                m1538U(view, i4 - i3);
                z2 = true;
            }
            if ((iM1883b & 5) != 5 || (width = ((getWidth() - rectM1541a.right) - ((ViewGroup.MarginLayoutParams) c0224f).rightMargin) + c0224f.f1692i) >= (i2 = rect.right)) {
                z3 = z2;
            } else {
                m1538U(view, width - i2);
            }
            if (!z3) {
                m1538U(view, 0);
            }
            m1533O(rectM1541a);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: K */
    static AbstractC0221c m1530K(Context context, AttributeSet attributeSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !TextUtils.isEmpty(f1657v)) {
            str = f1657v + '.' + str;
        }
        try {
            Map<String, Constructor<AbstractC0221c>> map = f1659x.get();
            if (map == null) {
                map = new HashMap<>();
                f1659x.set(map);
            }
            Constructor<AbstractC0221c> constructor = map.get(str);
            if (constructor == null) {
                constructor = Class.forName(str, false, context.getClassLoader()).getConstructor(f1658w);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return constructor.newInstance(context, attributeSet);
        } catch (Exception e) {
            throw new RuntimeException("Could not inflate Behavior subclass " + str, e);
        }
    }

    /* JADX INFO: renamed from: L */
    private boolean m1531L(MotionEvent motionEvent, int i) {
        int actionMasked = motionEvent.getActionMasked();
        List<View> list = this.f1664d;
        m1547z(list);
        int size = list.size();
        MotionEvent motionEventObtain = null;
        boolean zMo1583k = false;
        boolean z = false;
        for (int i2 = 0; i2 < size; i2++) {
            View view = list.get(i2);
            C0224f c0224f = (C0224f) view.getLayoutParams();
            AbstractC0221c abstractC0221cM1607f = c0224f.m1607f();
            if (!(zMo1583k || z) || actionMasked == 0) {
                if (!zMo1583k && abstractC0221cM1607f != null) {
                    if (i == 0) {
                        zMo1583k = abstractC0221cM1607f.mo1583k(this, view, motionEvent);
                    } else if (i == 1) {
                        zMo1583k = abstractC0221cM1607f.mo1572D(this, view, motionEvent);
                    }
                    if (zMo1583k) {
                        this.f1672l = view;
                    }
                }
                boolean zM1604c = c0224f.m1604c();
                boolean zM1610i = c0224f.m1610i(this, view);
                z = zM1610i && !zM1604c;
                if (zM1610i && !z) {
                    break;
                }
            } else if (abstractC0221cM1607f != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0);
                }
                if (i == 0) {
                    abstractC0221cM1607f.mo1583k(this, view, motionEventObtain);
                } else if (i == 1) {
                    abstractC0221cM1607f.mo1572D(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zMo1583k;
    }

    /* JADX INFO: renamed from: M */
    private void m1532M() {
        this.f1662b.clear();
        this.f1663c.m1628c();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            C0224f c0224fM1568y = m1568y(childAt);
            c0224fM1568y.m1605d(this, childAt);
            this.f1663c.m1627b(childAt);
            for (int i2 = 0; i2 < childCount; i2++) {
                if (i2 != i) {
                    View childAt2 = getChildAt(i2);
                    if (c0224fM1568y.m1603b(this, childAt, childAt2)) {
                        if (!this.f1663c.m1629d(childAt2)) {
                            this.f1663c.m1627b(childAt2);
                        }
                        this.f1663c.m1626a(childAt2, childAt);
                    }
                }
            }
        }
        this.f1662b.addAll(this.f1663c.m1632i());
        Collections.reverse(this.f1662b);
    }

    /* JADX INFO: renamed from: O */
    private static void m1533O(Rect rect) {
        rect.setEmpty();
        f1661z.mo4848a(rect);
    }

    /* JADX INFO: renamed from: Q */
    private void m1534Q(boolean z) {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            AbstractC0221c abstractC0221cM1607f = ((C0224f) childAt.getLayoutParams()).m1607f();
            if (abstractC0221cM1607f != null) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0);
                if (z) {
                    abstractC0221cM1607f.mo1583k(this, childAt, motionEventObtain);
                } else {
                    abstractC0221cM1607f.mo1572D(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ((C0224f) getChildAt(i2).getLayoutParams()).m1614m();
        }
        this.f1672l = null;
        this.f1669i = false;
    }

    /* JADX INFO: renamed from: R */
    private static int m1535R(int i) {
        if (i == 0) {
            return 17;
        }
        return i;
    }

    /* JADX INFO: renamed from: S */
    private static int m1536S(int i) {
        if ((i & 7) == 0) {
            i |= 8388611;
        }
        return (i & 112) == 0 ? i | 48 : i;
    }

    /* JADX INFO: renamed from: T */
    private static int m1537T(int i) {
        if (i == 0) {
            return 8388661;
        }
        return i;
    }

    /* JADX INFO: renamed from: U */
    private void m1538U(View view, int i) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        int i2 = c0224f.f1692i;
        if (i2 != i) {
            C0292v.m2074Y(view, i - i2);
            c0224f.f1692i = i;
        }
    }

    /* JADX INFO: renamed from: V */
    private void m1539V(View view, int i) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        int i2 = c0224f.f1693j;
        if (i2 != i) {
            C0292v.m2075Z(view, i - i2);
            c0224f.f1693j = i;
        }
    }

    /* JADX INFO: renamed from: X */
    private void m1540X() {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!C0292v.m2126z(this)) {
            C0292v.m2127z0(this, null);
            return;
        }
        if (this.f1680t == null) {
            this.f1680t = new C0219a();
        }
        C0292v.m2127z0(this, this.f1680t);
        setSystemUiVisibility(1280);
    }

    /* JADX INFO: renamed from: a */
    private static Rect m1541a() {
        Rect rectMo4849b = f1661z.mo4849b();
        return rectMo4849b == null ? new Rect() : rectMo4849b;
    }

    /* JADX INFO: renamed from: c */
    private static int m1542c(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    /* JADX INFO: renamed from: d */
    private void m1543d(C0224f c0224f, Rect rect, int i, int i2) {
        int width = getWidth();
        int height = getHeight();
        int iMax = Math.max(getPaddingLeft() + ((ViewGroup.MarginLayoutParams) c0224f).leftMargin, Math.min(rect.left, ((width - getPaddingRight()) - i) - ((ViewGroup.MarginLayoutParams) c0224f).rightMargin));
        int iMax2 = Math.max(getPaddingTop() + ((ViewGroup.MarginLayoutParams) c0224f).topMargin, Math.min(rect.top, ((height - getPaddingBottom()) - i2) - ((ViewGroup.MarginLayoutParams) c0224f).bottomMargin));
        rect.set(iMax, iMax2, i + iMax, i2 + iMax2);
    }

    /* JADX INFO: renamed from: e */
    private C0265d0 m1544e(C0265d0 c0265d0) {
        AbstractC0221c abstractC0221cM1607f;
        if (c0265d0.m1844l()) {
            return c0265d0;
        }
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (C0292v.m2126z(childAt) && (abstractC0221cM1607f = ((C0224f) childAt.getLayoutParams()).m1607f()) != null) {
                abstractC0221cM1607f.m1578f(this, childAt, c0265d0);
                if (c0265d0.m1844l()) {
                    break;
                }
            }
        }
        return c0265d0;
    }

    /* JADX INFO: renamed from: v */
    private void m1545v(View view, int i, Rect rect, Rect rect2, C0224f c0224f, int i2, int i3) {
        int iM1883b = C0266e.m1883b(m1535R(c0224f.f1686c), i);
        int iM1883b2 = C0266e.m1883b(m1536S(c0224f.f1687d), i);
        int i4 = iM1883b & 7;
        int i5 = iM1883b & 112;
        int i6 = iM1883b2 & 7;
        int i7 = iM1883b2 & 112;
        int iWidth = i6 != 1 ? i6 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i7 != 16 ? i7 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i4 == 1) {
            iWidth -= i2 / 2;
        } else if (i4 != 5) {
            iWidth -= i2;
        }
        if (i5 == 16) {
            iHeight -= i3 / 2;
        } else if (i5 != 80) {
            iHeight -= i3;
        }
        rect2.set(iWidth, iHeight, i2 + iWidth, i3 + iHeight);
    }

    /* JADX INFO: renamed from: w */
    private int m1546w(int i) {
        int[] iArr = this.f1671k;
        if (iArr == null) {
            String str = "No keylines defined for " + this + " - attempted index lookup " + i;
            return 0;
        }
        if (i >= 0 && i < iArr.length) {
            return iArr[i];
        }
        String str2 = "Keyline index " + i + " out of range for " + this;
        return 0;
    }

    /* JADX INFO: renamed from: z */
    private void m1547z(List<View> list) {
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i = childCount - 1; i >= 0; i--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i) : i));
        }
        Comparator<View> comparator = f1660y;
        if (comparator != null) {
            Collections.sort(list, comparator);
        }
    }

    /* JADX INFO: renamed from: B */
    public boolean m1548B(View view, int i, int i2) {
        Rect rectM1541a = m1541a();
        m1565t(view, rectM1541a);
        try {
            return rectM1541a.contains(i, i2);
        } finally {
            m1533O(rectM1541a);
        }
    }

    /* JADX INFO: renamed from: G */
    void m1549G(View view, int i) {
        AbstractC0221c abstractC0221cM1607f;
        C0224f c0224f = (C0224f) view.getLayoutParams();
        if (c0224f.f1694k != null) {
            Rect rectM1541a = m1541a();
            Rect rectM1541a2 = m1541a();
            Rect rectM1541a3 = m1541a();
            m1565t(c0224f.f1694k, rectM1541a);
            m1562q(view, false, rectM1541a2);
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            m1545v(view, i, rectM1541a, rectM1541a3, c0224f, measuredWidth, measuredHeight);
            boolean z = (rectM1541a3.left == rectM1541a2.left && rectM1541a3.top == rectM1541a2.top) ? false : true;
            m1543d(c0224f, rectM1541a3, measuredWidth, measuredHeight);
            int i2 = rectM1541a3.left - rectM1541a2.left;
            int i3 = rectM1541a3.top - rectM1541a2.top;
            if (i2 != 0) {
                C0292v.m2074Y(view, i2);
            }
            if (i3 != 0) {
                C0292v.m2075Z(view, i3);
            }
            if (z && (abstractC0221cM1607f = c0224f.m1607f()) != null) {
                abstractC0221cM1607f.mo1580h(this, view, c0224f.f1694k);
            }
            m1533O(rectM1541a);
            m1533O(rectM1541a2);
            m1533O(rectM1541a3);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00ca  */
    /* JADX INFO: renamed from: H */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    final void m1550H(int i) {
        int i2;
        boolean zMo1580h;
        int iM2046C = C0292v.m2046C(this);
        int size = this.f1662b.size();
        Rect rectM1541a = m1541a();
        Rect rectM1541a2 = m1541a();
        Rect rectM1541a3 = m1541a();
        for (int i3 = 0; i3 < size; i3++) {
            View view = this.f1662b.get(i3);
            C0224f c0224f = (C0224f) view.getLayoutParams();
            if (i != 0 || view.getVisibility() != 8) {
                for (int i4 = 0; i4 < i3; i4++) {
                    if (c0224f.f1695l == this.f1662b.get(i4)) {
                        m1549G(view, iM2046C);
                    }
                }
                m1562q(view, true, rectM1541a2);
                if (c0224f.f1690g != 0 && !rectM1541a2.isEmpty()) {
                    int iM1883b = C0266e.m1883b(c0224f.f1690g, iM2046C);
                    int i5 = iM1883b & 112;
                    if (i5 == 48) {
                        rectM1541a.top = Math.max(rectM1541a.top, rectM1541a2.bottom);
                    } else if (i5 == 80) {
                        rectM1541a.bottom = Math.max(rectM1541a.bottom, getHeight() - rectM1541a2.top);
                    }
                    int i6 = iM1883b & 7;
                    if (i6 == 3) {
                        rectM1541a.left = Math.max(rectM1541a.left, rectM1541a2.right);
                    } else if (i6 == 5) {
                        rectM1541a.right = Math.max(rectM1541a.right, getWidth() - rectM1541a2.left);
                    }
                }
                if (c0224f.f1691h != 0 && view.getVisibility() == 0) {
                    m1529F(view, rectM1541a, iM2046C);
                }
                if (i != 2) {
                    m1567x(view, rectM1541a3);
                    if (!rectM1541a3.equals(rectM1541a2)) {
                        m1553N(view, rectM1541a2);
                        for (i2 = i3 + 1; i2 < size; i2++) {
                            View view2 = this.f1662b.get(i2);
                            C0224f c0224f2 = (C0224f) view2.getLayoutParams();
                            AbstractC0221c abstractC0221cM1607f = c0224f2.m1607f();
                            if (abstractC0221cM1607f != null && abstractC0221cM1607f.mo1577e(this, view2, view)) {
                                if (i == 0 && c0224f2.m1608g()) {
                                    c0224f2.m1612k();
                                } else {
                                    if (i != 2) {
                                        zMo1580h = abstractC0221cM1607f.mo1580h(this, view2, view);
                                    } else {
                                        abstractC0221cM1607f.mo1581i(this, view2, view);
                                        zMo1580h = true;
                                    }
                                    if (i == 1) {
                                        c0224f2.m1616p(zMo1580h);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    while (i2 < size) {
                    }
                }
            }
        }
        m1533O(rectM1541a);
        m1533O(rectM1541a2);
        m1533O(rectM1541a3);
    }

    /* JADX INFO: renamed from: I */
    public void m1551I(View view, int i) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        if (c0224f.m1602a()) {
            throw new IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        View view2 = c0224f.f1694k;
        if (view2 != null) {
            m1527D(view, view2, i);
            return;
        }
        int i2 = c0224f.f1688e;
        if (i2 >= 0) {
            m1528E(view, i2, i);
        } else {
            m1526C(view, i);
        }
    }

    /* JADX INFO: renamed from: J */
    public void m1552J(View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: N */
    void m1553N(View view, Rect rect) {
        ((C0224f) view.getLayoutParams()).m1617q(rect);
    }

    /* JADX INFO: renamed from: P */
    void m1554P() {
        if (this.f1670j && this.f1674n != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1674n);
        }
        this.f1675o = false;
    }

    /* JADX INFO: renamed from: W */
    final C0265d0 m1555W(C0265d0 c0265d0) {
        if (!C0621c.m4846a(this.f1676p, c0265d0)) {
            this.f1676p = c0265d0;
            boolean z = c0265d0 != null && c0265d0.m1842i() > 0;
            this.f1677q = z;
            setWillNotDraw(!z && getBackground() == null);
            m1544e(c0265d0);
            requestLayout();
        }
        return c0265d0;
    }

    /* JADX INFO: renamed from: b */
    void m1556b() {
        if (this.f1670j) {
            if (this.f1674n == null) {
                this.f1674n = new ViewTreeObserverOnPreDrawListenerC0225g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1674n);
        }
        this.f1675o = true;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof C0224f) && super.checkLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        AbstractC0221c abstractC0221c = c0224f.f1684a;
        if (abstractC0221c != null) {
            float fM1576d = abstractC0221c.m1576d(this, view);
            if (fM1576d > CropImageView.DEFAULT_ASPECT_RATIO) {
                if (this.f1666f == null) {
                    this.f1666f = new Paint();
                }
                this.f1666f.setColor(c0224f.f1684a.m1575c(this, view));
                this.f1666f.setAlpha(m1542c(Math.round(fM1576d * 255.0f), 0, 255));
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f1666f);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1678r;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    /* JADX INFO: renamed from: f */
    public void m1557f(View view) {
        List listM1630g = this.f1663c.m1630g(view);
        if (listM1630g == null || listM1630g.isEmpty()) {
            return;
        }
        for (int i = 0; i < listM1630g.size(); i++) {
            View view2 = (View) listM1630g.get(i);
            AbstractC0221c abstractC0221cM1607f = ((C0224f) view2.getLayoutParams()).m1607f();
            if (abstractC0221cM1607f != null) {
                abstractC0221cM1607f.mo1580h(this, view2, view);
            }
        }
    }

    /* JADX INFO: renamed from: g */
    void m1558g() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            }
            if (m1525A(getChildAt(i))) {
                z = true;
                break;
            }
            i++;
        }
        if (z != this.f1675o) {
            if (z) {
                m1556b();
            } else {
                m1554P();
            }
        }
    }

    final List<View> getDependencySortedChildren() {
        m1532M();
        return Collections.unmodifiableList(this.f1662b);
    }

    public final C0265d0 getLastWindowInsets() {
        return this.f1676p;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.f1681u.m2035a();
    }

    public Drawable getStatusBarBackground() {
        return this.f1678r;
    }

    @Override // android.view.View
    protected int getSuggestedMinimumHeight() {
        return Math.max(super.getSuggestedMinimumHeight(), getPaddingTop() + getPaddingBottom());
    }

    @Override // android.view.View
    protected int getSuggestedMinimumWidth() {
        return Math.max(super.getSuggestedMinimumWidth(), getPaddingLeft() + getPaddingRight());
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: h */
    public void mo858h(View view, View view2, int i, int i2) {
        AbstractC0221c abstractC0221cM1607f;
        this.f1681u.m2037c(view, view2, i, i2);
        this.f1673m = view2;
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            C0224f c0224f = (C0224f) childAt.getLayoutParams();
            if (c0224f.m1611j(i2) && (abstractC0221cM1607f = c0224f.m1607f()) != null) {
                abstractC0221cM1607f.m1594v(this, childAt, view, view2, i, i2);
            }
        }
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: i */
    public void mo859i(View view, int i) {
        this.f1681u.m2038d(view, i);
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            C0224f c0224f = (C0224f) childAt.getLayoutParams();
            if (c0224f.m1611j(i)) {
                AbstractC0221c abstractC0221cM1607f = c0224f.m1607f();
                if (abstractC0221cM1607f != null) {
                    abstractC0221cM1607f.mo1571C(this, childAt, view, i);
                }
                c0224f.m1613l(i);
                c0224f.m1612k();
            }
        }
        this.f1673m = null;
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: j */
    public void mo860j(View view, int i, int i2, int[] iArr, int i3) {
        AbstractC0221c abstractC0221cM1607f;
        int childCount = getChildCount();
        boolean z = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                C0224f c0224f = (C0224f) childAt.getLayoutParams();
                if (c0224f.m1611j(i3) && (abstractC0221cM1607f = c0224f.m1607f()) != null) {
                    int[] iArr2 = this.f1667g;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    abstractC0221cM1607f.mo1589q(this, childAt, view, i, i2, iArr2, i3);
                    int[] iArr3 = this.f1667g;
                    iMax = i > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.f1667g;
                    iMax2 = i2 > 0 ? Math.max(iMax2, iArr4[1]) : Math.min(iMax2, iArr4[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z) {
            m1550H(1);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public C0224f generateDefaultLayoutParams() {
        return new C0224f(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public C0224f generateLayoutParams(AttributeSet attributeSet) {
        return new C0224f(getContext(), attributeSet);
    }

    @Override // androidx.core.view.InterfaceC0284n
    /* JADX INFO: renamed from: m */
    public void mo863m(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        AbstractC0221c abstractC0221cM1607f;
        int childCount = getChildCount();
        boolean z = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                C0224f c0224f = (C0224f) childAt.getLayoutParams();
                if (c0224f.m1611j(i5) && (abstractC0221cM1607f = c0224f.m1607f()) != null) {
                    int[] iArr2 = this.f1667g;
                    iArr2[0] = 0;
                    iArr2[1] = 0;
                    abstractC0221cM1607f.mo1592t(this, childAt, view, i, i2, i3, i4, i5, iArr2);
                    int[] iArr3 = this.f1667g;
                    iMax = i3 > 0 ? Math.max(iMax, iArr3[0]) : Math.min(iMax, iArr3[0]);
                    iMax2 = i4 > 0 ? Math.max(iMax2, this.f1667g[1]) : Math.min(iMax2, this.f1667g[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iArr[0] + iMax;
        iArr[1] = iArr[1] + iMax2;
        if (z) {
            m1550H(1);
        }
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: n */
    public void mo864n(View view, int i, int i2, int i3, int i4, int i5) {
        mo863m(view, i, i2, i3, i4, 0, this.f1668h);
    }

    @Override // androidx.core.view.InterfaceC0283m
    /* JADX INFO: renamed from: o */
    public boolean mo865o(View view, View view2, int i, int i2) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() != 8) {
                C0224f c0224f = (C0224f) childAt.getLayoutParams();
                AbstractC0221c abstractC0221cM1607f = c0224f.m1607f();
                if (abstractC0221cM1607f != null) {
                    boolean zMo1569A = abstractC0221cM1607f.mo1569A(this, childAt, view, view2, i, i2);
                    z |= zMo1569A;
                    c0224f.m1618r(i2, zMo1569A);
                } else {
                    c0224f.m1618r(i2, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m1534Q(false);
        if (this.f1675o) {
            if (this.f1674n == null) {
                this.f1674n = new ViewTreeObserverOnPreDrawListenerC0225g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.f1674n);
        }
        if (this.f1676p == null && C0292v.m2126z(this)) {
            C0292v.m2099l0(this);
        }
        this.f1670j = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m1534Q(false);
        if (this.f1675o && this.f1674n != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f1674n);
        }
        View view = this.f1673m;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.f1670j = false;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.f1677q || this.f1678r == null) {
            return;
        }
        C0265d0 c0265d0 = this.f1676p;
        int iM1842i = c0265d0 != null ? c0265d0.m1842i() : 0;
        if (iM1842i > 0) {
            this.f1678r.setBounds(0, 0, getWidth(), iM1842i);
            this.f1678r.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            m1534Q(true);
        }
        boolean zM1531L = m1531L(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            m1534Q(true);
        }
        return zM1531L;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        AbstractC0221c abstractC0221cM1607f;
        int iM2046C = C0292v.m2046C(this);
        int size = this.f1662b.size();
        for (int i5 = 0; i5 < size; i5++) {
            View view = this.f1662b.get(i5);
            if (view.getVisibility() != 8 && ((abstractC0221cM1607f = ((C0224f) view.getLayoutParams()).m1607f()) == null || !abstractC0221cM1607f.mo1584l(this, view, iM2046C))) {
                m1551I(view, iM2046C);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        int i3;
        int iMax;
        int iMakeMeasureSpec;
        int iMakeMeasureSpec2;
        AbstractC0221c abstractC0221cM1607f;
        C0224f c0224f;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        m1532M();
        m1558g();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = getPaddingRight();
        int paddingBottom = getPaddingBottom();
        int iM2046C = C0292v.m2046C(this);
        boolean z = iM2046C == 1;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int i10 = paddingLeft + paddingRight;
        int i11 = paddingTop + paddingBottom;
        int suggestedMinimumWidth = getSuggestedMinimumWidth();
        int suggestedMinimumHeight = getSuggestedMinimumHeight();
        boolean z2 = this.f1676p != null && C0292v.m2126z(this);
        int size3 = this.f1662b.size();
        int i12 = suggestedMinimumWidth;
        int i13 = suggestedMinimumHeight;
        int iCombineMeasuredStates = 0;
        int i14 = 0;
        while (i14 < size3) {
            View view = this.f1662b.get(i14);
            if (view.getVisibility() == 8) {
                i8 = i14;
                i5 = size3;
                i6 = paddingLeft;
            } else {
                C0224f c0224f2 = (C0224f) view.getLayoutParams();
                int i15 = c0224f2.f1688e;
                if (i15 < 0 || mode == 0) {
                    i3 = iCombineMeasuredStates;
                } else {
                    int iM1546w = m1546w(i15);
                    int iM1883b = C0266e.m1883b(m1537T(c0224f2.f1686c), iM2046C) & 7;
                    i3 = iCombineMeasuredStates;
                    if ((iM1883b == 3 && !z) || (iM1883b == 5 && z)) {
                        iMax = Math.max(0, (size - paddingRight) - iM1546w);
                    } else if ((iM1883b == 5 && !z) || (iM1883b == 3 && z)) {
                        iMax = Math.max(0, iM1546w - paddingLeft);
                    }
                    if (z2 || C0292v.m2126z(view)) {
                        iMakeMeasureSpec = i;
                        iMakeMeasureSpec2 = i2;
                    } else {
                        int iM1840g = this.f1676p.m1840g() + this.f1676p.m1841h();
                        int iM1842i = this.f1676p.m1842i() + this.f1676p.m1839f();
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size - iM1840g, mode);
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(size2 - iM1842i, mode2);
                    }
                    abstractC0221cM1607f = c0224f2.m1607f();
                    if (abstractC0221cM1607f == null) {
                        c0224f = c0224f2;
                        i7 = i3;
                        i8 = i14;
                        i4 = i13;
                        i6 = paddingLeft;
                        i9 = i12;
                        i5 = size3;
                        if (!abstractC0221cM1607f.mo1585m(this, view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0)) {
                        }
                        C0224f c0224f3 = c0224f;
                        int iMax2 = Math.max(i9, i10 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0224f3).leftMargin + ((ViewGroup.MarginLayoutParams) c0224f3).rightMargin);
                        int iMax3 = Math.max(i4, i11 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0224f3).topMargin + ((ViewGroup.MarginLayoutParams) c0224f3).bottomMargin);
                        iCombineMeasuredStates = View.combineMeasuredStates(i7, view.getMeasuredState());
                        i12 = iMax2;
                        i13 = iMax3;
                    } else {
                        c0224f = c0224f2;
                        i4 = i13;
                        i5 = size3;
                        i6 = paddingLeft;
                        i7 = i3;
                        i8 = i14;
                        i9 = i12;
                    }
                    m1552J(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    C0224f c0224f32 = c0224f;
                    int iMax22 = Math.max(i9, i10 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0224f32).leftMargin + ((ViewGroup.MarginLayoutParams) c0224f32).rightMargin);
                    int iMax32 = Math.max(i4, i11 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0224f32).topMargin + ((ViewGroup.MarginLayoutParams) c0224f32).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i7, view.getMeasuredState());
                    i12 = iMax22;
                    i13 = iMax32;
                }
                iMax = 0;
                if (z2) {
                    iMakeMeasureSpec = i;
                    iMakeMeasureSpec2 = i2;
                    abstractC0221cM1607f = c0224f2.m1607f();
                    if (abstractC0221cM1607f == null) {
                    }
                    m1552J(view, iMakeMeasureSpec, iMax, iMakeMeasureSpec2, 0);
                    C0224f c0224f322 = c0224f;
                    int iMax222 = Math.max(i9, i10 + view.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0224f322).leftMargin + ((ViewGroup.MarginLayoutParams) c0224f322).rightMargin);
                    int iMax322 = Math.max(i4, i11 + view.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0224f322).topMargin + ((ViewGroup.MarginLayoutParams) c0224f322).bottomMargin);
                    iCombineMeasuredStates = View.combineMeasuredStates(i7, view.getMeasuredState());
                    i12 = iMax222;
                    i13 = iMax322;
                }
            }
            i14 = i8 + 1;
            paddingLeft = i6;
            size3 = i5;
        }
        int i16 = iCombineMeasuredStates;
        setMeasuredDimension(View.resolveSizeAndState(i12, i, (-16777216) & i16), View.resolveSizeAndState(i13, i2, i16 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onNestedFling(View view, float f, float f2, boolean z) {
        AbstractC0221c abstractC0221cM1607f;
        int childCount = getChildCount();
        boolean zM1586n = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C0224f c0224f = (C0224f) childAt.getLayoutParams();
                if (c0224f.m1611j(0) && (abstractC0221cM1607f = c0224f.m1607f()) != null) {
                    zM1586n |= abstractC0221cM1607f.m1586n(this, childAt, view, f, f2, z);
                }
            }
        }
        if (zM1586n) {
            m1550H(1);
        }
        return zM1586n;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onNestedPreFling(View view, float f, float f2) {
        AbstractC0221c abstractC0221cM1607f;
        int childCount = getChildCount();
        boolean zMo1587o = false;
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getVisibility() != 8) {
                C0224f c0224f = (C0224f) childAt.getLayoutParams();
                if (c0224f.m1611j(0) && (abstractC0221cM1607f = c0224f.m1607f()) != null) {
                    zMo1587o |= abstractC0221cM1607f.mo1587o(this, childAt, view, f, f2);
                }
            }
        }
        return zMo1587o;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
        mo860j(view, i, i2, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        mo864n(view, i, i2, i3, i4, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onNestedScrollAccepted(View view, View view2, int i) {
        mo858h(view, view2, i, 0);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof C0226h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        C0226h c0226h = (C0226h) parcelable;
        super.onRestoreInstanceState(c0226h.m4862j());
        SparseArray<Parcelable> sparseArray = c0226h.f1702d;
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0221c abstractC0221cM1607f = m1568y(childAt).m1607f();
            if (id != -1 && abstractC0221cM1607f != null && (parcelable2 = sparseArray.get(id)) != null) {
                abstractC0221cM1607f.mo1596x(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Parcelable parcelableMo1597y;
        C0226h c0226h = new C0226h(super.onSaveInstanceState());
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            int id = childAt.getId();
            AbstractC0221c abstractC0221cM1607f = ((C0224f) childAt.getLayoutParams()).m1607f();
            if (id != -1 && abstractC0221cM1607f != null && (parcelableMo1597y = abstractC0221cM1607f.mo1597y(this, childAt)) != null) {
                sparseArray.append(id, parcelableMo1597y);
            }
        }
        c0226h.f1702d = sparseArray;
        return c0226h;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public boolean onStartNestedScroll(View view, View view2, int i) {
        return mo865o(view, view2, i, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.InterfaceC0285o
    public void onStopNestedScroll(View view) {
        mo859i(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002b A[PHI: r3
      0x002b: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:9:0x0022, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0054  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean zM1531L;
        boolean zMo1572D;
        MotionEvent motionEventObtain;
        int actionMasked = motionEvent.getActionMasked();
        if (this.f1672l == null) {
            zM1531L = m1531L(motionEvent, 1);
            if (!zM1531L) {
                zMo1572D = false;
            }
            motionEventObtain = null;
            if (this.f1672l != null) {
                zMo1572D |= super.onTouchEvent(motionEvent);
            } else if (zM1531L) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, CropImageView.DEFAULT_ASPECT_RATIO, CropImageView.DEFAULT_ASPECT_RATIO, 0);
                super.onTouchEvent(motionEventObtain);
            }
            if (motionEventObtain != null) {
                motionEventObtain.recycle();
            }
            if (actionMasked != 1 || actionMasked == 3) {
                m1534Q(false);
            }
            return zMo1572D;
        }
        zM1531L = false;
        AbstractC0221c abstractC0221cM1607f = ((C0224f) this.f1672l.getLayoutParams()).m1607f();
        if (abstractC0221cM1607f != null) {
            zMo1572D = abstractC0221cM1607f.mo1572D(this, this.f1672l, motionEvent);
        }
        motionEventObtain = null;
        if (this.f1672l != null) {
        }
        if (motionEventObtain != null) {
        }
        if (actionMasked != 1) {
            m1534Q(false);
        }
        return zMo1572D;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public C0224f generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0224f ? new C0224f((C0224f) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new C0224f((ViewGroup.MarginLayoutParams) layoutParams) : new C0224f(layoutParams);
    }

    /* JADX INFO: renamed from: q */
    void m1562q(View view, boolean z, Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            m1565t(view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    /* JADX INFO: renamed from: r */
    public List<View> m1563r(View view) {
        List<View> listM1631h = this.f1663c.m1631h(view);
        this.f1665e.clear();
        if (listM1631h != null) {
            this.f1665e.addAll(listM1631h);
        }
        return this.f1665e;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        AbstractC0221c abstractC0221cM1607f = ((C0224f) view.getLayoutParams()).m1607f();
        if (abstractC0221cM1607f == null || !abstractC0221cM1607f.mo1595w(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f1669i) {
            return;
        }
        m1534Q(false);
        this.f1669i = true;
    }

    /* JADX INFO: renamed from: s */
    public List<View> m1564s(View view) {
        List listM1630g = this.f1663c.m1630g(view);
        this.f1665e.clear();
        if (listM1630g != null) {
            this.f1665e.addAll(listM1630g);
        }
        return this.f1665e;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        m1540X();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.f1679s = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(Drawable drawable) {
        Drawable drawable2 = this.f1678r;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.f1678r = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.f1678r.setState(getDrawableState());
                }
                C0251a.m1792m(this.f1678r, C0292v.m2046C(this));
                this.f1678r.setVisible(getVisibility() == 0, false);
                this.f1678r.setCallback(this);
            }
            C0292v.m2087f0(this);
        }
    }

    public void setStatusBarBackgroundColor(int i) {
        setStatusBarBackground(new ColorDrawable(i));
    }

    public void setStatusBarBackgroundResource(int i) {
        setStatusBarBackground(i != 0 ? C0242a.m1699d(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        Drawable drawable = this.f1678r;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.f1678r.setVisible(z, false);
    }

    /* JADX INFO: renamed from: t */
    void m1565t(View view, Rect rect) {
        C0229b.m1634a(this, view, rect);
    }

    /* JADX INFO: renamed from: u */
    void m1566u(View view, int i, Rect rect, Rect rect2) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        m1545v(view, i, rect, rect2, c0224f, measuredWidth, measuredHeight);
        m1543d(c0224f, rect2, measuredWidth, measuredHeight);
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f1678r;
    }

    /* JADX INFO: renamed from: x */
    void m1567x(View view, Rect rect) {
        rect.set(((C0224f) view.getLayoutParams()).m1609h());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: y */
    C0224f m1568y(View view) {
        C0224f c0224f = (C0224f) view.getLayoutParams();
        if (!c0224f.f1685b) {
            if (view instanceof InterfaceC0220b) {
                c0224f.m1615o(((InterfaceC0220b) view).getBehavior());
                c0224f.f1685b = true;
            } else {
                InterfaceC0222d interfaceC0222d = null;
                for (Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    interfaceC0222d = (InterfaceC0222d) superclass.getAnnotation(InterfaceC0222d.class);
                    if (interfaceC0222d != null) {
                        break;
                    }
                }
                if (interfaceC0222d != null) {
                    try {
                        c0224f.m1615o(interfaceC0222d.value().getDeclaredConstructor(new Class[0]).newInstance(new Object[0]));
                    } catch (Exception unused) {
                        String str = "Default behavior class " + interfaceC0222d.value().getName() + " could not be instantiated. Did you forget a default constructor?";
                    }
                }
                c0224f.f1685b = true;
            }
        }
        return c0224f;
    }

    public CoordinatorLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1662b = new ArrayList();
        this.f1663c = new C0228a<>();
        this.f1664d = new ArrayList();
        this.f1665e = new ArrayList();
        this.f1667g = new int[2];
        this.f1668h = new int[2];
        this.f1681u = new C0286p(this);
        TypedArray typedArrayObtainStyledAttributes = i == 0 ? context.obtainStyledAttributes(attributeSet, C0584c.CoordinatorLayout, 0, C0583b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, C0584c.CoordinatorLayout, i, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            if (i == 0) {
                saveAttributeDataForStyleable(context, C0584c.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, 0, C0583b.Widget_Support_CoordinatorLayout);
            } else {
                saveAttributeDataForStyleable(context, C0584c.CoordinatorLayout, attributeSet, typedArrayObtainStyledAttributes, i, 0);
            }
        }
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C0584c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            Resources resources = context.getResources();
            this.f1671k = resources.getIntArray(resourceId);
            float f = resources.getDisplayMetrics().density;
            int length = this.f1671k.length;
            for (int i2 = 0; i2 < length; i2++) {
                this.f1671k[i2] = (int) (r12[i2] * f);
            }
        }
        this.f1678r = typedArrayObtainStyledAttributes.getDrawable(C0584c.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        m1540X();
        super.setOnHierarchyChangeListener(new ViewGroupOnHierarchyChangeListenerC0223e());
        if (C0292v.m2042A(this) == 0) {
            C0292v.m2123x0(this, 1);
        }
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$h */
    protected static class C0226h extends AbstractC0630a {
        public static final Parcelable.Creator<C0226h> CREATOR = new a();

        /* JADX INFO: renamed from: d */
        SparseArray<Parcelable> f1702d;

        /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$h$a */
        static class a implements Parcelable.ClassLoaderCreator<C0226h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public C0226h createFromParcel(Parcel parcel) {
                return new C0226h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public C0226h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new C0226h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public C0226h[] newArray(int i) {
                return new C0226h[i];
            }
        }

        public C0226h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            int i = parcel.readInt();
            int[] iArr = new int[i];
            parcel.readIntArray(iArr);
            Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f1702d = new SparseArray<>(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f1702d.append(iArr[i2], parcelableArray[i2]);
            }
        }

        @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            SparseArray<Parcelable> sparseArray = this.f1702d;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            Parcelable[] parcelableArr = new Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f1702d.keyAt(i2);
                parcelableArr[i2] = this.f1702d.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }

        public C0226h(Parcelable parcelable) {
            super(parcelable);
        }
    }

    /* JADX INFO: renamed from: androidx.coordinatorlayout.widget.CoordinatorLayout$f */
    public static class C0224f extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a */
        AbstractC0221c f1684a;

        /* JADX INFO: renamed from: b */
        boolean f1685b;

        /* JADX INFO: renamed from: c */
        public int f1686c;

        /* JADX INFO: renamed from: d */
        public int f1687d;

        /* JADX INFO: renamed from: e */
        public int f1688e;

        /* JADX INFO: renamed from: f */
        int f1689f;

        /* JADX INFO: renamed from: g */
        public int f1690g;

        /* JADX INFO: renamed from: h */
        public int f1691h;

        /* JADX INFO: renamed from: i */
        int f1692i;

        /* JADX INFO: renamed from: j */
        int f1693j;

        /* JADX INFO: renamed from: k */
        View f1694k;

        /* JADX INFO: renamed from: l */
        View f1695l;

        /* JADX INFO: renamed from: m */
        private boolean f1696m;

        /* JADX INFO: renamed from: n */
        private boolean f1697n;

        /* JADX INFO: renamed from: o */
        private boolean f1698o;

        /* JADX INFO: renamed from: p */
        private boolean f1699p;

        /* JADX INFO: renamed from: q */
        final Rect f1700q;

        public C0224f(int i, int i2) {
            super(i, i2);
            this.f1685b = false;
            this.f1686c = 0;
            this.f1687d = 0;
            this.f1688e = -1;
            this.f1689f = -1;
            this.f1690g = 0;
            this.f1691h = 0;
            this.f1700q = new Rect();
        }

        /* JADX INFO: renamed from: n */
        private void m1599n(View view, CoordinatorLayout coordinatorLayout) {
            View viewFindViewById = coordinatorLayout.findViewById(this.f1689f);
            this.f1694k = viewFindViewById;
            if (viewFindViewById == null) {
                if (coordinatorLayout.isInEditMode()) {
                    this.f1695l = null;
                    this.f1694k = null;
                    return;
                }
                throw new IllegalStateException("Could not find CoordinatorLayout descendant view with id " + coordinatorLayout.getResources().getResourceName(this.f1689f) + " to anchor view " + view);
            }
            if (viewFindViewById == coordinatorLayout) {
                if (!coordinatorLayout.isInEditMode()) {
                    throw new IllegalStateException("View can not be anchored to the the parent CoordinatorLayout");
                }
                this.f1695l = null;
                this.f1694k = null;
                return;
            }
            for (ViewParent parent = viewFindViewById.getParent(); parent != coordinatorLayout && parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    if (!coordinatorLayout.isInEditMode()) {
                        throw new IllegalStateException("Anchor must not be a descendant of the anchored view");
                    }
                    this.f1695l = null;
                    this.f1694k = null;
                    return;
                }
                if (parent instanceof View) {
                    viewFindViewById = parent;
                }
            }
            this.f1695l = viewFindViewById;
        }

        /* JADX INFO: renamed from: s */
        private boolean m1600s(View view, int i) {
            int iM1883b = C0266e.m1883b(((C0224f) view.getLayoutParams()).f1690g, i);
            return iM1883b != 0 && (C0266e.m1883b(this.f1691h, i) & iM1883b) == iM1883b;
        }

        /* JADX INFO: renamed from: t */
        private boolean m1601t(View view, CoordinatorLayout coordinatorLayout) {
            if (this.f1694k.getId() != this.f1689f) {
                return false;
            }
            View view2 = this.f1694k;
            for (ViewParent parent = view2.getParent(); parent != coordinatorLayout; parent = parent.getParent()) {
                if (parent == null || parent == view) {
                    this.f1695l = null;
                    this.f1694k = null;
                    return false;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
            this.f1695l = view2;
            return true;
        }

        /* JADX INFO: renamed from: a */
        boolean m1602a() {
            return this.f1694k == null && this.f1689f != -1;
        }

        /* JADX INFO: renamed from: b */
        boolean m1603b(CoordinatorLayout coordinatorLayout, View view, View view2) {
            AbstractC0221c abstractC0221c;
            return view2 == this.f1695l || m1600s(view2, C0292v.m2046C(coordinatorLayout)) || ((abstractC0221c = this.f1684a) != null && abstractC0221c.mo1577e(coordinatorLayout, view, view2));
        }

        /* JADX INFO: renamed from: c */
        boolean m1604c() {
            if (this.f1684a == null) {
                this.f1696m = false;
            }
            return this.f1696m;
        }

        /* JADX INFO: renamed from: d */
        View m1605d(CoordinatorLayout coordinatorLayout, View view) {
            if (this.f1689f == -1) {
                this.f1695l = null;
                this.f1694k = null;
                return null;
            }
            if (this.f1694k == null || !m1601t(view, coordinatorLayout)) {
                m1599n(view, coordinatorLayout);
            }
            return this.f1694k;
        }

        /* JADX INFO: renamed from: e */
        public int m1606e() {
            return this.f1689f;
        }

        /* JADX INFO: renamed from: f */
        public AbstractC0221c m1607f() {
            return this.f1684a;
        }

        /* JADX INFO: renamed from: g */
        boolean m1608g() {
            return this.f1699p;
        }

        /* JADX INFO: renamed from: h */
        Rect m1609h() {
            return this.f1700q;
        }

        /* JADX INFO: renamed from: i */
        boolean m1610i(CoordinatorLayout coordinatorLayout, View view) {
            boolean z = this.f1696m;
            if (z) {
                return true;
            }
            AbstractC0221c abstractC0221c = this.f1684a;
            boolean zM1573a = (abstractC0221c != null ? abstractC0221c.m1573a(coordinatorLayout, view) : false) | z;
            this.f1696m = zM1573a;
            return zM1573a;
        }

        /* JADX INFO: renamed from: j */
        boolean m1611j(int i) {
            if (i == 0) {
                return this.f1697n;
            }
            if (i != 1) {
                return false;
            }
            return this.f1698o;
        }

        /* JADX INFO: renamed from: k */
        void m1612k() {
            this.f1699p = false;
        }

        /* JADX INFO: renamed from: l */
        void m1613l(int i) {
            m1618r(i, false);
        }

        /* JADX INFO: renamed from: m */
        void m1614m() {
            this.f1696m = false;
        }

        /* JADX INFO: renamed from: o */
        public void m1615o(AbstractC0221c abstractC0221c) {
            AbstractC0221c abstractC0221c2 = this.f1684a;
            if (abstractC0221c2 != abstractC0221c) {
                if (abstractC0221c2 != null) {
                    abstractC0221c2.mo1582j();
                }
                this.f1684a = abstractC0221c;
                this.f1685b = true;
                if (abstractC0221c != null) {
                    abstractC0221c.mo1579g(this);
                }
            }
        }

        /* JADX INFO: renamed from: p */
        void m1616p(boolean z) {
            this.f1699p = z;
        }

        /* JADX INFO: renamed from: q */
        void m1617q(Rect rect) {
            this.f1700q.set(rect);
        }

        /* JADX INFO: renamed from: r */
        void m1618r(int i, boolean z) {
            if (i == 0) {
                this.f1697n = z;
            } else {
                if (i != 1) {
                    return;
                }
                this.f1698o = z;
            }
        }

        C0224f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1685b = false;
            this.f1686c = 0;
            this.f1687d = 0;
            this.f1688e = -1;
            this.f1689f = -1;
            this.f1690g = 0;
            this.f1691h = 0;
            this.f1700q = new Rect();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0584c.CoordinatorLayout_Layout);
            this.f1686c = typedArrayObtainStyledAttributes.getInteger(C0584c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f1689f = typedArrayObtainStyledAttributes.getResourceId(C0584c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f1687d = typedArrayObtainStyledAttributes.getInteger(C0584c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f1688e = typedArrayObtainStyledAttributes.getInteger(C0584c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f1690g = typedArrayObtainStyledAttributes.getInt(C0584c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.f1691h = typedArrayObtainStyledAttributes.getInt(C0584c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(C0584c.CoordinatorLayout_Layout_layout_behavior);
            this.f1685b = zHasValue;
            if (zHasValue) {
                this.f1684a = CoordinatorLayout.m1530K(context, attributeSet, typedArrayObtainStyledAttributes.getString(C0584c.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            AbstractC0221c abstractC0221c = this.f1684a;
            if (abstractC0221c != null) {
                abstractC0221c.mo1579g(this);
            }
        }

        public C0224f(C0224f c0224f) {
            super((ViewGroup.MarginLayoutParams) c0224f);
            this.f1685b = false;
            this.f1686c = 0;
            this.f1687d = 0;
            this.f1688e = -1;
            this.f1689f = -1;
            this.f1690g = 0;
            this.f1691h = 0;
            this.f1700q = new Rect();
        }

        public C0224f(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f1685b = false;
            this.f1686c = 0;
            this.f1687d = 0;
            this.f1688e = -1;
            this.f1689f = -1;
            this.f1690g = 0;
            this.f1691h = 0;
            this.f1700q = new Rect();
        }

        public C0224f(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1685b = false;
            this.f1686c = 0;
            this.f1687d = 0;
            this.f1688e = -1;
            this.f1689f = -1;
            this.f1690g = 0;
            this.f1691h = 0;
            this.f1700q = new Rect();
        }
    }
}
