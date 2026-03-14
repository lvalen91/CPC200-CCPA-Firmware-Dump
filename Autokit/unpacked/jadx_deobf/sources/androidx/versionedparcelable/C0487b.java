package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import com.yalantis.ucrop.BuildConfig;
import java.lang.reflect.Method;
import p016c.p032d.C0534a;

/* JADX INFO: renamed from: androidx.versionedparcelable.b */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0487b extends AbstractC0486a {

    /* JADX INFO: renamed from: d */
    private final SparseIntArray f3064d;

    /* JADX INFO: renamed from: e */
    private final Parcel f3065e;

    /* JADX INFO: renamed from: f */
    private final int f3066f;

    /* JADX INFO: renamed from: g */
    private final int f3067g;

    /* JADX INFO: renamed from: h */
    private final String f3068h;

    /* JADX INFO: renamed from: i */
    private int f3069i;

    /* JADX INFO: renamed from: j */
    private int f3070j;

    /* JADX INFO: renamed from: k */
    private int f3071k;

    C0487b(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), BuildConfig.FLAVOR, new C0534a(), new C0534a(), new C0534a());
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: A */
    public void mo4000A(byte[] bArr) {
        if (bArr == null) {
            this.f3065e.writeInt(-1);
        } else {
            this.f3065e.writeInt(bArr.length);
            this.f3065e.writeByteArray(bArr);
        }
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: C */
    protected void mo4002C(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f3065e, 0);
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: E */
    public void mo4004E(int i) {
        this.f3065e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: G */
    public void mo4006G(Parcelable parcelable) {
        this.f3065e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: I */
    public void mo4008I(String str) {
        this.f3065e.writeString(str);
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: a */
    public void mo4013a() {
        int i = this.f3069i;
        if (i >= 0) {
            int i2 = this.f3064d.get(i);
            int iDataPosition = this.f3065e.dataPosition();
            this.f3065e.setDataPosition(i2);
            this.f3065e.writeInt(iDataPosition - i2);
            this.f3065e.setDataPosition(iDataPosition);
        }
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: b */
    protected AbstractC0486a mo4014b() {
        Parcel parcel = this.f3065e;
        int iDataPosition = parcel.dataPosition();
        int i = this.f3070j;
        if (i == this.f3066f) {
            i = this.f3067g;
        }
        return new C0487b(parcel, iDataPosition, i, this.f3068h + "  ", this.f3061a, this.f3062b, this.f3063c);
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: g */
    public boolean mo4016g() {
        return this.f3065e.readInt() != 0;
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: i */
    public byte[] mo4018i() {
        int i = this.f3065e.readInt();
        if (i < 0) {
            return null;
        }
        byte[] bArr = new byte[i];
        this.f3065e.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: k */
    protected CharSequence mo4020k() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f3065e);
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: m */
    public boolean mo4022m(int i) {
        while (this.f3070j < this.f3067g) {
            int i2 = this.f3071k;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            this.f3065e.setDataPosition(this.f3070j);
            int i3 = this.f3065e.readInt();
            this.f3071k = this.f3065e.readInt();
            this.f3070j += i3;
        }
        return this.f3071k == i;
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: o */
    public int mo4024o() {
        return this.f3065e.readInt();
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: q */
    public <T extends Parcelable> T mo4026q() {
        return (T) this.f3065e.readParcelable(C0487b.class.getClassLoader());
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: s */
    public String mo4028s() {
        return this.f3065e.readString();
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: w */
    public void mo4032w(int i) {
        mo4013a();
        this.f3069i = i;
        this.f3064d.put(i, this.f3065e.dataPosition());
        mo4004E(0);
        mo4004E(i);
    }

    @Override // androidx.versionedparcelable.AbstractC0486a
    /* JADX INFO: renamed from: y */
    public void mo4034y(boolean z) {
        this.f3065e.writeInt(z ? 1 : 0);
    }

    private C0487b(Parcel parcel, int i, int i2, String str, C0534a<String, Method> c0534a, C0534a<String, Method> c0534a2, C0534a<String, Class> c0534a3) {
        super(c0534a, c0534a2, c0534a3);
        this.f3064d = new SparseIntArray();
        this.f3069i = -1;
        this.f3070j = 0;
        this.f3071k = -1;
        this.f3065e = parcel;
        this.f3066f = i;
        this.f3067g = i2;
        this.f3070j = i;
        this.f3068h = str;
    }
}
