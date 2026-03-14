package d.c.a.a.q;

import android.content.Context;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;
import d.c.a.a.x.b;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class a {
    public static int a(Context context, int i, int i2) {
        TypedValue typedValueA = b.a(context, i);
        return typedValueA != null ? typedValueA.data : i2;
    }

    public static int b(Context context, int i, String str) {
        return b.c(context, i, str);
    }

    public static int c(View view, int i) {
        return b.d(view, i);
    }

    public static int d(View view, int i, int i2) {
        return a(view.getContext(), i, i2);
    }

    public static int e(int i, int i2) {
        return c.g.d.a.b(i2, i);
    }

    public static int f(int i, int i2, float f) {
        return e(i, c.g.d.a.d(i2, Math.round(Color.alpha(i2) * f)));
    }

    public static int g(View view, int i, int i2, float f) {
        return f(c(view, i), c(view, i2), f);
    }
}
