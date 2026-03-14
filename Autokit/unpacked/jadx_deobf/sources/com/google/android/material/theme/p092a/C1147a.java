package com.google.android.material.theme.p092a;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import p016c.p017a.p024o.C0514d;
import p093d.p099c.p100a.p101a.C1216b;

/* JADX INFO: renamed from: com.google.android.material.theme.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1147a {

    /* JADX INFO: renamed from: a */
    private static final int[] f7421a = {R.attr.theme, C1216b.theme};

    /* JADX INFO: renamed from: b */
    private static final int[] f7422b = {C1216b.materialThemeOverlay};

    /* JADX INFO: renamed from: a */
    private static int m8950a(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7421a);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId != 0 ? resourceId : resourceId2;
    }

    /* JADX INFO: renamed from: b */
    private static int m8951b(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f7422b, i, i2);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        return resourceId;
    }

    /* JADX INFO: renamed from: c */
    public static Context m8952c(Context context, AttributeSet attributeSet, int i, int i2) {
        int iM8951b = m8951b(context, attributeSet, i, i2);
        boolean z = (context instanceof C0514d) && ((C0514d) context).m4133c() == iM8951b;
        if (iM8951b == 0 || z) {
            return context;
        }
        C0514d c0514d = new C0514d(context, iM8951b);
        int iM8950a = m8950a(context, attributeSet);
        if (iM8950a != 0) {
            c0514d.getTheme().applyStyle(iM8950a, true);
        }
        return c0514d;
    }
}
