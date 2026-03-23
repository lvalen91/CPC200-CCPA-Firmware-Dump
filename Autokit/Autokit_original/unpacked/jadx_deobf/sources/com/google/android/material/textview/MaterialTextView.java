package com.google.android.material.textview;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.C0200x;
import com.google.android.material.theme.p092a.C1147a;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p117x.C1256b;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class MaterialTextView extends C0200x {
    public MaterialTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.textViewStyle);
    }

    /* JADX INFO: renamed from: h */
    private void m8945h(Resources.Theme theme, int i) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(i, C1226k.MaterialTextAppearance);
        int iM8948k = m8948k(getContext(), typedArrayObtainStyledAttributes, C1226k.MaterialTextAppearance_android_lineHeight, C1226k.MaterialTextAppearance_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        if (iM8948k >= 0) {
            setLineHeight(iM8948k);
        }
    }

    /* JADX INFO: renamed from: i */
    private static boolean m8946i(Context context) {
        return C1256b.m9451b(context, C1216b.textAppearanceLineHeightEnabled, true);
    }

    /* JADX INFO: renamed from: j */
    private static int m8947j(Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1226k.MaterialTextView, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialTextView_android_textAppearance, -1);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX INFO: renamed from: k */
    private static int m8948k(Context context, TypedArray typedArray, int... iArr) {
        int iM9456c = -1;
        for (int i = 0; i < iArr.length && iM9456c < 0; i++) {
            iM9456c = C1257c.m9456c(context, typedArray, iArr[i], -1);
        }
        return iM9456c;
    }

    /* JADX INFO: renamed from: l */
    private static boolean m8949l(Context context, Resources.Theme theme, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, C1226k.MaterialTextView, i, i2);
        int iM8948k = m8948k(context, typedArrayObtainStyledAttributes, C1226k.MaterialTextView_android_lineHeight, C1226k.MaterialTextView_lineHeight);
        typedArrayObtainStyledAttributes.recycle();
        return iM8948k != -1;
    }

    @Override // androidx.appcompat.widget.C0200x, android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (m8946i(context)) {
            m8945h(context.getTheme(), i);
        }
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public MaterialTextView(Context context, AttributeSet attributeSet, int i, int i2) {
        int iM8947j;
        super(C1147a.m8952c(context, attributeSet, i, i2), attributeSet, i);
        Context context2 = getContext();
        if (m8946i(context2)) {
            Resources.Theme theme = context2.getTheme();
            if (m8949l(context2, theme, attributeSet, i, i2) || (iM8947j = m8947j(theme, attributeSet, i, i2)) == -1) {
                return;
            }
            m8945h(theme, iM8947j);
        }
    }
}
