package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.core.content.p003c.C0249f;
import androidx.core.view.C0292v;
import androidx.core.view.p005f0.C0274a;
import androidx.core.widget.C0308i;
import androidx.core.widget.InterfaceC0301b;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.ref.WeakReference;
import java.util.Locale;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: androidx.appcompat.widget.w */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0198w {

    /* JADX INFO: renamed from: a */
    private final TextView f1338a;

    /* JADX INFO: renamed from: b */
    private C0191s0 f1339b;

    /* JADX INFO: renamed from: c */
    private C0191s0 f1340c;

    /* JADX INFO: renamed from: d */
    private C0191s0 f1341d;

    /* JADX INFO: renamed from: e */
    private C0191s0 f1342e;

    /* JADX INFO: renamed from: f */
    private C0191s0 f1343f;

    /* JADX INFO: renamed from: g */
    private C0191s0 f1344g;

    /* JADX INFO: renamed from: h */
    private C0191s0 f1345h;

    /* JADX INFO: renamed from: i */
    private final C0202y f1346i;

    /* JADX INFO: renamed from: j */
    private int f1347j = 0;

    /* JADX INFO: renamed from: k */
    private int f1348k = -1;

    /* JADX INFO: renamed from: l */
    private Typeface f1349l;

    /* JADX INFO: renamed from: m */
    private boolean f1350m;

    /* JADX INFO: renamed from: androidx.appcompat.widget.w$a */
    class a extends C0249f.a {

        /* JADX INFO: renamed from: a */
        final /* synthetic */ int f1351a;

        /* JADX INFO: renamed from: b */
        final /* synthetic */ int f1352b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ WeakReference f1353c;

        a(int i, int i2, WeakReference weakReference) {
            this.f1351a = i;
            this.f1352b = i2;
            this.f1353c = weakReference;
        }

        @Override // androidx.core.content.p003c.C0249f.a
        /* JADX INFO: renamed from: d */
        public void mo1386d(int i) {
        }

        @Override // androidx.core.content.p003c.C0249f.a
        /* JADX INFO: renamed from: e */
        public void mo1387e(Typeface typeface) {
            int i;
            if (Build.VERSION.SDK_INT >= 28 && (i = this.f1351a) != -1) {
                typeface = Typeface.create(typeface, i, (this.f1352b & 2) != 0);
            }
            C0198w.this.m1375n(this.f1353c, typeface);
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.w$b */
    class b implements Runnable {

        /* JADX INFO: renamed from: b */
        final /* synthetic */ TextView f1355b;

        /* JADX INFO: renamed from: c */
        final /* synthetic */ Typeface f1356c;

        /* JADX INFO: renamed from: d */
        final /* synthetic */ int f1357d;

        b(C0198w c0198w, TextView textView, Typeface typeface, int i) {
            this.f1355b = textView;
            this.f1356c = typeface;
            this.f1357d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1355b.setTypeface(this.f1356c, this.f1357d);
        }
    }

    C0198w(TextView textView) {
        this.f1338a = textView;
        this.f1346i = new C0202y(this.f1338a);
    }

    /* JADX INFO: renamed from: B */
    private void m1357B(int i, float f) {
        this.f1346i.m1428y(i, f);
    }

    /* JADX INFO: renamed from: C */
    private void m1358C(Context context, C0195u0 c0195u0) {
        String strM1336o;
        this.f1347j = c0195u0.m1332k(C0502j.TextAppearance_android_textStyle, this.f1347j);
        if (Build.VERSION.SDK_INT >= 28) {
            int iM1332k = c0195u0.m1332k(C0502j.TextAppearance_android_textFontWeight, -1);
            this.f1348k = iM1332k;
            if (iM1332k != -1) {
                this.f1347j = (this.f1347j & 2) | 0;
            }
        }
        if (!c0195u0.m1340s(C0502j.TextAppearance_android_fontFamily) && !c0195u0.m1340s(C0502j.TextAppearance_fontFamily)) {
            if (c0195u0.m1340s(C0502j.TextAppearance_android_typeface)) {
                this.f1350m = false;
                int iM1332k2 = c0195u0.m1332k(C0502j.TextAppearance_android_typeface, 1);
                if (iM1332k2 == 1) {
                    this.f1349l = Typeface.SANS_SERIF;
                    return;
                } else if (iM1332k2 == 2) {
                    this.f1349l = Typeface.SERIF;
                    return;
                } else {
                    if (iM1332k2 != 3) {
                        return;
                    }
                    this.f1349l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.f1349l = null;
        int i = c0195u0.m1340s(C0502j.TextAppearance_fontFamily) ? C0502j.TextAppearance_fontFamily : C0502j.TextAppearance_android_fontFamily;
        int i2 = this.f1348k;
        int i3 = this.f1347j;
        if (!context.isRestricted()) {
            try {
                Typeface typefaceM1331j = c0195u0.m1331j(i, this.f1347j, new a(i2, i3, new WeakReference(this.f1338a)));
                if (typefaceM1331j != null) {
                    if (Build.VERSION.SDK_INT < 28 || this.f1348k == -1) {
                        this.f1349l = typefaceM1331j;
                    } else {
                        this.f1349l = Typeface.create(Typeface.create(typefaceM1331j, 0), this.f1348k, (this.f1347j & 2) != 0);
                    }
                }
                this.f1350m = this.f1349l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.f1349l != null || (strM1336o = c0195u0.m1336o(i)) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 28 || this.f1348k == -1) {
            this.f1349l = Typeface.create(strM1336o, this.f1347j);
        } else {
            this.f1349l = Typeface.create(Typeface.create(strM1336o, 0), this.f1348k, (this.f1347j & 2) != 0);
        }
    }

    /* JADX INFO: renamed from: a */
    private void m1359a(Drawable drawable, C0191s0 c0191s0) {
        if (drawable == null || c0191s0 == null) {
            return;
        }
        C0170i.m1171i(drawable, c0191s0, this.f1338a.getDrawableState());
    }

    /* JADX INFO: renamed from: d */
    private static C0191s0 m1360d(Context context, C0170i c0170i, int i) {
        ColorStateList colorStateListM1174f = c0170i.m1174f(context, i);
        if (colorStateListM1174f == null) {
            return null;
        }
        C0191s0 c0191s0 = new C0191s0();
        c0191s0.f1275d = true;
        c0191s0.f1272a = colorStateListM1174f;
        return c0191s0;
    }

    /* JADX INFO: renamed from: y */
    private void m1361y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (Build.VERSION.SDK_INT >= 17 && (drawable5 != null || drawable6 != null)) {
            Drawable[] compoundDrawablesRelative = this.f1338a.getCompoundDrawablesRelative();
            TextView textView = this.f1338a;
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            Drawable[] compoundDrawablesRelative2 = this.f1338a.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative2[0] != null || compoundDrawablesRelative2[2] != null) {
                TextView textView2 = this.f1338a;
                Drawable drawable7 = compoundDrawablesRelative2[0];
                if (drawable2 == null) {
                    drawable2 = compoundDrawablesRelative2[1];
                }
                Drawable drawable8 = compoundDrawablesRelative2[2];
                if (drawable4 == null) {
                    drawable4 = compoundDrawablesRelative2[3];
                }
                textView2.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, drawable8, drawable4);
                return;
            }
        }
        Drawable[] compoundDrawables = this.f1338a.getCompoundDrawables();
        TextView textView3 = this.f1338a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView3.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    /* JADX INFO: renamed from: z */
    private void m1362z() {
        C0191s0 c0191s0 = this.f1345h;
        this.f1339b = c0191s0;
        this.f1340c = c0191s0;
        this.f1341d = c0191s0;
        this.f1342e = c0191s0;
        this.f1343f = c0191s0;
        this.f1344g = c0191s0;
    }

    /* JADX INFO: renamed from: A */
    void m1363A(int i, float f) {
        if (InterfaceC0301b.f1991a || m1373l()) {
            return;
        }
        m1357B(i, f);
    }

    /* JADX INFO: renamed from: b */
    void m1364b() {
        if (this.f1339b != null || this.f1340c != null || this.f1341d != null || this.f1342e != null) {
            Drawable[] compoundDrawables = this.f1338a.getCompoundDrawables();
            m1359a(compoundDrawables[0], this.f1339b);
            m1359a(compoundDrawables[1], this.f1340c);
            m1359a(compoundDrawables[2], this.f1341d);
            m1359a(compoundDrawables[3], this.f1342e);
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (this.f1343f == null && this.f1344g == null) {
                return;
            }
            Drawable[] compoundDrawablesRelative = this.f1338a.getCompoundDrawablesRelative();
            m1359a(compoundDrawablesRelative[0], this.f1343f);
            m1359a(compoundDrawablesRelative[2], this.f1344g);
        }
    }

    /* JADX INFO: renamed from: c */
    void m1365c() {
        this.f1346i.m1415b();
    }

    /* JADX INFO: renamed from: e */
    int m1366e() {
        return this.f1346i.m1417j();
    }

    /* JADX INFO: renamed from: f */
    int m1367f() {
        return this.f1346i.m1418k();
    }

    /* JADX INFO: renamed from: g */
    int m1368g() {
        return this.f1346i.m1419l();
    }

    /* JADX INFO: renamed from: h */
    int[] m1369h() {
        return this.f1346i.m1420m();
    }

    /* JADX INFO: renamed from: i */
    int m1370i() {
        return this.f1346i.m1421n();
    }

    /* JADX INFO: renamed from: j */
    ColorStateList m1371j() {
        C0191s0 c0191s0 = this.f1345h;
        if (c0191s0 != null) {
            return c0191s0.f1272a;
        }
        return null;
    }

    /* JADX INFO: renamed from: k */
    PorterDuff.Mode m1372k() {
        C0191s0 c0191s0 = this.f1345h;
        if (c0191s0 != null) {
            return c0191s0.f1273b;
        }
        return null;
    }

    /* JADX INFO: renamed from: l */
    boolean m1373l() {
        return this.f1346i.m1423s();
    }

    @SuppressLint({"NewApi"})
    /* JADX INFO: renamed from: m */
    void m1374m(AttributeSet attributeSet, int i) {
        ColorStateList colorStateListM1324c;
        String strM1336o;
        boolean zM1322a;
        boolean z;
        ColorStateList colorStateListM1324c2;
        String strM1336o2;
        ColorStateList colorStateListM1324c3;
        boolean z2;
        int i2;
        Context context = this.f1338a.getContext();
        C0170i c0170iM1168b = C0170i.m1168b();
        C0195u0 c0195u0M1321v = C0195u0.m1321v(context, attributeSet, C0502j.AppCompatTextHelper, i, 0);
        TextView textView = this.f1338a;
        C0292v.m2101m0(textView, textView.getContext(), C0502j.AppCompatTextHelper, attributeSet, c0195u0M1321v.m1339r(), i, 0);
        int iM1335n = c0195u0M1321v.m1335n(C0502j.AppCompatTextHelper_android_textAppearance, -1);
        if (c0195u0M1321v.m1340s(C0502j.AppCompatTextHelper_android_drawableLeft)) {
            this.f1339b = m1360d(context, c0170iM1168b, c0195u0M1321v.m1335n(C0502j.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (c0195u0M1321v.m1340s(C0502j.AppCompatTextHelper_android_drawableTop)) {
            this.f1340c = m1360d(context, c0170iM1168b, c0195u0M1321v.m1335n(C0502j.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (c0195u0M1321v.m1340s(C0502j.AppCompatTextHelper_android_drawableRight)) {
            this.f1341d = m1360d(context, c0170iM1168b, c0195u0M1321v.m1335n(C0502j.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (c0195u0M1321v.m1340s(C0502j.AppCompatTextHelper_android_drawableBottom)) {
            this.f1342e = m1360d(context, c0170iM1168b, c0195u0M1321v.m1335n(C0502j.AppCompatTextHelper_android_drawableBottom, 0));
        }
        if (Build.VERSION.SDK_INT >= 17) {
            if (c0195u0M1321v.m1340s(C0502j.AppCompatTextHelper_android_drawableStart)) {
                this.f1343f = m1360d(context, c0170iM1168b, c0195u0M1321v.m1335n(C0502j.AppCompatTextHelper_android_drawableStart, 0));
            }
            if (c0195u0M1321v.m1340s(C0502j.AppCompatTextHelper_android_drawableEnd)) {
                this.f1344g = m1360d(context, c0170iM1168b, c0195u0M1321v.m1335n(C0502j.AppCompatTextHelper_android_drawableEnd, 0));
            }
        }
        c0195u0M1321v.m1341w();
        boolean z3 = this.f1338a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (iM1335n != -1) {
            C0195u0 c0195u0M1319t = C0195u0.m1319t(context, iM1335n, C0502j.TextAppearance);
            if (z3 || !c0195u0M1319t.m1340s(C0502j.TextAppearance_textAllCaps)) {
                zM1322a = false;
                z = false;
            } else {
                zM1322a = c0195u0M1319t.m1322a(C0502j.TextAppearance_textAllCaps, false);
                z = true;
            }
            m1358C(context, c0195u0M1319t);
            if (Build.VERSION.SDK_INT < 23) {
                colorStateListM1324c3 = c0195u0M1319t.m1340s(C0502j.TextAppearance_android_textColor) ? c0195u0M1319t.m1324c(C0502j.TextAppearance_android_textColor) : null;
                colorStateListM1324c = c0195u0M1319t.m1340s(C0502j.TextAppearance_android_textColorHint) ? c0195u0M1319t.m1324c(C0502j.TextAppearance_android_textColorHint) : null;
                colorStateListM1324c2 = c0195u0M1319t.m1340s(C0502j.TextAppearance_android_textColorLink) ? c0195u0M1319t.m1324c(C0502j.TextAppearance_android_textColorLink) : null;
            } else {
                colorStateListM1324c = null;
                colorStateListM1324c2 = null;
                colorStateListM1324c3 = null;
            }
            strM1336o2 = c0195u0M1319t.m1340s(C0502j.TextAppearance_textLocale) ? c0195u0M1319t.m1336o(C0502j.TextAppearance_textLocale) : null;
            strM1336o = (Build.VERSION.SDK_INT < 26 || !c0195u0M1319t.m1340s(C0502j.TextAppearance_fontVariationSettings)) ? null : c0195u0M1319t.m1336o(C0502j.TextAppearance_fontVariationSettings);
            c0195u0M1319t.m1341w();
        } else {
            colorStateListM1324c = null;
            strM1336o = null;
            zM1322a = false;
            z = false;
            colorStateListM1324c2 = null;
            strM1336o2 = null;
            colorStateListM1324c3 = null;
        }
        C0195u0 c0195u0M1321v2 = C0195u0.m1321v(context, attributeSet, C0502j.TextAppearance, i, 0);
        if (z3 || !c0195u0M1321v2.m1340s(C0502j.TextAppearance_textAllCaps)) {
            z2 = z;
        } else {
            zM1322a = c0195u0M1321v2.m1322a(C0502j.TextAppearance_textAllCaps, false);
            z2 = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (c0195u0M1321v2.m1340s(C0502j.TextAppearance_android_textColor)) {
                colorStateListM1324c3 = c0195u0M1321v2.m1324c(C0502j.TextAppearance_android_textColor);
            }
            if (c0195u0M1321v2.m1340s(C0502j.TextAppearance_android_textColorHint)) {
                colorStateListM1324c = c0195u0M1321v2.m1324c(C0502j.TextAppearance_android_textColorHint);
            }
            if (c0195u0M1321v2.m1340s(C0502j.TextAppearance_android_textColorLink)) {
                colorStateListM1324c2 = c0195u0M1321v2.m1324c(C0502j.TextAppearance_android_textColorLink);
            }
        }
        if (c0195u0M1321v2.m1340s(C0502j.TextAppearance_textLocale)) {
            strM1336o2 = c0195u0M1321v2.m1336o(C0502j.TextAppearance_textLocale);
        }
        if (Build.VERSION.SDK_INT >= 26 && c0195u0M1321v2.m1340s(C0502j.TextAppearance_fontVariationSettings)) {
            strM1336o = c0195u0M1321v2.m1336o(C0502j.TextAppearance_fontVariationSettings);
        }
        if (Build.VERSION.SDK_INT >= 28 && c0195u0M1321v2.m1340s(C0502j.TextAppearance_android_textSize) && c0195u0M1321v2.m1327f(C0502j.TextAppearance_android_textSize, -1) == 0) {
            this.f1338a.setTextSize(0, CropImageView.DEFAULT_ASPECT_RATIO);
        }
        m1358C(context, c0195u0M1321v2);
        c0195u0M1321v2.m1341w();
        if (colorStateListM1324c3 != null) {
            this.f1338a.setTextColor(colorStateListM1324c3);
        }
        if (colorStateListM1324c != null) {
            this.f1338a.setHintTextColor(colorStateListM1324c);
        }
        if (colorStateListM1324c2 != null) {
            this.f1338a.setLinkTextColor(colorStateListM1324c2);
        }
        if (!z3 && z2) {
            m1380s(zM1322a);
        }
        Typeface typeface = this.f1349l;
        if (typeface != null) {
            if (this.f1348k == -1) {
                this.f1338a.setTypeface(typeface, this.f1347j);
            } else {
                this.f1338a.setTypeface(typeface);
            }
        }
        if (strM1336o != null) {
            this.f1338a.setFontVariationSettings(strM1336o);
        }
        if (strM1336o2 != null) {
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 24) {
                this.f1338a.setTextLocales(LocaleList.forLanguageTags(strM1336o2));
            } else if (i3 >= 21) {
                this.f1338a.setTextLocale(Locale.forLanguageTag(strM1336o2.substring(0, strM1336o2.indexOf(44))));
            }
        }
        this.f1346i.m1424t(attributeSet, i);
        if (InterfaceC0301b.f1991a && this.f1346i.m1421n() != 0) {
            int[] iArrM1420m = this.f1346i.m1420m();
            if (iArrM1420m.length > 0) {
                if (this.f1338a.getAutoSizeStepGranularity() != -1.0f) {
                    this.f1338a.setAutoSizeTextTypeUniformWithConfiguration(this.f1346i.m1418k(), this.f1346i.m1417j(), this.f1346i.m1419l(), 0);
                } else {
                    this.f1338a.setAutoSizeTextTypeUniformWithPresetSizes(iArrM1420m, 0);
                }
            }
        }
        C0195u0 c0195u0M1320u = C0195u0.m1320u(context, attributeSet, C0502j.AppCompatTextView);
        int iM1335n2 = c0195u0M1320u.m1335n(C0502j.AppCompatTextView_drawableLeftCompat, -1);
        Drawable drawableM1172c = iM1335n2 != -1 ? c0170iM1168b.m1172c(context, iM1335n2) : null;
        int iM1335n3 = c0195u0M1320u.m1335n(C0502j.AppCompatTextView_drawableTopCompat, -1);
        Drawable drawableM1172c2 = iM1335n3 != -1 ? c0170iM1168b.m1172c(context, iM1335n3) : null;
        int iM1335n4 = c0195u0M1320u.m1335n(C0502j.AppCompatTextView_drawableRightCompat, -1);
        Drawable drawableM1172c3 = iM1335n4 != -1 ? c0170iM1168b.m1172c(context, iM1335n4) : null;
        int iM1335n5 = c0195u0M1320u.m1335n(C0502j.AppCompatTextView_drawableBottomCompat, -1);
        Drawable drawableM1172c4 = iM1335n5 != -1 ? c0170iM1168b.m1172c(context, iM1335n5) : null;
        int iM1335n6 = c0195u0M1320u.m1335n(C0502j.AppCompatTextView_drawableStartCompat, -1);
        Drawable drawableM1172c5 = iM1335n6 != -1 ? c0170iM1168b.m1172c(context, iM1335n6) : null;
        int iM1335n7 = c0195u0M1320u.m1335n(C0502j.AppCompatTextView_drawableEndCompat, -1);
        m1361y(drawableM1172c, drawableM1172c2, drawableM1172c3, drawableM1172c4, drawableM1172c5, iM1335n7 != -1 ? c0170iM1168b.m1172c(context, iM1335n7) : null);
        if (c0195u0M1320u.m1340s(C0502j.AppCompatTextView_drawableTint)) {
            C0308i.m2282g(this.f1338a, c0195u0M1320u.m1324c(C0502j.AppCompatTextView_drawableTint));
        }
        if (c0195u0M1320u.m1340s(C0502j.AppCompatTextView_drawableTintMode)) {
            i2 = -1;
            C0308i.m2283h(this.f1338a, C0159c0.m1074e(c0195u0M1320u.m1332k(C0502j.AppCompatTextView_drawableTintMode, -1), null));
        } else {
            i2 = -1;
        }
        int iM1327f = c0195u0M1320u.m1327f(C0502j.AppCompatTextView_firstBaselineToTopHeight, i2);
        int iM1327f2 = c0195u0M1320u.m1327f(C0502j.AppCompatTextView_lastBaselineToBottomHeight, i2);
        int iM1327f3 = c0195u0M1320u.m1327f(C0502j.AppCompatTextView_lineHeight, i2);
        c0195u0M1320u.m1341w();
        if (iM1327f != i2) {
            C0308i.m2285j(this.f1338a, iM1327f);
        }
        if (iM1327f2 != i2) {
            C0308i.m2286k(this.f1338a, iM1327f2);
        }
        if (iM1327f3 != i2) {
            C0308i.m2287l(this.f1338a, iM1327f3);
        }
    }

    /* JADX INFO: renamed from: n */
    void m1375n(WeakReference<TextView> weakReference, Typeface typeface) {
        if (this.f1350m) {
            this.f1349l = typeface;
            TextView textView = weakReference.get();
            if (textView != null) {
                if (C0292v.m2068S(textView)) {
                    textView.post(new b(this, textView, typeface, this.f1347j));
                } else {
                    textView.setTypeface(typeface, this.f1347j);
                }
            }
        }
    }

    /* JADX INFO: renamed from: o */
    void m1376o(boolean z, int i, int i2, int i3, int i4) {
        if (InterfaceC0301b.f1991a) {
            return;
        }
        m1365c();
    }

    /* JADX INFO: renamed from: p */
    void m1377p() {
        m1364b();
    }

    /* JADX INFO: renamed from: q */
    void m1378q(Context context, int i) {
        String strM1336o;
        ColorStateList colorStateListM1324c;
        ColorStateList colorStateListM1324c2;
        ColorStateList colorStateListM1324c3;
        C0195u0 c0195u0M1319t = C0195u0.m1319t(context, i, C0502j.TextAppearance);
        if (c0195u0M1319t.m1340s(C0502j.TextAppearance_textAllCaps)) {
            m1380s(c0195u0M1319t.m1322a(C0502j.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (c0195u0M1319t.m1340s(C0502j.TextAppearance_android_textColor) && (colorStateListM1324c3 = c0195u0M1319t.m1324c(C0502j.TextAppearance_android_textColor)) != null) {
                this.f1338a.setTextColor(colorStateListM1324c3);
            }
            if (c0195u0M1319t.m1340s(C0502j.TextAppearance_android_textColorLink) && (colorStateListM1324c2 = c0195u0M1319t.m1324c(C0502j.TextAppearance_android_textColorLink)) != null) {
                this.f1338a.setLinkTextColor(colorStateListM1324c2);
            }
            if (c0195u0M1319t.m1340s(C0502j.TextAppearance_android_textColorHint) && (colorStateListM1324c = c0195u0M1319t.m1324c(C0502j.TextAppearance_android_textColorHint)) != null) {
                this.f1338a.setHintTextColor(colorStateListM1324c);
            }
        }
        if (c0195u0M1319t.m1340s(C0502j.TextAppearance_android_textSize) && c0195u0M1319t.m1327f(C0502j.TextAppearance_android_textSize, -1) == 0) {
            this.f1338a.setTextSize(0, CropImageView.DEFAULT_ASPECT_RATIO);
        }
        m1358C(context, c0195u0M1319t);
        if (Build.VERSION.SDK_INT >= 26 && c0195u0M1319t.m1340s(C0502j.TextAppearance_fontVariationSettings) && (strM1336o = c0195u0M1319t.m1336o(C0502j.TextAppearance_fontVariationSettings)) != null) {
            this.f1338a.setFontVariationSettings(strM1336o);
        }
        c0195u0M1319t.m1341w();
        Typeface typeface = this.f1349l;
        if (typeface != null) {
            this.f1338a.setTypeface(typeface, this.f1347j);
        }
    }

    /* JADX INFO: renamed from: r */
    void m1379r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        C0274a.m1988f(editorInfo, textView.getText());
    }

    /* JADX INFO: renamed from: s */
    void m1380s(boolean z) {
        this.f1338a.setAllCaps(z);
    }

    /* JADX INFO: renamed from: t */
    void m1381t(int i, int i2, int i3, int i4) {
        this.f1346i.m1425u(i, i2, i3, i4);
    }

    /* JADX INFO: renamed from: u */
    void m1382u(int[] iArr, int i) {
        this.f1346i.m1426v(iArr, i);
    }

    /* JADX INFO: renamed from: v */
    void m1383v(int i) {
        this.f1346i.m1427w(i);
    }

    /* JADX INFO: renamed from: w */
    void m1384w(ColorStateList colorStateList) {
        if (this.f1345h == null) {
            this.f1345h = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1345h;
        c0191s0.f1272a = colorStateList;
        c0191s0.f1275d = colorStateList != null;
        m1362z();
    }

    /* JADX INFO: renamed from: x */
    void m1385x(PorterDuff.Mode mode) {
        if (this.f1345h == null) {
            this.f1345h = new C0191s0();
        }
        C0191s0 c0191s0 = this.f1345h;
        c0191s0.f1273b = mode;
        c0191s0.f1274c = mode != null;
        m1362z();
    }
}
