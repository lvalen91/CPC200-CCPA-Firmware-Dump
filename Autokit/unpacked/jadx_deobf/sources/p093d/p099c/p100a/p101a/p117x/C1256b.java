package p093d.p099c.p100a.p101a.p117x;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;

/* JADX INFO: renamed from: d.c.a.a.x.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1256b {
    /* JADX INFO: renamed from: a */
    public static TypedValue m9450a(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* JADX INFO: renamed from: b */
    public static boolean m9451b(Context context, int i, boolean z) {
        TypedValue typedValueM9450a = m9450a(context, i);
        return (typedValueM9450a == null || typedValueM9450a.type != 18) ? z : typedValueM9450a.data != 0;
    }

    /* JADX INFO: renamed from: c */
    public static int m9452c(Context context, int i, String str) {
        TypedValue typedValueM9450a = m9450a(context, i);
        if (typedValueM9450a != null) {
            return typedValueM9450a.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    /* JADX INFO: renamed from: d */
    public static int m9453d(View view, int i) {
        return m9452c(view.getContext(), i, view.getClass().getCanonicalName());
    }
}
