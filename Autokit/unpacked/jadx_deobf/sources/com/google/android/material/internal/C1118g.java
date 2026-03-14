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
import p016c.p041g.p049j.C0626h;

/* JADX INFO: renamed from: com.google.android.material.internal.g */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1118g {

    /* JADX INFO: renamed from: n */
    static final int f7174n;

    /* JADX INFO: renamed from: o */
    private static boolean f7175o;

    /* JADX INFO: renamed from: p */
    private static Constructor<StaticLayout> f7176p;

    /* JADX INFO: renamed from: q */
    private static Object f7177q;

    /* JADX INFO: renamed from: a */
    private CharSequence f7178a;

    /* JADX INFO: renamed from: b */
    private final TextPaint f7179b;

    /* JADX INFO: renamed from: c */
    private final int f7180c;

    /* JADX INFO: renamed from: e */
    private int f7182e;

    /* JADX INFO: renamed from: l */
    private boolean f7189l;

    /* JADX INFO: renamed from: d */
    private int f7181d = 0;

    /* JADX INFO: renamed from: f */
    private Layout.Alignment f7183f = Layout.Alignment.ALIGN_NORMAL;

    /* JADX INFO: renamed from: g */
    private int f7184g = Integer.MAX_VALUE;

    /* JADX INFO: renamed from: h */
    private float f7185h = CropImageView.DEFAULT_ASPECT_RATIO;

    /* JADX INFO: renamed from: i */
    private float f7186i = 1.0f;

    /* JADX INFO: renamed from: j */
    private int f7187j = f7174n;

    /* JADX INFO: renamed from: k */
    private boolean f7188k = true;

    /* JADX INFO: renamed from: m */
    private TextUtils.TruncateAt f7190m = null;

    /* JADX INFO: renamed from: com.google.android.material.internal.g$a */
    static class a extends Exception {
        a(Throwable th) {
            super("Error thrown initializing StaticLayout " + th.getMessage(), th);
        }
    }

    static {
        f7174n = Build.VERSION.SDK_INT >= 23 ? 1 : 0;
    }

    private C1118g(CharSequence charSequence, TextPaint textPaint, int i) {
        this.f7178a = charSequence;
        this.f7179b = textPaint;
        this.f7180c = i;
        this.f7182e = charSequence.length();
    }

    /* JADX INFO: renamed from: b */
    private void m8699b() throws a {
        Class<?> cls;
        if (f7175o) {
            return;
        }
        try {
            boolean z = this.f7189l && Build.VERSION.SDK_INT >= 23;
            if (Build.VERSION.SDK_INT >= 18) {
                cls = TextDirectionHeuristic.class;
                f7177q = z ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                ClassLoader classLoader = C1118g.class.getClassLoader();
                String str = this.f7189l ? "RTL" : "LTR";
                Class<?> clsLoadClass = classLoader.loadClass("android.text.TextDirectionHeuristic");
                Class<?> clsLoadClass2 = classLoader.loadClass("android.text.TextDirectionHeuristics");
                f7177q = clsLoadClass2.getField(str).get(clsLoadClass2);
                cls = clsLoadClass;
            }
            Constructor<StaticLayout> declaredConstructor = StaticLayout.class.getDeclaredConstructor(CharSequence.class, Integer.TYPE, Integer.TYPE, TextPaint.class, Integer.TYPE, Layout.Alignment.class, cls, Float.TYPE, Float.TYPE, Boolean.TYPE, TextUtils.TruncateAt.class, Integer.TYPE, Integer.TYPE);
            f7176p = declaredConstructor;
            declaredConstructor.setAccessible(true);
            f7175o = true;
        } catch (Exception e) {
            throw new a(e);
        }
    }

    /* JADX INFO: renamed from: c */
    public static C1118g m8700c(CharSequence charSequence, TextPaint textPaint, int i) {
        return new C1118g(charSequence, textPaint, i);
    }

    /* JADX INFO: renamed from: a */
    public StaticLayout m8701a() throws a {
        if (this.f7178a == null) {
            this.f7178a = BuildConfig.FLAVOR;
        }
        int iMax = Math.max(0, this.f7180c);
        CharSequence charSequenceEllipsize = this.f7178a;
        if (this.f7184g == 1) {
            charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, this.f7179b, iMax, this.f7190m);
        }
        this.f7182e = Math.min(charSequenceEllipsize.length(), this.f7182e);
        if (Build.VERSION.SDK_INT < 23) {
            m8699b();
            try {
                Constructor<StaticLayout> constructor = f7176p;
                C0626h.m4855e(constructor);
                Object obj = f7177q;
                C0626h.m4855e(obj);
                return constructor.newInstance(charSequenceEllipsize, Integer.valueOf(this.f7181d), Integer.valueOf(this.f7182e), this.f7179b, Integer.valueOf(iMax), this.f7183f, obj, Float.valueOf(1.0f), Float.valueOf(CropImageView.DEFAULT_ASPECT_RATIO), Boolean.valueOf(this.f7188k), null, Integer.valueOf(iMax), Integer.valueOf(this.f7184g));
            } catch (Exception e) {
                throw new a(e);
            }
        }
        if (this.f7189l && this.f7184g == 1) {
            this.f7183f = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequenceEllipsize, this.f7181d, this.f7182e, this.f7179b, iMax);
        builderObtain.setAlignment(this.f7183f);
        builderObtain.setIncludePad(this.f7188k);
        builderObtain.setTextDirection(this.f7189l ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f7190m;
        if (truncateAt != null) {
            builderObtain.setEllipsize(truncateAt);
        }
        builderObtain.setMaxLines(this.f7184g);
        if (this.f7185h != CropImageView.DEFAULT_ASPECT_RATIO || this.f7186i != 1.0f) {
            builderObtain.setLineSpacing(this.f7185h, this.f7186i);
        }
        if (this.f7184g > 1) {
            builderObtain.setHyphenationFrequency(this.f7187j);
        }
        return builderObtain.build();
    }

    /* JADX INFO: renamed from: d */
    public C1118g m8702d(Layout.Alignment alignment) {
        this.f7183f = alignment;
        return this;
    }

    /* JADX INFO: renamed from: e */
    public C1118g m8703e(TextUtils.TruncateAt truncateAt) {
        this.f7190m = truncateAt;
        return this;
    }

    /* JADX INFO: renamed from: f */
    public C1118g m8704f(int i) {
        this.f7187j = i;
        return this;
    }

    /* JADX INFO: renamed from: g */
    public C1118g m8705g(boolean z) {
        this.f7188k = z;
        return this;
    }

    /* JADX INFO: renamed from: h */
    public C1118g m8706h(boolean z) {
        this.f7189l = z;
        return this;
    }

    /* JADX INFO: renamed from: i */
    public C1118g m8707i(float f, float f2) {
        this.f7185h = f;
        this.f7186i = f2;
        return this;
    }

    /* JADX INFO: renamed from: j */
    public C1118g m8708j(int i) {
        this.f7184g = i;
        return this;
    }
}
