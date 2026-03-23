package com.google.android.material.datepicker;

import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: renamed from: com.google.android.material.datepicker.r */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1092r {

    /* JADX INFO: renamed from: c */
    private static final C1092r f6968c = new C1092r(null, null);

    /* JADX INFO: renamed from: a */
    private final Long f6969a;

    /* JADX INFO: renamed from: b */
    private final TimeZone f6970b;

    private C1092r(Long l, TimeZone timeZone) {
        this.f6969a = l;
        this.f6970b = timeZone;
    }

    /* JADX INFO: renamed from: c */
    static C1092r m8464c() {
        return f6968c;
    }

    /* JADX INFO: renamed from: a */
    Calendar m8465a() {
        return m8466b(this.f6970b);
    }

    /* JADX INFO: renamed from: b */
    Calendar m8466b(TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.f6969a;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }
}
