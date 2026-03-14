package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import p093d.p099c.p100a.p101a.C1216b;
import p093d.p099c.p100a.p101a.C1226k;
import p093d.p099c.p100a.p101a.p117x.C1256b;
import p093d.p099c.p100a.p101a.p117x.C1257c;

/* JADX INFO: renamed from: com.google.android.material.datepicker.c */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1077c {

    /* JADX INFO: renamed from: a */
    final C1076b f6870a;

    /* JADX INFO: renamed from: b */
    final C1076b f6871b;

    /* JADX INFO: renamed from: c */
    final C1076b f6872c;

    /* JADX INFO: renamed from: d */
    final C1076b f6873d;

    /* JADX INFO: renamed from: e */
    final C1076b f6874e;

    /* JADX INFO: renamed from: f */
    final C1076b f6875f;

    /* JADX INFO: renamed from: g */
    final C1076b f6876g;

    /* JADX INFO: renamed from: h */
    final Paint f6877h;

    C1077c(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(C1256b.m9452c(context, C1216b.materialCalendarStyle, C1082h.class.getCanonicalName()), C1226k.MaterialCalendar);
        this.f6870a = C1076b.m8362a(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendar_dayStyle, 0));
        this.f6876g = C1076b.m8362a(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendar_dayInvalidStyle, 0));
        this.f6871b = C1076b.m8362a(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendar_daySelectedStyle, 0));
        this.f6872c = C1076b.m8362a(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListM9454a = C1257c.m9454a(context, typedArrayObtainStyledAttributes, C1226k.MaterialCalendar_rangeFillColor);
        this.f6873d = C1076b.m8362a(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendar_yearStyle, 0));
        this.f6874e = C1076b.m8362a(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendar_yearSelectedStyle, 0));
        this.f6875f = C1076b.m8362a(context, typedArrayObtainStyledAttributes.getResourceId(C1226k.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f6877h = paint;
        paint.setColor(colorStateListM9454a.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
