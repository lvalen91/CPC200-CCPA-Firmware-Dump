package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class p0 {
    private static final ThreadLocal<TypedValue> a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final int[] f376b = {-16842910};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static final int[] f377c = {R.attr.state_focused};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final int[] f378d = {R.attr.state_pressed};
    static final int[] e = {R.attr.state_checked};
    static final int[] f = new int[0];
    private static final int[] g = new int[1];

    public static void a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(c.a.j.AppCompatTheme);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(c.a.j.AppCompatTheme_windowActionBar)) {
                String str = "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).";
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i) {
        ColorStateList colorStateListE = e(context, i);
        if (colorStateListE != null && colorStateListE.isStateful()) {
            return colorStateListE.getColorForState(f376b, colorStateListE.getDefaultColor());
        }
        TypedValue typedValueF = f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueF, true);
        return d(context, i, typedValueF.getFloat());
    }

    public static int c(Context context, int i) {
        int[] iArr = g;
        iArr[0] = i;
        u0 u0VarU = u0.u(context, null, iArr);
        try {
            return u0VarU.b(0, 0);
        } finally {
            u0VarU.w();
        }
    }

    static int d(Context context, int i, float f2) {
        return c.g.d.a.d(c(context, i), Math.round(Color.alpha(r0) * f2));
    }

    public static ColorStateList e(Context context, int i) {
        int[] iArr = g;
        iArr[0] = i;
        u0 u0VarU = u0.u(context, null, iArr);
        try {
            return u0VarU.c(0);
        } finally {
            u0VarU.w();
        }
    }

    private static TypedValue f() {
        TypedValue typedValue = a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        a.set(typedValue2);
        return typedValue2;
    }
}
