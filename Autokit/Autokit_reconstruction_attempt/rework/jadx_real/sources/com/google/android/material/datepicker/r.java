package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
class r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final r f2116c = new r(null, null);
    private final Long a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimeZone f2117b;

    private r(Long l, TimeZone timeZone) {
        this.a = l;
        this.f2117b = timeZone;
    }

    static r c() {
        return f2116c;
    }

    Calendar a() {
        return b(this.f2117b);
    }

    Calendar b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.a;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}
