package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Build;
import android.text.format.DateUtils;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: renamed from: com.google.android.material.datepicker.e */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C1079e {
    /* JADX INFO: renamed from: a */
    static String m8374a(long j) {
        return m8375b(j, Locale.getDefault());
    }

    /* JADX INFO: renamed from: b */
    static String m8375b(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C1093s.m8468b(locale).format(new Date(j)) : C1093s.m8472f(locale).format(new Date(j));
    }

    /* JADX INFO: renamed from: c */
    static String m8376c(Context context, long j) {
        return DateUtils.formatDateTime(context, j - ((long) TimeZone.getDefault().getOffset(j)), 36);
    }

    /* JADX INFO: renamed from: d */
    static String m8377d(long j) {
        return m8378e(j, Locale.getDefault());
    }

    /* JADX INFO: renamed from: e */
    static String m8378e(long j, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? C1093s.m8479m(locale).format(new Date(j)) : C1093s.m8472f(locale).format(new Date(j));
    }
}
