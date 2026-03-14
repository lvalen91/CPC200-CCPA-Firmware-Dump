package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.w;
import androidx.lifecycle.f;
import java.util.ArrayList;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
@SuppressLint({"BanParcelableUsage"})
final class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final int[] f665b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final ArrayList<String> f666c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final int[] f667d;
    final int[] e;
    final int f;
    final String g;
    final int h;
    final int i;
    final CharSequence j;
    final int k;
    final CharSequence l;
    final ArrayList<String> m;
    final ArrayList<String> n;
    final boolean o;

    class a implements Parcelable.Creator<b> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public b[] newArray(int i) {
            return new b[i];
        }
    }

    public b(androidx.fragment.app.a aVar) {
        int size = aVar.a.size();
        this.f665b = new int[size * 5];
        if (!aVar.g) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f666c = new ArrayList<>(size);
        this.f667d = new int[size];
        this.e = new int[size];
        int i = 0;
        int i2 = 0;
        while (i < size) {
            w.a aVar2 = aVar.a.get(i);
            int i3 = i2 + 1;
            this.f665b[i2] = aVar2.a;
            ArrayList<String> arrayList = this.f666c;
            Fragment fragment = aVar2.f770b;
            arrayList.add(fragment != null ? fragment.g : null);
            int[] iArr = this.f665b;
            int i4 = i3 + 1;
            iArr[i3] = aVar2.f771c;
            int i5 = i4 + 1;
            iArr[i4] = aVar2.f772d;
            int i6 = i5 + 1;
            iArr[i5] = aVar2.e;
            iArr[i6] = aVar2.f;
            this.f667d[i] = aVar2.g.ordinal();
            this.e[i] = aVar2.h.ordinal();
            i++;
            i2 = i6 + 1;
        }
        this.f = aVar.f;
        this.g = aVar.i;
        this.h = aVar.t;
        this.i = aVar.j;
        this.j = aVar.k;
        this.k = aVar.l;
        this.l = aVar.m;
        this.m = aVar.n;
        this.n = aVar.o;
        this.o = aVar.p;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public androidx.fragment.app.a j(n nVar) {
        androidx.fragment.app.a aVar = new androidx.fragment.app.a(nVar);
        int i = 0;
        int i2 = 0;
        while (i < this.f665b.length) {
            w.a aVar2 = new w.a();
            int i3 = i + 1;
            aVar2.a = this.f665b[i];
            if (n.E0(2)) {
                String str = "Instantiate " + aVar + " op #" + i2 + " base fragment #" + this.f665b[i3];
            }
            String str2 = this.f666c.get(i2);
            if (str2 != null) {
                aVar2.f770b = nVar.f0(str2);
            } else {
                aVar2.f770b = null;
            }
            aVar2.g = f.c.values()[this.f667d[i2]];
            aVar2.h = f.c.values()[this.e[i2]];
            int[] iArr = this.f665b;
            int i4 = i3 + 1;
            int i5 = iArr[i3];
            aVar2.f771c = i5;
            int i6 = i4 + 1;
            int i7 = iArr[i4];
            aVar2.f772d = i7;
            int i8 = i6 + 1;
            int i9 = iArr[i6];
            aVar2.e = i9;
            int i10 = iArr[i8];
            aVar2.f = i10;
            aVar.f767b = i5;
            aVar.f768c = i7;
            aVar.f769d = i9;
            aVar.e = i10;
            aVar.f(aVar2);
            i2++;
            i = i8 + 1;
        }
        aVar.f = this.f;
        aVar.i = this.g;
        aVar.t = this.h;
        aVar.g = true;
        aVar.j = this.i;
        aVar.k = this.j;
        aVar.l = this.k;
        aVar.m = this.l;
        aVar.n = this.m;
        aVar.o = this.n;
        aVar.p = this.o;
        aVar.u(1);
        return aVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f665b);
        parcel.writeStringList(this.f666c);
        parcel.writeIntArray(this.f667d);
        parcel.writeIntArray(this.e);
        parcel.writeInt(this.f);
        parcel.writeString(this.g);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        TextUtils.writeToParcel(this.j, parcel, 0);
        parcel.writeInt(this.k);
        TextUtils.writeToParcel(this.l, parcel, 0);
        parcel.writeStringList(this.m);
        parcel.writeStringList(this.n);
        parcel.writeInt(this.o ? 1 : 0);
    }

    public b(Parcel parcel) {
        this.f665b = parcel.createIntArray();
        this.f666c = parcel.createStringArrayList();
        this.f667d = parcel.createIntArray();
        this.e = parcel.createIntArray();
        this.f = parcel.readInt();
        this.g = parcel.readString();
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.j = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.k = parcel.readInt();
        this.l = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.m = parcel.createStringArrayList();
        this.n = parcel.createStringArrayList();
        this.o = parcel.readInt() != 0;
    }
}
