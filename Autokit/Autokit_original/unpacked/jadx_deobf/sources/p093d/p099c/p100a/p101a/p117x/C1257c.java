package p093d.p099c.p100a.p101a.p117x;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.appcompat.widget.C0195u0;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: d.c.a.a.x.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1257c {
    /* JADX INFO: renamed from: a */
    public static ColorStateList m9454a(Context context, TypedArray typedArray, int i) {
        int color;
        int resourceId;
        ColorStateList colorStateListM4046c;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListM4046c = C0503a.m4046c(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color) : colorStateListM4046c;
    }

    /* JADX INFO: renamed from: b */
    public static ColorStateList m9455b(Context context, C0195u0 c0195u0, int i) {
        int iM1323b;
        int iM1335n;
        ColorStateList colorStateListM4046c;
        return (!c0195u0.m1340s(i) || (iM1335n = c0195u0.m1335n(i, 0)) == 0 || (colorStateListM4046c = C0503a.m4046c(context, iM1335n)) == null) ? (Build.VERSION.SDK_INT > 15 || (iM1323b = c0195u0.m1323b(i, -1)) == -1) ? c0195u0.m1324c(i) : ColorStateList.valueOf(iM1323b) : colorStateListM4046c;
    }

    /* JADX INFO: renamed from: c */
    public static int m9456c(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i2);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    /* JADX INFO: renamed from: d */
    public static Drawable m9457d(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawableM4047d;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawableM4047d = C0503a.m4047d(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawableM4047d;
    }

    /* JADX INFO: renamed from: e */
    static int m9458e(TypedArray typedArray, int i, int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }

    /* JADX INFO: renamed from: f */
    public static C1258d m9459f(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new C1258d(context, resourceId);
    }

    /* JADX INFO: renamed from: g */
    public static boolean m9460g(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    /* JADX INFO: renamed from: h */
    public static boolean m9461h(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }
}
