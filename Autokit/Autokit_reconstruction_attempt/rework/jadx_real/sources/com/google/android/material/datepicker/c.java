package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class c {
    final b a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final b f2081b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final b f2082c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f2083d;
    final b e;
    final b f;
    final b g;
    final Paint h;

    c(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(d.c.a.a.x.b.c(context, d.c.a.a.b.materialCalendarStyle, h.class.getCanonicalName()), d.c.a.a.k.MaterialCalendar);
        this.a = b.a(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendar_dayStyle, 0));
        this.g = b.a(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendar_dayInvalidStyle, 0));
        this.f2081b = b.a(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendar_daySelectedStyle, 0));
        this.f2082c = b.a(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListA = d.c.a.a.x.c.a(context, typedArrayObtainStyledAttributes, d.c.a.a.k.MaterialCalendar_rangeFillColor);
        this.f2083d = b.a(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendar_yearStyle, 0));
        this.e = b.a(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendar_yearSelectedStyle, 0));
        this.f = b.a(context, typedArrayObtainStyledAttributes.getResourceId(d.c.a.a.k.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.h = paint;
        paint.setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
