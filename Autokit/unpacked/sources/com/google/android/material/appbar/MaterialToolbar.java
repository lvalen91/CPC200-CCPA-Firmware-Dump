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
import androidx.core.graphics.drawable.C0251a;
import androidx.core.view.C0292v;
import com.google.android.material.internal.C1121j;
import com.google.android.material.internal.C1122k;
import com.google.android.material.theme.p092a.C1147a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1225j;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1209h;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialToolbar extends Toolbar {

    /* JADX INFO: renamed from: T */
    private static final int f6525T = C1225j.Widget_MaterialComponents_Toolbar;

    /* JADX INFO: renamed from: Q */
    private Integer f6526Q;

    /* JADX INFO: renamed from: R */
    private boolean f6527R;

    /* JADX INFO: renamed from: S */
    private boolean f6528S;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1216b.toolbarStyle);
    }

    /* JADX INFO: renamed from: P */
    private Pair<Integer, Integer> m7908P(TextView textView, TextView textView2) {
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

    /* JADX INFO: renamed from: Q */
    private void m7909Q(Context context) {
        Drawable background = getBackground();
        if (background == null || (background instanceof ColorDrawable)) {
            C1208g c1208g = new C1208g();
            c1208g.m9184W(ColorStateList.valueOf(background != null ? ((ColorDrawable) background).getColor() : 0));
            c1208g.m9178M(context);
            c1208g.m9183V(C0292v.m2120w(this));
            C0292v.m2111r0(this, c1208g);
        }
    }

    /* JADX INFO: renamed from: R */
    private void m7910R(View view, Pair<Integer, Integer> pair) {
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

    /* JADX INFO: renamed from: S */
    private void m7911S() {
        if (this.f6527R || this.f6528S) {
            TextView textViewM8730c = C1122k.m8730c(this);
            TextView textViewM8728a = C1122k.m8728a(this);
            if (textViewM8730c == null && textViewM8728a == null) {
                return;
            }
            Pair<Integer, Integer> pairM7908P = m7908P(textViewM8730c, textViewM8728a);
            if (this.f6527R && textViewM8730c != null) {
                m7910R(textViewM8730c, pairM7908P);
            }
            if (!this.f6528S || textViewM8728a == null) {
                return;
            }
            m7910R(textViewM8728a, pairM7908P);
        }
    }

    /* JADX INFO: renamed from: T */
    private Drawable m7912T(Drawable drawable) {
        if (drawable == null || this.f6526Q == null) {
            return drawable;
        }
        Drawable drawableM1797r = C0251a.m1797r(drawable);
        C0251a.m1793n(drawableM1797r, this.f6526Q.intValue());
        return drawableM1797r;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1209h.m9210e(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        m7911S();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        C1209h.m9209d(this, f);
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(m7912T(drawable));
    }

    public void setNavigationIconTint(int i) {
        this.f6526Q = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.f6528S != z) {
            this.f6528S = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.f6527R != z) {
            this.f6527R = z;
            requestLayout();
        }
    }

    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(C1147a.m8952c(context, attributeSet, i, f6525T), attributeSet, i);
        Context context2 = getContext();
        TypedArray typedArrayM8726h = C1121j.m8726h(context2, attributeSet, C1226k.MaterialToolbar, i, f6525T, new int[0]);
        if (typedArrayM8726h.hasValue(C1226k.MaterialToolbar_navigationIconTint)) {
            setNavigationIconTint(typedArrayM8726h.getColor(C1226k.MaterialToolbar_navigationIconTint, -1));
        }
        this.f6527R = typedArrayM8726h.getBoolean(C1226k.MaterialToolbar_titleCentered, false);
        this.f6528S = typedArrayM8726h.getBoolean(C1226k.MaterialToolbar_subtitleCentered, false);
        typedArrayM8726h.recycle();
        m7909Q(context2);
    }
}
