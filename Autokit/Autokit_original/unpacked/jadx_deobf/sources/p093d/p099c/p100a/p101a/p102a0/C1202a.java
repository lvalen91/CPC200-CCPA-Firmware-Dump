package p093d.p099c.p100a.p101a.p102a0;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: renamed from: d.c.a.a.a0.a */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C1202a implements InterfaceC1204c {

    /* JADX INFO: renamed from: a */
    private final float f7611a;

    public C1202a(float f) {
        this.f7611a = f;
    }

    @Override // p093d.p099c.p100a.p101a.p102a0.InterfaceC1204c
    /* JADX INFO: renamed from: a */
    public float mo9140a(RectF rectF) {
        return this.f7611a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1202a) && this.f7611a == ((C1202a) obj).f7611a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f7611a)});
    }
}
