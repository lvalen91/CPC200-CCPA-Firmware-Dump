package androidx.media;

import android.text.TextUtils;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class d implements b {
    private String a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f850b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f851c;

    d(String str, int i, int i2) {
        this.a = str;
        this.f850b = i;
        this.f851c = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return TextUtils.equals(this.a, dVar.a) && this.f850b == dVar.f850b && this.f851c == dVar.f851c;
    }

    public int hashCode() {
        return c.g.j.c.b(this.a, Integer.valueOf(this.f850b), Integer.valueOf(this.f851c));
    }
}
