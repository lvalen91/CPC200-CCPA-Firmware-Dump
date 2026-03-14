package d.c.a.a.x;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import androidx.appcompat.widget.u0;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class c {
    public static ColorStateList a(Context context, TypedArray typedArray, int i) {
        int color;
        int resourceId;
        ColorStateList colorStateListC;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (colorStateListC = c.a.k.a.a.c(context, resourceId)) == null) ? (Build.VERSION.SDK_INT > 15 || (color = typedArray.getColor(i, -1)) == -1) ? typedArray.getColorStateList(i) : ColorStateList.valueOf(color) : colorStateListC;
    }

    public static ColorStateList b(Context context, u0 u0Var, int i) {
        int iB;
        int iN;
        ColorStateList colorStateListC;
        return (!u0Var.s(i) || (iN = u0Var.n(i, 0)) == 0 || (colorStateListC = c.a.k.a.a.c(context, iN)) == null) ? (Build.VERSION.SDK_INT > 15 || (iB = u0Var.b(i, -1)) == -1) ? u0Var.c(i) : ColorStateList.valueOf(iB) : colorStateListC;
    }

    public static int c(Context context, TypedArray typedArray, int i, int i2) {
        TypedValue typedValue = new TypedValue();
        if (!typedArray.getValue(i, typedValue) || typedValue.type != 2) {
            return typedArray.getDimensionPixelSize(i, i2);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{typedValue.data});
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, i2);
        typedArrayObtainStyledAttributes.recycle();
        return dimensionPixelSize;
    }

    public static Drawable d(Context context, TypedArray typedArray, int i) {
        int resourceId;
        Drawable drawableD;
        return (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0 || (drawableD = c.a.k.a.a.d(context, resourceId)) == null) ? typedArray.getDrawable(i) : drawableD;
    }

    static int e(TypedArray typedArray, int i, int i2) {
        return typedArray.hasValue(i) ? i : i2;
    }

    public static d f(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return new d(context, resourceId);
    }

    public static boolean g(Context context) {
        return context.getResources().getConfiguration().fontScale >= 1.3f;
    }

    public static boolean h(Context context) {
        return context.getResources().getConfiguration().fontScale >= 2.0f;
    }
}
