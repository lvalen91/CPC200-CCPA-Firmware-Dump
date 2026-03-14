package p093d.p099c.p100a.p101a.p103b0;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p016c.p032d.C0540g;
import p016c.p052i.p053a.AbstractC0630a;

/* JADX INFO: renamed from: d.c.a.a.b0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public class C1217a extends AbstractC0630a {
    public static final Parcelable.Creator<C1217a> CREATOR = new a();

    /* JADX INFO: renamed from: d */
    public final C0540g<String, Bundle> f7733d;

    /* JADX INFO: renamed from: d.c.a.a.b0.a$a */
    static class a implements Parcelable.ClassLoaderCreator<C1217a> {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public C1217a createFromParcel(Parcel parcel) {
            return new C1217a(parcel, null, 0 == true ? 1 : 0);
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public C1217a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new C1217a(parcel, classLoader, null);
        }

        @Override // android.os.Parcelable.Creator
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public C1217a[] newArray(int i) {
            return new C1217a[i];
        }
    }

    /* synthetic */ C1217a(Parcel parcel, ClassLoader classLoader, a aVar) {
        this(parcel, classLoader);
    }

    public String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f7733d + "}";
    }

    @Override // p016c.p052i.p053a.AbstractC0630a, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        int size = this.f7733d.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = this.f7733d.m4293i(i2);
            bundleArr[i2] = this.f7733d.m4297m(i2);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public C1217a(Parcelable parcelable) {
        super(parcelable);
        this.f7733d = new C0540g<>();
    }

    private C1217a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i = parcel.readInt();
        String[] strArr = new String[i];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[i];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f7733d = new C0540g<>(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.f7733d.put(strArr[i2], bundleArr[i2]);
        }
    }
}
