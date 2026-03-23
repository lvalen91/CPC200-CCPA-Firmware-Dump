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
import com.yalantis.ucrop.view.CropImageView;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class g0 extends ViewGroup {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f325b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f326c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f327d;
    private int e;
    private int f;
    private int g;
    private float h;
    private boolean i;
    private int[] j;
    private int[] k;
    private Drawable l;
    private int m;
    private int n;
    private int o;
    private int p;

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

    public g0(Context context) {
        this(context, null);
    }

    private void A(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    private void k(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View viewS = s(i3);
            if (viewS.getVisibility() != 8) {
                a aVar = (a) viewS.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).height == -1) {
                    int i4 = ((LinearLayout.LayoutParams) aVar).width;
                    ((LinearLayout.LayoutParams) aVar).width = viewS.getMeasuredWidth();
                    measureChildWithMargins(viewS, i2, 0, iMakeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) aVar).width = i4;
                }
            }
        }
    }

    private void l(int i, int i2) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View viewS = s(i3);
            if (viewS.getVisibility() != 8) {
                a aVar = (a) viewS.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).width == -1) {
                    int i4 = ((LinearLayout.LayoutParams) aVar).height;
                    ((LinearLayout.LayoutParams) aVar).height = viewS.getMeasuredHeight();
                    measureChildWithMargins(viewS, iMakeMeasureSpec, 0, i2, 0);
                    ((LinearLayout.LayoutParams) aVar).height = i4;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    void g(Canvas canvas) {
        int right;
        int left;
        int i;
        int virtualChildCount = getVirtualChildCount();
        boolean zB = a1.b(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View viewS = s(i2);
            if (viewS != null && viewS.getVisibility() != 8 && t(i2)) {
                a aVar = (a) viewS.getLayoutParams();
                j(canvas, zB ? viewS.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin : (viewS.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.m);
            }
        }
        if (t(virtualChildCount)) {
            View viewS2 = s(virtualChildCount - 1);
            if (viewS2 != null) {
                a aVar2 = (a) viewS2.getLayoutParams();
                if (zB) {
                    left = viewS2.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i = this.m;
                    right = left - i;
                } else {
                    right = viewS2.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            } else if (zB) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.m;
                right = left - i;
            }
            j(canvas, right);
        }
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.f326c < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.f326c;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.f326c == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f327d;
        if (this.e == 1 && (i = this.f & 112) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.g) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.g;
            }
        }
        return bottom + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.f326c;
    }

    public Drawable getDividerDrawable() {
        return this.l;
    }

    public int getDividerPadding() {
        return this.p;
    }

    public int getDividerWidth() {
        return this.m;
    }

    public int getGravity() {
        return this.f;
    }

    public int getOrientation() {
        return this.e;
    }

    public int getShowDividers() {
        return this.o;
    }

    int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.h;
    }

    void h(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View viewS = s(i);
            if (viewS != null && viewS.getVisibility() != 8 && t(i)) {
                i(canvas, (viewS.getTop() - ((LinearLayout.LayoutParams) ((a) viewS.getLayoutParams())).topMargin) - this.n);
            }
        }
        if (t(virtualChildCount)) {
            View viewS2 = s(virtualChildCount - 1);
            i(canvas, viewS2 == null ? (getHeight() - getPaddingBottom()) - this.n : viewS2.getBottom() + ((LinearLayout.LayoutParams) ((a) viewS2.getLayoutParams())).bottomMargin);
        }
    }

    void i(Canvas canvas, int i) {
        this.l.setBounds(getPaddingLeft() + this.p, i, (getWidth() - getPaddingRight()) - this.p, this.n + i);
        this.l.draw(canvas);
    }

    void j(Canvas canvas, int i) {
        this.l.setBounds(i, getPaddingTop() + this.p, this.m + i, (getHeight() - getPaddingBottom()) - this.p);
        this.l.draw(canvas);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        int i = this.e;
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
        if (this.l == null) {
            return;
        }
        if (this.e == 1) {
            h(canvas);
        } else {
            g(canvas);
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
        if (this.e == 1) {
            v(i, i2, i3, i4);
        } else {
            u(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.e == 1) {
            z(i, i2);
        } else {
            x(i, i2);
        }
    }

    int p(View view, int i) {
        return 0;
    }

    int q(View view) {
        return 0;
    }

    int r(View view) {
        return 0;
    }

    View s(int i) {
        return getChildAt(i);
    }

    public void setBaselineAligned(boolean z) {
        this.f325b = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.f326c = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.l) {
            return;
        }
        this.l = drawable;
        if (drawable != null) {
            this.m = drawable.getIntrinsicWidth();
            this.n = drawable.getIntrinsicHeight();
        } else {
            this.m = 0;
            this.n = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.p = i;
    }

    public void setGravity(int i) {
        if (this.f != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f;
        if ((8388615 & i3) != i2) {
            this.f = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.i = z;
    }

    public void setOrientation(int i) {
        if (this.e != i) {
            this.e = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.o) {
            requestLayout();
        }
        this.o = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f;
        if ((i3 & 112) != i2) {
            this.f = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.h = Math.max(CropImageView.DEFAULT_ASPECT_RATIO, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    protected boolean t(int i) {
        if (i == 0) {
            return (this.o & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.o & 4) != 0;
        }
        if ((this.o & 2) == 0) {
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
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void u(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int measuredHeight;
        int i11;
        boolean zB = a1.b(this);
        int paddingTop = getPaddingTop();
        int i12 = i4 - i2;
        int paddingBottom = i12 - getPaddingBottom();
        int paddingBottom2 = (i12 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i13 = this.f;
        int i14 = i13 & 112;
        boolean z = this.f325b;
        int[] iArr = this.j;
        int[] iArr2 = this.k;
        int iB = androidx.core.view.e.b(8388615 & i13, androidx.core.view.v.C(this));
        int paddingLeft = iB != 1 ? iB != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.g : getPaddingLeft() + (((i3 - i) - this.g) / 2);
        if (zB) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int iP = 0;
        while (iP < virtualChildCount) {
            int i15 = i5 + (i6 * iP);
            View viewS = s(i15);
            if (viewS == null) {
                paddingLeft += y(i15);
            } else if (viewS.getVisibility() != 8) {
                int measuredWidth = viewS.getMeasuredWidth();
                int measuredHeight2 = viewS.getMeasuredHeight();
                a aVar = (a) viewS.getLayoutParams();
                int i16 = iP;
                if (z) {
                    i7 = virtualChildCount;
                    int baseline = ((LinearLayout.LayoutParams) aVar).height != -1 ? viewS.getBaseline() : -1;
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
                            measuredHeight -= iArr2[2] - (viewS.getMeasuredHeight() - baseline);
                        }
                    }
                    if (t(i15)) {
                        paddingLeft += this.m;
                    }
                    int i17 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    i11 = paddingTop;
                    A(viewS, i17 + q(viewS), measuredHeight, measuredWidth, measuredHeight2);
                    int iR = i17 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + r(viewS);
                    iP = i16 + p(viewS, i15);
                    paddingLeft = iR;
                    iP++;
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
                if (t(i15)) {
                }
                int i172 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                i11 = paddingTop;
                A(viewS, i172 + q(viewS), measuredHeight, measuredWidth, measuredHeight2);
                int iR2 = i172 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + r(viewS);
                iP = i16 + p(viewS, i15);
                paddingLeft = iR2;
                iP++;
                virtualChildCount = i7;
                i14 = i10;
                paddingTop = i11;
            }
            i11 = paddingTop;
            i7 = virtualChildCount;
            i10 = i14;
            iP++;
            virtualChildCount = i7;
            i14 = i10;
            paddingTop = i11;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void v(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int paddingLeft = getPaddingLeft();
        int i8 = i3 - i;
        int paddingRight = i8 - getPaddingRight();
        int paddingRight2 = (i8 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i9 = this.f;
        int i10 = i9 & 112;
        int i11 = i9 & 8388615;
        int paddingTop = i10 != 16 ? i10 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - this.g : getPaddingTop() + (((i4 - i2) - this.g) / 2);
        int iP = 0;
        while (iP < virtualChildCount) {
            View viewS = s(iP);
            if (viewS == null) {
                paddingTop += y(iP);
            } else if (viewS.getVisibility() != 8) {
                int measuredWidth = viewS.getMeasuredWidth();
                int measuredHeight = viewS.getMeasuredHeight();
                a aVar = (a) viewS.getLayoutParams();
                int i12 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i12 < 0) {
                    i12 = i11;
                }
                int iB = androidx.core.view.e.b(i12, androidx.core.view.v.C(this)) & 7;
                if (iB == 1) {
                    i5 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) aVar).leftMargin;
                    i6 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                } else if (iB != 5) {
                    i7 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    int i13 = i7;
                    if (t(iP)) {
                        paddingTop += this.n;
                    }
                    int i14 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                    A(viewS, i13, i14 + q(viewS), measuredWidth, measuredHeight);
                    int iR = i14 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + r(viewS);
                    iP += p(viewS, iP);
                    paddingTop = iR;
                } else {
                    i5 = paddingRight - measuredWidth;
                    i6 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                }
                i7 = i5 - i6;
                int i132 = i7;
                if (t(iP)) {
                }
                int i142 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                A(viewS, i132, i142 + q(viewS), measuredWidth, measuredHeight);
                int iR2 = i142 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + r(viewS);
                iP += p(viewS, iP);
                paddingTop = iR2;
            }
            iP++;
        }
    }

    void w(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:197:0x044f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void x(int i, int i2) {
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
        int iP;
        int baseline2;
        int i15;
        this.g = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.j == null || this.k == null) {
            this.j = new int[4];
            this.k = new int[4];
        }
        int[] iArr2 = this.j;
        int[] iArr3 = this.k;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z4 = this.f325b;
        boolean z5 = this.i;
        int i16 = 1073741824;
        boolean z6 = mode == 1073741824;
        float f2 = CropImageView.DEFAULT_ASPECT_RATIO;
        int iP2 = 0;
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
            if (iP2 >= virtualChildCount) {
                break;
            }
            View viewS = s(iP2);
            if (viewS == null) {
                this.g += y(iP2);
            } else if (viewS.getVisibility() == 8) {
                iP2 += p(viewS, iP2);
            } else {
                if (t(iP2)) {
                    this.g += this.m;
                }
                a aVar = (a) viewS.getLayoutParams();
                float f3 = ((LinearLayout.LayoutParams) aVar).weight;
                float f4 = f2 + f3;
                if (mode == i16 && ((LinearLayout.LayoutParams) aVar).width == 0 && f3 > CropImageView.DEFAULT_ASPECT_RATIO) {
                    if (z6) {
                        this.g += ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin;
                    } else {
                        int i17 = this.g;
                        this.g = Math.max(i17, ((LinearLayout.LayoutParams) aVar).leftMargin + i17 + ((LinearLayout.LayoutParams) aVar).rightMargin);
                    }
                    if (z4) {
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        viewS.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                        i13 = iP2;
                        z = z5;
                        z2 = z4;
                        view = viewS;
                    } else {
                        i13 = iP2;
                        z = z5;
                        z2 = z4;
                        view = viewS;
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
                                i15 = this.f;
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
                        iP = p(view, i21) + i21;
                        f2 = f4;
                        iP2 = iP + 1;
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
                    i13 = iP2;
                    int i22 = i12;
                    z = z5;
                    z2 = z4;
                    w(viewS, i13, i, f4 == CropImageView.DEFAULT_ASPECT_RATIO ? this.g : 0, i2, 0);
                    if (i22 != Integer.MIN_VALUE) {
                        ((LinearLayout.LayoutParams) aVar).width = i22;
                    }
                    int measuredWidth = viewS.getMeasuredWidth();
                    if (z6) {
                        view = viewS;
                        this.g += ((LinearLayout.LayoutParams) aVar).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + r(view);
                    } else {
                        view = viewS;
                        int i23 = this.g;
                        this.g = Math.max(i23, i23 + measuredWidth + ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin + r(view));
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
                        iP = p(view, i212) + i212;
                        f2 = f4;
                    }
                }
                iP2 = iP + 1;
                iArr3 = iArr;
                z5 = z;
                z4 = z2;
                i16 = 1073741824;
            }
            iP = iP2;
            z = z5;
            z2 = z4;
            iP2 = iP + 1;
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
        if (this.g > 0 && t(virtualChildCount)) {
            this.g += this.m;
        }
        if (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            iMax = i24;
            i3 = i27;
        } else {
            i3 = i27;
            iMax = Math.max(i24, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z10 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.g = 0;
            int iP3 = 0;
            while (iP3 < virtualChildCount) {
                View viewS2 = s(iP3);
                if (viewS2 == null) {
                    this.g += y(iP3);
                } else if (viewS2.getVisibility() == 8) {
                    iP3 += p(viewS2, iP3);
                } else {
                    a aVar2 = (a) viewS2.getLayoutParams();
                    if (z6) {
                        this.g += ((LinearLayout.LayoutParams) aVar2).leftMargin + iMax4 + ((LinearLayout.LayoutParams) aVar2).rightMargin + r(viewS2);
                    } else {
                        int i28 = this.g;
                        i11 = iMax;
                        this.g = Math.max(i28, i28 + iMax4 + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin + r(viewS2));
                        iP3++;
                        iMax = i11;
                    }
                }
                i11 = iMax;
                iP3++;
                iMax = i11;
            }
        }
        int i29 = iMax;
        int paddingLeft = this.g + getPaddingLeft() + getPaddingRight();
        this.g = paddingLeft;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0);
        int i30 = (16777215 & iResolveSizeAndState) - this.g;
        if (z7 || (i30 != 0 && f2 > CropImageView.DEFAULT_ASPECT_RATIO)) {
            float f5 = this.h;
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
            this.g = 0;
            int i31 = i25;
            int iCombineMeasuredStates2 = i3;
            int iMax8 = -1;
            int i32 = 0;
            while (i32 < virtualChildCount) {
                View viewS3 = s(i32);
                if (viewS3 == null || viewS3.getVisibility() == 8) {
                    i6 = i30;
                    i7 = virtualChildCount;
                } else {
                    a aVar3 = (a) viewS3.getLayoutParams();
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
                                viewS3.measure(View.MeasureSpec.makeMeasureSpec(i33, 1073741824), childMeasureSpec);
                            }
                            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, viewS3.getMeasuredState() & (-16777216));
                            f2 = f7;
                            i6 = i34;
                        } else {
                            i10 = 1073741824;
                        }
                        int measuredWidth2 = viewS3.getMeasuredWidth() + i33;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        viewS3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i10), childMeasureSpec);
                        iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, viewS3.getMeasuredState() & (-16777216));
                        f2 = f7;
                        i6 = i34;
                    } else {
                        i6 = i30;
                        i7 = virtualChildCount;
                    }
                    if (z6) {
                        this.g += viewS3.getMeasuredWidth() + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + r(viewS3);
                        f = f2;
                    } else {
                        int i35 = this.g;
                        f = f2;
                        this.g = Math.max(i35, viewS3.getMeasuredWidth() + i35 + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + r(viewS3));
                    }
                    boolean z12 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == -1;
                    int i36 = ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin;
                    int measuredHeight2 = viewS3.getMeasuredHeight() + i36;
                    iMax8 = Math.max(iMax8, measuredHeight2);
                    if (!z12) {
                        i36 = measuredHeight2;
                    }
                    int iMax9 = Math.max(i31, i36);
                    if (z8) {
                        i8 = -1;
                        boolean z13 = ((LinearLayout.LayoutParams) aVar3).height == -1;
                        if (z11 && (baseline = viewS3.getBaseline()) != i8) {
                            i9 = ((LinearLayout.LayoutParams) aVar3).gravity;
                            if (i9 < 0) {
                                i9 = this.f;
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
            this.g += getPaddingLeft() + getPaddingRight();
            iMax2 = (iArr2[1] == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? iMax8 : Math.max(iMax8, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(iArr2[1], iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            iMax3 = i31;
            i3 = iCombineMeasuredStates2;
        } else {
            iMax3 = Math.max(i25, i26);
            if (z10 && mode != 1073741824) {
                for (int i38 = 0; i38 < virtualChildCount; i38++) {
                    View viewS4 = s(i38);
                    if (viewS4 != null && viewS4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) viewS4.getLayoutParams())).weight > CropImageView.DEFAULT_ASPECT_RATIO) {
                        viewS4.measure(View.MeasureSpec.makeMeasureSpec(iMax4, 1073741824), View.MeasureSpec.makeMeasureSpec(viewS4.getMeasuredHeight(), 1073741824));
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
            k(i5, i);
        }
    }

    int y(int i) {
        return 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:150:0x0325  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0332  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void z(int i, int i2) {
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
        this.g = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i17 = this.f326c;
        boolean z3 = this.i;
        float f = CropImageView.DEFAULT_ASPECT_RATIO;
        int i18 = 0;
        int i19 = 0;
        int i20 = 0;
        int iMax4 = 0;
        int i21 = 0;
        int iP = 0;
        boolean z4 = false;
        boolean z5 = true;
        boolean z6 = false;
        while (true) {
            int i22 = 8;
            int i23 = iMax4;
            if (iP >= virtualChildCount) {
                int i24 = i18;
                int i25 = i20;
                int i26 = i21;
                int i27 = virtualChildCount;
                int i28 = mode2;
                int iMax5 = i19;
                if (this.g > 0) {
                    i3 = i27;
                    if (t(i3)) {
                        this.g += this.n;
                    }
                } else {
                    i3 = i27;
                }
                if (z3 && (i28 == Integer.MIN_VALUE || i28 == 0)) {
                    this.g = 0;
                    int iP2 = 0;
                    while (iP2 < i3) {
                        View viewS = s(iP2);
                        if (viewS == null) {
                            this.g += y(iP2);
                        } else if (viewS.getVisibility() == i22) {
                            iP2 += p(viewS, iP2);
                        } else {
                            a aVar = (a) viewS.getLayoutParams();
                            int i29 = this.g;
                            this.g = Math.max(i29, i29 + i25 + ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin + r(viewS));
                        }
                        iP2++;
                        i22 = 8;
                    }
                }
                int paddingTop = this.g + getPaddingTop() + getPaddingBottom();
                this.g = paddingTop;
                int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
                int i30 = (16777215 & iResolveSizeAndState) - this.g;
                if (z4 || (i30 != 0 && f > CropImageView.DEFAULT_ASPECT_RATIO)) {
                    float f2 = this.h;
                    if (f2 > CropImageView.DEFAULT_ASPECT_RATIO) {
                        f = f2;
                    }
                    this.g = 0;
                    int i31 = i30;
                    int i32 = i26;
                    iCombineMeasuredStates = i24;
                    int i33 = 0;
                    while (i33 < i3) {
                        View viewS2 = s(i33);
                        if (viewS2.getVisibility() == 8) {
                            i5 = i31;
                        } else {
                            a aVar2 = (a) viewS2.getLayoutParams();
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
                                        viewS2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i34, 1073741824));
                                    }
                                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewS2.getMeasuredState() & (-256));
                                    f = f4;
                                } else {
                                    i8 = 1073741824;
                                }
                                int measuredHeight = viewS2.getMeasuredHeight() + i34;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                viewS2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i8));
                                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewS2.getMeasuredState() & (-256));
                                f = f4;
                            } else {
                                i5 = i31;
                            }
                            int i35 = ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                            int measuredWidth = viewS2.getMeasuredWidth() + i35;
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
                                int i36 = this.g;
                                this.g = Math.max(i36, viewS2.getMeasuredHeight() + i36 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + r(viewS2));
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
                                int i362 = this.g;
                                this.g = Math.max(i362, viewS2.getMeasuredHeight() + i362 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + r(viewS2));
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
                    this.g += getPaddingTop() + getPaddingBottom();
                    iMax = i32;
                } else {
                    iMax = Math.max(i26, i23);
                    if (z3 && i28 != 1073741824) {
                        for (int i37 = 0; i37 < i3; i37++) {
                            View viewS3 = s(i37);
                            if (viewS3 != null && viewS3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) viewS3.getLayoutParams())).weight > CropImageView.DEFAULT_ASPECT_RATIO) {
                                viewS3.measure(View.MeasureSpec.makeMeasureSpec(viewS3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i25, 1073741824));
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
                    l(i3, i2);
                    return;
                }
                return;
            }
            View viewS4 = s(iP);
            if (viewS4 == null) {
                this.g += y(iP);
                i12 = virtualChildCount;
                i13 = mode2;
                iMax4 = i23;
            } else {
                int i38 = i18;
                if (viewS4.getVisibility() == 8) {
                    iP += p(viewS4, iP);
                    i12 = virtualChildCount;
                    iMax4 = i23;
                    i18 = i38;
                    i13 = mode2;
                } else {
                    if (t(iP)) {
                        this.g += this.n;
                    }
                    a aVar3 = (a) viewS4.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) aVar3).weight;
                    float f7 = f + f6;
                    if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == 0 && f6 > CropImageView.DEFAULT_ASPECT_RATIO) {
                        int i39 = this.g;
                        this.g = Math.max(i39, ((LinearLayout.LayoutParams) aVar3).topMargin + i39 + ((LinearLayout.LayoutParams) aVar3).bottomMargin);
                        iMax2 = i20;
                        view = viewS4;
                        i15 = i21;
                        i10 = i38;
                        i11 = i19;
                        z4 = true;
                        i12 = virtualChildCount;
                        i13 = mode2;
                        i14 = i23;
                        i16 = iP;
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
                        i16 = iP;
                        w(viewS4, iP, i, 0, i2, f7 == CropImageView.DEFAULT_ASPECT_RATIO ? this.g : 0);
                        if (i41 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) aVar3).height = i41;
                        }
                        int measuredHeight2 = viewS4.getMeasuredHeight();
                        int i43 = this.g;
                        view = viewS4;
                        this.g = Math.max(i43, i43 + measuredHeight2 + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin + r(view));
                        iMax2 = z3 ? Math.max(measuredHeight2, i42) : i42;
                    }
                    if (i17 >= 0 && i17 == i16 + 1) {
                        this.f327d = this.g;
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
                    int iP3 = p(view, i16) + i16;
                    i20 = iMax2;
                    f = f7;
                    i21 = iMax3;
                    i18 = iCombineMeasuredStates2;
                    iP = iP3;
                    i19 = iMax7;
                }
            }
            iP++;
            mode2 = i13;
            virtualChildCount = i12;
        }
    }

    public g0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public g0(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f325b = true;
        this.f326c = -1;
        this.f327d = 0;
        this.f = 8388659;
        u0 u0VarV = u0.v(context, attributeSet, c.a.j.LinearLayoutCompat, i, 0);
        androidx.core.view.v.m0(this, context, c.a.j.LinearLayoutCompat, attributeSet, u0VarV.r(), i, 0);
        int iK = u0VarV.k(c.a.j.LinearLayoutCompat_android_orientation, -1);
        if (iK >= 0) {
            setOrientation(iK);
        }
        int iK2 = u0VarV.k(c.a.j.LinearLayoutCompat_android_gravity, -1);
        if (iK2 >= 0) {
            setGravity(iK2);
        }
        boolean zA = u0VarV.a(c.a.j.LinearLayoutCompat_android_baselineAligned, true);
        if (!zA) {
            setBaselineAligned(zA);
        }
        this.h = u0VarV.i(c.a.j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.f326c = u0VarV.k(c.a.j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.i = u0VarV.a(c.a.j.LinearLayoutCompat_measureWithLargestChild, false);
        setDividerDrawable(u0VarV.g(c.a.j.LinearLayoutCompat_divider));
        this.o = u0VarV.k(c.a.j.LinearLayoutCompat_showDividers, 0);
        this.p = u0VarV.f(c.a.j.LinearLayoutCompat_dividerPadding, 0);
        u0VarV.w();
    }
}
