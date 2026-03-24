package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class e {
    static String a(long j) {
        return b(j, Locale.getDefault());
    }

    static String b(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? s.b(locale).format(new Date(j)) : s.f(locale).format(new Date(j));
    }

    static String c(Context context, long j) {
        return DateUtils.formatDateTime(context, j - ((long) TimeZone.getDefault().getOffset(j)), 36);
    }

    static String d(long j) {
        return e(j, Locale.getDefault());
    }

    static String e(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? s.m(locale).format(new Date(j)) : s.f(locale).format(new Date(j));
    }
}
