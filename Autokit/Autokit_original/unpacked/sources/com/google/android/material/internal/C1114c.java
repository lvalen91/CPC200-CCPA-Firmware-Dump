package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.C0278h;
import androidx.core.view.C0292v;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: renamed from: com.google.android.material.internal.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1114c extends ViewGroup {

    /* JADX INFO: renamed from: b */
    private int f7157b;

    /* JADX INFO: renamed from: c */
    private int f7158c;

    /* JADX INFO: renamed from: d */
    private boolean f7159d;

    /* JADX INFO: renamed from: e */
    private int f7160e;

    public C1114c(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX INFO: renamed from: a */
    private static int m8690a(int i, int i2, int i3) {
        return i2 != Integer.MIN_VALUE ? i2 != 1073741824 ? i3 : i : Math.min(i3, i);
    }

    /* JADX INFO: renamed from: d */
    private void m8691d(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C1226k.FlowLayout, 0, 0);
        this.f7157b = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.FlowLayout_lineSpacing, 0);
        this.f7158c = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.FlowLayout_itemSpacing, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: b */
    public int m8692b(View view) {
        Object tag = view.getTag(C1221f.row_index_key);
        if (tag instanceof Integer) {
            return ((Integer) tag).intValue();
        }
        return -1;
    }

    /* JADX INFO: renamed from: c */
    public boolean mo8196c() {
        return this.f7159d;
    }

    protected int getItemSpacing() {
        return this.f7158c;
    }

    protected int getLineSpacing() {
        return this.f7157b;
    }

    protected int getRowCount() {
        return this.f7160e;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int iM2005a;
        int iM2006b;
        if (getChildCount() == 0) {
            this.f7160e = 0;
            return;
        }
        this.f7160e = 1;
        boolean z2 = C0292v.m2046C(this) == 1;
        int paddingRight = z2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = z2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int i5 = (i3 - i) - paddingLeft;
        int measuredWidth = paddingRight;
        int i6 = paddingTop;
        for (int i7 = 0; i7 < getChildCount(); i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() == 8) {
                childAt.setTag(C1221f.row_index_key, -1);
            } else {
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    iM2006b = C0278h.m2006b(marginLayoutParams);
                    iM2005a = C0278h.m2005a(marginLayoutParams);
                } else {
                    iM2005a = 0;
                    iM2006b = 0;
                }
                int measuredWidth2 = measuredWidth + iM2006b + childAt.getMeasuredWidth();
                if (!this.f7159d && measuredWidth2 > i5) {
                    i6 = this.f7157b + paddingTop;
                    this.f7160e++;
                    measuredWidth = paddingRight;
                }
                childAt.setTag(C1221f.row_index_key, Integer.valueOf(this.f7160e - 1));
                int i8 = measuredWidth + iM2006b;
                int measuredWidth3 = childAt.getMeasuredWidth() + i8;
                int measuredHeight = childAt.getMeasuredHeight() + i6;
                if (z2) {
                    childAt.layout(i5 - measuredWidth3, i6, (i5 - measuredWidth) - iM2006b, measuredHeight);
                } else {
                    childAt.layout(i8, i6, measuredWidth3, measuredHeight);
                }
                measuredWidth += iM2006b + iM2005a + childAt.getMeasuredWidth() + this.f7158c;
                paddingTop = measuredHeight;
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int paddingLeft;
        int size = View.MeasureSpec.getSize(i);
        int mode = View.MeasureSpec.getMode(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i5 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size : Integer.MAX_VALUE;
        int paddingLeft2 = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingRight = i5 - getPaddingRight();
        int i6 = paddingTop;
        int i7 = 0;
        for (int i8 = 0; i8 < getChildCount(); i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt, i, i2);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    i3 = marginLayoutParams.leftMargin + 0;
                    i4 = marginLayoutParams.rightMargin + 0;
                } else {
                    i3 = 0;
                    i4 = 0;
                }
                int i9 = paddingLeft2;
                if (paddingLeft2 + i3 + childAt.getMeasuredWidth() <= paddingRight || mo8196c()) {
                    paddingLeft = i9;
                } else {
                    paddingLeft = getPaddingLeft();
                    i6 = this.f7157b + paddingTop;
                }
                int measuredWidth = paddingLeft + i3 + childAt.getMeasuredWidth();
                int measuredHeight = i6 + childAt.getMeasuredHeight();
                if (measuredWidth > i7) {
                    i7 = measuredWidth;
                }
                paddingLeft2 = paddingLeft + i3 + i4 + childAt.getMeasuredWidth() + this.f7158c;
                if (i8 == getChildCount() - 1) {
                    i7 += i4;
                }
                paddingTop = measuredHeight;
            }
        }
        setMeasuredDimension(m8690a(size, mode, i7 + getPaddingRight()), m8690a(size2, mode2, paddingTop + getPaddingBottom()));
    }

    protected void setItemSpacing(int i) {
        this.f7158c = i;
    }

    protected void setLineSpacing(int i) {
        this.f7157b = i;
    }

    public void setSingleLine(boolean z) {
        this.f7159d = z;
    }

    public C1114c(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f7159d = false;
        m8691d(context, attributeSet);
    }
}
