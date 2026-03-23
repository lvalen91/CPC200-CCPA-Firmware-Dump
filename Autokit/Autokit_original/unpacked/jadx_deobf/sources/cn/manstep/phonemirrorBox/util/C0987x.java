package cn.manstep.phonemirrorBox.util;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.x */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C0987x implements Parcelable {
    public static final Parcelable.Creator<C0987x> CREATOR = new a();

    /* JADX INFO: renamed from: b */
    public int f6158b;

    /* JADX INFO: renamed from: c */
    public int f6159c;

    /* JADX INFO: renamed from: cn.manstep.phonemirrorBox.util.x$a */
    static class a implements Parcelable.Creator<C0987x> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0987x createFromParcel(Parcel parcel) {
            return new C0987x(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C0987x[] newArray(int i) {
            return new C0987x[i];
        }
    }

    public C0987x() {
        m7400m(0, 0);
    }

    /* JADX INFO: renamed from: l */
    public static C0987x m7397l(String str) {
        int[] iArr = {42, 120, 95, 44};
        int iIndexOf = -1;
        for (int i = 0; i < 4; i++) {
            iIndexOf = str.indexOf(iArr[i]);
            if (iIndexOf >= 0) {
                break;
            }
        }
        if (iIndexOf < 0) {
            return new C0987x();
        }
        try {
            return new C0987x(Integer.parseInt(str.substring(0, iIndexOf)), Integer.parseInt(str.substring(iIndexOf + 1)));
        } catch (NumberFormatException unused) {
            return new C0987x();
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
        if (obj instanceof C0987x) {
            C0987x c0987x = (C0987x) obj;
            return this.f6158b == c0987x.f6158b && this.f6159c == c0987x.f6159c;
        }
        if (!(obj instanceof String)) {
            return false;
        }
        C0987x c0987xM7397l = m7397l((String) obj);
        return this.f6158b == c0987xM7397l.f6158b && this.f6159c == c0987xM7397l.f6159c;
    }

    public int hashCode() {
        int i = this.f6159c;
        int i2 = this.f6158b;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    /* JADX INFO: renamed from: j */
    public boolean m7398j(int i, int i2) {
        return i == this.f6158b && i2 == this.f6159c;
    }

    /* JADX INFO: renamed from: k */
    public boolean m7399k() {
        return this.f6158b <= 0 || this.f6159c <= 0;
    }

    /* JADX INFO: renamed from: m */
    public void m7400m(int i, int i2) {
        this.f6158b = i;
        this.f6159c = i2;
    }

    /* JADX INFO: renamed from: n */
    public void m7401n(C0987x c0987x) {
        this.f6158b = c0987x.f6158b;
        this.f6159c = c0987x.f6159c;
    }

    public String toString() {
        return this.f6158b + "x" + this.f6159c;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f6158b);
        parcel.writeInt(this.f6159c);
    }

    public C0987x(int i, int i2) {
        m7400m(i, i2);
    }

    public C0987x(C0987x c0987x) {
        m7400m(c0987x.f6158b, c0987x.f6159c);
    }

    protected C0987x(Parcel parcel) {
        this.f6158b = parcel.readInt();
        this.f6159c = parcel.readInt();
    }
}
