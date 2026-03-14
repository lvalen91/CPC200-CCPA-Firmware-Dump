package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: renamed from: com.google.android.material.datepicker.l */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
final class C1086l implements Comparable<C1086l>, Parcelable {
    public static final Parcelable.Creator<C1086l> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    private final Calendar f6945b;

    /* JADX INFO: renamed from: c */
    final int f6946c;

    /* JADX INFO: renamed from: d */
    final int f6947d;

    /* JADX INFO: renamed from: e */
    final int f6948e;

    /* JADX INFO: renamed from: f */
    final int f6949f;

    /* JADX INFO: renamed from: g */
    final long f6950g;

    /* JADX INFO: renamed from: h */
    private String f6951h;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.l$a */
    static class a implements Parcelable.Creator<C1086l> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1086l createFromParcel(Parcel parcel) {
            return C1086l.m8430k(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C1086l[] newArray(int i) {
            return new C1086l[i];
        }
    }

    private C1086l(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarM8470d = C1093s.m8470d(calendar);
        this.f6945b = calendarM8470d;
        this.f6946c = calendarM8470d.get(2);
        this.f6947d = this.f6945b.get(1);
        this.f6948e = this.f6945b.getMaximum(7);
        this.f6949f = this.f6945b.getActualMaximum(5);
        this.f6950g = this.f6945b.getTimeInMillis();
    }

    /* JADX INFO: renamed from: k */
    static C1086l m8430k(int i, int i2) {
        Calendar calendarM8477k = C1093s.m8477k();
        calendarM8477k.set(1, i);
        calendarM8477k.set(2, i2);
        return new C1086l(calendarM8477k);
    }

    /* JADX INFO: renamed from: l */
    static C1086l m8431l(long j) {
        Calendar calendarM8477k = C1093s.m8477k();
        calendarM8477k.setTimeInMillis(j);
        return new C1086l(calendarM8477k);
    }

    /* JADX INFO: renamed from: m */
    static C1086l m8432m() {
        return new C1086l(C1093s.m8475i());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1086l)) {
            return false;
        }
        C1086l c1086l = (C1086l) obj;
        return this.f6946c == c1086l.f6946c && this.f6947d == c1086l.f6947d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f6946c), Integer.valueOf(this.f6947d)});
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int compareTo(C1086l c1086l) {
        return this.f6945b.compareTo(c1086l.f6945b);
    }

    /* JADX INFO: renamed from: n */
    int m8434n() {
        int firstDayOfWeek = this.f6945b.get(7) - this.f6945b.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.f6948e : firstDayOfWeek;
    }

    /* JADX INFO: renamed from: o */
    long m8435o(int i) {
        Calendar calendarM8470d = C1093s.m8470d(this.f6945b);
        calendarM8470d.set(5, i);
        return calendarM8470d.getTimeInMillis();
    }

    /* JADX INFO: renamed from: p */
    int m8436p(long j) {
        Calendar calendarM8470d = C1093s.m8470d(this.f6945b);
        calendarM8470d.setTimeInMillis(j);
        return calendarM8470d.get(5);
    }

    /* JADX INFO: renamed from: q */
    String m8437q(Context context) {
        if (this.f6951h == null) {
            this.f6951h = C1079e.m8376c(context, this.f6945b.getTimeInMillis());
        }
        return this.f6951h;
    }

    /* JADX INFO: renamed from: r */
    long m8438r() {
        return this.f6945b.getTimeInMillis();
    }

    /* JADX INFO: renamed from: s */
    C1086l m8439s(int i) {
        Calendar calendarM8470d = C1093s.m8470d(this.f6945b);
        calendarM8470d.add(2, i);
        return new C1086l(calendarM8470d);
    }

    /* JADX INFO: renamed from: t */
    int m8440t(C1086l c1086l) {
        if (this.f6945b instanceof GregorianCalendar) {
            return ((c1086l.f6947d - this.f6947d) * 12) + (c1086l.f6946c - this.f6946c);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6947d);
        parcel.writeInt(this.f6946c);
    }
}
