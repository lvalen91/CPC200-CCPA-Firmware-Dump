package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import p016c.p017a.C0502j;
import p016c.p041g.p042d.C0588a;

/* JADX INFO: renamed from: androidx.appcompat.widget.p0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0185p0 {

    /* JADX INFO: renamed from: a */
    private static final ThreadLocal<TypedValue> f1256a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b */
    static final int[] f1257b = {-16842910};

    /* JADX INFO: renamed from: c */
    static final int[] f1258c = {R.attr.state_focused};

    /* JADX INFO: renamed from: d */
    static final int[] f1259d = {R.attr.state_pressed};

    /* JADX INFO: renamed from: e */
    static final int[] f1260e = {R.attr.state_checked};

    /* JADX INFO: renamed from: f */
    static final int[] f1261f = new int[0];

    /* JADX INFO: renamed from: g */
    private static final int[] f1262g = new int[1];

    /* JADX INFO: renamed from: a */
    public static void m1279a(View view, Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(C0502j.AppCompatTheme);
        try {
            if (!typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTheme_windowActionBar)) {
                String str = "View " + view.getClass() + " is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).";
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: renamed from: b */
    public static int m1280b(Context context, int i) {
        ColorStateList colorStateListM1283e = m1283e(context, i);
        if (colorStateListM1283e != null && colorStateListM1283e.isStateful()) {
            return colorStateListM1283e.getColorForState(f1257b, colorStateListM1283e.getDefaultColor());
        }
        TypedValue typedValueM1284f = m1284f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, typedValueM1284f, true);
        return m1282d(context, i, typedValueM1284f.getFloat());
    }

    /* JADX INFO: renamed from: c */
    public static int m1281c(Context context, int i) {
        int[] iArr = f1262g;
        iArr[0] = i;
        C0195u0 c0195u0M1320u = C0195u0.m1320u(context, null, iArr);
        try {
            return c0195u0M1320u.m1323b(0, 0);
        } finally {
            c0195u0M1320u.m1341w();
        }
    }

    /* JADX INFO: renamed from: d */
    static int m1282d(Context context, int i, float f) {
        return C0588a.m4671d(m1281c(context, i), Math.round(Color.alpha(r0) * f));
    }

    /* JADX INFO: renamed from: e */
    public static ColorStateList m1283e(Context context, int i) {
        int[] iArr = f1262g;
        iArr[0] = i;
        C0195u0 c0195u0M1320u = C0195u0.m1320u(context, null, iArr);
        try {
            return c0195u0M1320u.m1324c(0);
        } finally {
            c0195u0M1320u.m1341w();
        }
    }

    /* JADX INFO: renamed from: f */
    private static TypedValue m1284f() {
        TypedValue typedValue = f1256a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f1256a.set(typedValue2);
        return typedValue2;
    }
}
