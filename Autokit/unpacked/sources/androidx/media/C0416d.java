package androidx.media;

import android.text.TextUtils;
import p016c.p041g.p049j.C0621c;

/* JADX INFO: renamed from: androidx.media.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
class C0416d implements InterfaceC0414b {

    /* JADX INFO: renamed from: a */
    private String f2572a;

    /* JADX INFO: renamed from: b */
    private int f2573b;

    /* JADX INFO: renamed from: c */
    private int f2574c;

    C0416d(String str, int i, int i2) {
        this.f2572a = str;
        this.f2573b = i;
        this.f2574c = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0416d)) {
            return false;
        }
        C0416d c0416d = (C0416d) obj;
        return TextUtils.equals(this.f2572a, c0416d.f2572a) && this.f2573b == c0416d.f2573b && this.f2574c == c0416d.f2574c;
    }

    public int hashCode() {
        return C0621c.m4847b(this.f2572a, Integer.valueOf(this.f2573b), Integer.valueOf(this.f2574c));
    }
}
