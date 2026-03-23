package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.widget.TextView;
import androidx.core.view.C0292v;
import p016c.p041g.p049j.C0626h;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p102a0.C1208g;
import p093d.p099c.p100a.p101a.p102a0.C1212k;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: renamed from: com.google.android.material.datepicker.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1076b {

    /* JADX INFO: renamed from: a */
    private final Rect f6864a;

    /* JADX INFO: renamed from: b */
    private final ColorStateList f6865b;

    /* JADX INFO: renamed from: c */
    private final ColorStateList f6866c;

    /* JADX INFO: renamed from: d */
    private final ColorStateList f6867d;

    /* JADX INFO: renamed from: e */
    private final int f6868e;

    /* JADX INFO: renamed from: f */
    private final C1212k f6869f;

    private C1076b(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, C1212k c1212k, Rect rect) {
        C0626h.m4853c(rect.left);
        C0626h.m4853c(rect.top);
        C0626h.m4853c(rect.right);
        C0626h.m4853c(rect.bottom);
        this.f6864a = rect;
        this.f6865b = colorStateList2;
        this.f6866c = colorStateList;
        this.f6867d = colorStateList3;
        this.f6868e = i;
        this.f6869f = c1212k;
    }

    /* JADX INFO: renamed from: a */
    static C1076b m8362a(Context context, int i) {
        C0626h.m4851a(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, C1226k.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1226k.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1226k.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1226k.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(C1226k.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListM9454a = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListM9454a2 = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListM9454a3 = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(C1226k.MaterialCalendarItem_itemStrokeWidth, 0);
        C1212k c1212kM9256m = C1212k.m9213b(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m9256m();
        typedArrayObtainStyledAttributes.recycle();
        return new C1076b(colorStateListM9454a, colorStateListM9454a2, colorStateListM9454a3, dimensionPixelSize, c1212kM9256m, rect);
    }

    /* JADX INFO: renamed from: b */
    int m8363b() {
        return this.f6864a.bottom;
    }

    /* JADX INFO: renamed from: c */
    int m8364c() {
        return this.f6864a.top;
    }

    /* JADX INFO: renamed from: d */
    void m8365d(TextView textView) {
        C1208g c1208g = new C1208g();
        C1208g c1208g2 = new C1208g();
        c1208g.setShapeAppearanceModel(this.f6869f);
        c1208g2.setShapeAppearanceModel(this.f6869f);
        c1208g.m9184W(this.f6866c);
        c1208g.m9190c0(this.f6868e, this.f6867d);
        textView.setTextColor(this.f6865b);
        Drawable rippleDrawable = Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.f6865b.withAlpha(30), c1208g, c1208g2) : c1208g;
        Rect rect = this.f6864a;
        C0292v.m2111r0(textView, new InsetDrawable(rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
