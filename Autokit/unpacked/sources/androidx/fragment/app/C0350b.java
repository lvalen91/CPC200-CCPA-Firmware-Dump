package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.AbstractC0375w;
import androidx.lifecycle.AbstractC0392f;
import java.util.ArrayList;

/* JADX INFO: renamed from: androidx.fragment.app.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
final class C0350b implements Parcelable {
    public static final Parcelable.Creator<C0350b> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    final int[] f2142b;

    /* JADX INFO: renamed from: c */
    final ArrayList<String> f2143c;

    /* JADX INFO: renamed from: d */
    final int[] f2144d;

    /* JADX INFO: renamed from: e */
    final int[] f2145e;

    /* JADX INFO: renamed from: f */
    final int f2146f;

    /* JADX INFO: renamed from: g */
    final String f2147g;

    /* JADX INFO: renamed from: h */
    final int f2148h;

    /* JADX INFO: renamed from: i */
    final int f2149i;

    /* JADX INFO: renamed from: j */
    final CharSequence f2150j;

    /* JADX INFO: renamed from: k */
    final int f2151k;

    /* JADX INFO: renamed from: l */
    final CharSequence f2152l;

    /* JADX INFO: renamed from: m */
    final ArrayList<String> f2153m;

    /* JADX INFO: renamed from: n */
    final ArrayList<String> f2154n;

    /* JADX INFO: renamed from: o */
    final boolean f2155o;

    /* JADX INFO: renamed from: androidx.fragment.app.b$a */
    class a implements Parcelable.Creator<C0350b> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0350b createFromParcel(Parcel parcel) {
            return new C0350b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0350b[] newArray(int i) {
            return new C0350b[i];
        }
    }

    public C0350b(C0348a c0348a) {
        int size = c0348a.f2382a.size();
        this.f2142b = new int[size * 5];
        if (!c0348a.f2388g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f2143c = new ArrayList<>(size);
        this.f2144d = new int[size];
        this.f2145e = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            AbstractC0375w.a aVar = c0348a.f2382a.get(i);
            int i3 = i2 + 1;
            this.f2142b[i2] = aVar.f2399a;
            ArrayList<String> arrayList = this.f2143c;
            Fragment fragment = aVar.f2400b;
            arrayList.add(fragment != null ? fragment.f2076g : null);
            int[] iArr = this.f2142b;
            int i4 = i3 + 1;
            iArr[i3] = aVar.f2401c;
            int i5 = i4 + 1;
            iArr[i4] = aVar.f2402d;
            int i6 = i5 + 1;
            iArr[i5] = aVar.f2403e;
            iArr[i6] = aVar.f2404f;
            this.f2144d[i] = aVar.f2405g.ordinal();
            this.f2145e[i] = aVar.f2406h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.f2146f = c0348a.f2387f;
        this.f2147g = c0348a.f2390i;
        this.f2148h = c0348a.f2138t;
        this.f2149i = c0348a.f2391j;
        this.f2150j = c0348a.f2392k;
        this.f2151k = c0348a.f2393l;
        this.f2152l = c0348a.f2394m;
        this.f2153m = c0348a.f2395n;
        this.f2154n = c0348a.f2396o;
        this.f2155o = c0348a.f2397p;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: j */
    public C0348a m2546j(AbstractC0366n abstractC0366n) {
        C0348a c0348a = new C0348a(abstractC0366n);
        int i = 0;
        int i2 = 0;
        while (i < this.f2142b.length) {
            AbstractC0375w.a aVar = new AbstractC0375w.a();
            int i3 = i + 1;
            aVar.f2399a = this.f2142b[i];
            if (AbstractC0366n.m2677E0(2)) {
                String str = "Instantiate " + c0348a + " op #" + i2 + " base fragment #" + this.f2142b[i3];
            }
            String str2 = this.f2143c.get(i2);
            if (str2 != null) {
                aVar.f2400b = abstractC0366n.m2760f0(str2);
            } else {
                aVar.f2400b = null;
            }
            aVar.f2405g = AbstractC0392f.c.values()[this.f2144d[i2]];
            aVar.f2406h = AbstractC0392f.c.values()[this.f2145e[i2]];
            int[] iArr = this.f2142b;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            aVar.f2401c = i5;
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            aVar.f2402d = i7;
            int i8 = i6 + 1;
            int i9 = iArr[i6];
            aVar.f2403e = i9;
            int i10 = iArr[i8];
            aVar.f2404f = i10;
            c0348a.f2383b = i5;
            c0348a.f2384c = i7;
            c0348a.f2385d = i9;
            c0348a.f2386e = i10;
            c0348a.m2890f(aVar);
            i2++;
            i = i8 + 1;
        }
        c0348a.f2387f = this.f2146f;
        c0348a.f2390i = this.f2147g;
        c0348a.f2138t = this.f2148h;
        c0348a.f2388g = true;
        c0348a.f2391j = this.f2149i;
        c0348a.f2392k = this.f2150j;
        c0348a.f2393l = this.f2151k;
        c0348a.f2394m = this.f2152l;
        c0348a.f2395n = this.f2153m;
        c0348a.f2396o = this.f2154n;
        c0348a.f2397p = this.f2155o;
        c0348a.m2534u(1);
        return c0348a;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f2142b);
        parcel.writeStringList(this.f2143c);
        parcel.writeIntArray(this.f2144d);
        parcel.writeIntArray(this.f2145e);
        parcel.writeInt(this.f2146f);
        parcel.writeString(this.f2147g);
        parcel.writeInt(this.f2148h);
        parcel.writeInt(this.f2149i);
        TextUtils.writeToParcel(this.f2150j, parcel, 0);
        parcel.writeInt(this.f2151k);
        TextUtils.writeToParcel(this.f2152l, parcel, 0);
        parcel.writeStringList(this.f2153m);
        parcel.writeStringList(this.f2154n);
        parcel.writeInt(this.f2155o ? 1 : 0);
    }

    public C0350b(Parcel parcel) {
        this.f2142b = parcel.createIntArray();
        this.f2143c = parcel.createStringArrayList();
        this.f2144d = parcel.createIntArray();
        this.f2145e = parcel.createIntArray();
        this.f2146f = parcel.readInt();
        this.f2147g = parcel.readString();
        this.f2148h = parcel.readInt();
        this.f2149i = parcel.readInt();
        this.f2150j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2151k = parcel.readInt();
        this.f2152l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f2153m = parcel.createStringArrayList();
        this.f2154n = parcel.createStringArrayList();
        this.f2155o = parcel.readInt() != 0;
    }
}
