package androidx.core.view;

/* JADX INFO: loaded from: /Users/zeno/Downloads/misc/cpc200_ccpa_firmware_binaries/apk/unpacked/classes_decrypted.dex */
public final class d {
    private final Object a;

    private d(Object obj) {
        this.a = obj;
    }

    static d a(Object obj) {
        if (obj == null) {
            return null;
        }
        return new d(obj);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        return c.g.j.c.a(this.a, ((d) obj).a);
    }

    public int hashCode() {
        Object obj = this.a;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public String toString() {
        return "DisplayCutoutCompat{" + this.a + "}";
    }
}
