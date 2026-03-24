package com.google.android.material.internal;

import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import com.yalantis.ucrop.BuildConfig;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.reflect.Constructor;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class g {
    static final int n;
    private static boolean o;
    private static Constructor<StaticLayout> p;
    private static Object q;
    private CharSequence a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TextPaint f2161b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f2162c;
    private int e;
    private boolean l;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f2163d = 0;
    private Layout.Alignment f = Layout.Alignment.ALIGN_NORMAL;
    private int g = Integer.MAX_VALUE;
    private float h = CropImageView.DEFAULT_ASPECT_RATIO;
    private float i = 1.0f;
    private int j = n;
    private boolean k = true;
    private TextUtils.TruncateAt m = null;

    static class a extends Exception {
        a(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    static {
        n = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    private g(CharSequence charSequence, TextPaint textPaint, int i) {
        this.a = charSequence;
        this.f2161b = textPaint;
        this.f2162c = i;
        this.e = charSequence.length();
    }

    private void b() throws a {
        Class<?> cls;
        if (o) {
            return;
        }
        try {
            boolean z = this.l && Build.VERSION.SDK_INT >= 23;
            if (Build.VERSION.SDK_INT >= 18) {
                cls = TextDirectionHeuristic.class;
                q = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                ClassLoader classLoader = g.class.getClassLoader();
                String str = this.l ? "RTL" : "LTR";
                Class<?> clsLoadClass = classLoader.loadClass("android.text.TextDirectionHeuristic");
                Class<?> clsLoadClass2 = classLoader.loadClass("android.text.TextDirectionHeuristics");
                q = clsLoadClass2.getField(str).get(clsLoadClass2);
                cls = clsLoadClass;
            }
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, cls, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
            p = declaredConstructor;
            declaredConstructor.setAccessible(true);
            o = true;
        } catch (Exception e) {
            throw new a(e);
        }
    }

    public static g c(CharSequence charSequence, TextPaint textPaint, int i) {
        return new g(charSequence, textPaint, i);
    }

    public StaticLayout a() throws a {
        if (this.a == null) {
            this.a = BuildConfig.FLAVOR;
        }
        int iMax = Math.max(0, this.f2162c);
        CharSequence charSequenceEllipsize = this.a;
        if (this.g == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f2161b, iMax, this.m);
        }
        this.e = Math.min(charSequenceEllipsize.length(), this.e);
        if (Build.VERSION.SDK_INT < 23) {
            b();
            try {
                Constructor<StaticLayout> constructor = p;
                c.g.j.h.e(constructor);
                Object obj = q;
                c.g.j.h.e(obj);
                return constructor.newInstance(charSequenceEllipsize, Integer.valueOf(this.f2163d), Integer.valueOf(this.e), this.f2161b, Integer.valueOf(iMax), this.f, obj, Float.valueOf(1.0f), Float.valueOf(CropImageView.DEFAULT_ASPECT_RATIO), Boolean.valueOf(this.k), null, Integer.valueOf(iMax), Integer.valueOf(this.g));
            } catch (Exception e) {
                throw new a(e);
            }
        }
        if (this.l && this.g == 1) {
            this.f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.f2163d, this.e, this.f2161b, iMax);
        builderObtain.setAlignment(this.f);
        builderObtain.setIncludePad(this.k);
        builderObtain.setTextDirection(this.l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.m;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.g);
        if (this.h != CropImageView.DEFAULT_ASPECT_RATIO || this.i != 1.0f) {
            builderObtain.setLineSpacing(this.h, this.i);
        }
        if (this.g > 1) {
            builderObtain.setHyphenationFrequency(this.j);
        }
        return builderObtain.build();
    }

    public g d(Layout.Alignment alignment) {
        this.f = alignment;
        return this;
    }

    public g e(TextUtils.TruncateAt truncateAt) {
        this.m = truncateAt;
        return this;
    }

    public g f(int i) {
        this.j = i;
        return this;
    }

    public g g(boolean z) {
        this.k = z;
        return this;
    }

    public g h(boolean z) {
        this.l = z;
        return this;
    }

    public g i(float f, float f2) {
        this.h = f;
        this.i = f2;
        return this;
    }

    public g j(int i) {
        this.g = i;
        return this;
    }
}
