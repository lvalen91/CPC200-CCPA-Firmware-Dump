package cn.manstep.phonemirrorBox.util;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Volumes/stuff/macbook/misc/CPC200-CCPA/rework/dumped_real_classes.dex */
public class x implements Parcelable {
    public static final Parcelable.Creator<x> CREATOR = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f1934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f1935c;

    static class a implements Parcelable.Creator<x> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public x createFromParcel(Parcel parcel) {
            return new x(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public x[] newArray(int i) {
            return new x[i];
        }
    }

    public x() {
        m(0, 0);
    }

    public static x l(String str) {
        int[] iArr = {42, 120, 95, 44};
        int iIndexOf = -1;
        for (int i = 0; i < 4; i++) {
            iIndexOf = str.indexOf(iArr[i]);
            if (iIndexOf >= 0) {
                break;
            }
        }
        if (iIndexOf < 0) {
            return new x();
        }
        try {
            return new x(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
        } catch (NumberFormatException unused) {
            return new x();
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof x) {
            x xVar = (x) obj;
            return this.f1934b == xVar.f1934b && this.f1935c == xVar.f1935c;
        }
        if (!(obj instanceof String)) {
            return false;
        }
        x xVarL = l((String) obj);
        return this.f1934b == xVarL.f1934b && this.f1935c == xVarL.f1935c;
    }

    public int hashCode() {
        int i = this.f1935c;
        int i2 = this.f1934b;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    public boolean j(int i, int i2) {
        return i == this.f1934b && i2 == this.f1935c;
    }

    public boolean k() {
        return this.f1934b <= 0 || this.f1935c <= 0;
    }

    public void m(int i, int i2) {
        this.f1934b = i;
        this.f1935c = i2;
    }

    public void n(x xVar) {
        this.f1934b = xVar.f1934b;
        this.f1935c = xVar.f1935c;
    }

    public String toString() {
        return this.f1934b + "x" + this.f1935c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1934b);
        parcel.writeInt(this.f1935c);
    }

    public x(int i, int i2) {
        m(i, i2);
    }

    public x(x xVar) {
        m(xVar.f1934b, xVar.f1935c);
    }

    protected x(Parcel parcel) {
        this.f1934b = parcel.readInt();
        this.f1935c = parcel.readInt();
    }
}
