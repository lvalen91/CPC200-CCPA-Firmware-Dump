package c.a.k.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.k0;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
@SuppressLint({"RestrictedAPI"})
public final class a {
    private static final ThreadLocal<TypedValue> a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakHashMap<Context, SparseArray<C0044a>> f1007b = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f1008c = new Object();

    /* JADX INFO: renamed from: c.a.k.a.a$a, reason: collision with other inner class name */
    private static class C0044a {
        final ColorStateList a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Configuration f1009b;

        C0044a(ColorStateList colorStateList, Configuration configuration) {
            this.a = colorStateList;
            this.f1009b = configuration;
        }
    }

    private static void a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f1008c) {
            SparseArray<C0044a> sparseArray = f1007b.get(context);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                f1007b.put(context, sparseArray);
            }
            sparseArray.append(i, new C0044a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    private static ColorStateList b(Context context, int i) {
        C0044a c0044a;
        synchronized (f1008c) {
            SparseArray<C0044a> sparseArray = f1007b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0044a = sparseArray.get(i)) != null) {
                if (c0044a.f1009b.equals(context.getResources().getConfiguration())) {
                    return c0044a.a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    public static ColorStateList c(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList colorStateListB = b(context, i);
        if (colorStateListB != null) {
            return colorStateListB;
        }
        ColorStateList colorStateListF = f(context, i);
        if (colorStateListF == null) {
            return androidx.core.content.a.c(context, i);
        }
        a(context, i, colorStateListF);
        return colorStateListF;
    }

    public static Drawable d(Context context, int i) {
        return k0.h().j(context, i);
    }

    private static TypedValue e() {
        TypedValue typedValue = a.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        a.set(typedValue2);
        return typedValue2;
    }

    private static ColorStateList f(Context context, int i) {
        if (g(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return androidx.core.content.c.a.a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception unused) {
            return null;
        }
    }

    private static boolean g(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue typedValueE = e();
        resources.getValue(i, typedValueE, true);
        int i2 = typedValueE.type;
        return i2 >= 28 && i2 <= 31;
    }
}
