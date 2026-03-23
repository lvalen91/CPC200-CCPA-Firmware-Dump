package p016c.p017a.p018k.p019a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.C0175k0;
import androidx.core.content.C0242a;
import androidx.core.content.p003c.C0244a;
import java.util.WeakHashMap;

/* JADX INFO: renamed from: c.a.k.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"RestrictedAPI"})
public final class C0503a {

    /* JADX INFO: renamed from: a */
    private static final ThreadLocal<TypedValue> f3087a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b */
    private static final WeakHashMap<Context, SparseArray<a>> f3088b = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: c */
    private static final Object f3089c = new Object();

    /* JADX INFO: renamed from: c.a.k.a.a$a */
    private static class a {

        /* JADX INFO: renamed from: a */
        final ColorStateList f3090a;

        /* JADX INFO: renamed from: b */
        final Configuration f3091b;

        a(ColorStateList colorStateList, Configuration configuration) {
            this.f3090a = colorStateList;
            this.f3091b = configuration;
        }
    }

    /* JADX INFO: renamed from: a */
    private static void m4044a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f3089c) {
            SparseArray<a> sparseArray = f3088b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                f3088b.put(context, sparseArray);
            }
            sparseArray.append(i, new a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* JADX INFO: renamed from: b */
    private static ColorStateList m4045b(Context context, int i) {
        a aVar;
        synchronized (f3089c) {
            SparseArray<a> sparseArray = f3088b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (aVar = sparseArray.get(i)) != null) {
                if (aVar.f3091b.equals(context.getResources().getConfiguration())) {
                    return aVar.f3090a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* JADX INFO: renamed from: c */
    public static ColorStateList m4046c(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList colorStateListM4045b = m4045b(context, i);
        if (colorStateListM4045b != null) {
            return colorStateListM4045b;
        }
        ColorStateList colorStateListM4049f = m4049f(context, i);
        if (colorStateListM4049f == null) {
            return C0242a.m1698c(context, i);
        }
        m4044a(context, i, colorStateListM4049f);
        return colorStateListM4049f;
    }

    /* JADX INFO: renamed from: d */
    public static Drawable m4047d(Context context, int i) {
        return C0175k0.m1202h().m1211j(context, i);
    }

    /* JADX INFO: renamed from: e */
    private static TypedValue m4048e() {
        TypedValue typedValue = f3087a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        f3087a.set(typedValue2);
        return typedValue2;
    }

    /* JADX INFO: renamed from: f */
    private static ColorStateList m4049f(Context context, int i) {
        if (m4050g(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return C0244a.m1706a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: renamed from: g */
    private static boolean m4050g(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue typedValueM4048e = m4048e();
        resources.getValue(i, typedValueM4048e, true);
        int i2 = typedValueM4048e.type;
        return i2 >= 28 && i2 <= 31;
    }
}
