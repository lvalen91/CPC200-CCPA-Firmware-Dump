package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class ButtonBarLayout extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f253b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f254c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f255d;

    public ButtonBarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f254c = -1;
        this.f255d = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, c.a.j.ButtonBarLayout);
        androidx.core.view.v.m0(this, context, c.a.j.ButtonBarLayout, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        this.f253b = typedArrayObtainStyledAttributes.getBoolean(c.a.j.ButtonBarLayout_allowStacking, true);
        typedArrayObtainStyledAttributes.recycle();
    }

    private int a(int i) {
        int childCount = getChildCount();
        while (i < childCount) {
            if (getChildAt(i).getVisibility() == 0) {
                return i;
            }
            i++;
        }
        return -1;
    }

    private boolean b() {
        return getOrientation() == 1;
    }

    private void setStacked(boolean z) {
        setOrientation(z ? 1 : 0);
        setGravity(z ? 8388613 : 80);
        View viewFindViewById = findViewById(c.a.f.spacer);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(z ? 8 : 4);
        }
        for (int childCount = getChildCount() - 2; childCount >= 0; childCount--) {
            bringChildToFront(getChildAt(childCount));
        }
    }

    @Override // android.view.View
    public int getMinimumHeight() {
        return Math.max(this.f255d, super.getMinimumHeight());
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int iMakeMeasureSpec;
        boolean z;
        int size = View.MeasureSpec.getSize(i);
        int paddingBottom = 0;
        if (this.f253b) {
            if (size > this.f254c && b()) {
                setStacked(false);
            }
            this.f254c = size;
        }
        if (b() || View.MeasureSpec.getMode(i) != 1073741824) {
            iMakeMeasureSpec = i;
            z = false;
        } else {
            iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(size, Integer.MIN_VALUE);
            z = true;
        }
        super.onMeasure(iMakeMeasureSpec, i2);
        if (this.f253b && !b()) {
            if ((getMeasuredWidthAndState() & (-16777216)) == 16777216) {
                setStacked(true);
                z = true;
            }
        }
        if (z) {
            super.onMeasure(i, i2);
        }
        int iA = a(0);
        if (iA >= 0) {
            View childAt = getChildAt(iA);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            int paddingTop = getPaddingTop() + childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin + 0;
            if (b()) {
                int iA2 = a(iA + 1);
                if (iA2 >= 0) {
                    paddingTop += getChildAt(iA2).getPaddingTop() + ((int) (getResources().getDisplayMetrics().density * 16.0f));
                }
                paddingBottom = paddingTop;
            } else {
                paddingBottom = paddingTop + getPaddingBottom();
            }
        }
        if (androidx.core.view.v.D(this) != paddingBottom) {
            setMinimumHeight(paddingBottom);
        }
    }

    public void setAllowStacking(boolean z) {
        if (this.f253b != z) {
            this.f253b = z;
            if (!z && getOrientation() == 1) {
                setStacked(false);
            }
            requestLayout();
        }
    }
}
