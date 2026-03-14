package d.c.a.a.a0;

import android.graphics.RectF;
import java.util.Arrays;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class a implements c {
    private final float a;

    public a(float f) {
        this.a = f;
    }

    @Override // d.c.a.a.a0.c
    public float a(RectF rectF) {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && this.a == ((a) obj).a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.a)});
    }
}
