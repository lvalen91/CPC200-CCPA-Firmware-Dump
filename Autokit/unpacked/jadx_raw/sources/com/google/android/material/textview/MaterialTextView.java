package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.x;
import com.google.android.material.theme.a.a;
import d.c.a.a.k;
import d.c.a.a.x.b;
import d.c.a.a.x.c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialTextView extends x {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    private void h(Resources.Theme theme, int i) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i, k.MaterialTextAppearance);
        int iK = k(getContext(), typedArrayObtainStyledAttributes, k.MaterialTextAppearance_android_lineHeight, k.MaterialTextAppearance_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        if (iK >= 0) {
            setLineHeight(iK);
        }
    }

    private static boolean i(Context context) {
        return b.b(context, d.c.a.a.b.textAppearanceLineHeightEnabled, true);
    }

    private static int j(Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, k.MaterialTextView, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(k.MaterialTextView_android_textAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    private static int k(Context context, TypedArray typedArray, int... iArr) {
        int iC = -1;
        for (int i = 0; i < iArr.length && iC < 0; i++) {
            iC = c.c(context, typedArray, iArr[i], -1);
        }
        return iC;
    }

    private static boolean l(Context context, Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, k.MaterialTextView, i, i2);
        int iK = k(context, typedArrayObtainStyledAttributes, k.MaterialTextView_android_lineHeight, k.MaterialTextView_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        return iK != -1;
    }

    @Override // androidx.appcompat.widget.x, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (i(context)) {
            h(context.getTheme(), i);
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        int iJ;
        super(a.c(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        if (i(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (l(context2, theme, attributeSet, i, i2) || (iJ = j(theme, attributeSet, i, i2)) == -1) {
                return;
            }
            h(theme, iJ);
        }
    }
}
