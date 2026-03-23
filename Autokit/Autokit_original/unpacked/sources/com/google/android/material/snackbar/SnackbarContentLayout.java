package com.google.android.material.snackbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.C0292v;
import p093d.p099c.p100a.p101a.C1219d;
import p093d.p099c.p100a.p101a.C1221f;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class SnackbarContentLayout extends LinearLayout {

    /* JADX INFO: renamed from: b */
    private TextView f7208b;

    /* JADX INFO: renamed from: c */
    private Button f7209c;

    /* JADX INFO: renamed from: d */
    private int f7210d;

    /* JADX INFO: renamed from: e */
    private int f7211e;

    public SnackbarContentLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.SnackbarLayout);
        this.f7210d = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.SnackbarLayout_android_maxWidth, -1);
        this.f7211e = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.SnackbarLayout_maxActionInlineWidth, -1);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX INFO: renamed from: a */
    private static void m8738a(View view, int i, int i2) {
        if (C0292v.m2071V(view)) {
            C0292v.m2043A0(view, C0292v.m2058I(view), i, C0292v.m2056H(view), i2);
        } else {
            view.setPadding(view.getPaddingLeft(), i, view.getPaddingRight(), i2);
        }
    }

    /* JADX INFO: renamed from: b */
    private boolean m8739b(int i, int i2, int i3) {
        boolean z;
        if (i != getOrientation()) {
            setOrientation(i);
            z = true;
        } else {
            z = false;
        }
        if (this.f7208b.getPaddingTop() == i2 && this.f7208b.getPaddingBottom() == i3) {
            return z;
        }
        m8738a(this.f7208b, i2, i3);
        return true;
    }

    public Button getActionView() {
        return this.f7209c;
    }

    public TextView getMessageView() {
        return this.f7208b;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.f7208b = (TextView) findViewById(C1221f.snackbar_text);
        this.f7209c = (Button) findViewById(C1221f.snackbar_action);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    @Override // android.widget.LinearLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f7210d > 0) {
            int measuredWidth = getMeasuredWidth();
            int i3 = this.f7210d;
            if (measuredWidth > i3) {
                i = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                super.onMeasure(i, i2);
            }
        }
        int dimensionPixelSize = getResources().getDimensionPixelSize(C1219d.design_snackbar_padding_vertical_2lines);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C1219d.design_snackbar_padding_vertical);
        boolean z = false;
        boolean z2 = this.f7208b.getLayout().getLineCount() > 1;
        if (!z2 || this.f7211e <= 0 || this.f7209c.getMeasuredWidth() <= this.f7211e) {
            if (!z2) {
                dimensionPixelSize = dimensionPixelSize2;
            }
            if (m8739b(0, dimensionPixelSize, dimensionPixelSize)) {
                z = true;
            }
        } else if (m8739b(1, dimensionPixelSize, dimensionPixelSize - dimensionPixelSize2)) {
        }
        if (z) {
            super.onMeasure(i, i2);
        }
    }

    public void setMaxInlineActionWidth(int i) {
        this.f7211e = i;
    }
}
