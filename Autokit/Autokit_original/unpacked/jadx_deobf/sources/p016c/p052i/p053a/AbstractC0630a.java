package p016c.p052i.p053a;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: renamed from: c.i.a.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public abstract class AbstractC0630a implements Parcelable {

    /* JADX INFO: renamed from: b */
    private final Parcelable f3832b;

    /* JADX INFO: renamed from: c */
    public static final AbstractC0630a f3831c = new a();
    public static final Parcelable.Creator<AbstractC0630a> CREATOR = new b();

    /* JADX INFO: renamed from: c.i.a.a$a */
    static class a extends AbstractC0630a {
        a() {
            super((a) null);
        }
    }

    /* JADX INFO: renamed from: c.i.a.a$b */
    static class b implements Parcelable.ClassLoaderCreator<AbstractC0630a> {
        b() {
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public AbstractC0630a createFromParcel(Parcel parcel) {
            return createFromParcel(parcel, null);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public AbstractC0630a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return AbstractC0630a.f3831c;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public AbstractC0630a[] newArray(int i) {
            return new AbstractC0630a[i];
        }
    }

    /* synthetic */ AbstractC0630a(a aVar) {
        this();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    /* JADX INFO: renamed from: j */
    public final Parcelable m4862j() {
        return this.f3832b;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f3832b, i);
    }

    private AbstractC0630a() {
        this.f3832b = null;
    }

    protected AbstractC0630a(Parcelable parcelable) {
        if (parcelable != null) {
            this.f3832b = parcelable == f3831c ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    protected AbstractC0630a(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f3832b = parcelable == null ? f3831c : parcelable;
    }
}
