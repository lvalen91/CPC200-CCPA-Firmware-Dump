package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.core.view.C0266e;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: androidx.appcompat.widget.g0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0167g0 extends ViewGroup {

    /* JADX INFO: renamed from: b */
    private boolean f1105b;

    /* JADX INFO: renamed from: c */
    private int f1106c;

    /* JADX INFO: renamed from: d */
    private int f1107d;

    /* JADX INFO: renamed from: e */
    private int f1108e;

    /* JADX INFO: renamed from: f */
    private int f1109f;

    /* JADX INFO: renamed from: g */
    private int f1110g;

    /* JADX INFO: renamed from: h */
    private float f1111h;

    /* JADX INFO: renamed from: i */
    private boolean f1112i;

    /* JADX INFO: renamed from: j */
    private int[] f1113j;

    /* JADX INFO: renamed from: k */
    private int[] f1114k;

    /* JADX INFO: renamed from: l */
    private Drawable f1115l;

    /* JADX INFO: renamed from: m */
    private int f1116m;

    /* JADX INFO: renamed from: n */
    private int f1117n;

    /* JADX INFO: renamed from: o */
    private int f1118o;

    /* JADX INFO: renamed from: p */
    private int f1119p;

    /* JADX INFO: renamed from: androidx.appcompat.widget.g0$a */
    public static class a extends LinearLayout.LayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public a(int i, int i2) {
            super(i, i2);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public C0167g0(Context context) {
        this(context, null);
    }

    /* JADX INFO: renamed from: A */
    private void m1107A(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    /* JADX INFO: renamed from: k */
    private void m1108k(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View viewM1117s = m1117s(i3);
            if (viewM1117s.getVisibility() != 8) {
                a aVar = (a) viewM1117s.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).height == -1) {
                    int i4 = ((LinearLayout.LayoutParams) aVar).width;
                    ((LinearLayout.LayoutParams) aVar).width = viewM1117s.getMeasuredWidth();
                    measureChildWithMargins(viewM1117s, i2, 0, iMakeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) aVar).width = i4;
                }
            }
        }
    }

    /* JADX INFO: renamed from: l */
    private void m1109l(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View viewM1117s = m1117s(i3);
            if (viewM1117s.getVisibility() != 8) {
                a aVar = (a) viewM1117s.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).width == -1) {
                    int i4 = ((LinearLayout.LayoutParams) aVar).height;
                    ((LinearLayout.LayoutParams) aVar).height = viewM1117s.getMeasuredHeight();
                    measureChildWithMargins(viewM1117s, iMakeMeasureSpec, 0, i2, 0);
                    ((LinearLayout.LayoutParams) aVar).height = i4;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    /* JADX INFO: renamed from: g */
    void m1110g(Canvas canvas) {
        int right;
        int left;
        int i;
        int virtualChildCount = getVirtualChildCount();
        boolean zM1022b = C0154a1.m1022b(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View viewM1117s = m1117s(i2);
            if (viewM1117s != null && viewM1117s.getVisibility() != 8 && m1118t(i2)) {
                a aVar = (a) viewM1117s.getLayoutParams();
                m1113j(canvas, zM1022b ? viewM1117s.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin : (viewM1117s.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.f1116m);
            }
        }
        if (m1118t(virtualChildCount)) {
            View viewM1117s2 = m1117s(virtualChildCount - 1);
            if (viewM1117s2 != null) {
                a aVar2 = (a) viewM1117s2.getLayoutParams();
                if (zM1022b) {
                    left = viewM1117s2.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i = this.f1116m;
                    right = left - i;
                } else {
                    right = viewM1117s2.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            } else if (zM1022b) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.f1116m;
                right = left - i;
            }
            m1113j(canvas, right);
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f1106c < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f1106c;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f1106c == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f1107d;
        if (this.f1108e == 1 && (i = this.f1109f & 112) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1110g) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1110g;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f1106c;
    }

    public Drawable getDividerDrawable() {
        return this.f1115l;
    }

    public int getDividerPadding() {
        return this.f1119p;
    }

    public int getDividerWidth() {
        return this.f1116m;
    }

    public int getGravity() {
        return this.f1109f;
    }

    public int getOrientation() {
        return this.f1108e;
    }

    public int getShowDividers() {
        return this.f1118o;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1111h;
    }

    /* JADX INFO: renamed from: h */
    void m1111h(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View viewM1117s = m1117s(i);
            if (viewM1117s != null && viewM1117s.getVisibility() != 8 && m1118t(i)) {
                m1112i(canvas, (viewM1117s.getTop() - ((LinearLayout.LayoutParams) ((a) viewM1117s.getLayoutParams())).topMargin) - this.f1117n);
            }
        }
        if (m1118t(virtualChildCount)) {
            View viewM1117s2 = m1117s(virtualChildCount - 1);
            m1112i(canvas, viewM1117s2 == null ? (getHeight() - getPaddingBottom()) - this.f1117n : viewM1117s2.getBottom() + ((LinearLayout.LayoutParams) ((a) viewM1117s2.getLayoutParams())).bottomMargin);
        }
    }

    /* JADX INFO: renamed from: i */
    void m1112i(Canvas canvas, int i) {
        this.f1115l.setBounds(getPaddingLeft() + this.f1119p, i, (getWidth() - getPaddingRight()) - this.f1119p, this.f1117n + i);
        this.f1115l.draw(canvas);
    }

    /* JADX INFO: renamed from: j */
    void m1113j(Canvas canvas, int i) {
        this.f1115l.setBounds(i, getPaddingTop() + this.f1119p, this.f1116m + i, (getHeight() - getPaddingBottom()) - this.f1119p);
        this.f1115l.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        int i = this.f1108e;
        if (i == 0) {
            return new a(-2, -2);
        }
        if (i == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f1115l == null) {
            return;
        }
        if (this.f1108e == 1) {
            m1111h(canvas);
        } else {
            m1110g(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.f1108e == 1) {
            m1120v(i, i2, i3, i4);
        } else {
            m1119u(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.f1108e == 1) {
            m1124z(i, i2);
        } else {
            m1122x(i, i2);
        }
    }

    /* JADX INFO: renamed from: p */
    int m1114p(View view, int i) {
        return 0;
    }

    /* JADX INFO: renamed from: q */
    int m1115q(View view) {
        return 0;
    }

    /* JADX INFO: renamed from: r */
    int m1116r(View view) {
        return 0;
    }

    /* JADX INFO: renamed from: s */
    View m1117s(int i) {
        return getChildAt(i);
    }

    public void setBaselineAligned(boolean z) {
        this.f1105b = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f1106c = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.f1115l) {
            return;
        }
        this.f1115l = drawable;
        if (drawable != null) {
            this.f1116m = drawable.getIntrinsicWidth();
            this.f1117n = drawable.getIntrinsicHeight();
        } else {
            this.f1116m = 0;
            this.f1117n = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.f1119p = i;
    }

    public void setGravity(int i) {
        if (this.f1109f != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f1109f = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f1109f;
        if ((8388615 & i3) != i2) {
            this.f1109f = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.f1112i = z;
    }

    public void setOrientation(int i) {
        if (this.f1108e != i) {
            this.f1108e = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.f1118o) {
            requestLayout();
        }
        this.f1118o = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f1109f;
        if ((i3 & 112) != i2) {
            this.f1109f = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.f1111h = Math.max(CropImageView.DEFAULT_ASPECT_RATIO, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    /* JADX INFO: renamed from: t */
    protected boolean m1118t(int i) {
        if (i == 0) {
            return (this.f1118o & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.f1118o & 4) != 0;
        }
        if ((this.f1118o & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f7  */
    /* JADX INFO: renamed from: u */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m1119u(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int measuredHeight;
        int i11;
        boolean zM1022b = C0154a1.m1022b(this);
        int paddingTop = getPaddingTop();
        int i12 = i4 - i2;
        int paddingBottom = i12 - getPaddingBottom();
        int paddingBottom2 = (i12 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i13 = this.f1109f;
        int i14 = i13 & 112;
        boolean z = this.f1105b;
        int[] iArr = this.f1113j;
        int[] iArr2 = this.f1114k;
        int iM1883b = C0266e.m1883b(8388615 & i13, C0292v.m2046C(this));
        int paddingLeft = iM1883b != 1 ? iM1883b != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.f1110g : getPaddingLeft() + (((i3 - i) - this.f1110g) / 2);
        if (zM1022b) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int iM1114p = 0;
        while (iM1114p < virtualChildCount) {
            int i15 = i5 + (i6 * iM1114p);
            View viewM1117s = m1117s(i15);
            if (viewM1117s == null) {
                paddingLeft += m1123y(i15);
            } else if (viewM1117s.getVisibility() != 8) {
                int measuredWidth = viewM1117s.getMeasuredWidth();
                int measuredHeight2 = viewM1117s.getMeasuredHeight();
                a aVar = (a) viewM1117s.getLayoutParams();
                int i16 = iM1114p;
                if (z) {
                    i7 = virtualChildCount;
                    int baseline = ((LinearLayout.LayoutParams) aVar).height != -1 ? viewM1117s.getBaseline() : -1;
                    i8 = ((LinearLayout.LayoutParams) aVar).gravity;
                    if (i8 < 0) {
                        i8 = i14;
                    }
                    i9 = i8 & 112;
                    i10 = i14;
                    if (i9 != 16) {
                        measuredHeight = ((((paddingBottom2 - measuredHeight2) / 2) + paddingTop) + ((LinearLayout.LayoutParams) aVar).topMargin) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                    } else if (i9 == 48) {
                        measuredHeight = ((LinearLayout.LayoutParams) aVar).topMargin + paddingTop;
                        if (baseline != -1) {
                            measuredHeight += iArr[1] - baseline;
                        }
                    } else if (i9 != 80) {
                        measuredHeight = paddingTop;
                    } else {
                        measuredHeight = (paddingBottom - measuredHeight2) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        if (baseline != -1) {
                            measuredHeight -= iArr2[2] - (viewM1117s.getMeasuredHeight() - baseline);
                        }
                    }
                    if (m1118t(i15)) {
                        paddingLeft += this.f1116m;
                    }
                    int i17 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    i11 = paddingTop;
                    m1107A(viewM1117s, i17 + m1115q(viewM1117s), measuredHeight, measuredWidth, measuredHeight2);
                    int iM1116r = i17 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + m1116r(viewM1117s);
                    iM1114p = i16 + m1114p(viewM1117s, i15);
                    paddingLeft = iM1116r;
                    iM1114p++;
                    virtualChildCount = i7;
                    i14 = i10;
                    paddingTop = i11;
                } else {
                    i7 = virtualChildCount;
                }
                i8 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i8 < 0) {
                }
                i9 = i8 & 112;
                i10 = i14;
                if (i9 != 16) {
                }
                if (m1118t(i15)) {
                }
                int i172 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                i11 = paddingTop;
                m1107A(viewM1117s, i172 + m1115q(viewM1117s), measuredHeight, measuredWidth, measuredHeight2);
                int iM1116r2 = i172 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + m1116r(viewM1117s);
                iM1114p = i16 + m1114p(viewM1117s, i15);
                paddingLeft = iM1116r2;
                iM1114p++;
                virtualChildCount = i7;
                i14 = i10;
                paddingTop = i11;
            }
            i11 = paddingTop;
            i7 = virtualChildCount;
            i10 = i14;
            iM1114p++;
            virtualChildCount = i7;
            i14 = i10;
            paddingTop = i11;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /* JADX INFO: renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m1120v(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int paddingLeft = getPaddingLeft();
        int i8 = i3 - i;
        int paddingRight = i8 - getPaddingRight();
        int paddingRight2 = (i8 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.f1109f;
        int i10 = i9 & 112;
        int i11 = i9 & 8388615;
        int paddingTop = i10 != 16 ? i10 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - this.f1110g : getPaddingTop() + (((i4 - i2) - this.f1110g) / 2);
        int iM1114p = 0;
        while (iM1114p < virtualChildCount) {
            View viewM1117s = m1117s(iM1114p);
            if (viewM1117s == null) {
                paddingTop += m1123y(iM1114p);
            } else if (viewM1117s.getVisibility() != 8) {
                int measuredWidth = viewM1117s.getMeasuredWidth();
                int measuredHeight = viewM1117s.getMeasuredHeight();
                a aVar = (a) viewM1117s.getLayoutParams();
                int i12 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i12 < 0) {
                    i12 = i11;
                }
                int iM1883b = C0266e.m1883b(i12, C0292v.m2046C(this)) & 7;
                if (iM1883b == 1) {
                    i5 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) aVar).leftMargin;
                    i6 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                } else if (iM1883b != 5) {
                    i7 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    int i13 = i7;
                    if (m1118t(iM1114p)) {
                        paddingTop += this.f1117n;
                    }
                    int i14 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                    m1107A(viewM1117s, i13, i14 + m1115q(viewM1117s), measuredWidth, measuredHeight);
                    int iM1116r = i14 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + m1116r(viewM1117s);
                    iM1114p += m1114p(viewM1117s, iM1114p);
                    paddingTop = iM1116r;
                } else {
                    i5 = paddingRight - measuredWidth;
                    i6 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                }
                i7 = i5 - i6;
                int i132 = i7;
                if (m1118t(iM1114p)) {
                }
                int i142 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                m1107A(viewM1117s, i132, i142 + m1115q(viewM1117s), measuredWidth, measuredHeight);
                int iM1116r2 = i142 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + m1116r(viewM1117s);
                iM1114p += m1114p(viewM1117s, iM1114p);
                paddingTop = iM1116r2;
            }
            iM1114p++;
        }
    }

    /* JADX INFO: renamed from: w */
    void m1121w(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d6  */
    /* JADX INFO: renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m1122x(int i, int i2) {
        int[] iArr;
        int i3;
        int iMax;
        int i4;
        int i5;
        int iMax2;
        int iMax3;
        int i6;
        int i7;
        float f;
        int i8;
        int baseline;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean z;
        boolean z2;
        View view;
        int i14;
        boolean z3;
        int measuredHeight;
        int iM1114p;
        int baseline2;
        int i15;
        this.f1110g = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.f1113j == null || this.f1114k == null) {
            this.f1113j = new int[4];
            this.f1114k = new int[4];
        }
        int[] iArr2 = this.f1113j;
        int[] iArr3 = this.f1114k;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z4 = this.f1105b;
        boolean z5 = this.f1112i;
        int i16 = 1073741824;
        boolean z6 = mode == 1073741824;
        float f2 = CropImageView.DEFAULT_ASPECT_RATIO;
        int iM1114p2 = 0;
        int iMax4 = 0;
        int iMax5 = 0;
        int iMax6 = 0;
        int iMax7 = 0;
        boolean z7 = false;
        int iCombineMeasuredStates = 0;
        boolean z8 = true;
        boolean z9 = false;
        while (true) {
            iArr = iArr3;
            if (iM1114p2 >= virtualChildCount) {
                break;
            }
            View viewM1117s = m1117s(iM1114p2);
            if (viewM1117s == null) {
                this.f1110g += m1123y(iM1114p2);
            } else if (viewM1117s.getVisibility() == 8) {
                iM1114p2 += m1114p(viewM1117s, iM1114p2);
            } else {
                if (m1118t(iM1114p2)) {
                    this.f1110g += this.f1116m;
                }
                a aVar = (a) viewM1117s.getLayoutParams();
                float f3 = ((LinearLayout.LayoutParams) aVar).weight;
                float f4 = f2 + f3;
                if (mode == i16 && ((LinearLayout.LayoutParams) aVar).width == 0 && f3 > CropImageView.DEFAULT_ASPECT_RATIO) {
                    if (z6) {
                        this.f1110g += ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin;
                    } else {
                        int i17 = this.f1110g;
                        this.f1110g = Math.max(i17, ((LinearLayout.LayoutParams) aVar).leftMargin + i17 + ((LinearLayout.LayoutParams) aVar).rightMargin);
                    }
                    if (z4) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        viewM1117s.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        i13 = iM1114p2;
                        z = z5;
                        z2 = z4;
                        view = viewM1117s;
                    } else {
                        i13 = iM1114p2;
                        z = z5;
                        z2 = z4;
                        view = viewM1117s;
                        i14 = 1073741824;
                        z7 = true;
                        if (mode2 == i14 && ((LinearLayout.LayoutParams) aVar).height == -1) {
                            z3 = true;
                            z9 = true;
                        } else {
                            z3 = false;
                        }
                        int i18 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i18;
                        iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                        if (z2 && (baseline2 = view.getBaseline()) != -1) {
                            i15 = ((LinearLayout.LayoutParams) aVar).gravity;
                            if (i15 < 0) {
                                i15 = this.f1109f;
                            }
                            int i19 = (((i15 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i19] = Math.max(iArr2[i19], baseline2);
                            iArr[i19] = Math.max(iArr[i19], measuredHeight - baseline2);
                        }
                        iMax5 = Math.max(iMax5, measuredHeight);
                        z8 = !z8 && ((LinearLayout.LayoutParams) aVar).height == -1;
                        if (((LinearLayout.LayoutParams) aVar).weight <= CropImageView.DEFAULT_ASPECT_RATIO) {
                            if (!z3) {
                                i18 = measuredHeight;
                            }
                            iMax7 = Math.max(iMax7, i18);
                        } else {
                            int i20 = iMax7;
                            if (!z3) {
                                i18 = measuredHeight;
                            }
                            iMax6 = Math.max(iMax6, i18);
                            iMax7 = i20;
                        }
                        int i21 = i13;
                        iM1114p = m1114p(view, i21) + i21;
                        f2 = f4;
                        iM1114p2 = iM1114p + 1;
                        iArr3 = iArr;
                        z5 = z;
                        z4 = z2;
                        i16 = 1073741824;
                    }
                } else {
                    if (((LinearLayout.LayoutParams) aVar).width != 0 || ((LinearLayout.LayoutParams) aVar).weight <= CropImageView.DEFAULT_ASPECT_RATIO) {
                        i12 = Integer.MIN_VALUE;
                    } else {
                        ((LinearLayout.LayoutParams) aVar).width = -2;
                        i12 = 0;
                    }
                    i13 = iM1114p2;
                    int i22 = i12;
                    z = z5;
                    z2 = z4;
                    m1121w(viewM1117s, i13, i, f4 == CropImageView.DEFAULT_ASPECT_RATIO ? this.f1110g : 0, i2, 0);
                    if (i22 != Integer.MIN_VALUE) {
                        ((LinearLayout.LayoutParams) aVar).width = i22;
                    }
                    int measuredWidth = viewM1117s.getMeasuredWidth();
                    if (z6) {
                        view = viewM1117s;
                        this.f1110g += ((LinearLayout.LayoutParams) aVar).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + m1116r(view);
                    } else {
                        view = viewM1117s;
                        int i23 = this.f1110g;
                        this.f1110g = Math.max(i23, i23 + measuredWidth + ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin + m1116r(view));
                    }
                    if (z) {
                        iMax4 = Math.max(measuredWidth, iMax4);
                    }
                }
                i14 = 1073741824;
                if (mode2 == i14) {
                    z3 = false;
                    int i182 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                    measuredHeight = view.getMeasuredHeight() + i182;
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, view.getMeasuredState());
                    if (z2) {
                        i15 = ((LinearLayout.LayoutParams) aVar).gravity;
                        if (i15 < 0) {
                        }
                        int i192 = (((i15 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i192] = Math.max(iArr2[i192], baseline2);
                        iArr[i192] = Math.max(iArr[i192], measuredHeight - baseline2);
                    }
                    iMax5 = Math.max(iMax5, measuredHeight);
                    if (z8) {
                        if (((LinearLayout.LayoutParams) aVar).weight <= CropImageView.DEFAULT_ASPECT_RATIO) {
                        }
                        int i212 = i13;
                        iM1114p = m1114p(view, i212) + i212;
                        f2 = f4;
                    }
                }
                iM1114p2 = iM1114p + 1;
                iArr3 = iArr;
                z5 = z;
                z4 = z2;
                i16 = 1073741824;
            }
            iM1114p = iM1114p2;
            z = z5;
            z2 = z4;
            iM1114p2 = iM1114p + 1;
            iArr3 = iArr;
            z5 = z;
            z4 = z2;
            i16 = 1073741824;
        }
        boolean z10 = z5;
        boolean z11 = z4;
        int i24 = iMax5;
        int i25 = iMax6;
        int i26 = iMax7;
        int i27 = iCombineMeasuredStates;
        if (this.f1110g > 0 && m1118t(virtualChildCount)) {
            this.f1110g += this.f1116m;
        }
        if (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            iMax = i24;
            i3 = i27;
        } else {
            i3 = i27;
            iMax = Math.max(i24, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z10 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.f1110g = 0;
            int iM1114p3 = 0;
            while (iM1114p3 < virtualChildCount) {
                View viewM1117s2 = m1117s(iM1114p3);
                if (viewM1117s2 == null) {
                    this.f1110g += m1123y(iM1114p3);
                } else if (viewM1117s2.getVisibility() == 8) {
                    iM1114p3 += m1114p(viewM1117s2, iM1114p3);
                } else {
                    a aVar2 = (a) viewM1117s2.getLayoutParams();
                    if (z6) {
                        this.f1110g += ((LinearLayout.LayoutParams) aVar2).leftMargin + iMax4 + ((LinearLayout.LayoutParams) aVar2).rightMargin + m1116r(viewM1117s2);
                    } else {
                        int i28 = this.f1110g;
                        i11 = iMax;
                        this.f1110g = Math.max(i28, i28 + iMax4 + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin + m1116r(viewM1117s2));
                        iM1114p3++;
                        iMax = i11;
                    }
                }
                i11 = iMax;
                iM1114p3++;
                iMax = i11;
            }
        }
        int i29 = iMax;
        int paddingLeft = this.f1110g + getPaddingLeft() + getPaddingRight();
        this.f1110g = paddingLeft;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0);
        int i30 = (16777215 & iResolveSizeAndState) - this.f1110g;
        if (z7 || (i30 != 0 && f2 > CropImageView.DEFAULT_ASPECT_RATIO)) {
            float f5 = this.f1111h;
            if (f5 > CropImageView.DEFAULT_ASPECT_RATIO) {
                f2 = f5;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.f1110g = 0;
            int i31 = i25;
            int iCombineMeasuredStates2 = i3;
            int iMax8 = -1;
            int i32 = 0;
            while (i32 < virtualChildCount) {
                View viewM1117s3 = m1117s(i32);
                if (viewM1117s3 == null || viewM1117s3.getVisibility() == 8) {
                    i6 = i30;
                    i7 = virtualChildCount;
                } else {
                    a aVar3 = (a) viewM1117s3.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) aVar3).weight;
                    if (f6 > CropImageView.DEFAULT_ASPECT_RATIO) {
                        int i33 = (int) ((i30 * f6) / f2);
                        float f7 = f2 - f6;
                        int i34 = i30 - i33;
                        i7 = virtualChildCount;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin, ((LinearLayout.LayoutParams) aVar3).height);
                        if (((LinearLayout.LayoutParams) aVar3).width == 0) {
                            i10 = 1073741824;
                            if (mode == 1073741824) {
                                if (i33 <= 0) {
                                    i33 = 0;
                                }
                                viewM1117s3.measure(View.MeasureSpec.makeMeasureSpec(i33, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, viewM1117s3.getMeasuredState() & (-16777216));
                            f2 = f7;
                            i6 = i34;
                        } else {
                            i10 = 1073741824;
                        }
                        int measuredWidth2 = viewM1117s3.getMeasuredWidth() + i33;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        viewM1117s3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i10), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, viewM1117s3.getMeasuredState() & (-16777216));
                        f2 = f7;
                        i6 = i34;
                    } else {
                        i6 = i30;
                        i7 = virtualChildCount;
                    }
                    if (z6) {
                        this.f1110g += viewM1117s3.getMeasuredWidth() + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + m1116r(viewM1117s3);
                        f = f2;
                    } else {
                        int i35 = this.f1110g;
                        f = f2;
                        this.f1110g = Math.max(i35, viewM1117s3.getMeasuredWidth() + i35 + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + m1116r(viewM1117s3));
                    }
                    boolean z12 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == -1;
                    int i36 = ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin;
                    int measuredHeight2 = viewM1117s3.getMeasuredHeight() + i36;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z12) {
                        i36 = measuredHeight2;
                    }
                    int iMax9 = Math.max(i31, i36);
                    if (z8) {
                        i8 = -1;
                        boolean z13 = ((LinearLayout.LayoutParams) aVar3).height == -1;
                        if (z11 && (baseline = viewM1117s3.getBaseline()) != i8) {
                            i9 = ((LinearLayout.LayoutParams) aVar3).gravity;
                            if (i9 < 0) {
                                i9 = this.f1109f;
                            }
                            int i37 = (((i9 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i37] = Math.max(iArr2[i37], baseline);
                            iArr[i37] = Math.max(iArr[i37], measuredHeight2 - baseline);
                        }
                        z8 = z13;
                        i31 = iMax9;
                        f2 = f;
                    } else {
                        i8 = -1;
                    }
                    if (z11) {
                        i9 = ((LinearLayout.LayoutParams) aVar3).gravity;
                        if (i9 < 0) {
                        }
                        int i372 = (((i9 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i372] = Math.max(iArr2[i372], baseline);
                        iArr[i372] = Math.max(iArr[i372], measuredHeight2 - baseline);
                    }
                    z8 = z13;
                    i31 = iMax9;
                    f2 = f;
                }
                i32++;
                i30 = i6;
                virtualChildCount = i7;
            }
            i4 = i2;
            i5 = virtualChildCount;
            this.f1110g += getPaddingLeft() + getPaddingRight();
            iMax2 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            iMax3 = i31;
            i3 = iCombineMeasuredStates2;
        } else {
            iMax3 = Math.max(i25, i26);
            if (z10 && mode != 1073741824) {
                for (int i38 = 0; i38 < virtualChildCount; i38++) {
                    View viewM1117s4 = m1117s(i38);
                    if (viewM1117s4 != null && viewM1117s4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) viewM1117s4.getLayoutParams())).weight > CropImageView.DEFAULT_ASPECT_RATIO) {
                        viewM1117s4.measure(View.MeasureSpec.makeMeasureSpec(iMax4, 1073741824), View.MeasureSpec.makeMeasureSpec(viewM1117s4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i4 = i2;
            i5 = virtualChildCount;
            iMax2 = i29;
        }
        if (z8 || mode2 == 1073741824) {
            iMax3 = iMax2;
        }
        setMeasuredDimension(iResolveSizeAndState | (i3 & (-16777216)), View.resolveSizeAndState(Math.max(iMax3 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i4, i3 << 16));
        if (z9) {
            m1108k(i5, i);
        }
    }

    /* JADX INFO: renamed from: y */
    int m1123y(int i) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0332  */
    /* JADX INFO: renamed from: z */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void m1124z(int i, int i2) {
        int i3;
        int iCombineMeasuredStates;
        int i4;
        int iMax;
        int i5;
        int i6;
        int i7;
        boolean z;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        View view;
        int iMax2;
        boolean z2;
        int iMax3;
        this.f1110g = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i17 = this.f1106c;
        boolean z3 = this.f1112i;
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int iMax4 = 0;
        int i21 = 0;
        int iM1114p = 0;
        boolean z4 = false;
        boolean z5 = true;
        boolean z6 = false;
        while (true) {
            int i22 = 8;
            int i23 = iMax4;
            if (iM1114p >= virtualChildCount) {
                int i24 = i18;
                int i25 = i20;
                int i26 = i21;
                int i27 = virtualChildCount;
                int i28 = mode2;
                int iMax5 = i19;
                if (this.f1110g > 0) {
                    i3 = i27;
                    if (m1118t(i3)) {
                        this.f1110g += this.f1117n;
                    }
                } else {
                    i3 = i27;
                }
                if (z3 && (i28 == Integer.MIN_VALUE || i28 == 0)) {
                    this.f1110g = 0;
                    int iM1114p2 = 0;
                    while (iM1114p2 < i3) {
                        View viewM1117s = m1117s(iM1114p2);
                        if (viewM1117s == null) {
                            this.f1110g += m1123y(iM1114p2);
                        } else if (viewM1117s.getVisibility() == i22) {
                            iM1114p2 += m1114p(viewM1117s, iM1114p2);
                        } else {
                            a aVar = (a) viewM1117s.getLayoutParams();
                            int i29 = this.f1110g;
                            this.f1110g = Math.max(i29, i29 + i25 + ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin + m1116r(viewM1117s));
                        }
                        iM1114p2++;
                        i22 = 8;
                    }
                }
                int paddingTop = this.f1110g + getPaddingTop() + getPaddingBottom();
                this.f1110g = paddingTop;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
                int i30 = (16777215 & iResolveSizeAndState) - this.f1110g;
                if (z4 || (i30 != 0 && f > CropImageView.DEFAULT_ASPECT_RATIO)) {
                    float f2 = this.f1111h;
                    if (f2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                        f = f2;
                    }
                    this.f1110g = 0;
                    int i31 = i30;
                    int i32 = i26;
                    iCombineMeasuredStates = i24;
                    int i33 = 0;
                    while (i33 < i3) {
                        View viewM1117s2 = m1117s(i33);
                        if (viewM1117s2.getVisibility() == 8) {
                            i5 = i31;
                        } else {
                            a aVar2 = (a) viewM1117s2.getLayoutParams();
                            float f3 = ((LinearLayout.LayoutParams) aVar2).weight;
                            if (f3 > CropImageView.DEFAULT_ASPECT_RATIO) {
                                int i34 = (int) ((i31 * f3) / f);
                                float f4 = f - f3;
                                i5 = i31 - i34;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin, ((LinearLayout.LayoutParams) aVar2).width);
                                if (((LinearLayout.LayoutParams) aVar2).height == 0) {
                                    i8 = 1073741824;
                                    if (i28 == 1073741824) {
                                        if (i34 <= 0) {
                                            i34 = 0;
                                        }
                                        viewM1117s2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i34, 1073741824));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewM1117s2.getMeasuredState() & (-256));
                                    f = f4;
                                } else {
                                    i8 = 1073741824;
                                }
                                int measuredHeight = viewM1117s2.getMeasuredHeight() + i34;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                viewM1117s2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i8));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewM1117s2.getMeasuredState() & (-256));
                                f = f4;
                            } else {
                                i5 = i31;
                            }
                            int i35 = ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                            int measuredWidth = viewM1117s2.getMeasuredWidth() + i35;
                            iMax5 = Math.max(iMax5, measuredWidth);
                            float f5 = f;
                            if (mode != 1073741824) {
                                i6 = iCombineMeasuredStates;
                                i7 = -1;
                                z = ((LinearLayout.LayoutParams) aVar2).width == -1;
                                if (!z) {
                                    i35 = measuredWidth;
                                }
                                int iMax6 = Math.max(i32, i35);
                                boolean z7 = !z5 && ((LinearLayout.LayoutParams) aVar2).width == i7;
                                int i36 = this.f1110g;
                                this.f1110g = Math.max(i36, viewM1117s2.getMeasuredHeight() + i36 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + m1116r(viewM1117s2));
                                z5 = z7;
                                iCombineMeasuredStates = i6;
                                i32 = iMax6;
                                f = f5;
                            } else {
                                i6 = iCombineMeasuredStates;
                                i7 = -1;
                            }
                            if (!z) {
                            }
                            int iMax62 = Math.max(i32, i35);
                            if (z5) {
                                int i362 = this.f1110g;
                                this.f1110g = Math.max(i362, viewM1117s2.getMeasuredHeight() + i362 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + m1116r(viewM1117s2));
                                z5 = z7;
                                iCombineMeasuredStates = i6;
                                i32 = iMax62;
                                f = f5;
                            }
                        }
                        i33++;
                        i31 = i5;
                    }
                    i4 = i;
                    this.f1110g += getPaddingTop() + getPaddingBottom();
                    iMax = i32;
                } else {
                    iMax = Math.max(i26, i23);
                    if (z3 && i28 != 1073741824) {
                        for (int i37 = 0; i37 < i3; i37++) {
                            View viewM1117s3 = m1117s(i37);
                            if (viewM1117s3 != null && viewM1117s3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) viewM1117s3.getLayoutParams())).weight > CropImageView.DEFAULT_ASPECT_RATIO) {
                                viewM1117s3.measure(View.MeasureSpec.makeMeasureSpec(viewM1117s3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i25, 1073741824));
                            }
                        }
                    }
                    i4 = i;
                    iCombineMeasuredStates = i24;
                }
                if (z5 || mode == 1073741824) {
                    iMax = iMax5;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i4, iCombineMeasuredStates), iResolveSizeAndState);
                if (z6) {
                    m1109l(i3, i2);
                    return;
                }
                return;
            }
            View viewM1117s4 = m1117s(iM1114p);
            if (viewM1117s4 == null) {
                this.f1110g += m1123y(iM1114p);
                i12 = virtualChildCount;
                i13 = mode2;
                iMax4 = i23;
            } else {
                int i38 = i18;
                if (viewM1117s4.getVisibility() == 8) {
                    iM1114p += m1114p(viewM1117s4, iM1114p);
                    i12 = virtualChildCount;
                    iMax4 = i23;
                    i18 = i38;
                    i13 = mode2;
                } else {
                    if (m1118t(iM1114p)) {
                        this.f1110g += this.f1117n;
                    }
                    a aVar3 = (a) viewM1117s4.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) aVar3).weight;
                    float f7 = f + f6;
                    if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == 0 && f6 > CropImageView.DEFAULT_ASPECT_RATIO) {
                        int i39 = this.f1110g;
                        this.f1110g = Math.max(i39, ((LinearLayout.LayoutParams) aVar3).topMargin + i39 + ((LinearLayout.LayoutParams) aVar3).bottomMargin);
                        iMax2 = i20;
                        view = viewM1117s4;
                        i15 = i21;
                        i10 = i38;
                        i11 = i19;
                        z4 = true;
                        i12 = virtualChildCount;
                        i13 = mode2;
                        i14 = i23;
                        i16 = iM1114p;
                    } else {
                        int i40 = i19;
                        if (((LinearLayout.LayoutParams) aVar3).height != 0 || ((LinearLayout.LayoutParams) aVar3).weight <= CropImageView.DEFAULT_ASPECT_RATIO) {
                            i9 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) aVar3).height = -2;
                            i9 = 0;
                        }
                        i10 = i38;
                        int i41 = i9;
                        i11 = i40;
                        int i42 = i20;
                        i12 = virtualChildCount;
                        i13 = mode2;
                        i14 = i23;
                        i15 = i21;
                        i16 = iM1114p;
                        m1121w(viewM1117s4, iM1114p, i, 0, i2, f7 == CropImageView.DEFAULT_ASPECT_RATIO ? this.f1110g : 0);
                        if (i41 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) aVar3).height = i41;
                        }
                        int measuredHeight2 = viewM1117s4.getMeasuredHeight();
                        int i43 = this.f1110g;
                        view = viewM1117s4;
                        this.f1110g = Math.max(i43, i43 + measuredHeight2 + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin + m1116r(view));
                        iMax2 = z3 ? Math.max(measuredHeight2, i42) : i42;
                    }
                    if (i17 >= 0 && i17 == i16 + 1) {
                        this.f1107d = this.f1110g;
                    }
                    if (i16 < i17 && ((LinearLayout.LayoutParams) aVar3).weight > CropImageView.DEFAULT_ASPECT_RATIO) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || ((LinearLayout.LayoutParams) aVar3).width != -1) {
                        z2 = false;
                    } else {
                        z2 = true;
                        z6 = true;
                    }
                    int i44 = ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i44;
                    int iMax7 = Math.max(i11, measuredWidth2);
                    int iCombineMeasuredStates2 = View.combineMeasuredStates(i10, view.getMeasuredState());
                    z5 = z5 && ((LinearLayout.LayoutParams) aVar3).width == -1;
                    if (((LinearLayout.LayoutParams) aVar3).weight > CropImageView.DEFAULT_ASPECT_RATIO) {
                        if (!z2) {
                            i44 = measuredWidth2;
                        }
                        iMax4 = Math.max(i14, i44);
                        iMax3 = i15;
                    } else {
                        if (!z2) {
                            i44 = measuredWidth2;
                        }
                        iMax3 = Math.max(i15, i44);
                        iMax4 = i14;
                    }
                    int iM1114p3 = m1114p(view, i16) + i16;
                    i20 = iMax2;
                    f = f7;
                    i21 = iMax3;
                    i18 = iCombineMeasuredStates2;
                    iM1114p = iM1114p3;
                    i19 = iMax7;
                }
            }
            iM1114p++;
            mode2 = i13;
            virtualChildCount = i12;
        }
    }

    public C0167g0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0167g0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f1105b = true;
        this.f1106c = -1;
        this.f1107d = 0;
        this.f1109f = 8388659;
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, C0502j.LinearLayoutCompat, i, 0);
        C0292v.m2101m0(this, context, C0502j.LinearLayoutCompat, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        int iM1332k = c0195u0M1321v.m1332k(C0502j.LinearLayoutCompat_android_orientation, -1);
        if (iM1332k >= 0) {
            setOrientation(iM1332k);
        }
        int iM1332k2 = c0195u0M1321v.m1332k(C0502j.LinearLayoutCompat_android_gravity, -1);
        if (iM1332k2 >= 0) {
            setGravity(iM1332k2);
        }
        boolean zM1322a = c0195u0M1321v.m1322a(C0502j.LinearLayoutCompat_android_baselineAligned, true);
        if (!zM1322a) {
            setBaselineAligned(zM1322a);
        }
        this.f1111h = c0195u0M1321v.m1330i(C0502j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f1106c = c0195u0M1321v.m1332k(C0502j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.f1112i = c0195u0M1321v.m1322a(C0502j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(c0195u0M1321v.m1328g(C0502j.LinearLayoutCompat_divider));
        this.f1118o = c0195u0M1321v.m1332k(C0502j.LinearLayoutCompat_showDividers, 0);
        this.f1119p = c0195u0M1321v.m1327f(C0502j.LinearLayoutCompat_dividerPadding, 0);
        c0195u0M1321v.m1341w();
    }
}
