package com.google.android.material.datepicker;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
final class l implements Comparable<l>, Parcelable {
    public static final Parcelable.Creator<l> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Calendar f2106b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f2107c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int f2108d;
    final int e;
    final int f;
    final long g;
    private String h;

    static class a implements Parcelable.Creator<l> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public l createFromParcel(Parcel parcel) {
            return l.k(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public l[] newArray(int i) {
            return new l[i];
        }
    }

    private l(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarD = s.d(calendar);
        this.f2106b = calendarD;
        this.f2107c = calendarD.get(2);
        this.f2108d = this.f2106b.get(1);
        this.e = this.f2106b.getMaximum(7);
        this.f = this.f2106b.getActualMaximum(5);
        this.g = this.f2106b.getTimeInMillis();
    }

    static l k(int i, int i2) {
        Calendar calendarK = s.k();
        calendarK.set(1, i);
        calendarK.set(2, i2);
        return new l(calendarK);
    }

    static l l(long j) {
        Calendar calendarK = s.k();
        calendarK.setTimeInMillis(j);
        return new l(calendarK);
    }

    static l m() {
        return new l(s.i());
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f2107c == lVar.f2107c && this.f2108d == lVar.f2108d;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2107c), Integer.valueOf(this.f2108d)});
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public int compareTo(l lVar) {
        return this.f2106b.compareTo(lVar.f2106b);
    }

    int n() {
        int firstDayOfWeek = this.f2106b.get(7) - this.f2106b.getFirstDayOfWeek();
        return firstDayOfWeek < 0 ? firstDayOfWeek + this.e : firstDayOfWeek;
    }

    long o(int i) {
        Calendar calendarD = s.d(this.f2106b);
        calendarD.set(5, i);
        return calendarD.getTimeInMillis();
    }

    int p(long j) {
        Calendar calendarD = s.d(this.f2106b);
        calendarD.setTimeInMillis(j);
        return calendarD.get(5);
    }

    String q(Context context) {
        if (this.h == null) {
            this.h = e.c(context, this.f2106b.getTimeInMillis());
        }
        return this.h;
    }

    long r() {
        return this.f2106b.getTimeInMillis();
    }

    l s(int i) {
        Calendar calendarD = s.d(this.f2106b);
        calendarD.add(2, i);
        return new l(calendarD);
    }

    int t(l lVar) {
        if (this.f2106b instanceof GregorianCalendar) {
            return ((lVar.f2108d - this.f2108d) * 12) + (lVar.f2107c - this.f2107c);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2108d);
        parcel.writeInt(this.f2107c);
    }
}
