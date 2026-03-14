package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.core.content.c.f;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class u0 {
    private final Context a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TypedArray f405b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TypedValue f406c;

    private u0(Context context, TypedArray typedArray) {
        this.a = context;
        this.f405b = typedArray;
    }

    public static u0 t(Context context, int i, int[] iArr) {
        return new u0(context, context.obtainStyledAttributes(i, iArr));
    }

    public static u0 u(Context context, AttributeSet attributeSet, int[] iArr) {
        return new u0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static u0 v(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new u0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public boolean a(int i, boolean z) {
        return this.f405b.getBoolean(i, z);
    }

    public int b(int i, int i2) {
        return this.f405b.getColor(i, i2);
    }

    public ColorStateList c(int i) {
        int resourceId;
        ColorStateList colorStateListC;
        return (!this.f405b.hasValue(i) || (resourceId = this.f405b.getResourceId(i, 0)) == 0 || (colorStateListC = c.a.k.a.a.c(this.a, resourceId)) == null) ? this.f405b.getColorStateList(i) : colorStateListC;
    }

    public float d(int i, float f) {
        return this.f405b.getDimension(i, f);
    }

    public int e(int i, int i2) {
        return this.f405b.getDimensionPixelOffset(i, i2);
    }

    public int f(int i, int i2) {
        return this.f405b.getDimensionPixelSize(i, i2);
    }

    public Drawable g(int i) {
        int resourceId;
        return (!this.f405b.hasValue(i) || (resourceId = this.f405b.getResourceId(i, 0)) == 0) ? this.f405b.getDrawable(i) : c.a.k.a.a.d(this.a, resourceId);
    }

    public Drawable h(int i) {
        int resourceId;
        if (!this.f405b.hasValue(i) || (resourceId = this.f405b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return i.b().d(this.a, resourceId, true);
    }

    public float i(int i, float f) {
        return this.f405b.getFloat(i, f);
    }

    public Typeface j(int i, int i2, f.a aVar) {
        int resourceId = this.f405b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f406c == null) {
            this.f406c = new TypedValue();
        }
        return androidx.core.content.c.f.d(this.a, resourceId, this.f406c, i2, aVar);
    }

    public int k(int i, int i2) {
        return this.f405b.getInt(i, i2);
    }

    public int l(int i, int i2) {
        return this.f405b.getInteger(i, i2);
    }

    public int m(int i, int i2) {
        return this.f405b.getLayoutDimension(i, i2);
    }

    public int n(int i, int i2) {
        return this.f405b.getResourceId(i, i2);
    }

    public String o(int i) {
        return this.f405b.getString(i);
    }

    public CharSequence p(int i) {
        return this.f405b.getText(i);
    }

    public CharSequence[] q(int i) {
        return this.f405b.getTextArray(i);
    }

    public TypedArray r() {
        return this.f405b;
    }

    public boolean s(int i) {
        return this.f405b.hasValue(i);
    }

    public void w() {
        this.f405b.recycle();
    }
}
