package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.icu.text.DateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class s {
    static AtomicReference<r> a = new AtomicReference<>();

    static long a(long j) {
        Calendar calendarK = k();
        calendarK.setTimeInMillis(j);
        return d(calendarK).getTimeInMillis();
    }

    @TargetApi(24)
    static DateFormat b(Locale locale) {
        return c("MMMEd", locale);
    }

    @TargetApi(24)
    private static DateFormat c(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(j());
        return instanceForSkeleton;
    }

    static Calendar d(Calendar calendar) {
        Calendar calendarL = l(calendar);
        Calendar calendarK = k();
        calendarK.set(calendarL.get(1), calendarL.get(2), calendarL.get(5));
        return calendarK;
    }

    private static java.text.DateFormat e(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(h());
        return dateInstance;
    }

    static java.text.DateFormat f(Locale locale) {
        return e(0, locale);
    }

    static r g() {
        r rVar = a.get();
        return rVar == null ? r.c() : rVar;
    }

    private static TimeZone h() {
        return TimeZone.getTimeZone("UTC");
    }

    static Calendar i() {
        Calendar calendarA = g().a();
        calendarA.set(11, 0);
        calendarA.set(12, 0);
        calendarA.set(13, 0);
        calendarA.set(14, 0);
        calendarA.setTimeZone(h());
        return calendarA;
    }

    @TargetApi(24)
    private static android.icu.util.TimeZone j() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }

    static Calendar k() {
        return l(null);
    }

    static Calendar l(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(h());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    static DateFormat m(Locale locale) {
        return c("yMMMEd", locale);
    }
}
