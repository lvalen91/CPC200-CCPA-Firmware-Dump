package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p016c.p041g.p049j.C0621c;

/* JADX INFO: renamed from: com.google.android.material.datepicker.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1075a implements Parcelable {
    public static final Parcelable.Creator<C1075a> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    private final C1086l f6852b;

    /* JADX INFO: renamed from: c */
    private final C1086l f6853c;

    /* JADX INFO: renamed from: d */
    private final c f6854d;

    /* JADX INFO: renamed from: e */
    private C1086l f6855e;

    /* JADX INFO: renamed from: f */
    private final int f6856f;

    /* JADX INFO: renamed from: g */
    private final int f6857g;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.a$a */
    static class a implements Parcelable.Creator<C1075a> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1075a createFromParcel(Parcel parcel) {
            return new C1075a((C1086l) parcel.readParcelable(C1086l.class.getClassLoader()), (C1086l) parcel.readParcelable(C1086l.class.getClassLoader()), (c) parcel.readParcelable(c.class.getClassLoader()), (C1086l) parcel.readParcelable(C1086l.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C1075a[] newArray(int i) {
            return new C1075a[i];
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.a$b */
    public static final class b {

        /* JADX INFO: renamed from: e */
        static final long f6858e = C1093s.m8467a(C1086l.m8430k(1900, 0).f6950g);

        /* JADX INFO: renamed from: f */
        static final long f6859f = C1093s.m8467a(C1086l.m8430k(2100, 11).f6950g);

        /* JADX INFO: renamed from: a */
        private long f6860a;

        /* JADX INFO: renamed from: b */
        private long f6861b;

        /* JADX INFO: renamed from: c */
        private Long f6862c;

        /* JADX INFO: renamed from: d */
        private c f6863d;

        b(C1075a c1075a) {
            this.f6860a = f6858e;
            this.f6861b = f6859f;
            this.f6863d = C1080f.m8379j(Long.MIN_VALUE);
            this.f6860a = c1075a.f6852b.f6950g;
            this.f6861b = c1075a.f6853c.f6950g;
            this.f6862c = Long.valueOf(c1075a.f6855e.f6950g);
            this.f6863d = c1075a.f6854d;
        }

        /* JADX INFO: renamed from: a */
        public C1075a m8359a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f6863d);
            C1086l c1086lM8431l = C1086l.m8431l(this.f6860a);
            C1086l c1086lM8431l2 = C1086l.m8431l(this.f6861b);
            c cVar = (c) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l = this.f6862c;
            return new C1075a(c1086lM8431l, c1086lM8431l2, cVar, l == null ? null : C1086l.m8431l(l.longValue()), null);
        }

        /* JADX INFO: renamed from: b */
        public b m8360b(long j) {
            this.f6862c = Long.valueOf(j);
            return this;
        }
    }

    /* JADX INFO: renamed from: com.google.android.material.datepicker.a$c */
    public interface c extends Parcelable {
        /* JADX INFO: renamed from: e */
        boolean mo8361e(long j);
    }

    /* synthetic */ C1075a(C1086l c1086l, C1086l c1086l2, c cVar, C1086l c1086l3, a aVar) {
        this(c1086l, c1086l2, cVar, c1086l3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1075a)) {
            return false;
        }
        C1075a c1075a = (C1075a) obj;
        return this.f6852b.equals(c1075a.f6852b) && this.f6853c.equals(c1075a.f6853c) && C0621c.m4846a(this.f6855e, c1075a.f6855e) && this.f6854d.equals(c1075a.f6854d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f6852b, this.f6853c, this.f6855e, this.f6854d});
    }

    /* JADX INFO: renamed from: n */
    C1086l m8350n(C1086l c1086l) {
        return c1086l.compareTo(this.f6852b) < 0 ? this.f6852b : c1086l.compareTo(this.f6853c) > 0 ? this.f6853c : c1086l;
    }

    /* JADX INFO: renamed from: o */
    public c m8351o() {
        return this.f6854d;
    }

    /* JADX INFO: renamed from: p */
    C1086l m8352p() {
        return this.f6853c;
    }

    /* JADX INFO: renamed from: q */
    int m8353q() {
        return this.f6857g;
    }

    /* JADX INFO: renamed from: r */
    C1086l m8354r() {
        return this.f6855e;
    }

    /* JADX INFO: renamed from: s */
    C1086l m8355s() {
        return this.f6852b;
    }

    /* JADX INFO: renamed from: t */
    int m8356t() {
        return this.f6856f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f6852b, 0);
        parcel.writeParcelable(this.f6853c, 0);
        parcel.writeParcelable(this.f6855e, 0);
        parcel.writeParcelable(this.f6854d, 0);
    }

    private C1075a(C1086l c1086l, C1086l c1086l2, c cVar, C1086l c1086l3) {
        this.f6852b = c1086l;
        this.f6853c = c1086l2;
        this.f6855e = c1086l3;
        this.f6854d = cVar;
        if (c1086l3 != null && c1086l.compareTo(c1086l3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (c1086l3 != null && c1086l3.compareTo(c1086l2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f6857g = c1086l.m8440t(c1086l2) + 1;
        this.f6856f = (c1086l2.f6947d - c1086l.f6947d) + 1;
    }
}
