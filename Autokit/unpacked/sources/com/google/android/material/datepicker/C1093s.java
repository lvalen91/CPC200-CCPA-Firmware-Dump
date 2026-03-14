package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import android.icu.text.DateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: renamed from: com.google.android.material.datepicker.s */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1093s {

    /* JADX INFO: renamed from: a */
    static AtomicReference<C1092r> f6971a = new AtomicReference<>();

    /* JADX INFO: renamed from: a */
    static long m8467a(long j) {
        Calendar calendarM8477k = m8477k();
        calendarM8477k.setTimeInMillis(j);
        return m8470d(calendarM8477k).getTimeInMillis();
    }

    @TargetApi(24)
    /* JADX INFO: renamed from: b */
    static DateFormat m8468b(Locale locale) {
        return m8469c("MMMEd", locale);
    }

    @TargetApi(24)
    /* JADX INFO: renamed from: c */
    private static DateFormat m8469c(String str, Locale locale) {
        DateFormat instanceForSkeleton = DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(m8476j());
        return instanceForSkeleton;
    }

    /* JADX INFO: renamed from: d */
    static Calendar m8470d(Calendar calendar) {
        Calendar calendarM8478l = m8478l(calendar);
        Calendar calendarM8477k = m8477k();
        calendarM8477k.set(calendarM8478l.get(1), calendarM8478l.get(2), calendarM8478l.get(5));
        return calendarM8477k;
    }

    /* JADX INFO: renamed from: e */
    private static java.text.DateFormat m8471e(int i, Locale locale) {
        java.text.DateFormat dateInstance = java.text.DateFormat.getDateInstance(i, locale);
        dateInstance.setTimeZone(m8474h());
        return dateInstance;
    }

    /* JADX INFO: renamed from: f */
    static java.text.DateFormat m8472f(Locale locale) {
        return m8471e(0, locale);
    }

    /* JADX INFO: renamed from: g */
    static C1092r m8473g() {
        C1092r c1092r = f6971a.get();
        return c1092r == null ? C1092r.m8464c() : c1092r;
    }

    /* JADX INFO: renamed from: h */
    private static TimeZone m8474h() {
        return TimeZone.getTimeZone("UTC");
    }

    /* JADX INFO: renamed from: i */
    static Calendar m8475i() {
        Calendar calendarM8465a = m8473g().m8465a();
        calendarM8465a.set(11, 0);
        calendarM8465a.set(12, 0);
        calendarM8465a.set(13, 0);
        calendarM8465a.set(14, 0);
        calendarM8465a.setTimeZone(m8474h());
        return calendarM8465a;
    }

    @TargetApi(24)
    /* JADX INFO: renamed from: j */
    private static android.icu.util.TimeZone m8476j() {
        return android.icu.util.TimeZone.getTimeZone("UTC");
    }

    /* JADX INFO: renamed from: k */
    static Calendar m8477k() {
        return m8478l(null);
    }

    /* JADX INFO: renamed from: l */
    static Calendar m8478l(Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(m8474h());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }

    @TargetApi(24)
    /* JADX INFO: renamed from: m */
    static DateFormat m8479m(Locale locale) {
        return m8469c("yMMMEd", locale);
    }
}
