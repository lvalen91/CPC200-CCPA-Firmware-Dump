package com.google.android.material.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.appcompat.widget.C0195u0;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1226k;

/* JADX INFO: renamed from: com.google.android.material.internal.j */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1121j {

    /* JADX INFO: renamed from: a */
    private static final int[] f7198a = {C1216b.colorPrimary};

    /* JADX INFO: renamed from: b */
    private static final int[] f7199b = {C1216b.colorPrimaryVariant};

    /* JADX INFO: renamed from: a */
    public static void m8719a(Context context) {
        m8723e(context, f7198a, "Theme.AppCompat");
    }

    /* JADX INFO: renamed from: b */
    private static void m8720b(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.ThemeEnforcement, i, i2);
        boolean z = typedArrayObtainStyledAttributes.getBoolean(C1226k.ThemeEnforcement_enforceMaterialTheme, false);
        typedArrayObtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(C1216b.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                m8721c(context);
            }
        }
        m8719a(context);
    }

    /* JADX INFO: renamed from: c */
    public static void m8721c(Context context) {
        m8723e(context, f7199b, "Theme.MaterialComponents");
    }

    /* JADX INFO: renamed from: d */
    private static void m8722d(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        boolean zM8724f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1226k.ThemeEnforcement, i, i2);
        if (!typedArrayObtainStyledAttributes.getBoolean(C1226k.ThemeEnforcement_enforceTextAppearance, false)) {
            typedArrayObtainStyledAttributes.recycle();
            return;
        }
        if (iArr2 == null || iArr2.length == 0) {
            zM8724f = typedArrayObtainStyledAttributes.getResourceId(C1226k.ThemeEnforcement_android_textAppearance, -1) != -1;
        } else {
            zM8724f = m8724f(context, attributeSet, iArr, i, i2, iArr2);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!zM8724f) {
            throw new IllegalArgumentException("This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant).");
        }
    }

    /* JADX INFO: renamed from: e */
    private static void m8723e(Context context, int[] iArr, String str) {
        if (m8725g(context, iArr)) {
            return;
        }
        throw new IllegalArgumentException("The style on this component requires your app theme to be " + str + " (or a descendant).");
    }

    /* JADX INFO: renamed from: f */
    private static boolean m8724f(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, i2);
        for (int i3 : iArr2) {
            if (typedArrayObtainStyledAttributes.getResourceId(i3, -1) == -1) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    /* JADX INFO: renamed from: g */
    private static boolean m8725g(Context context, int[] iArr) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i = 0; i < iArr.length; i++) {
            if (!typedArrayObtainStyledAttributes.hasValue(i)) {
                typedArrayObtainStyledAttributes.recycle();
                return false;
            }
        }
        typedArrayObtainStyledAttributes.recycle();
        return true;
    }

    /* JADX INFO: renamed from: h */
    public static TypedArray m8726h(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m8720b(context, attributeSet, i, i2);
        m8722d(context, attributeSet, iArr, i, i2, iArr2);
        return context.obtainStyledAttributes(attributeSet, iArr, i, i2);
    }

    /* JADX INFO: renamed from: i */
    public static C0195u0 m8727i(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2, int... iArr2) {
        m8720b(context, attributeSet, i, i2);
        m8722d(context, attributeSet, iArr, i, i2, iArr2);
        return C0195u0.m1321v(context, attributeSet, iArr, i, i2);
    }
}
