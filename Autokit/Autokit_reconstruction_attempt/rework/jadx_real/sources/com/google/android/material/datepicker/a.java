package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0109a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l f2072b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l f2073c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c f2074d;
    private l e;
    private final int f;
    private final int g;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.a$a, reason: collision with other inner class name */
    static class C0109a implements Parcelable.Creator<a> {
        C0109a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return new a((l) parcel.readParcelable(l.class.getClassLoader()), (l) parcel.readParcelable(l.class.getClassLoader()), (c) parcel.readParcelable(c.class.getClassLoader()), (l) parcel.readParcelable(l.class.getClassLoader()), null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }
    }

    public static final class b {
        static final long e = s.a(l.k(1900, 0).g);
        static final long f = s.a(l.k(2100, 11).g);
        private long a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f2075b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Long f2076c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f2077d;

        b(a aVar) {
            this.a = e;
            this.f2075b = f;
            this.f2077d = f.j(Long.MIN_VALUE);
            this.a = aVar.f2072b.g;
            this.f2075b = aVar.f2073c.g;
            this.f2076c = Long.valueOf(aVar.e.g);
            this.f2077d = aVar.f2074d;
        }

        public a a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f2077d);
            l lVarL = l.l(this.a);
            l lVarL2 = l.l(this.f2075b);
            c cVar = (c) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l = this.f2076c;
            return new a(lVarL, lVarL2, cVar, l == null ? null : l.l(l.longValue()), null);
        }

        public b b(long j) {
            this.f2076c = Long.valueOf(j);
            return this;
        }
    }

    public interface c extends Parcelable {
        boolean e(long j);
    }

    /* synthetic */ a(l lVar, l lVar2, c cVar, l lVar3, C0109a c0109a) {
        this(lVar, lVar2, cVar, lVar3);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2072b.equals(aVar.f2072b) && this.f2073c.equals(aVar.f2073c) && c.g.j.c.a(this.e, aVar.e) && this.f2074d.equals(aVar.f2074d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2072b, this.f2073c, this.e, this.f2074d});
    }

    l n(l lVar) {
        return lVar.compareTo(this.f2072b) < 0 ? this.f2072b : lVar.compareTo(this.f2073c) > 0 ? this.f2073c : lVar;
    }

    public c o() {
        return this.f2074d;
    }

    l p() {
        return this.f2073c;
    }

    int q() {
        return this.g;
    }

    l r() {
        return this.e;
    }

    l s() {
        return this.f2072b;
    }

    int t() {
        return this.f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2072b, 0);
        parcel.writeParcelable(this.f2073c, 0);
        parcel.writeParcelable(this.e, 0);
        parcel.writeParcelable(this.f2074d, 0);
    }

    private a(l lVar, l lVar2, c cVar, l lVar3) {
        this.f2072b = lVar;
        this.f2073c = lVar2;
        this.e = lVar3;
        this.f2074d = cVar;
        if (lVar3 != null && lVar.compareTo(lVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (lVar3 != null && lVar3.compareTo(lVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.g = lVar.t(lVar2) + 1;
        this.f = (lVar2.f2108d - lVar.f2108d) + 1;
    }
}
