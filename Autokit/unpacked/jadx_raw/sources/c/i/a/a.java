package c.i.a;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class a implements Parcelable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Parcelable f1244b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f1243c = new C0057a();
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* JADX INFO: renamed from: c.i.a.a$a, reason: collision with other inner class name */
    static class C0057a extends a {
        C0057a() {
            super((C0057a) null);
        }
    }

    static class b implements Parcelable.ClassLoaderCreator<a> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return a.f1243c;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }
    }

    /* synthetic */ a(C0057a c0057a) {
        this();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final Parcelable j() {
        return this.f1244b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f1244b, i);
    }

    private a() {
        this.f1244b = null;
    }

    protected a(Parcelable parcelable) {
        if (parcelable != null) {
            this.f1244b = parcelable == f1243c ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    protected a(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f1244b = parcelable == null ? f1243c : parcelable;
    }
}
