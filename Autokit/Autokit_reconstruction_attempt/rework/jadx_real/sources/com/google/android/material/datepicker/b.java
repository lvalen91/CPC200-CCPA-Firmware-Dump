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
import androidx.core.view.v;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class b {
    private final Rect a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ColorStateList f2078b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ColorStateList f2079c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ColorStateList f2080d;
    private final int e;
    private final d.c.a.a.a0.k f;

    private b(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, d.c.a.a.a0.k kVar, Rect rect) {
        c.g.j.h.c(rect.left);
        c.g.j.h.c(rect.top);
        c.g.j.h.c(rect.right);
        c.g.j.h.c(rect.bottom);
        this.a = rect;
        this.f2078b = colorStateList2;
        this.f2079c = colorStateList;
        this.f2080d = colorStateList3;
        this.e = i;
        this.f = kVar;
    }

    static b a(Context context, int i) {
        c.g.j.h.a(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i, d.c.a.a.k.MaterialCalendarItem);
        Rect rect = new Rect(typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.c.a.a.k.MaterialCalendarItem_android_insetLeft, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.c.a.a.k.MaterialCalendarItem_android_insetTop, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.c.a.a.k.MaterialCalendarItem_android_insetRight, 0), typedArrayObtainStyledAttributes.getDimensionPixelOffset(d.c.a.a.k.MaterialCalendarItem_android_insetBottom, 0));
        ColorStateList colorStateListA = d.c.a.a.x.c.a(context, typedArrayObtainStyledAttributes, d.c.a.a.k.MaterialCalendarItem_itemFillColor);
        ColorStateList colorStateListA2 = d.c.a.a.x.c.a(context, typedArrayObtainStyledAttributes, d.c.a.a.k.MaterialCalendarItem_itemTextColor);
        ColorStateList colorStateListA3 = d.c.a.a.x.c.a(context, typedArrayObtainStyledAttributes, d.c.a.a.k.MaterialCalendarItem_itemStrokeColor);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(d.c.a.a.k.MaterialCalendarItem_itemStrokeWidth, 0);
        d.c.a.a.a0.k kVarM = d.c.a.a.a0.k.b(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendarItem_itemShapeAppearance, 0), typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendarItem_itemShapeAppearanceOverlay, 0)).m();
        typedArrayObtainStyledAttributes.recycle();
        return new b(colorStateListA, colorStateListA2, colorStateListA3, dimensionPixelSize, kVarM, rect);
    }

    int b() {
        return this.a.bottom;
    }

    int c() {
        return this.a.top;
    }

    void d(TextView textView) {
        d.c.a.a.a0.g gVar = new d.c.a.a.a0.g();
        d.c.a.a.a0.g gVar2 = new d.c.a.a.a0.g();
        gVar.setShapeAppearanceModel(this.f);
        gVar2.setShapeAppearanceModel(this.f);
        gVar.W(this.f2079c);
        gVar.c0(this.e, this.f2080d);
        textView.setTextColor(this.f2078b);
        Drawable rippleDrawable = Build.VERSION.SDK_INT >= 21 ? new RippleDrawable(this.f2078b.withAlpha(30), gVar, gVar2) : gVar;
        Rect rect = this.a;
        v.r0(textView, new InsetDrawable(rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
