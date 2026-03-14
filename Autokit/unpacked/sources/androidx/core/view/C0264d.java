package androidx.core.view;

import p016c.p041g.p049j.C0621c;

/* JADX INFO: renamed from: androidx.core.view.d */
/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class C0264d {

    /* JADX INFO: renamed from: a */
    private final Object f1820a;

    private C0264d(Object obj) {
        this.f1820a = obj;
    }

    /* JADX INFO: renamed from: a */
    static C0264d m1830a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new C0264d(obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C0264d.class != obj.getClass()) {
            return false;
        }
        return C0621c.m4846a(this.f1820a, ((C0264d) obj).f1820a);
    }

    public int hashCode() {
        Object obj = this.f1820a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.f1820a + "}";
    }
}
