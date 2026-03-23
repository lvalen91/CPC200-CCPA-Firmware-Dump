package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.core.view.C0292v;
import com.yalantis.ucrop.view.CropImageView;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
import p016c.p017a.C0502j;

/* JADX INFO: renamed from: androidx.appcompat.widget.y */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0202y {

    /* JADX INFO: renamed from: l */
    private static final RectF f1376l = new RectF();

    /* JADX INFO: renamed from: m */
    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Method> f1377m = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: n */
    @SuppressLint({"BanConcurrentHashMap"})
    private static ConcurrentHashMap<String, Field> f1378n = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a */
    private int f1379a = 0;

    /* JADX INFO: renamed from: b */
    private boolean f1380b = false;

    /* JADX INFO: renamed from: c */
    private float f1381c = -1.0f;

    /* JADX INFO: renamed from: d */
    private float f1382d = -1.0f;

    /* JADX INFO: renamed from: e */
    private float f1383e = -1.0f;

    /* JADX INFO: renamed from: f */
    private int[] f1384f = new int[0];

    /* JADX INFO: renamed from: g */
    private boolean f1385g = false;

    /* JADX INFO: renamed from: h */
    private TextPaint f1386h;

    /* JADX INFO: renamed from: i */
    private final TextView f1387i;

    /* JADX INFO: renamed from: j */
    private final Context f1388j;

    /* JADX INFO: renamed from: k */
    private final c f1389k;

    /* JADX INFO: renamed from: androidx.appcompat.widget.y$a */
    private static class a extends c {
        a() {
        }

        @Override // androidx.appcompat.widget.C0202y.c
        /* JADX INFO: renamed from: a */
        void mo1429a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection((TextDirectionHeuristic) C0202y.m1412r(textView, "getTextDirectionHeuristic", TextDirectionHeuristics.FIRSTSTRONG_LTR));
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.y$b */
    private static class b extends a {
        b() {
        }

        @Override // androidx.appcompat.widget.C0202y.a, androidx.appcompat.widget.C0202y.c
        /* JADX INFO: renamed from: a */
        void mo1429a(StaticLayout.Builder builder, TextView textView) {
            builder.setTextDirection(textView.getTextDirectionHeuristic());
        }

        @Override // androidx.appcompat.widget.C0202y.c
        /* JADX INFO: renamed from: b */
        boolean mo1430b(TextView textView) {
            return textView.isHorizontallyScrollable();
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.widget.y$c */
    private static class c {
        c() {
        }

        /* JADX INFO: renamed from: a */
        void mo1429a(StaticLayout.Builder builder, TextView textView) {
        }

        /* JADX INFO: renamed from: b */
        boolean mo1430b(TextView textView) {
            return ((Boolean) C0202y.m1412r(textView, "getHorizontallyScrolling", Boolean.FALSE)).booleanValue();
        }
    }

    C0202y(TextView textView) {
        this.f1387i = textView;
        this.f1388j = textView.getContext();
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.f1389k = new b();
        } else if (i >= 23) {
            this.f1389k = new a();
        } else {
            this.f1389k = new c();
        }
    }

    /* JADX INFO: renamed from: A */
    private void m1398A(TypedArray typedArray) {
        int length = typedArray.length();
        int[] iArr = new int[length];
        if (length > 0) {
            for (int i = 0; i < length; i++) {
                iArr[i] = typedArray.getDimensionPixelSize(i, -1);
            }
            this.f1384f = m1404c(iArr);
            m1399B();
        }
    }

    /* JADX INFO: renamed from: B */
    private boolean m1399B() {
        boolean z = this.f1384f.length > 0;
        this.f1385g = z;
        if (z) {
            this.f1379a = 1;
            int[] iArr = this.f1384f;
            this.f1382d = iArr[0];
            this.f1383e = iArr[r0 - 1];
            this.f1381c = -1.0f;
        }
        return this.f1385g;
    }

    /* JADX INFO: renamed from: C */
    private boolean m1400C(int i, RectF rectF) {
        CharSequence transformation;
        CharSequence text = this.f1387i.getText();
        TransformationMethod transformationMethod = this.f1387i.getTransformationMethod();
        if (transformationMethod != null && (transformation = transformationMethod.getTransformation(text, this.f1387i)) != null) {
            text = transformation;
        }
        int maxLines = Build.VERSION.SDK_INT >= 16 ? this.f1387i.getMaxLines() : -1;
        m1422q(i);
        StaticLayout staticLayoutM1416e = m1416e(text, (Layout.Alignment) m1412r(this.f1387i, "getLayoutAlignment", Layout.Alignment.ALIGN_NORMAL), Math.round(rectF.right), maxLines);
        return (maxLines == -1 || (staticLayoutM1416e.getLineCount() <= maxLines && staticLayoutM1416e.getLineEnd(staticLayoutM1416e.getLineCount() - 1) == text.length())) && ((float) staticLayoutM1416e.getHeight()) <= rectF.bottom;
    }

    /* JADX INFO: renamed from: D */
    private boolean m1401D() {
        return !(this.f1387i instanceof C0172j);
    }

    /* JADX INFO: renamed from: E */
    private void m1402E(float f, float f2, float f3) {
        if (f <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("Minimum auto-size text size (" + f + "px) is less or equal to (0px)");
        }
        if (f2 <= f) {
            throw new IllegalArgumentException("Maximum auto-size text size (" + f2 + "px) is less or equal to minimum auto-size text size (" + f + "px)");
        }
        if (f3 <= CropImageView.DEFAULT_ASPECT_RATIO) {
            throw new IllegalArgumentException("The auto-size step granularity (" + f3 + "px) is less or equal to (0px)");
        }
        this.f1379a = 1;
        this.f1382d = f;
        this.f1383e = f2;
        this.f1381c = f3;
        this.f1385g = false;
    }

    /* JADX INFO: renamed from: a */
    private static <T> T m1403a(Object obj, String str, T t) {
        try {
            Field fieldM1410o = m1410o(str);
            return fieldM1410o == null ? t : (T) fieldM1410o.get(obj);
        } catch (IllegalAccessException unused) {
            String str2 = "Failed to access TextView#" + str + " member";
            return t;
        }
    }

    /* JADX INFO: renamed from: c */
    private int[] m1404c(int[] iArr) {
        int length = iArr.length;
        if (length == 0) {
            return iArr;
        }
        Arrays.sort(iArr);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            if (i > 0 && Collections.binarySearch(arrayList, Integer.valueOf(i)) < 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        if (length == arrayList.size()) {
            return iArr;
        }
        int size = arrayList.size();
        int[] iArr2 = new int[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr2[i2] = ((Integer) arrayList.get(i2)).intValue();
        }
        return iArr2;
    }

    /* JADX INFO: renamed from: d */
    private void m1405d() {
        this.f1379a = 0;
        this.f1382d = -1.0f;
        this.f1383e = -1.0f;
        this.f1381c = -1.0f;
        this.f1384f = new int[0];
        this.f1380b = false;
    }

    /* JADX INFO: renamed from: f */
    private StaticLayout m1406f(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        StaticLayout.Builder builderObtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), this.f1386h, i);
        StaticLayout.Builder hyphenationFrequency = builderObtain.setAlignment(alignment).setLineSpacing(this.f1387i.getLineSpacingExtra(), this.f1387i.getLineSpacingMultiplier()).setIncludePad(this.f1387i.getIncludeFontPadding()).setBreakStrategy(this.f1387i.getBreakStrategy()).setHyphenationFrequency(this.f1387i.getHyphenationFrequency());
        if (i2 == -1) {
            i2 = Integer.MAX_VALUE;
        }
        hyphenationFrequency.setMaxLines(i2);
        try {
            this.f1389k.mo1429a(builderObtain, this.f1387i);
        } catch (ClassCastException unused) {
        }
        return builderObtain.build();
    }

    /* JADX INFO: renamed from: g */
    private StaticLayout m1407g(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1386h, i, alignment, ((Float) m1403a(this.f1387i, "mSpacingMult", Float.valueOf(1.0f))).floatValue(), ((Float) m1403a(this.f1387i, "mSpacingAdd", Float.valueOf(CropImageView.DEFAULT_ASPECT_RATIO))).floatValue(), ((Boolean) m1403a(this.f1387i, "mIncludePad", Boolean.TRUE)).booleanValue());
    }

    /* JADX INFO: renamed from: h */
    private StaticLayout m1408h(CharSequence charSequence, Layout.Alignment alignment, int i) {
        return new StaticLayout(charSequence, this.f1386h, i, alignment, this.f1387i.getLineSpacingMultiplier(), this.f1387i.getLineSpacingExtra(), this.f1387i.getIncludeFontPadding());
    }

    /* JADX INFO: renamed from: i */
    private int m1409i(RectF rectF) {
        int length = this.f1384f.length;
        if (length == 0) {
            throw new IllegalStateException("No available text sizes to choose from.");
        }
        int i = length - 1;
        int i2 = 1;
        int i3 = 0;
        while (i2 <= i) {
            int i4 = (i2 + i) / 2;
            if (m1400C(this.f1384f[i4], rectF)) {
                int i5 = i4 + 1;
                i3 = i2;
                i2 = i5;
            } else {
                i3 = i4 - 1;
                i = i3;
            }
        }
        return this.f1384f[i3];
    }

    /* JADX INFO: renamed from: o */
    private static Field m1410o(String str) {
        try {
            Field declaredField = f1378n.get(str);
            if (declaredField == null && (declaredField = TextView.class.getDeclaredField(str)) != null) {
                declaredField.setAccessible(true);
                f1378n.put(str, declaredField);
            }
            return declaredField;
        } catch (NoSuchFieldException unused) {
            String str2 = "Failed to access TextView#" + str + " member";
            return null;
        }
    }

    /* JADX INFO: renamed from: p */
    private static Method m1411p(String str) {
        try {
            Method declaredMethod = f1377m.get(str);
            if (declaredMethod == null && (declaredMethod = TextView.class.getDeclaredMethod(str, new Class[0])) != null) {
                declaredMethod.setAccessible(true);
                f1377m.put(str, declaredMethod);
            }
            return declaredMethod;
        } catch (Exception unused) {
            String str2 = "Failed to retrieve TextView#" + str + "() method";
            return null;
        }
    }

    /* JADX INFO: renamed from: r */
    static <T> T m1412r(Object obj, String str, T t) {
        try {
            return (T) m1411p(str).invoke(obj, new Object[0]);
        } catch (Exception unused) {
            String str2 = "Failed to invoke TextView#" + str + "() method";
            return t;
        }
    }

    /* JADX INFO: renamed from: x */
    private void m1413x(float f) {
        if (f != this.f1387i.getPaint().getTextSize()) {
            this.f1387i.getPaint().setTextSize(f);
            boolean zIsInLayout = Build.VERSION.SDK_INT >= 18 ? this.f1387i.isInLayout() : false;
            if (this.f1387i.getLayout() != null) {
                this.f1380b = false;
                try {
                    Method methodM1411p = m1411p("nullLayouts");
                    if (methodM1411p != null) {
                        methodM1411p.invoke(this.f1387i, new Object[0]);
                    }
                } catch (Exception unused) {
                }
                if (zIsInLayout) {
                    this.f1387i.forceLayout();
                } else {
                    this.f1387i.requestLayout();
                }
                this.f1387i.invalidate();
            }
        }
    }

    /* JADX INFO: renamed from: z */
    private boolean m1414z() {
        if (m1401D() && this.f1379a == 1) {
            if (!this.f1385g || this.f1384f.length == 0) {
                int iFloor = ((int) Math.floor((this.f1383e - this.f1382d) / this.f1381c)) + 1;
                int[] iArr = new int[iFloor];
                for (int i = 0; i < iFloor; i++) {
                    iArr[i] = Math.round(this.f1382d + (i * this.f1381c));
                }
                this.f1384f = m1404c(iArr);
            }
            this.f1380b = true;
        } else {
            this.f1380b = false;
        }
        return this.f1380b;
    }

    /* JADX INFO: renamed from: b */
    void m1415b() {
        if (m1423s()) {
            if (this.f1380b) {
                if (this.f1387i.getMeasuredHeight() <= 0 || this.f1387i.getMeasuredWidth() <= 0) {
                    return;
                }
                int measuredWidth = this.f1389k.mo1430b(this.f1387i) ? 1048576 : (this.f1387i.getMeasuredWidth() - this.f1387i.getTotalPaddingLeft()) - this.f1387i.getTotalPaddingRight();
                int height = (this.f1387i.getHeight() - this.f1387i.getCompoundPaddingBottom()) - this.f1387i.getCompoundPaddingTop();
                if (measuredWidth <= 0 || height <= 0) {
                    return;
                }
                synchronized (f1376l) {
                    f1376l.setEmpty();
                    f1376l.right = measuredWidth;
                    f1376l.bottom = height;
                    float fM1409i = m1409i(f1376l);
                    if (fM1409i != this.f1387i.getTextSize()) {
                        m1428y(0, fM1409i);
                    }
                }
            }
            this.f1380b = true;
        }
    }

    /* JADX INFO: renamed from: e */
    StaticLayout m1416e(CharSequence charSequence, Layout.Alignment alignment, int i, int i2) {
        int i3 = Build.VERSION.SDK_INT;
        return i3 >= 23 ? m1406f(charSequence, alignment, i, i2) : i3 >= 16 ? m1408h(charSequence, alignment, i) : m1407g(charSequence, alignment, i);
    }

    /* JADX INFO: renamed from: j */
    int m1417j() {
        return Math.round(this.f1383e);
    }

    /* JADX INFO: renamed from: k */
    int m1418k() {
        return Math.round(this.f1382d);
    }

    /* JADX INFO: renamed from: l */
    int m1419l() {
        return Math.round(this.f1381c);
    }

    /* JADX INFO: renamed from: m */
    int[] m1420m() {
        return this.f1384f;
    }

    /* JADX INFO: renamed from: n */
    int m1421n() {
        return this.f1379a;
    }

    /* JADX INFO: renamed from: q */
    void m1422q(int i) {
        TextPaint textPaint = this.f1386h;
        if (textPaint == null) {
            this.f1386h = new TextPaint();
        } else {
            textPaint.reset();
        }
        this.f1386h.set(this.f1387i.getPaint());
        this.f1386h.setTextSize(i);
    }

    /* JADX INFO: renamed from: s */
    boolean m1423s() {
        return m1401D() && this.f1379a != 0;
    }

    /* JADX INFO: renamed from: t */
    void m1424t(AttributeSet attributeSet, int i) {
        int resourceId;
        TypedArray typedArrayObtainStyledAttributes = this.f1388j.obtainStyledAttributes(attributeSet, C0502j.AppCompatTextView, i, 0);
        TextView textView = this.f1387i;
        C0292v.m2101m0(textView, textView.getContext(), C0502j.AppCompatTextView, attributeSet, typedArrayObtainStyledAttributes, i, 0);
        if (typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTextView_autoSizeTextType)) {
            this.f1379a = typedArrayObtainStyledAttributes.getInt(C0502j.AppCompatTextView_autoSizeTextType, 0);
        }
        float dimension = typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTextView_autoSizeStepGranularity) ? typedArrayObtainStyledAttributes.getDimension(C0502j.AppCompatTextView_autoSizeStepGranularity, -1.0f) : -1.0f;
        float dimension2 = typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTextView_autoSizeMinTextSize) ? typedArrayObtainStyledAttributes.getDimension(C0502j.AppCompatTextView_autoSizeMinTextSize, -1.0f) : -1.0f;
        float dimension3 = typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTextView_autoSizeMaxTextSize) ? typedArrayObtainStyledAttributes.getDimension(C0502j.AppCompatTextView_autoSizeMaxTextSize, -1.0f) : -1.0f;
        if (typedArrayObtainStyledAttributes.hasValue(C0502j.AppCompatTextView_autoSizePresetSizes) && (resourceId = typedArrayObtainStyledAttributes.getResourceId(C0502j.AppCompatTextView_autoSizePresetSizes, 0)) > 0) {
            TypedArray typedArrayObtainTypedArray = typedArrayObtainStyledAttributes.getResources().obtainTypedArray(resourceId);
            m1398A(typedArrayObtainTypedArray);
            typedArrayObtainTypedArray.recycle();
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!m1401D()) {
            this.f1379a = 0;
            return;
        }
        if (this.f1379a == 1) {
            if (!this.f1385g) {
                DisplayMetrics displayMetrics = this.f1388j.getResources().getDisplayMetrics();
                if (dimension2 == -1.0f) {
                    dimension2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                }
                if (dimension3 == -1.0f) {
                    dimension3 = TypedValue.applyDimension(2, 112.0f, displayMetrics);
                }
                if (dimension == -1.0f) {
                    dimension = 1.0f;
                }
                m1402E(dimension2, dimension3, dimension);
            }
            m1414z();
        }
    }

    /* JADX INFO: renamed from: u */
    void m1425u(int i, int i2, int i3, int i4) {
        if (m1401D()) {
            DisplayMetrics displayMetrics = this.f1388j.getResources().getDisplayMetrics();
            m1402E(TypedValue.applyDimension(i4, i, displayMetrics), TypedValue.applyDimension(i4, i2, displayMetrics), TypedValue.applyDimension(i4, i3, displayMetrics));
            if (m1414z()) {
                m1415b();
            }
        }
    }

    /* JADX INFO: renamed from: v */
    void m1426v(int[] iArr, int i) {
        if (m1401D()) {
            int length = iArr.length;
            if (length > 0) {
                int[] iArrCopyOf = new int[length];
                if (i == 0) {
                    iArrCopyOf = Arrays.copyOf(iArr, length);
                } else {
                    DisplayMetrics displayMetrics = this.f1388j.getResources().getDisplayMetrics();
                    for (int i2 = 0; i2 < length; i2++) {
                        iArrCopyOf[i2] = Math.round(TypedValue.applyDimension(i, iArr[i2], displayMetrics));
                    }
                }
                this.f1384f = m1404c(iArrCopyOf);
                if (!m1399B()) {
                    throw new IllegalArgumentException("None of the preset sizes is valid: " + Arrays.toString(iArr));
                }
            } else {
                this.f1385g = false;
            }
            if (m1414z()) {
                m1415b();
            }
        }
    }

    /* JADX INFO: renamed from: w */
    void m1427w(int i) {
        if (m1401D()) {
            if (i == 0) {
                m1405d();
                return;
            }
            if (i != 1) {
                throw new IllegalArgumentException("Unknown auto-size text type: " + i);
            }
            DisplayMetrics displayMetrics = this.f1388j.getResources().getDisplayMetrics();
            m1402E(TypedValue.applyDimension(2, 12.0f, displayMetrics), TypedValue.applyDimension(2, 112.0f, displayMetrics), 1.0f);
            if (m1414z()) {
                m1415b();
            }
        }
    }

    /* JADX INFO: renamed from: y */
    void m1428y(int i, float f) {
        Context context = this.f1388j;
        m1413x(TypedValue.applyDimension(i, f, (context == null ? Resources.getSystem() : context.getResources()).getDisplayMetrics()));
    }
}
