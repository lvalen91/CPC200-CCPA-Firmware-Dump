package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.v;
import d.c.a.a.f;
import d.c.a.a.k;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private TextView f2173b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Button f2174c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2175d;
    private int e;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.SnackbarLayout);
        this.f2175d = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_android_maxWidth, -1);
        this.e = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    private static void a(View view, int i, int i2) {
        if (v.V(view)) {
            v.A0(view, v.I(view), i, v.H(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    private boolean b(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f2173b.getPaddingTop() == i2 && this.f2173b.getPaddingBottom() == i3) {
            return z;
        }
        a(this.f2173b, i2, i3);
        return true;
    }

    public Button getActionView() {
        return this.f2174c;
    }

    public TextView getMessageView() {
        return this.f2173b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f2173b = (TextView) findViewById(f.snackbar_text);
        this.f2174c = (Button) findViewById(f.snackbar_action);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2175d > 0) {
            int measuredWidth = getMeasuredWidth();
            int i3 = this.f2175d;
            if (measuredWidth > i3) {
                i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                super.onMeasure(i, i2);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(d.c.a.a.d.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(d.c.a.a.d.design_snackbar_padding_vertical);
        boolean z = false;
        boolean z2 = this.f2173b.getLayout().getLineCount() > 1;
        if (!z2 || this.e <= 0 || this.f2174c.getMeasuredWidth() <= this.e) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (b(0, dimensionPixelSize, dimensionPixelSize)) {
                z = true;
            }
        } else if (b(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }

    public void setMaxInlineActionWidth(int i) {
        this.e = i;
    }
}
