package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.v;
import com.google.android.material.internal.k;
import d.c.a.a.a0.g;
import d.c.a.a.a0.h;
import d.c.a.a.j;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialToolbar extends Toolbar {
    private static final int T = j.Widget_MaterialComponents_Toolbar;
    private Integer Q;
    private boolean R;
    private boolean S;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, d.c.a.a.b.toolbarStyle);
    }

    private Pair<Integer, Integer> P(TextView textView, TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair<>(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    private void Q(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            g gVar = new g();
            gVar.W(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            gVar.M(context);
            gVar.V(v.w(this));
            v.r0(this, gVar);
        }
    }

    private void R(View view, Pair<Integer, Integer> pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int iMax = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (iMax > 0) {
            i += iMax;
            i2 -= iMax;
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i, view.getTop(), i2, view.getBottom());
    }

    private void S() {
        if (this.R || this.S) {
            TextView textViewC = k.c(this);
            TextView textViewA = k.a(this);
            if (textViewC == null && textViewA == null) {
                return;
            }
            Pair<Integer, Integer> pairP = P(textViewC, textViewA);
            if (this.R && textViewC != null) {
                R(textViewC, pairP);
            }
            if (!this.S || textViewA == null) {
                return;
            }
            R(textViewA, pairP);
        }
    }

    private Drawable T(Drawable drawable) {
        if (drawable == null || this.Q == null) {
            return drawable;
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable);
        androidx.core.graphics.drawable.a.n(drawableR, this.Q.intValue());
        return drawableR;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h.e(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        S();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        h.d(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(T(drawable));
    }

    public void setNavigationIconTint(int i) {
        this.Q = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.S != z) {
            this.S = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.R != z) {
            this.R = z;
            requestLayout();
        }
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.c(context, attributeSet, i, T), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayH = com.google.android.material.internal.j.h(context2, attributeSet, d.c.a.a.k.MaterialToolbar, i, T, new int[0]);
        if (typedArrayH.hasValue(d.c.a.a.k.MaterialToolbar_navigationIconTint)) {
            setNavigationIconTint(typedArrayH.getColor(d.c.a.a.k.MaterialToolbar_navigationIconTint, -1));
        }
        this.R = typedArrayH.getBoolean(d.c.a.a.k.MaterialToolbar_titleCentered, false);
        this.S = typedArrayH.getBoolean(d.c.a.a.k.MaterialToolbar_subtitleCentered, false);
        typedArrayH.recycle();
        Q(context2);
    }
}
