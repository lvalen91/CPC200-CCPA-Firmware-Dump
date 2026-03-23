package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.p003c.C0249f;
import p016c.p017a.p018k.p019a.C0503a;

/* JADX INFO: renamed from: androidx.appcompat.widget.u0 */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0195u0 {

    /* JADX INFO: renamed from: a */
    private final Context f1311a;

    /* JADX INFO: renamed from: b */
    private final TypedArray f1312b;

    /* JADX INFO: renamed from: c */
    private TypedValue f1313c;

    private C0195u0(Context context, TypedArray typedArray) {
        this.f1311a = context;
        this.f1312b = typedArray;
    }

    /* JADX INFO: renamed from: t */
    public static C0195u0 m1319t(Context context, int i, int[] iArr) {
        return new C0195u0(context, context.obtainStyledAttributes(i, iArr));
    }

    /* JADX INFO: renamed from: u */
    public static C0195u0 m1320u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new C0195u0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    /* JADX INFO: renamed from: v */
    public static C0195u0 m1321v(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new C0195u0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    /* JADX INFO: renamed from: a */
    public boolean m1322a(int i, boolean z) {
        return this.f1312b.getBoolean(i, z);
    }

    /* JADX INFO: renamed from: b */
    public int m1323b(int i, int i2) {
        return this.f1312b.getColor(i, i2);
    }

    /* JADX INFO: renamed from: c */
    public ColorStateList m1324c(int i) {
        int resourceId;
        ColorStateList colorStateListM4046c;
        return (!this.f1312b.hasValue(i) || (resourceId = this.f1312b.getResourceId(i, 0)) == 0 || (colorStateListM4046c = C0503a.m4046c(this.f1311a, resourceId)) == null) ? this.f1312b.getColorStateList(i) : colorStateListM4046c;
    }

    /* JADX INFO: renamed from: d */
    public float m1325d(int i, float f) {
        return this.f1312b.getDimension(i, f);
    }

    /* JADX INFO: renamed from: e */
    public int m1326e(int i, int i2) {
        return this.f1312b.getDimensionPixelOffset(i, i2);
    }

    /* JADX INFO: renamed from: f */
    public int m1327f(int i, int i2) {
        return this.f1312b.getDimensionPixelSize(i, i2);
    }

    /* JADX INFO: renamed from: g */
    public Drawable m1328g(int i) {
        int resourceId;
        return (!this.f1312b.hasValue(i) || (resourceId = this.f1312b.getResourceId(i, 0)) == 0) ? this.f1312b.getDrawable(i) : C0503a.m4047d(this.f1311a, resourceId);
    }

    /* JADX INFO: renamed from: h */
    public Drawable m1329h(int i) {
        int resourceId;
        if (!this.f1312b.hasValue(i) || (resourceId = this.f1312b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return C0170i.m1168b().m1173d(this.f1311a, resourceId, true);
    }

    /* JADX INFO: renamed from: i */
    public float m1330i(int i, float f) {
        return this.f1312b.getFloat(i, f);
    }

    /* JADX INFO: renamed from: j */
    public Typeface m1331j(int i, int i2, C0249f.a aVar) {
        int resourceId = this.f1312b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1313c == null) {
            this.f1313c = new TypedValue();
        }
        return C0249f.m1753d(this.f1311a, resourceId, this.f1313c, i2, aVar);
    }

    /* JADX INFO: renamed from: k */
    public int m1332k(int i, int i2) {
        return this.f1312b.getInt(i, i2);
    }

    /* JADX INFO: renamed from: l */
    public int m1333l(int i, int i2) {
        return this.f1312b.getInteger(i, i2);
    }

    /* JADX INFO: renamed from: m */
    public int m1334m(int i, int i2) {
        return this.f1312b.getLayoutDimension(i, i2);
    }

    /* JADX INFO: renamed from: n */
    public int m1335n(int i, int i2) {
        return this.f1312b.getResourceId(i, i2);
    }

    /* JADX INFO: renamed from: o */
    public String m1336o(int i) {
        return this.f1312b.getString(i);
    }

    /* JADX INFO: renamed from: p */
    public CharSequence m1337p(int i) {
        return this.f1312b.getText(i);
    }

    /* JADX INFO: renamed from: q */
    public CharSequence[] m1338q(int i) {
        return this.f1312b.getTextArray(i);
    }

    /* JADX INFO: renamed from: r */
    public TypedArray m1339r() {
        return this.f1312b;
    }

    /* JADX INFO: renamed from: s */
    public boolean m1340s(int i) {
        return this.f1312b.hasValue(i);
    }

    /* JADX INFO: renamed from: w */
    public void m1341w() {
        this.f1312b.recycle();
    }
}
